Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EvalCtx?download=true
inline.NumInlined: 1891
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusE:bb.a
  br i1 %i.d, label %bb.c, label %bb.bp

bb.c:                                             ; preds = %_ZNK8facebook5velox6Status11isUserErrorEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52, !range !97, !noundef !98
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !86
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.p = load i8, ptr %i.o, align 2, !tbaa !53, !range !97, !noundef !98
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.r, align 8, !tbaa !201
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !tbaa !202
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116toVeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr %.val, i64 %.val13)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.v = load i8, ptr %i.u, align 1, !tbaa !158, !range !97, !noundef !98
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.i

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.h
  %.0.in.pre.i.i = load i8, ptr %i.t, align 4, !tbaa !159, !range !97
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !160
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !157 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !161
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = and i32 %i.ab, 2147483584               ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %.not37.i.i.not.i.i156.not = icmp eq i32 %i.ag, 0
  br i1 %.not37.i.i.not.i.i156.not, label %.critedge.i.i.i.i, label %.lr.ph158

bb.m:                                             ; preds = %.lr.ph158
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i157, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ah
  br i1 %.not37.i.i.not.i.i, label %.lr.ph158, label %.critedge.i.i.i.i, !llvm.loop !7

.lr.ph158:                                        ; preds = %bb.l, %bb.m
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ai = lshr exact i64 %indvars.iv.i.i157, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !143
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !7

.critedge.i.i.i.i:                                ; preds = %bb.m, %bb.l
  %.not38.i.i.i.i = icmp eq i32 %i.ab, %i.ag
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i.i
  %i.am = lshr i32 %i.ab, 6
  %i.an = and i32 %i.ab, 63
  %i.ao = zext nneg i32 %i.an to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ao
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !143
  %.demorgan.i.i = or i64 %i.ar, %notmask.i40.i.i.i.i
  %i.as = icmp eq i64 %.demorgan.i.i, -1
  %i.at = zext i1 %i.as to i16
  %i.au = or disjoint i16 %i.at, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph158, %bb.n, %.critedge.i.i.i.i, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.j ], [ 256, %bb.i ], [ 257, %bb.k ], [ 257, %.critedge.i.i.i.i ], [ %i.au, %bb.n ], [ 256, %.lr.ph158 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.t, align 4
  %i.av = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.av, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !157 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !160 ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ax
  br i1 %i.ba, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.noexc15, %.lr.ph.i
  %.08.i = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bc, %.noexc15 ] ; 2 uses
  %i.bc = add nsw i32 %.08.i, 1                   ; 3 uses
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i32 noundef %i.bc)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.p
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i32 noundef %.08.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %.noexc
  %exitcond.not.i = icmp eq i32 %i.bc, %i.ax
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %bb.p, !llvm.loop !337

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.be = load ptr, ptr %1, align 8, !tbaa !162   ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !160 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bg, %i.bi
  br i1 %.not.i.i.i.i, label %bb.r, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit"

bb.r:                                             ; preds = %bb.q
  %i.bj = add i32 %i.bg, 63                       ; 2 uses
  %i.bk = srem i32 %i.bj, 64
  %i.bl = sub nsw i32 %i.bj, %i.bk                ; 6 uses
  %i.bm = and i32 %i.bi, -64                      ; 6 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bo = ashr i32 %i.bi, 6
  %i.bp = and i32 %i.bi, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bq
  %i.br = xor i64 %notmask.i.i.i.i.i, -1
  %i.bs = sub nsw i32 %i.bl, %i.bg                ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bv = sub nsw i32 64, %i.bs
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl i64 %i.bu, %i.bw
  %i.by = and i64 %i.bx, %i.br
  %i.bz = sext i32 %i.bo to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !143
  %i.cc = and i64 %i.by, %i.cb                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.noexc17, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cc, %.preheader.i.i.i.i.i ], [ %i.ck, %.noexc17 ] ; 3 uses
  %i.ce = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = or disjoint i32 %i.bm, %i.cf            ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i32 noundef %i.ch)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %bb.t
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i32 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %.noexc16
  %i.cj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ck = and i64 %i.cj, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %bb.t, !llvm.loop !338

bb.u:                                             ; preds = %bb.r
  %.not32.i.i.i.i = icmp eq i32 %i.bg, %i.bl
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = sdiv i32 %i.bg, 64                      ; 2 uses
  %i.cm = sub nsw i32 %i.bl, %i.bg                ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cn
  %i.co = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.cp = sub nsw i32 64, %i.cm
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl i64 %i.co, %i.cq
  %i.cs = sext i32 %i.cl to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !143
  %i.cv = and i64 %i.cu, %i.cr                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.v
  %i.cw = shl nsw i32 %i.cl, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.noexc19, %.preheader.i37.i.i.i.i
  %.012.i38.i.i.i.i = phi i64 [ %i.cv, %.preheader.i37.i.i.i.i ], [ %i.de, %.noexc19 ] ; 3 uses
  %i.cy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = add nsw i32 %i.da, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i32 noundef %i.db)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.w
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i32 noundef %i.da, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  %i.dd = add i64 %.012.i38.i.i.i.i, -1
  %i.de = and i64 %i.dd, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not10.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %bb.w, !llvm.loop !338

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i": ; preds = %.noexc19, %bb.v, %bb.u
  %i.df = add nsw i32 %i.bl, 64                   ; 2 uses
  %.not3356.i.i.i.i = icmp sgt i32 %i.df, %i.bm
  br i1 %.not3356.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i"
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.bi, %i.bm
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.preheader.i.i.i
  %i.di = phi i32 [ %i.fc, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.df, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.057.i.i.i.i = phi i32 [ %i.di, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.bl, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.dj = sdiv i32 %.057.i.i.i.i, 64              ; 3 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !143 ; 2 uses
  switch i64 %i.dm, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.x
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.dn = shl nsw i32 %i.dj, 6
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = shl nsw i32 %i.dj, 6                    ; 2 uses
  %i.dp = add i32 %i.do, 64
  %i.dq = sext i32 %i.dp to i64
  %.0.off.i.i.i.i = add i32 %.057.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.x
  %i.dr = sext i32 %i.do to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc21, %.lr.ph24.i.i.i.i.i
  %.023.i.i.i.i.i = phi i64 [ %i.dr, %.lr.ph24.i.i.i.i.i ], [ %i.dv, %.noexc21 ] ; 2 uses
  %i.ds = trunc i64 %.023.i.i.i.i.i to i32        ; 2 uses
  %i.dt = add nsw i32 %i.ds, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i32 noundef %i.dt)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc20:                                         ; preds = %bb.y
  %i.du = load ptr, ptr %i.dg, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.du, i32 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc21:                                         ; preds = %.noexc20
  %i.dv = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dq
  br i1 %i.dw, label %bb.y, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !339

bb.z:                                             ; preds = %.noexc24, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %i.fb, %.noexc24 ] ; 3 uses
  %i.dx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = or disjoint i32 %i.dn, %i.dy            ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 2 uses
  %i.eb = load ptr, ptr %i.dg, align 8, !tbaa !100 ; 2 uses
  %.not.i53.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i53.i.i.i.i, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %0, align 8, !tbaa !49
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !122
  %i.ee = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc22:                                         ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 1, ptr %i.ef, align 8, !tbaa !84, !noalias !355
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 1, ptr %i.eg, align 4, !tbaa !85, !noalias !355
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ee, align 8, !tbaa !79, !noalias !355
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  invoke void @_ZN8facebook5velox4exec10EvalErrorsC2EPNS0_6memory10MemoryPoolEi(ptr noundef nonnull align 8 dereferenceable(40) %i.eh, ptr noundef %i.ed, i32 noundef %i.ea)
          to label %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i, !noalias !355

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef 56) #25, !noalias !355
  br label %.body

_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i: ; preds = %.noexc22
  store ptr %i.eh, ptr %i.dg, align 8, !tbaa !101
  %i.ej = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 8 uses
  store ptr %i.ee, ptr %i.dh, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ek, align 8, !tbaa !84
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !85
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #24, !inline_history !342
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #24, !inline_history !342
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.en, %bb.ae ], [ %i.ex, %bb.af ]
  %i.ey = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ey, label %bb.ag, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, !prof !55

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #24
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.z
  invoke void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i32 noundef %i.ea)
          to label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ac, %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i
  %i.ez = load ptr, ptr %i.dg, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, i32 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i
  %i.fa = add i64 %.01522.i.i.i.i.i, -1
  %i.fb = and i64 %i.fa, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i44.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i44.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.z, !llvm.loop !343

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %.noexc21, %.noexc24, %bb.x, %.lr.ph.i.i.i.i
  %i.fc = add nsw i32 %i.di, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fc, %i.bm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !344

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fd = ashr i32 %i.bi, 6
  %i.fe = and i32 %i.bi, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %notmask.i45.i.i.i.i = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i45.i.i.i.i, -1
  %i.fh = sext i32 %i.fd to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !143
  %i.fk = and i64 %i.fj, %i.fg                    ; 2 uses
  %.not.i46.i.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i46.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %.preheader.i47.i.i.i.i

.preheader.i47.i.i.i.i:                           ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc26, %.preheader.i47.i.i.i.i
  %.012.i48.i.i.i.i = phi i64 [ %i.fk, %.preheader.i47.i.i.i.i ], [ %i.fs, %.noexc26 ] ; 3 uses
  %i.fm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i48.i.i.i.i, i1 true)
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = or disjoint i32 %i.bm, %i.fn            ; 2 uses
  %i.fp = add nsw i32 %i.fo, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i32 noundef %i.fp)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc25:                                         ; preds = %bb.aj
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %.noexc25
  %i.fr = add nsw i64 %.012.i48.i.i.i.i, -1
  %i.fs = and i64 %i.fr, %.012.i48.i.i.i.i        ; 2 uses
  %.not10.i51.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i51.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", label %bb.aj, !llvm.loop !338

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit": ; preds = %.noexc26, %.noexc17, %.noexc15, %bb.ai, %._crit_edge.i.i.i.i, %bb.s, %bb.q, %bb.o
  %i.ft = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.ft, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit"
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_0EEvT_.exit", %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit"

.loopexit:                                        ; preds = %bb.p, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc16, %bb.t
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.aj, %.noexc25
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, %bb.ah, %bb.aa
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.y, %.noexc20
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.noexc18
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit74, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit78, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit84, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fu = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i27 = icmp eq ptr %i.fu, null
  br i1 %.not.i27, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28, label %bb.al

bb.al:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28: ; preds = %.body, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.am:                                            ; preds = %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !158, !range !97, !noundef !98
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i68, label %bb.an

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i68: ; preds = %bb.am
  %.0.in.pre.i.i69 = load i8, ptr %i.fv, align 4, !tbaa !159, !range !97
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i31

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !160
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.ao, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !157 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !161
  %i.gg = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gg, label %bb.ap, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29

bb.ap:                                            ; preds = %bb.ao
  %i.gh = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %.not.i.i.i60 = icmp sgt i32 %i.gd, 0
  br i1 %.not.i.i.i60, label %bb.aq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29

bb.aq:                                            ; preds = %bb.ap
  %i.gi = and i32 %i.gd, 2147483584               ; 3 uses
  %i.gj = zext nneg i32 %i.gi to i64
  %.not37.i.i.not.i.i62154.not = icmp eq i32 %i.gi, 0
  br i1 %.not37.i.i.not.i.i62154.not, label %.critedge.i.i.i.i63, label %.lr.ph

bb.ar:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i67 = add nuw nsw i64 %indvars.iv.i.i61155, 64 ; 2 uses
  %.not37.i.i.not.i.i62 = icmp samesign ult i64 %indvars.iv.next.i.i67, %i.gj
  br i1 %.not37.i.i.not.i.i62, label %.lr.ph, label %.critedge.i.i.i.i63, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.aq, %bb.ar
  %indvars.iv.i.i61155 = phi i64 [ %indvars.iv.next.i.i67, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.gk = lshr exact i64 %indvars.iv.i.i61155, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !143
  %i.gn = icmp eq i64 %i.gm, -1
  br i1 %i.gn, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29, !llvm.loop !7

.critedge.i.i.i.i63:                              ; preds = %bb.ar, %bb.aq
  %.not38.i.i.i.i64 = icmp eq i32 %i.gd, %i.gi
  br i1 %.not38.i.i.i.i64, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29, label %bb.as

bb.as:                                            ; preds = %.critedge.i.i.i.i63
  %i.go = lshr i32 %i.gd, 6
  %i.gp = and i32 %i.gd, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %notmask.i40.i.i.i.i65 = shl nsw i64 -1, %i.gq
  %i.gr = zext nneg i32 %i.go to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !143
  %.demorgan.i.i66 = or i64 %i.gt, %notmask.i40.i.i.i.i65
  %i.gu = icmp eq i64 %.demorgan.i.i66, -1
  %i.gv = zext i1 %i.gu to i16
  %i.gw = or disjoint i16 %i.gv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29: ; preds = %.lr.ph, %bb.as, %.critedge.i.i.i.i63, %bb.ap, %bb.ao, %bb.an
  %.sroa.0.0.insert.ext.i.i30 = phi i16 [ 256, %bb.ao ], [ 256, %bb.an ], [ 257, %bb.ap ], [ 257, %.critedge.i.i.i.i63 ], [ %i.gw, %bb.as ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i30, ptr %i.fv, align 4
  %i.gx = trunc i16 %.sroa.0.0.insert.ext.i.i30 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i31

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i31: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i68
  %.0.in.i.i32 = phi i8 [ %.0.in.pre.i.i69, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i68 ], [ %i.gx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i29 ]
  %.0.i.i33 = trunc nuw i8 %.0.in.i.i32 to i1
  br i1 %.0.i.i33, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i31
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !157 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !160 ; 2 uses
  %i.hc = icmp slt i32 %i.hb, %i.gz
  br i1 %i.hc, label %.lr.ph.i58, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit"

.lr.ph.i58:                                       ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.he = sext i32 %i.hb to i64
  %wide.trip.count.i = sext i32 %i.gz to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i58
  %indvars.iv.i = phi i64 [ %i.he, %.lr.ph.i58 ], [ %indvars.iv.next.i, %bb.au ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.hf = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i32 noundef %i.hf)
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, i32 noundef %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !137
  %i.hj = trunc i64 %indvars.iv.i to i8
  %i.hk = and i8 %i.hj, 7
  %i.hl = shl nuw i8 1, %i.hk
  %i.hm = lshr i64 %indvars.iv.i, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !86
  %i.hp = or i8 %i.ho, %i.hl
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !86
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i59, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %bb.au, !llvm.loop !345

bb.av:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i31
  %i.hq = load ptr, ptr %1, align 8, !tbaa !162   ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !160 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i34 = icmp slt i32 %i.hs, %i.hu
  br i1 %.not.i.i.i.i34, label %bb.aw, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit"

bb.aw:                                            ; preds = %bb.av
  %i.hv = add i32 %i.hs, 63                       ; 2 uses
  %i.hw = srem i32 %i.hv, 64
  %i.hx = sub nsw i32 %i.hv, %i.hw                ; 6 uses
  %i.hy = and i32 %i.hu, -64                      ; 6 uses
  %i.hz = icmp slt i32 %i.hy, %i.hx
  br i1 %i.hz, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ia = ashr i32 %i.hu, 6
  %i.ib = and i32 %i.hu, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %notmask.i.i.i.i.i53 = shl nsw i64 -1, %i.ic
  %i.id = xor i64 %notmask.i.i.i.i.i53, -1
  %i.ie = sub nsw i32 %i.hx, %i.hs                ; 2 uses
  %i.if = zext nneg i32 %i.ie to i64
  %notmask.i.i.i.i.i.i54 = shl nsw i64 -1, %i.if
  %i.ig = xor i64 %notmask.i.i.i.i.i.i54, -1
  %i.ih = sub nsw i32 64, %i.ie
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl i64 %i.ig, %i.ii
  %i.ik = and i64 %i.ij, %i.id
  %i.il = sext i32 %i.ia to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !143
  %i.io = and i64 %i.ik, %i.in                    ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.i.i.i55, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %.preheader.i.i.i.i.i56

.preheader.i.i.i.i.i56:                           ; preds = %bb.ax
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.preheader.i.i.i.i.i56
  %.011.i.i.i.i.i = phi i64 [ %i.io, %.preheader.i.i.i.i.i56 ], [ %i.jg, %bb.ay ] ; 3 uses
  %i.iq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true) ; 2 uses
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = or disjoint i32 %i.hy, %i.ir            ; 2 uses
  %i.it = add nsw i32 %i.is, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i32 noundef %i.it)
  %i.iu = load ptr, ptr %i.ip, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.iu, i32 noundef %i.it)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !137
  %i.ix = sext i32 %i.is to i64
  %i.iy = trunc nuw nsw i64 %i.iq to i8
  %i.iz = and i8 %i.iy, 7
  %i.ja = shl nuw i8 1, %i.iz
  %i.jb = lshr i64 %i.ix, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !86
  %i.je = or i8 %i.jd, %i.ja
  store i8 %i.je, ptr %i.jc, align 1, !tbaa !86
  %i.jf = add nsw i64 %.011.i.i.i.i.i, -1
  %i.jg = and i64 %i.jf, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i57 = icmp eq i64 %i.jg, 0
  br i1 %.not10.i.i.i.i.i57, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %bb.ay, !llvm.loop !346

bb.az:                                            ; preds = %bb.aw
  %.not32.i.i.i.i35 = icmp eq i32 %i.hs, %i.hx
  br i1 %.not32.i.i.i.i35, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jh = sdiv i32 %i.hs, 64                      ; 2 uses
  %i.ji = sub nsw i32 %i.hx, %i.hs                ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %notmask.i.i35.i.i.i.i36 = shl nsw i64 -1, %i.jj
  %i.jk = xor i64 %notmask.i.i35.i.i.i.i36, -1
  %i.jl = sub nsw i32 64, %i.ji
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl i64 %i.jk, %i.jm
  %i.jo = sext i32 %i.jh to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.jo
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !143
  %i.jr = and i64 %i.jq, %i.jn                    ; 2 uses
  %.not.i36.i.i.i.i37 = icmp eq i64 %i.jr, 0
  br i1 %.not.i36.i.i.i.i37, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %.preheader.i37.i.i.i.i38

.preheader.i37.i.i.i.i38:                         ; preds = %bb.ba
  %i.js = shl nsw i32 %i.jh, 6
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader.i37.i.i.i.i38
  %.011.i38.i.i.i.i = phi i64 [ %i.jr, %.preheader.i37.i.i.i.i38 ], [ %i.kk, %bb.bb ] ; 3 uses
  %i.ju = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true) ; 2 uses
  %i.jv = trunc nuw nsw i64 %i.ju to i32
  %i.jw = or disjoint i32 %i.js, %i.jv            ; 2 uses
  %i.jx = add nsw i32 %i.jw, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i32 noundef %i.jx)
  %i.jy = load ptr, ptr %i.jt, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.jy, i32 noundef %i.jx)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !137
  %i.kb = sext i32 %i.jw to i64
  %i.kc = trunc nuw nsw i64 %i.ju to i8
  %i.kd = and i8 %i.kc, 7
  %i.ke = shl nuw i8 1, %i.kd
  %i.kf = lshr i64 %i.kb, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kf ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !86
  %i.ki = or i8 %i.kh, %i.ke
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !86
  %i.kj = add i64 %.011.i38.i.i.i.i, -1
  %i.kk = and i64 %i.kj, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i40.i.i.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not10.i40.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.bb, !llvm.loop !346

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i": ; preds = %bb.bb, %bb.ba, %bb.az
  %i.kl = add nsw i32 %i.hx, 64                   ; 2 uses
  %.not3354.i.i.i.i = icmp sgt i32 %i.kl, %i.hy
  br i1 %.not3354.i.i.i.i, label %._crit_edge.i.i.i.i42, label %.lr.ph.i.preheader.i.i.i39

.lr.ph.i.preheader.i.i.i39:                       ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i"
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.i40

._crit_edge.i.i.i.i42:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i"
  %.not34.i.i.i.i43 = icmp eq i32 %i.hu, %i.hy
  br i1 %.not34.i.i.i.i43, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %bb.bn

.lr.ph.i.i.i.i40:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.preheader.i.i.i39
  %i.ko = phi i32 [ %i.nc, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.kl, %.lr.ph.i.preheader.i.i.i39 ] ; 2 uses
  %.055.i.i.i.i = phi i32 [ %i.ko, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.hx, %.lr.ph.i.preheader.i.i.i39 ] ; 2 uses
  %i.kp = sdiv i32 %.055.i.i.i.i, 64              ; 3 uses
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !143 ; 2 uses
  switch i64 %i.ks, label %.lr.ph.i.i.i.i.i45 [
    i64 -1, label %bb.bc
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i45:                               ; preds = %.lr.ph.i.i.i.i40
  %i.kt = shl nsw i32 %i.kp, 6
  br label %bb.be

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i40
  %i.ku = shl nsw i32 %i.kp, 6                    ; 2 uses
  %i.kv = add i32 %i.ku, 64
  %i.kw = sext i32 %i.kv to i64
  %.0.off.i.i.i.i44 = add i32 %.055.i.i.i.i, 127
  %.not23.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i44, 64
  br i1 %.not23.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph22.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %bb.bc
  %i.kx = sext i32 %i.ku to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph22.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.kx, %.lr.ph22.i.i.i.i.i ], [ %i.ll, %bb.bd ] ; 4 uses
  %i.ky = trunc i64 %.021.i.i.i.i.i to i32
  %i.kz = add nsw i32 %i.ky, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.km, i32 noundef %i.kz)
  %i.la = load ptr, ptr %i.km, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.la, i32 noundef %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !137
  %sext.i.i.i.i.i.i = shl i64 %.021.i.i.i.i.i, 32
  %i.ld = ashr exact i64 %sext.i.i.i.i.i.i, 32
  %i.le = trunc i64 %.021.i.i.i.i.i to i8
  %i.lf = and i8 %i.le, 7
  %i.lg = shl nuw i8 1, %i.lf
  %i.lh = lshr i64 %i.ld, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !86
  %i.lk = or i8 %i.lj, %i.lg
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !86
  %i.ll = add nuw i64 %.021.i.i.i.i.i, 1          ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.kw
  br i1 %i.lm, label %bb.bd, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !347

bb.be:                                            ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46, %.lr.ph.i.i.i.i.i45
  %.01520.i.i.i.i.i = phi i64 [ %i.ks, %.lr.ph.i.i.i.i.i45 ], [ %i.nb, %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46 ] ; 3 uses
  %i.ln = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i, i1 true) ; 2 uses
  %i.lo = trunc nuw nsw i64 %i.ln to i32
  %i.lp = or disjoint i32 %i.kt, %i.lo            ; 2 uses
  %i.lq = add nsw i32 %i.lp, 1                    ; 3 uses
  %i.lr = load ptr, ptr %i.km, align 8, !tbaa !100 ; 2 uses
  %.not.i51.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i51.i.i.i.i, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.ls = load ptr, ptr %0, align 8, !tbaa !49
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !122
  %i.lu = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !356 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 1, ptr %i.lv, align 8, !tbaa !84, !noalias !357
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store i32 1, ptr %i.lw, align 4, !tbaa !85, !noalias !357
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lu, align 8, !tbaa !79, !noalias !357
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  invoke void @_ZN8facebook5velox4exec10EvalErrorsC2EPNS0_6memory10MemoryPoolEi(ptr noundef nonnull align 8 dereferenceable(40) %i.lx, ptr noundef %i.lt, i32 noundef %i.lq)
          to label %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i48 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i47, !noalias !357

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i47
  %common.resume.op = phi { ptr, i32 } [ %i.ly, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i47 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %eh.lpad-body, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28 ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i47: ; preds = %bb.bf
  %i.ly = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 56) #25, !noalias !357
  br label %common.resume

_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i48: ; preds = %bb.bf
  store ptr %i.lx, ptr %i.km, align 8, !tbaa !101
  %i.lz = load ptr, ptr %i.kn, align 8, !tbaa !82 ; 8 uses
  store ptr %i.lu, ptr %i.kn, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i49 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i49, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46, label %bb.bg

bb.bg:                                            ; preds = %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i48
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 4 uses
  %i.mb = load atomic i64, ptr %i.ma acquire, align 8 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 4294967297
  %i.md = trunc i64 %i.mb to i32                  ; 2 uses
  br i1 %i.mc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ma, align 8, !tbaa !84
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store i32 0, ptr %i.me, align 4, !tbaa !85
  %i.mf = load ptr, ptr %i.lz, align 8, !tbaa !79
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  tail call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #24, !inline_history !352
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !79
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  tail call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #24, !inline_history !352
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46

bb.bi:                                            ; preds = %bb.bg
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i50 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i50, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mm = add nsw i32 %i.md, -1
  store i32 %i.mm, ptr %i.ma, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i51

bb.bk:                                            ; preds = %bb.bi
  %i.mn = atomicrmw volatile add ptr %i.ma, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i51: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i.i.i.i.i52 = phi i32 [ %i.md, %bb.bj ], [ %i.mn, %bb.bk ]
  %i.mo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i52, 1
  br i1 %i.mo, label %bb.bl, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46, !prof !55

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i51
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #24
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46

bb.bm:                                            ; preds = %bb.be
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.lr, i32 noundef %i.lq)
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46

_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46: ; preds = %bb.bm, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i51, %bb.bh, %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i48
  %i.mp = load ptr, ptr %i.km, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.mp, i32 noundef %i.lq)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !137
  %i.ms = sext i32 %i.lp to i64
  %i.mt = trunc nuw nsw i64 %i.ln to i8
  %i.mu = and i8 %i.mt, 7
  %i.mv = shl nuw i8 1, %i.mu
  %i.mw = lshr i64 %i.ms, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !86
  %i.mz = or i8 %i.my, %i.mv
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !86
  %i.na = add i64 %.01520.i.i.i.i.i, -1
  %i.nb = and i64 %i.na, %.01520.i.i.i.i.i        ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i43.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.be, !llvm.loop !353

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.bd, %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i46, %bb.bc, %.lr.ph.i.i.i.i40
  %i.nc = add nsw i32 %i.ko, 64                   ; 2 uses
  %.not33.i.i.i.i41 = icmp sgt i32 %i.nc, %i.hy
  br i1 %.not33.i.i.i.i41, label %._crit_edge.i.i.i.i42, label %.lr.ph.i.i.i.i40, !llvm.loop !354

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i42
  %i.nd = ashr i32 %i.hu, 6
  %i.ne = and i32 %i.hu, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %notmask.i44.i.i.i.i = shl nsw i64 -1, %i.nf
  %i.ng = xor i64 %notmask.i44.i.i.i.i, -1
  %i.nh = sext i32 %i.nd to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !143
  %i.nk = and i64 %i.nj, %i.ng                    ; 2 uses
  %.not.i45.i.i.i.i = icmp eq i64 %i.nk, 0
  br i1 %.not.i45.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %.preheader.i46.i.i.i.i

.preheader.i46.i.i.i.i:                           ; preds = %bb.bn
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.preheader.i46.i.i.i.i
  %.011.i47.i.i.i.i = phi i64 [ %i.nk, %.preheader.i46.i.i.i.i ], [ %i.oc, %bb.bo ] ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47.i.i.i.i, i1 true) ; 2 uses
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.hy, %i.nn            ; 2 uses
  %i.np = add nsw i32 %i.no, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i32 noundef %i.np)
  %i.nq = load ptr, ptr %i.nl, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.nq, i32 noundef %i.np)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !137
  %i.nt = sext i32 %i.no to i64
  %i.nu = trunc nuw nsw i64 %i.nm to i8
  %i.nv = and i8 %i.nu, 7
  %i.nw = shl nuw i8 1, %i.nv
  %i.nx = lshr i64 %i.nt, 3
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nx ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !86
  %i.oa = or i8 %i.nz, %i.nw
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !86
  %i.ob = add nsw i64 %.011.i47.i.i.i.i, -1
  %i.oc = and i64 %i.ob, %.011.i47.i.i.i.i        ; 2 uses
  %.not10.i49.i.i.i.i = icmp eq i64 %i.oc, 0
  br i1 %.not10.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit", label %bb.bo, !llvm.loop !346

bb.bp:                                            ; preds = %_ZNK8facebook5velox6Status11isUserErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.od)
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec7EvalCtx11setStatusesERKNS0_17SelectivityVectorERKNS0_6StatusEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %5) #23
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.oe = landingpad { ptr, i32 }
          cleanup
  %i.of = load ptr, ptr %5, align 8, !tbaa !201   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.br
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !86
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx11setStatusesERKS1_RKNS0_6StatusEE3$_1EEvT_.exit": ; preds = %bb.bo, %bb.ay, %bb.au, %bb.bn, %._crit_edge.i.i.i.i42, %bb.ax, %bb.av, %bb.at, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN8facebook5velox16toVeloxExceptionERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !147
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8 ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !53, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN8facebook5velox16toVeloxExceptionERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = add nsw i32 %1, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef %i.j)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNK8facebook5velox4exec7EvalCtx8addErrorEiRKNSt15__exception_ptr13exception_ptrERSt10shared_ptrINS1_10EvalErrorsEE.exit unwind label %bb.i

_ZNK8facebook5velox4exec7EvalCtx8addErrorEiRKNSt15__exception_ptr13exception_ptrERSt10shared_ptrINS1_10EvalErrorsEE.exit: ; preds = %.noexc
  %i.l = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec7EvalCtx8addErrorEiRKNSt15__exception_ptr13exception_ptrERSt10shared_ptrINS1_10EvalErrorsEE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNK8facebook5velox4exec7EvalCtx8addErrorEiRKNSt15__exception_ptr13exception_ptrERSt10shared_ptrINS1_10EvalErrorsEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i7, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit8:  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = add nsw i32 %1, 1                        ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i32 noundef %i.p)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !100  ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !137
  %i.t = sext i32 %1 to i64
  %i.u = trunc i32 %1 to i8
  %i.v = and i8 %i.u, 7
  %i.w = shl nuw i8 1, %i.v
  %i.x = lshr i64 %i.t, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !86
  %i.aa = or i8 %i.z, %i.w
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  ret void
}

declare void @_ZN8facebook5velox16toVeloxExceptionERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !147    ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %3, align 8, !tbaa !147
  %.not.i6 = icmp eq ptr %i.f, null
  br i1 %.not.i6, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.h = load i8, ptr %i.g, align 2, !tbaa !53, !range !97, !noundef !98
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE:bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN8facebook5velox16toVeloxExceptionERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !147
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i39, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20
  %common.resume.op = phi { ptr, i32 } [ %i.ln, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i39 ], [ %eh.lpad-body, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20 ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !53, !range !97, !noundef !98
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.g, label %bb.al

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN8facebook5velox16toVeloxExceptionERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.k = load i8, ptr %i.j, align 1, !tbaa !158, !range !97, !noundef !98
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.h

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.g
  %.0.in.pre.i.i = load i8, ptr %i.i, align 4, !tbaa !159, !range !97
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !160
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !157  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !161
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !162    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.q, 0
  br i1 %.not.i.i.i, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.q, 2147483584                 ; 3 uses
  %i.w = zext nneg i32 %i.v to i64
  %.not37.i.i.not.i.i139.not = icmp eq i32 %i.v, 0
  br i1 %.not37.i.i.not.i.i139.not, label %.critedge.i.i.i.i, label %.lr.ph141

bb.l:                                             ; preds = %.lr.ph141
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i140, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.w
  br i1 %.not37.i.i.not.i.i, label %.lr.ph141, label %.critedge.i.i.i.i, !llvm.loop !7

.lr.ph141:                                        ; preds = %bb.k, %bb.l
  %indvars.iv.i.i140 = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.x = lshr exact i64 %indvars.iv.i.i140, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !143
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !7

.critedge.i.i.i.i:                                ; preds = %bb.l, %bb.k
  %.not38.i.i.i.i = icmp eq i32 %i.q, %i.v
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.i.i
  %i.ab = lshr i32 %i.q, 6
  %i.ac = and i32 %i.q, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ad
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !143
  %.demorgan.i.i = or i64 %i.ag, %notmask.i40.i.i.i.i
  %i.ah = icmp eq i64 %.demorgan.i.i, -1
  %i.ai = zext i1 %i.ah to i16
  %i.aj = or disjoint i16 %i.ai, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph141, %bb.m, %.critedge.i.i.i.i, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.i ], [ 256, %bb.h ], [ 257, %bb.j ], [ 257, %.critedge.i.i.i.i ], [ %i.aj, %bb.m ], [ 256, %.lr.ph141 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.i, align 4
  %i.ak = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ak, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !157 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !160 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.am
  br i1 %i.ap, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.noexc7, %.lr.ph.i
  %.08.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.ar, %.noexc7 ] ; 2 uses
  %i.ar = add nsw i32 %.08.i, 1                   ; 3 uses
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.ar)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.o
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i32 noundef %.08.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.noexc
  %exitcond.not.i = icmp eq i32 %i.ar, %i.am
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %bb.o, !llvm.loop !358

bb.p:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.at = load ptr, ptr %1, align 8, !tbaa !162   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !160 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.av, %i.ax
  br i1 %.not.i.i.i.i, label %bb.q, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit"

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %i.av, 63                       ; 2 uses
  %i.az = srem i32 %i.ay, 64
  %i.ba = sub nsw i32 %i.ay, %i.az                ; 6 uses
  %i.bb = and i32 %i.ax, -64                      ; 6 uses
  %i.bc = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bd = ashr i32 %i.ax, 6
  %i.be = and i32 %i.ax, 63
  %i.bf = zext nneg i32 %i.be to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask.i.i.i.i.i, -1
  %i.bh = sub nsw i32 %i.ba, %i.av                ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bk = sub nsw i32 64, %i.bh
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 %i.bj, %i.bl
  %i.bn = and i64 %i.bm, %i.bg
  %i.bo = sext i32 %i.bd to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !143
  %i.br = and i64 %i.bn, %i.bq                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.noexc9, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.br, %.preheader.i.i.i.i.i ], [ %i.bz, %.noexc9 ] ; 3 uses
  %i.bt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = or disjoint i32 %i.bb, %i.bu            ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i32 noundef %i.bw)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i32 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit

.noexc9:                                          ; preds = %.noexc8
  %i.by = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bz = and i64 %i.by, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %bb.s, !llvm.loop !359

bb.t:                                             ; preds = %bb.q
  %.not32.i.i.i.i = icmp eq i32 %i.av, %i.ba
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = sdiv i32 %i.av, 64                      ; 2 uses
  %i.cb = sub nsw i32 %i.ba, %i.av                ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ce = sub nsw i32 64, %i.cb
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = sext i32 %i.ca to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !143
  %i.ck = and i64 %i.cj, %i.cg                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.u
  %i.cl = shl nsw i32 %i.ca, 6
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.noexc11, %.preheader.i37.i.i.i.i
  %.012.i38.i.i.i.i = phi i64 [ %i.ck, %.preheader.i37.i.i.i.i ], [ %i.ct, %.noexc11 ] ; 3 uses
  %i.cn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co            ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i32 noundef %i.cq)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.v
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i32 noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.noexc10
  %i.cs = add i64 %.012.i38.i.i.i.i, -1
  %i.ct = and i64 %i.cs, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not10.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i", label %bb.v, !llvm.loop !359

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i": ; preds = %.noexc11, %bb.u, %bb.t
  %i.cu = add nsw i32 %i.ba, 64                   ; 2 uses
  %.not3356.i.i.i.i = icmp sgt i32 %i.cu, %i.bb
  br i1 %.not3356.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i"
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit42.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.ax, %i.bb
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %bb.ah

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.preheader.i.i.i
  %i.cx = phi i32 [ %i.er, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.cu, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.057.i.i.i.i = phi i32 [ %i.cx, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.ba, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.cy = sdiv i32 %.057.i.i.i.i, 64              ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !143 ; 2 uses
  switch i64 %i.db, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.w
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.dc = shl nsw i32 %i.cy, 6
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dd = shl nsw i32 %i.cy, 6                    ; 2 uses
  %i.de = add i32 %i.dd, 64
  %i.df = sext i32 %i.de to i64
  %.0.off.i.i.i.i = add i32 %.057.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.w
  %i.dg = sext i32 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %.noexc13, %.lr.ph24.i.i.i.i.i
  %.023.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph24.i.i.i.i.i ], [ %i.dk, %.noexc13 ] ; 2 uses
  %i.dh = trunc i64 %.023.i.i.i.i.i to i32        ; 2 uses
  %i.di = add nsw i32 %i.dh, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %i.di)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.x
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %.noexc12
  %i.dk = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.df
  br i1 %i.dl, label %bb.x, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !360

bb.y:                                             ; preds = %.noexc16, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.eq, %.noexc16 ] ; 3 uses
  %i.dm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = or disjoint i32 %i.dc, %i.dn            ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  %i.dq = load ptr, ptr %i.cv, align 8, !tbaa !100 ; 2 uses
  %.not.i53.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i53.i.i.i.i, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %0, align 8, !tbaa !49
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !122
  %i.dt = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc14:                                         ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 1, ptr %i.du, align 8, !tbaa !84, !noalias !376
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 1, ptr %i.dv, align 4, !tbaa !85, !noalias !376
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dt, align 8, !tbaa !79, !noalias !376
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  invoke void @_ZN8facebook5velox4exec10EvalErrorsC2EPNS0_6memory10MemoryPoolEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dw, ptr noundef %i.ds, i32 noundef %i.dp)
          to label %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i, !noalias !376

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i: ; preds = %.noexc14
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef 56) #25, !noalias !376
  br label %.body

_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i: ; preds = %.noexc14
  store ptr %i.dw, ptr %i.cv, align 8, !tbaa !101
  %i.dy = load ptr, ptr %i.cw, align 8, !tbaa !82 ; 8 uses
  store ptr %i.dt, ptr %i.cw, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dz, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !85
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #24, !inline_history !363
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #24, !inline_history !363
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ec, %bb.ad ], [ %i.em, %bb.ae ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.en, label %bb.af, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, !prof !55

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #24
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.y
  invoke void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, i32 noundef %i.dp)
          to label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i: ; preds = %bb.ag, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ab, %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i32 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i
  %i.ep = add i64 %.01522.i.i.i.i.i, -1
  %i.eq = and i64 %i.ep, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i44.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i44.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.y, !llvm.loop !364

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %.noexc13, %.noexc16, %bb.w, %.lr.ph.i.i.i.i
  %i.er = add nsw i32 %i.cx, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.er, %i.bb
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !365

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  %i.es = ashr i32 %i.ax, 6
  %i.et = and i32 %i.ax, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i45.i.i.i.i = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i45.i.i.i.i, -1
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !143
  %i.ez = and i64 %i.ey, %i.ev                    ; 2 uses
  %.not.i46.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i46.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %.preheader.i47.i.i.i.i

.preheader.i47.i.i.i.i:                           ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc18, %.preheader.i47.i.i.i.i
  %.012.i48.i.i.i.i = phi i64 [ %i.ez, %.preheader.i47.i.i.i.i ], [ %i.fh, %.noexc18 ] ; 3 uses
  %i.fb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i48.i.i.i.i, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or disjoint i32 %i.bb, %i.fc            ; 2 uses
  %i.fe = add nsw i32 %i.fd, 1
  invoke void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef %i.fe)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.ai
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !100
  invoke void @_ZN8facebook5velox4exec10EvalErrors8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(40) %i.ff, i32 noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %.noexc17
  %i.fg = add nsw i64 %.012.i48.i.i.i.i, -1
  %i.fh = and i64 %i.fg, %.012.i48.i.i.i.i        ; 2 uses
  %.not10.i51.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not10.i51.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", label %bb.ai, !llvm.loop !359

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit": ; preds = %.noexc18, %.noexc9, %.noexc7, %bb.ah, %._crit_edge.i.i.i.i, %bb.r, %bb.p, %bb.n
  %i.fi = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.fi, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit"
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_0EEvT_.exit", %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit"

.loopexit:                                        ; preds = %bb.o, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc8, %bb.s
  %lpad.loopexit62 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ai, %.noexc17
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i, %bb.ag, %bb.z
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.x, %.noexc12
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %.noexc10
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.dx, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit62, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit69, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit72, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = load ptr, ptr %4, align 8, !tbaa !147
  %.not.i19 = icmp eq ptr %i.fj, null
  br i1 %.not.i19, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20, label %bb.ak

bb.ak:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20: ; preds = %.body, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.al:                                            ; preds = %bb.f
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !158, !range !97, !noundef !98
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i60, label %bb.am

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i60: ; preds = %bb.al
  %.0.in.pre.i.i61 = load i8, ptr %i.fk, align 4, !tbaa !159, !range !97
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i23

bb.am:                                            ; preds = %bb.al
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !160
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.an, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !157 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !161
  %i.fv = icmp eq i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.ao, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21

bb.ao:                                            ; preds = %bb.an
  %i.fw = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %.not.i.i.i52 = icmp sgt i32 %i.fs, 0
  br i1 %.not.i.i.i52, label %bb.ap, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21

bb.ap:                                            ; preds = %bb.ao
  %i.fx = and i32 %i.fs, 2147483584               ; 3 uses
  %i.fy = zext nneg i32 %i.fx to i64
  %.not37.i.i.not.i.i54137.not = icmp eq i32 %i.fx, 0
  br i1 %.not37.i.i.not.i.i54137.not, label %.critedge.i.i.i.i55, label %.lr.ph

bb.aq:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i59 = add nuw nsw i64 %indvars.iv.i.i53138, 64 ; 2 uses
  %.not37.i.i.not.i.i54 = icmp samesign ult i64 %indvars.iv.next.i.i59, %i.fy
  br i1 %.not37.i.i.not.i.i54, label %.lr.ph, label %.critedge.i.i.i.i55, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.ap, %bb.aq
  %indvars.iv.i.i53138 = phi i64 [ %indvars.iv.next.i.i59, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %i.fz = lshr exact i64 %indvars.iv.i.i53138, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !143
  %i.gc = icmp eq i64 %i.gb, -1
  br i1 %i.gc, label %bb.aq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21, !llvm.loop !7

.critedge.i.i.i.i55:                              ; preds = %bb.aq, %bb.ap
  %.not38.i.i.i.i56 = icmp eq i32 %i.fs, %i.fx
  br i1 %.not38.i.i.i.i56, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i.i.i55
  %i.gd = lshr i32 %i.fs, 6
  %i.ge = and i32 %i.fs, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %notmask.i40.i.i.i.i57 = shl nsw i64 -1, %i.gf
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !143
  %.demorgan.i.i58 = or i64 %i.gi, %notmask.i40.i.i.i.i57
  %i.gj = icmp eq i64 %.demorgan.i.i58, -1
  %i.gk = zext i1 %i.gj to i16
  %i.gl = or disjoint i16 %i.gk, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21: ; preds = %.lr.ph, %bb.ar, %.critedge.i.i.i.i55, %bb.ao, %bb.an, %bb.am
  %.sroa.0.0.insert.ext.i.i22 = phi i16 [ 256, %bb.an ], [ 256, %bb.am ], [ 257, %bb.ao ], [ 257, %.critedge.i.i.i.i55 ], [ %i.gl, %bb.ar ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i22, ptr %i.fk, align 4
  %i.gm = trunc i16 %.sroa.0.0.insert.ext.i.i22 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i23

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i23: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i60
  %.0.in.i.i24 = phi i8 [ %.0.in.pre.i.i61, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i60 ], [ %i.gm, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i21 ]
  %.0.i.i25 = trunc nuw i8 %.0.in.i.i24 to i1
  br i1 %.0.i.i25, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i23
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !157 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !160 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, %i.go
  br i1 %i.gr, label %.lr.ph.i50, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit"

.lr.ph.i50:                                       ; preds = %bb.as
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gt = sext i32 %i.gq to i64
  %wide.trip.count.i = sext i32 %i.go to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i50
  %indvars.iv.i = phi i64 [ %i.gt, %.lr.ph.i50 ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.gu = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i32 noundef %i.gu)
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, i32 noundef %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !137
  %i.gy = trunc i64 %indvars.iv.i to i8
  %i.gz = and i8 %i.gy, 7
  %i.ha = shl nuw i8 1, %i.gz
  %i.hb = lshr i64 %indvars.iv.i, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !86
  %i.he = or i8 %i.hd, %i.ha
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !86
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i51, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %bb.at, !llvm.loop !366

bb.au:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i23
  %i.hf = load ptr, ptr %1, align 8, !tbaa !162   ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !160 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i26 = icmp slt i32 %i.hh, %i.hj
  br i1 %.not.i.i.i.i26, label %bb.av, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit"

bb.av:                                            ; preds = %bb.au
  %i.hk = add i32 %i.hh, 63                       ; 2 uses
  %i.hl = srem i32 %i.hk, 64
  %i.hm = sub nsw i32 %i.hk, %i.hl                ; 6 uses
  %i.hn = and i32 %i.hj, -64                      ; 6 uses
  %i.ho = icmp slt i32 %i.hn, %i.hm
  br i1 %i.ho, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hp = ashr i32 %i.hj, 6
  %i.hq = and i32 %i.hj, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %notmask.i.i.i.i.i45 = shl nsw i64 -1, %i.hr
  %i.hs = xor i64 %notmask.i.i.i.i.i45, -1
  %i.ht = sub nsw i32 %i.hm, %i.hh                ; 2 uses
  %i.hu = zext nneg i32 %i.ht to i64
  %notmask.i.i.i.i.i.i46 = shl nsw i64 -1, %i.hu
  %i.hv = xor i64 %notmask.i.i.i.i.i.i46, -1
  %i.hw = sub nsw i32 64, %i.ht
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl i64 %i.hv, %i.hx
  %i.hz = and i64 %i.hy, %i.hs
  %i.ia = sext i32 %i.hp to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !143
  %i.id = and i64 %i.hz, %i.ic                    ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i.i.i47, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %.preheader.i.i.i.i.i48

.preheader.i.i.i.i.i48:                           ; preds = %bb.aw
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.preheader.i.i.i.i.i48
  %.011.i.i.i.i.i = phi i64 [ %i.id, %.preheader.i.i.i.i.i48 ], [ %i.iv, %bb.ax ] ; 3 uses
  %i.if = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true) ; 2 uses
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = or disjoint i32 %i.hn, %i.ig            ; 2 uses
  %i.ii = add nsw i32 %i.ih, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i32 noundef %i.ii)
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ij, i32 noundef %i.ii)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !137
  %i.im = sext i32 %i.ih to i64
  %i.in = trunc nuw nsw i64 %i.if to i8
  %i.io = and i8 %i.in, 7
  %i.ip = shl nuw i8 1, %i.io
  %i.iq = lshr i64 %i.im, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !86
  %i.it = or i8 %i.is, %i.ip
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !86
  %i.iu = add nsw i64 %.011.i.i.i.i.i, -1
  %i.iv = and i64 %i.iu, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i49 = icmp eq i64 %i.iv, 0
  br i1 %.not10.i.i.i.i.i49, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %bb.ax, !llvm.loop !367

bb.ay:                                            ; preds = %bb.av
  %.not32.i.i.i.i27 = icmp eq i32 %i.hh, %i.hm
  br i1 %.not32.i.i.i.i27, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iw = sdiv i32 %i.hh, 64                      ; 2 uses
  %i.ix = sub nsw i32 %i.hm, %i.hh                ; 2 uses
  %i.iy = zext nneg i32 %i.ix to i64
  %notmask.i.i35.i.i.i.i28 = shl nsw i64 -1, %i.iy
  %i.iz = xor i64 %notmask.i.i35.i.i.i.i28, -1
  %i.ja = sub nsw i32 64, %i.ix
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl i64 %i.iz, %i.jb
  %i.jd = sext i32 %i.iw to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.jd
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !143
  %i.jg = and i64 %i.jf, %i.jc                    ; 2 uses
  %.not.i36.i.i.i.i29 = icmp eq i64 %i.jg, 0
  br i1 %.not.i36.i.i.i.i29, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %.preheader.i37.i.i.i.i30

.preheader.i37.i.i.i.i30:                         ; preds = %bb.az
  %i.jh = shl nsw i32 %i.iw, 6
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader.i37.i.i.i.i30
  %.011.i38.i.i.i.i = phi i64 [ %i.jg, %.preheader.i37.i.i.i.i30 ], [ %i.jz, %bb.ba ] ; 3 uses
  %i.jj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true) ; 2 uses
  %i.jk = trunc nuw nsw i64 %i.jj to i32
  %i.jl = or disjoint i32 %i.jh, %i.jk            ; 2 uses
  %i.jm = add nsw i32 %i.jl, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i32 noundef %i.jm)
  %i.jn = load ptr, ptr %i.ji, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.jn, i32 noundef %i.jm)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !137
  %i.jq = sext i32 %i.jl to i64
  %i.jr = trunc nuw nsw i64 %i.jj to i8
  %i.js = and i8 %i.jr, 7
  %i.jt = shl nuw i8 1, %i.js
  %i.ju = lshr i64 %i.jq, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.ju ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !86
  %i.jx = or i8 %i.jw, %i.jt
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !86
  %i.jy = add i64 %.011.i38.i.i.i.i, -1
  %i.jz = and i64 %i.jy, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i40.i.i.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not10.i40.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.ba, !llvm.loop !367

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i": ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ka = add nsw i32 %i.hm, 64                   ; 2 uses
  %.not3354.i.i.i.i = icmp sgt i32 %i.ka, %i.hn
  br i1 %.not3354.i.i.i.i, label %._crit_edge.i.i.i.i34, label %.lr.ph.i.preheader.i.i.i31

.lr.ph.i.preheader.i.i.i31:                       ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i"
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.i32

._crit_edge.i.i.i.i34:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i"
  %.not34.i.i.i.i35 = icmp eq i32 %i.hj, %i.hn
  br i1 %.not34.i.i.i.i35, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %bb.bm

.lr.ph.i.i.i.i32:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.preheader.i.i.i31
  %i.kd = phi i32 [ %i.mr, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.ka, %.lr.ph.i.preheader.i.i.i31 ] ; 2 uses
  %.055.i.i.i.i = phi i32 [ %i.kd, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.hm, %.lr.ph.i.preheader.i.i.i31 ] ; 2 uses
  %i.ke = sdiv i32 %.055.i.i.i.i, 64              ; 3 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !143 ; 2 uses
  switch i64 %i.kh, label %.lr.ph.i.i.i.i.i37 [
    i64 -1, label %bb.bb
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i32
  %i.ki = shl nsw i32 %i.ke, 6
  br label %bb.bd

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i32
  %i.kj = shl nsw i32 %i.ke, 6                    ; 2 uses
  %i.kk = add i32 %i.kj, 64
  %i.kl = sext i32 %i.kk to i64
  %.0.off.i.i.i.i36 = add i32 %.055.i.i.i.i, 127
  %.not23.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i36, 64
  br i1 %.not23.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph22.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %bb.bb
  %i.km = sext i32 %i.kj to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph22.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.km, %.lr.ph22.i.i.i.i.i ], [ %i.la, %bb.bc ] ; 4 uses
  %i.kn = trunc i64 %.021.i.i.i.i.i to i32
  %i.ko = add nsw i32 %i.kn, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i32 noundef %i.ko)
  %i.kp = load ptr, ptr %i.kb, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.kp, i32 noundef %i.ko)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !137
  %sext.i.i.i.i.i.i = shl i64 %.021.i.i.i.i.i, 32
  %i.ks = ashr exact i64 %sext.i.i.i.i.i.i, 32
  %i.kt = trunc i64 %.021.i.i.i.i.i to i8
  %i.ku = and i8 %i.kt, 7
  %i.kv = shl nuw i8 1, %i.ku
  %i.kw = lshr i64 %i.ks, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kw ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !86
  %i.kz = or i8 %i.ky, %i.kv
  store i8 %i.kz, ptr %i.kx, align 1, !tbaa !86
  %i.la = add nuw i64 %.021.i.i.i.i.i, 1          ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kl
  br i1 %i.lb, label %bb.bc, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !368

bb.bd:                                            ; preds = %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38, %.lr.ph.i.i.i.i.i37
  %.01520.i.i.i.i.i = phi i64 [ %i.kh, %.lr.ph.i.i.i.i.i37 ], [ %i.mq, %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38 ] ; 3 uses
  %i.lc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i, i1 true) ; 2 uses
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = or disjoint i32 %i.ki, %i.ld            ; 2 uses
  %i.lf = add nsw i32 %i.le, 1                    ; 3 uses
  %i.lg = load ptr, ptr %i.kb, align 8, !tbaa !100 ; 2 uses
  %.not.i51.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i51.i.i.i.i, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.lh = load ptr, ptr %0, align 8, !tbaa !49
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !122
  %i.lj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !377 ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i32 1, ptr %i.lk, align 8, !tbaa !84, !noalias !378
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 1, ptr %i.ll, align 4, !tbaa !85, !noalias !378
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lj, align 8, !tbaa !79, !noalias !378
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  invoke void @_ZN8facebook5velox4exec10EvalErrorsC2EPNS0_6memory10MemoryPoolEi(ptr noundef nonnull align 8 dereferenceable(40) %i.lm, ptr noundef %i.li, i32 noundef %i.lf)
          to label %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i40 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i39, !noalias !378

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10EvalErrorsESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i.i.i39: ; preds = %bb.be
  %i.ln = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef 56) #25, !noalias !378
  br label %common.resume

_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i40: ; preds = %bb.be
  store ptr %i.lm, ptr %i.kb, align 8, !tbaa !101
  %i.lo = load ptr, ptr %i.kc, align 8, !tbaa !82 ; 8 uses
  store ptr %i.lj, ptr %i.kc, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i41, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38, label %bb.bf

bb.bf:                                            ; preds = %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i40
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.lp, align 8, !tbaa !84
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !85
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !79
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  tail call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #24, !inline_history !373
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !79
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8
  tail call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #24, !inline_history !373
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38

bb.bh:                                            ; preds = %bb.bf
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i42 = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i42, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i43

bb.bj:                                            ; preds = %bb.bh
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i43: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i44 = phi i32 [ %i.ls, %bb.bi ], [ %i.mc, %bb.bj ]
  %i.md = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i44, 1
  br i1 %i.md, label %bb.bk, label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38, !prof !55

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i43
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #24
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38

bb.bl:                                            ; preds = %bb.bd
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.lg, i32 noundef %i.lf)
  br label %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38

_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38: ; preds = %bb.bl, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i43, %bb.bg, %_ZSt11make_sharedIN8facebook5velox4exec10EvalErrorsEJPNS1_6memory10MemoryPoolERiEESt10shared_ptrIT_EDpOT0_.exit.i.i.i.i.i40
  %i.me = load ptr, ptr %i.kb, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.me, i32 noundef %i.lf)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !137
  %i.mh = sext i32 %i.le to i64
  %i.mi = trunc nuw nsw i64 %i.lc to i8
  %i.mj = and i8 %i.mi, 7
  %i.mk = shl nuw i8 1, %i.mj
  %i.ml = lshr i64 %i.mh, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ml ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !86
  %i.mo = or i8 %i.mn, %i.mk
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !86
  %i.mp = add i64 %.01520.i.i.i.i.i, -1
  %i.mq = and i64 %i.mp, %.01520.i.i.i.i.i        ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.mq, 0
  br i1 %.not.i43.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.bd, !llvm.loop !374

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrEE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.bc, %_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi.exit.i.i.i.i38, %bb.bb, %.lr.ph.i.i.i.i32
  %i.mr = add nsw i32 %i.kd, 64                   ; 2 uses
  %.not33.i.i.i.i33 = icmp sgt i32 %i.mr, %i.hn
  br i1 %.not33.i.i.i.i33, label %._crit_edge.i.i.i.i34, label %.lr.ph.i.i.i.i32, !llvm.loop !375

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i34
  %i.ms = ashr i32 %i.hj, 6
  %i.mt = and i32 %i.hj, 63
  %i.mu = zext nneg i32 %i.mt to i64
  %notmask.i44.i.i.i.i = shl nsw i64 -1, %i.mu
  %i.mv = xor i64 %notmask.i44.i.i.i.i, -1
  %i.mw = sext i32 %i.ms to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !143
  %i.mz = and i64 %i.my, %i.mv                    ; 2 uses
  %.not.i45.i.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i45.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %.preheader.i46.i.i.i.i

.preheader.i46.i.i.i.i:                           ; preds = %bb.bm
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader.i46.i.i.i.i
  %.011.i47.i.i.i.i = phi i64 [ %i.mz, %.preheader.i46.i.i.i.i ], [ %i.nr, %bb.bn ] ; 3 uses
  %i.nb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47.i.i.i.i, i1 true) ; 2 uses
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = or disjoint i32 %i.hn, %i.nc            ; 2 uses
  %i.ne = add nsw i32 %i.nd, 1                    ; 2 uses
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.na, i32 noundef %i.ne)
  %i.nf = load ptr, ptr %i.na, align 8, !tbaa !100 ; 2 uses
  tail call void @_ZN8facebook5velox4exec10EvalErrors14ensureCapacityEi(ptr noundef nonnull align 8 dereferenceable(40) %i.nf, i32 noundef %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !137
  %i.ni = sext i32 %i.nd to i64
  %i.nj = trunc nuw nsw i64 %i.nb to i8
  %i.nk = and i8 %i.nj, 7
  %i.nl = shl nuw i8 1, %i.nk
  %i.nm = lshr i64 %i.ni, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nm ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !86
  %i.np = or i8 %i.no, %i.nl
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !86
  %i.nq = add nsw i64 %.011.i47.i.i.i.i, -1
  %i.nr = and i64 %i.nq, %.011.i47.i.i.i.i        ; 2 uses
  %.not10.i49.i.i.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not10.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit", label %bb.bn, !llvm.loop !367

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx9setErrorsERKS1_RKNSt15__exception_ptr13exception_ptrEE3$_1EEvT_.exit": ; preds = %bb.bn, %bb.ax, %bb.at, %bb.bm, %._crit_edge.i.i.i.i34, %bb.aw, %bb.au, %bb.as, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(38) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx26addElementErrorsToTopLevelERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS3_10EvalErrorsEEE3$_0EEvT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.h = load i8, ptr %i.g, align 1, !tbaa !158, !range !97, !noundef !98
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.c

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.b
  %.0.in.pre.i.i = load i8, ptr %i.f, align 4, !tbaa !159, !range !97
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !160
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !157  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !161
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !162    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %i.n, 2147483584                 ; 3 uses
  %i.t = zext nneg i32 %i.s to i64
  %.not37.i.i.not.i.i44.not = icmp eq i32 %i.s, 0
  br i1 %.not37.i.i.not.i.i44.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i45, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.t
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %indvars.iv.i.i45 = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.u = lshr exact i64 %indvars.iv.i.i45, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !143
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !7

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.not38.i.i.i.i = icmp eq i32 %i.n, %i.s
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.y = lshr i32 %i.n, 6
  %i.z = and i32 %i.n, 63
  %i.aa = zext nneg i32 %i.z to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.aa
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !143
  %.demorgan.i.i = or i64 %i.ad, %notmask.i40.i.i.i.i
  %i.ae = icmp eq i64 %.demorgan.i.i, -1
  %i.af = zext i1 %i.ae to i16
  %i.ag = or disjoint i16 %i.af, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.h, %.critedge.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.d ], [ 256, %bb.c ], [ 257, %bb.e ], [ 257, %.critedge.i.i.i.i ], [ %i.ag, %bb.h ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.f, align 4
  %i.ah = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ah, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !157 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !160 ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx26addElementErrorsToTopLevelERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS3_10EvalErrorsEEE3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.i
  %i.an = sext i32 %i.al to i64
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i", %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.an, %.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i" ] ; 6 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !124
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.i, %i.at
  br i1 %i.au, label %_ZNK8facebook5velox4exec10EvalErrors10hasErrorAtEi.exit.i.i.i, label %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i"

_ZNK8facebook5velox4exec10EvalErrors10hasErrorAtEi.exit.i.i.i: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137
  %i.ax = lshr i64 %indvars.iv.i, 6
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !143
  %i.ba = and i64 %indvars.iv.i, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.az, %i.bb
  %.not.i.i4.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i4.i, label %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i", label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec10EvalErrors10hasErrorAtEi.exit.i.i.i
  %i.bd = add nsw i32 %i.aq, 1
  tail call void @_ZNK8facebook5velox4exec7EvalCtx22ensureErrorsVectorSizeERSt10shared_ptrINS1_10EvalErrorsEEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.bd)
  %i.be = load ptr, ptr %3, align 8, !tbaa !100
  %i.bf = trunc nsw i64 %indvars.iv.i to i32
  tail call void @_ZN8facebook5velox4exec10EvalErrors9copyErrorERKS2_ii(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i32 noundef %i.bf, i32 noundef %i.aq)
  br label %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i"

"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i": ; preds = %bb.k, %_ZNK8facebook5velox4exec10EvalErrors10hasErrorAtEi.exit.i.i.i, %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.aj, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx26addElementErrorsToTopLevelERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS3_10EvalErrorsEEE3$_0EEvT_.exit", label %bb.j, !llvm.loop !379

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !162   ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !160 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i, label %bb.m, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx26addElementErrorsToTopLevelERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS3_10EvalErrorsEEE3$_0EEvT_.exit"

bb.m:                                             ; preds = %bb.l
  %i.bl = add i32 %i.bi, 63                       ; 2 uses
  %i.bm = srem i32 %i.bl, 64
  %i.bn = sub nsw i32 %i.bl, %i.bm                ; 6 uses
  %i.bo = and i32 %i.bk, -64                      ; 6 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bq = ashr i32 %i.bk, 6
  %i.br = and i32 %i.bk, 63
  %i.bs = zext nneg i32 %i.br to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bs
  %i.bt = xor i64 %notmask.i.i.i.i.i, -1
  %i.bu = sub nsw i32 %i.bn, %i.bi                ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bv
  %i.bw = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bx = sub nsw i32 64, %i.bu
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl i64 %i.bw, %i.by
  %i.ca = and i64 %i.bz, %i.bt
  %i.cb = sext i32 %i.bq to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !143
  %i.ce = and i64 %i.ca, %i.cd                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx26addElementErrorsToTopLevelERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS3_10EvalErrorsEEE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.n, %"_ZZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEEENK3$_0clIiEEDaT_.exit.i.i.i.i.i"
end_hunk_1

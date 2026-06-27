inline.NumInlined: 2341
inline.NumDeleted: 1232
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit442

bb.j:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKiSaIS1_EED2Ev.exit440

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ] ; 7 uses
  %i.av = load ptr, ptr %12, align 8, !tbaa !212
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit unwind label %bb.l

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit:  ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !215
  %i.ba = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.az, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !203
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !230
  %i.be = load ptr, ptr %13, align 8, !tbaa !205
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !209
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !247
  %i.bi = load ptr, ptr %14, align 8, !tbaa !205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !209
  %i.bk = load ptr, ptr %12, align 8, !tbaa !212
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit150 unwind label %bb.l ; 2 uses

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit150: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !248 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.k, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit150
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bm)
          to label %.noexc151 unwind label %bb.l

.noexc151:                                        ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.bn, align 8, !tbaa !248
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc151, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit150
  %i.bp = phi ptr [ %.pre.i, %.noexc151 ], [ %i.bo, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit150 ]
  %i.bq = load ptr, ptr %15, align 8, !tbaa !205
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !209
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !249

bb.l:                                             ; preds = %bb.k, %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit, %.lr.ph
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

._crit_edge:                                      ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit, %bb.g
  %.sroa.14.0565594604860 = phi ptr [ null, %bb.g ], [ %i.v, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ] ; 2 uses
  %.sroa.0470.0582587606837 = phi ptr [ null, %bb.g ], [ %i.u, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bw = load ptr, ptr %4, align 8, !tbaa !250
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !265 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !287
  %i.ca = sext i32 %i.bz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !293
  store i32 0, ptr %11, align 4, !tbaa !47, !noalias !293
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 1, ptr %i.cb, align 4, !tbaa !296, !noalias !293
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %16, i64 noundef %i.ca, ptr noundef %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %11, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.au

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cc = load ptr, ptr %16, align 8, !tbaa !297  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !298
  %i.cf = and i8 %i.ce, 2
  %.not.i153 = icmp eq i8 %i.cf, 0
  br i1 %.not.i153, label %bb.o, label %bb.n, !prof !126

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #24
          to label %.noexc154 unwind label %bb.av

.noexc154:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !303 ; 7 uses
  store ptr %i.ch, ptr %i.d, align 8, !tbaa !209
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !304, !range !100, !noundef !101
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.p

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.o
  %.0.in.pre.i.i = load i8, ptr %i.ci, align 4, !tbaa !117, !range !100
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !305
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.q, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cp = load i32, ptr %i.by, align 8, !tbaa !287 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !306
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %1, align 8, !tbaa !307   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.s, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.cu = and i32 %i.cp, 2147483584               ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %.not37.i.i.not.i.i927.not = icmp eq i32 %i.cu, 0
  br i1 %.not37.i.i.not.i.i927.not, label %.critedge.i.i.i.i, label %.lr.ph930

bb.t:                                             ; preds = %.lr.ph930
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i928, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cv
  br i1 %.not37.i.i.not.i.i, label %.lr.ph930, label %.critedge.i.i.i.i, !llvm.loop !308

.lr.ph930:                                        ; preds = %bb.s, %bb.t
  %indvars.iv.i.i928 = phi i64 [ %indvars.iv.next.i.i, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.cw = lshr exact i64 %indvars.iv.i.i928, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !160
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !308

.critedge.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %.not38.i.i.i.i = icmp eq i32 %i.cp, %i.cu
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i.i.i
  %i.da = lshr i32 %i.cp, 6
  %i.db = and i32 %i.cp, 63
  %i.dc = zext nneg i32 %i.db to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.dc
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !160
  %.demorgan.i.i = or i64 %i.df, %notmask.i40.i.i.i.i
  %i.dg = icmp eq i64 %.demorgan.i.i, -1
  %i.dh = zext i1 %i.dg to i16
  %i.di = or disjoint i16 %i.dh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph930, %bb.u, %.critedge.i.i.i.i, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.q ], [ 256, %bb.p ], [ 257, %bb.r ], [ 257, %.critedge.i.i.i.i ], [ %i.di, %bb.u ], [ 256, %.lr.ph930 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ci, align 4
  %i.dj = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.dj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !305 ; 8 uses
  br i1 %.0.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.dm = load i32, ptr %i.by, align 8, !tbaa !287 ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i:                                         ; preds = %bb.v
  %i.do = sext i32 %i.dl to i64
  %wide.trip.count.i = sext i32 %i.dm to i64
  %i.dp = load ptr, ptr %13, align 8              ; 4 uses
  %i.dq = load ptr, ptr %15, align 8              ; 4 uses
  %i.dr = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i
  %.19544 = phi i1 [ true, %.lr.ph.i ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 4 uses
  %.19 = phi i1 [ true, %.lr.ph.i ], [ %.20, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.do, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 6 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.x, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !209
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i = call i32 @llvm.smax.i32(i32 %i.ea, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.ds, 1
  br i1 %exitcond.peel.not.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.ds to i64
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !209
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 2 uses
  %i.ee = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter1108 = and i64 %i.ee, 1
  %i.ef = icmp eq i32 %i.ds, 2
  br i1 %i.ef, label %.epil.preheader1107, label %.peel.next.i.i.i.new

.peel.next.i.i.i.new:                             ; preds = %.peel.next.i.i.i
  %unroll_iter1114 = and i64 %i.ee, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.peel.next.i.i.i.new
  %.21546 = phi i1 [ %.19544, %.peel.next.i.i.i.new ], [ %42, %bb.y ]
  %.21 = phi i1 [ %.19, %.peel.next.i.i.i.new ], [ %i.fm, %bb.y ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.y ] ; 5 uses
  %.01422.i.i.i = phi i32 [ %i.ed, %.peel.next.i.i.i.new ], [ %i.fj, %bb.y ]
  %.02021.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i.new ], [ %.sroa.speculated.i.i.i.1, %bb.y ] ; 2 uses
  %niter1115 = phi i64 [ 0, %.peel.next.i.i.i.new ], [ %niter1115.next.1, %bb.y ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !209
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !209
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 2 uses
  %i.ep = icmp eq i32 %.02021.i.i.i, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !209
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.em
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 2 uses
  %i.eu = icmp eq i32 %.01422.i.i.i, %i.et
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i, i32 %i.eo) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !209
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !209
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 2 uses
  %i.fe = icmp eq i32 %.sroa.speculated.i.i.i, %i.fd
  %i.ff = and i1 %i.fe, %i.ep
  %42 = select i1 %i.ff, i1 %.21546, i1 false     ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !209
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fb
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3  ; 3 uses
  %i.fk = icmp eq i32 %i.et, %i.fj
  %i.fl = select i1 %i.fk, i1 %i.eu, i1 false
  %i.fm = select i1 %i.fl, i1 %.21, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i, i32 %i.fd) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1115.next.1 = add nuw i64 %niter1115, 2   ; 2 uses
  %niter1115.ncmp.1 = icmp eq i64 %niter1115.next.1, %unroll_iter1114
  br i1 %niter1115.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.peel.next.i.i.i
  %.21546.epil.init = phi i1 [ %.19544, %.peel.next.i.i.i ], [ %42, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.21.epil.init = phi i1 [ %.19, %.peel.next.i.i.i ], [ %i.fm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.epil.init = phi i32 [ %i.ed, %.peel.next.i.i.i ], [ %i.fj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i ], [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1113 = trunc i64 %i.ee to i1
  call void @llvm.assume(i1 %lcmp.mod1113)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i.epil.init
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !209
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i.epil.init
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !209
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %indvars.iv.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 2 uses
  %i.fw = icmp eq i32 %.02021.i.i.i.epil.init, %i.fv
  %43 = select i1 %i.fw, i1 %.21546.epil.init, i1 false
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i.epil.init
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !209
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ft
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = icmp eq i32 %.01422.i.i.i.epil.init, %i.ga
  %i.gc = select i1 %i.gb, i1 %.21.epil.init, i1 false
  %.sroa.speculated.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.epil.init, i32 %i.fv)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %.epil.preheader1107, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %bb.x, %bb.w
  %.20545 = phi i1 [ %.19544, %bb.x ], [ %.19544, %bb.w ], [ %42, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %43, %.epil.preheader1107 ] ; 2 uses
  %.20 = phi i1 [ %.19, %bb.x ], [ %.19, %bb.w ], [ %i.fm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.gc, %.epil.preheader1107 ] ; 2 uses
  %.020.lcssa.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %bb.x ], [ 0, %bb.w ], [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.epil, %.epil.preheader1107 ] ; 2 uses
  %i.gd = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ge = add nsw i32 %i.gd, %.020.lcssa.i.i.i
  store i32 %i.ge, ptr %i.b, align 4, !tbaa !3
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store i32 %.020.lcssa.i.i.i, ptr %i.gf, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.w, !llvm.loop !311

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.gg = load ptr, ptr %1, align 8, !tbaa !307   ; 4 uses
  %i.gh = load i32, ptr %i.by, align 8, !tbaa !287 ; 7 uses
  %.not.i.i.i.i155 = icmp slt i32 %i.dl, %i.gh
  br i1 %.not.i.i.i.i155, label %bb.aa, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gi = add i32 %i.dl, 63                       ; 2 uses
  %i.gj = srem i32 %i.gi, 64
  %i.gk = sub nsw i32 %i.gi, %i.gj                ; 6 uses
  %i.gl = and i32 %i.gh, -64                      ; 6 uses
  %i.gm = icmp slt i32 %i.gl, %i.gk
  br i1 %i.gm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gn = ashr i32 %i.gh, 6
  %i.go = and i32 %i.gh, 63
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i.i.i.i.i, -1
  %i.gr = sub nsw i32 %i.gk, %i.dl                ; 2 uses
  %i.gs = zext nneg i32 %i.gr to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.gs
  %i.gt = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.gu = sub nsw i32 64, %i.gr
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl i64 %i.gt, %i.gv
  %i.gx = and i64 %i.gw, %i.gq
  %i.gy = sext i32 %i.gn to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !160
  %i.hb = and i64 %i.gx, %i.ha                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ab
  %i.hc = load ptr, ptr %13, align 8              ; 4 uses
  %i.hd = load ptr, ptr %15, align 8              ; 4 uses
  %i.he = load ptr, ptr %14, align 8              ; 4 uses
  %i.hf = sext i32 %i.gl to i64
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i
  %.16541 = phi i1 [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ true, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.16 = phi i1 [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ true, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.011.i.i.i.i.i = phi i64 [ %i.jx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %i.hb, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.hg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.hh = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %i.hj = or disjoint i64 %i.hg, %i.hf            ; 5 uses
  br i1 %i.hi, label %bb.ac, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

bb.ac:                                            ; preds = %.preheader.i.i.i.i.i
  %i.hk = load ptr, ptr %i.hc, align 8, !tbaa !209
  %i.hl = load ptr, ptr %i.hd, align 8, !tbaa !209
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hj
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.hq, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i.i.i.i.i = icmp eq i32 %i.hh, 1
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %bb.ac
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.hh to i64
  %i.hr = load ptr, ptr %i.he, align 8, !tbaa !209
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.ho
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3  ; 2 uses
  %i.hu = add nsw i64 %wide.trip.count.i.i.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1099 = and i64 %i.hu, 1
  %i.hv = icmp eq i32 %i.hh, 2
  br i1 %i.hv, label %.epil.preheader1098, label %.peel.next.i.i.i.i.i.i.i.new

.peel.next.i.i.i.i.i.i.i.new:                     ; preds = %.peel.next.i.i.i.i.i.i.i
  %unroll_iter1105 = and i64 %i.hu, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.peel.next.i.i.i.i.i.i.i.new
  %.18543 = phi i1 [ %.16541, %.peel.next.i.i.i.i.i.i.i.new ], [ %44, %bb.ad ]
  %.18 = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.jc, %bb.ad ]
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %bb.ad ] ; 5 uses
  %.01422.i.i.i.i.i.i.i = phi i32 [ %i.ht, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.iz, %bb.ad ]
  %.02021.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i.new ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %bb.ad ] ; 2 uses
  %niter1106 = phi i64 [ 0, %.peel.next.i.i.i.i.i.i.i.new ], [ %niter1106.next.1, %bb.ad ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !209
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !209
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.hj
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3  ; 2 uses
  %i.if = icmp eq i32 %.02021.i.i.i.i.i.i.i, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !209
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ic
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 2 uses
  %i.ik = icmp eq i32 %.01422.i.i.i.i.i.i.i, %i.ij
  %.sroa.speculated.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i, i32 %i.ie) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !209
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !209
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.hj
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = sext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3  ; 2 uses
  %i.iu = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i, %i.it
  %i.iv = and i1 %i.iu, %i.if
  %44 = select i1 %i.iv, i1 %.18543, i1 false     ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !209
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.ir
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3  ; 3 uses
  %i.ja = icmp eq i32 %i.ij, %i.iz
  %i.jb = select i1 %i.ja, i1 %i.ik, i1 false
  %i.jc = select i1 %i.jb, i1 %.18, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i.i.i.i.i, i32 %i.it) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter1106.next.1 = add nuw i64 %niter1106, 2   ; 2 uses
  %niter1106.ncmp.1 = icmp eq i64 %niter1106.next.1, %unroll_iter1105
  br i1 %niter1106.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1100.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %.epil.preheader1098

.epil.preheader1098:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i.i.i.i.i
  %.18543.epil.init = phi i1 [ %.16541, %.peel.next.i.i.i.i.i.i.i ], [ %44, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.18.epil.init = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i ], [ %i.jc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.i.i.i.i.epil.init = phi i32 [ %i.ht, %.peel.next.i.i.i.i.i.i.i ], [ %i.iz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1104 = trunc i64 %i.hu to i1
  call void @llvm.assume(i1 %lcmp.mod1104)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !209
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !209
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.hj
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3  ; 2 uses
  %i.jm = icmp eq i32 %.02021.i.i.i.i.i.i.i.epil.init, %i.jl
  %45 = select i1 %i.jm, i1 %.18543.epil.init, i1 false
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !209
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jj
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = icmp eq i32 %.01422.i.i.i.i.i.i.i.epil.init, %i.jq
  %i.js = select i1 %i.jr, i1 %.18.epil.init, i1 false
  %.sroa.speculated.i.i.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i.epil.init, i32 %i.jl)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %.epil.preheader1098, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i, %bb.ac
  %.17542 = phi i1 [ %.16541, %bb.ac ], [ %.16541, %.preheader.i.i.i.i.i ], [ %44, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %45, %.epil.preheader1098 ] ; 2 uses
  %.17 = phi i1 [ %.16, %bb.ac ], [ %.16, %.preheader.i.i.i.i.i ], [ %i.jc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.js, %.epil.preheader1098 ] ; 2 uses
  %.020.lcssa.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %bb.ac ], [ 0, %.preheader.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.i.i.i.i.epil, %.epil.preheader1098 ] ; 2 uses
  %i.jt = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ju = add nsw i32 %i.jt, %.020.lcssa.i.i.i.i.i.i.i
  store i32 %i.ju, ptr %i.b, align 4, !tbaa !3
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.hj
  store i32 %.020.lcssa.i.i.i.i.i.i.i, ptr %i.jv, align 4, !tbaa !3
  %i.jw = add nsw i64 %.011.i.i.i.i.i, -1
  %i.jx = and i64 %i.jw, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i, !llvm.loop !312

bb.ae:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.dl, %i.gk
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jy = sdiv i32 %i.dl, 64                      ; 2 uses
  %i.jz = sub nsw i32 %i.gk, %i.dl                ; 2 uses
  %i.ka = zext nneg i32 %i.jz to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ka
  %i.kb = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.kc = sub nsw i32 64, %i.jz
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %i.kb, %i.kd
  %i.kf = sext i32 %i.jy to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !160
  %i.ki = and i64 %i.kh, %i.ke                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.af
  %i.kj = shl nsw i32 %i.jy, 6
  %i.kk = load ptr, ptr %13, align 8              ; 4 uses
  %i.kl = load ptr, ptr %15, align 8              ; 4 uses
  %i.km = load ptr, ptr %14, align 8              ; 4 uses
  %i.kn = sext i32 %i.kj to i64
  br label %bb.ag

bb.ag:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %.preheader.i37.i.i.i.i
  %.0525 = phi i1 [ true, %.preheader.i37.i.i.i.i ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 4 uses
  %.0524 = phi i1 [ true, %.preheader.i37.i.i.i.i ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 4 uses
  %.011.i38.i.i.i.i = phi i64 [ %i.ki, %.preheader.i37.i.i.i.i ], [ %i.nf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %i.ko = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.kp = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  %i.kr = or disjoint i64 %i.ko, %i.kn            ; 5 uses
  br i1 %i.kq, label %bb.ah, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ks = load ptr, ptr %i.kk, align 8, !tbaa !209
  %i.kt = load ptr, ptr %i.kl, align 8, !tbaa !209
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.kr
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i46.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i47.i.i.i.i = icmp eq i32 %i.kp, 1
  br i1 %exitcond.peel.not.i.i.i47.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, label %.peel.next.i.i.i48.i.i.i.i

.peel.next.i.i.i48.i.i.i.i:                       ; preds = %bb.ah
  %wide.trip.count.i.i.i45.i.i.i.i = zext nneg i32 %i.kp to i64
  %i.kz = load ptr, ptr %i.km, align 8, !tbaa !209
  %i.la = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.kw
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !3  ; 2 uses
  %i.lc = add nsw i64 %wide.trip.count.i.i.i45.i.i.i.i, -1 ; 3 uses
  %xtraiter = and i64 %i.lc, 1
  %i.ld = icmp eq i32 %i.kp, 2
  br i1 %i.ld, label %.epil.preheader, label %.peel.next.i.i.i48.i.i.i.i.new

.peel.next.i.i.i48.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i48.i.i.i.i
  %unroll_iter = and i64 %i.lc, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.peel.next.i.i.i48.i.i.i.i.new
  %.15540 = phi i1 [ %.0525, %.peel.next.i.i.i48.i.i.i.i.new ], [ %46, %bb.ai ]
  %.15 = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mk, %bb.ai ]
  %indvars.iv.i.i.i49.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i.new ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %bb.ai ] ; 5 uses
  %.01422.i.i.i50.i.i.i.i = phi i32 [ %i.lb, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mh, %bb.ai ]
  %.02021.i.i.i51.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i.new ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.peel.next.i.i.i48.i.i.i.i.new ], [ %niter.next.1, %bb.ai ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !209
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !209
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.kr
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !3
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3  ; 2 uses
  %i.ln = icmp eq i32 %.02021.i.i.i51.i.i.i.i, %i.lm
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !209
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lk
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3  ; 2 uses
  %i.ls = icmp eq i32 %.01422.i.i.i50.i.i.i.i, %i.lr
  %.sroa.speculated.i.i.i52.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i, i32 %i.lm) ; 2 uses
  %indvars.iv.next.i.i.i53.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 1 ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !209
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !209
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.kr
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3  ; 2 uses
  %i.mc = icmp eq i32 %.sroa.speculated.i.i.i52.i.i.i.i, %i.mb
  %i.md = and i1 %i.mc, %i.ln
  %46 = select i1 %i.md, i1 %.15540, i1 false     ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !209
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.lz
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3  ; 3 uses
  %i.mi = icmp eq i32 %i.lr, %i.mh
  %i.mj = select i1 %i.mi, i1 %i.ls, i1 false
  %i.mk = select i1 %i.mj, i1 %.15, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i52.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i52.i.i.i.i, i32 %i.mb) ; 3 uses
  %indvars.iv.next.i.i.i53.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i48.i.i.i.i
  %.15540.epil.init = phi i1 [ %.0525, %.peel.next.i.i.i48.i.i.i.i ], [ %46, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.15.epil.init = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i49.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i50.i.i.i.i.epil.init = phi i32 [ %i.lb, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i51.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1070 = trunc i64 %i.lc to i1
  call void @llvm.assume(i1 %lcmp.mod1070)
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !209
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !209
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.kr
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mm, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3  ; 2 uses
  %i.mu = icmp eq i32 %.02021.i.i.i51.i.i.i.i.epil.init, %i.mt
  %47 = select i1 %i.mu, i1 %.15540.epil.init, i1 false
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !209
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mr
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !3
  %i.mz = icmp eq i32 %.01422.i.i.i50.i.i.i.i.epil.init, %i.my
  %i.na = select i1 %i.mz, i1 %.15.epil.init, i1 false
  %.sroa.speculated.i.i.i52.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i.epil.init, i32 %i.mt)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i: ; preds = %.epil.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %bb.ag, %bb.ah
  %.1526 = phi i1 [ %.0525, %bb.ah ], [ %.0525, %bb.ag ], [ %46, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %47, %.epil.preheader ] ; 2 uses
  %.1 = phi i1 [ %.0524, %bb.ah ], [ %.0524, %bb.ag ], [ %i.mk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %i.na, %.epil.preheader ] ; 2 uses
  %.020.lcssa.i.i.i43.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %bb.ah ], [ 0, %bb.ag ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i52.i.i.i.i.epil, %.epil.preheader ] ; 2 uses
  %i.nb = load i32, ptr %i.b, align 4, !tbaa !3
  %i.nc = add nsw i32 %i.nb, %.020.lcssa.i.i.i43.i.i.i.i
  store i32 %i.nc, ptr %i.b, align 4, !tbaa !3
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.kr
  store i32 %.020.lcssa.i.i.i43.i.i.i.i, ptr %i.nd, align 4, !tbaa !3
  %i.ne = add i64 %.011.i38.i.i.i.i, -1
  %i.nf = and i64 %i.ne, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i44.i.i.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not10.i44.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.ag, !llvm.loop !312

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %bb.af, %bb.ae
  %.2527 = phi i1 [ true, %bb.ae ], [ true, %bb.af ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ae ], [ true, %bb.af ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %i.ng = add nsw i32 %i.gk, 64                   ; 2 uses
  %.not3395.i.i.i.i = icmp sgt i32 %i.ng, %i.gl
  br i1 %.not3395.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i
  %.5530 = phi i1 [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.5 = phi i1 [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.gh, %i.gl
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.aq

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %.3528 = phi i1 [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %.3 = phi i1 [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %i.nh = phi i32 [ %i.th, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ng, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %.096.i.i.i.i = phi i32 [ %i.nh, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.gk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %i.ni = sdiv i32 %.096.i.i.i.i, 64              ; 3 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !160 ; 2 uses
  switch i64 %i.nl, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.aj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.nm = shl nsw i32 %i.ni, 6
  %i.nn = load ptr, ptr %13, align 8              ; 4 uses
  %i.no = load ptr, ptr %15, align 8              ; 4 uses
  %i.np = load ptr, ptr %14, align 8              ; 4 uses
  %i.nq = sext i32 %i.nm to i64
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nr = shl nsw i32 %i.ni, 6                    ; 2 uses
  %i.ns = add i32 %i.nr, 64
  %i.nt = sext i32 %i.ns to i64
  %.0.off.i.i.i.i = add i32 %.096.i.i.i.i, 127
  %.not33.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not33.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph32.i.i.i.i.i

.lr.ph32.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nu = sext i32 %i.nr to i64
  %i.nv = load ptr, ptr %13, align 8              ; 4 uses
  %i.nw = load ptr, ptr %15, align 8              ; 4 uses
  %i.nx = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph32.i.i.i.i.i
  %.9534 = phi i1 [ %.3528, %.lr.ph32.i.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  %.9 = phi i1 [ %.3, %.lr.ph32.i.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  %.031.i.i.i.i.i = phi i64 [ %i.nu, %.lr.ph32.i.i.i.i.i ], [ %i.qn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.ny = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %bb.al, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %sext.i.i.i.i.i.i = shl i64 %.031.i.i.i.i.i, 32
  %i.oa = ashr exact i64 %sext.i.i.i.i.i.i, 32    ; 4 uses
  %i.ob = load ptr, ptr %i.nv, align 8, !tbaa !209
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !209
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oa
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !3
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i58.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.oh, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i59.i.i.i.i = icmp eq i32 %i.ny, 1
  br i1 %exitcond.peel.not.i.i.i59.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i60.i.i.i.i

.peel.next.i.i.i60.i.i.i.i:                       ; preds = %bb.al
  %wide.trip.count.i.i.i57.i.i.i.i = zext nneg i32 %i.ny to i64
  %i.oi = load ptr, ptr %i.nx, align 8, !tbaa !209
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.of
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !3  ; 2 uses
  %i.ol = add nsw i64 %wide.trip.count.i.i.i57.i.i.i.i, -1 ; 3 uses
  %xtraiter1072 = and i64 %i.ol, 1
  %i.om = icmp eq i32 %i.ny, 2
  br i1 %i.om, label %.epil.preheader1071, label %.peel.next.i.i.i60.i.i.i.i.new

.peel.next.i.i.i60.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i60.i.i.i.i
  %unroll_iter1078 = and i64 %i.ol, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.peel.next.i.i.i60.i.i.i.i.new
  %.11536 = phi i1 [ %.9534, %.peel.next.i.i.i60.i.i.i.i.new ], [ %48, %bb.am ]
  %.11 = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.pt, %bb.am ]
  %indvars.iv.i.i.i61.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i.new ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %bb.am ] ; 5 uses
  %.01422.i.i.i62.i.i.i.i = phi i32 [ %i.ok, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.pq, %bb.am ]
  %.02021.i.i.i63.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i.new ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %bb.am ] ; 2 uses
  %niter1079 = phi i64 [ 0, %.peel.next.i.i.i60.i.i.i.i.new ], [ %niter1079.next.1, %bb.am ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !209
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !209
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.oa
  %i.os = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !3  ; 2 uses
  %i.ow = icmp eq i32 %.02021.i.i.i63.i.i.i.i, %i.ov
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !209
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.ot
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !3  ; 2 uses
  %i.pb = icmp eq i32 %.01422.i.i.i62.i.i.i.i, %i.pa
  %.sroa.speculated.i.i.i64.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i, i32 %i.ov) ; 2 uses
  %indvars.iv.next.i.i.i65.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 1 ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !209
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !209
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.oa
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = sext i32 %i.ph to i64                   ; 2 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pd, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !3  ; 2 uses
  %i.pl = icmp eq i32 %.sroa.speculated.i.i.i64.i.i.i.i, %i.pk
  %i.pm = and i1 %i.pl, %i.ow
  %48 = select i1 %i.pm, i1 %.11536, i1 false     ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !209
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.pi
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3  ; 3 uses
  %i.pr = icmp eq i32 %i.pa, %i.pq
  %i.ps = select i1 %i.pr, i1 %i.pb, i1 false
  %i.pt = select i1 %i.ps, i1 %.11, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i64.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i64.i.i.i.i, i32 %i.pk) ; 3 uses
  %indvars.iv.next.i.i.i65.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 2 ; 2 uses
  %niter1079.next.1 = add nuw i64 %niter1079, 2   ; 2 uses
  %niter1079.ncmp.1 = icmp eq i64 %niter1079.next.1, %unroll_iter1078
  br i1 %niter1079.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %.epil.preheader1071

.epil.preheader1071:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i60.i.i.i.i
  %.11536.epil.init = phi i1 [ %.9534, %.peel.next.i.i.i60.i.i.i.i ], [ %48, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.11.epil.init = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i ], [ %i.pt, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i61.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i62.i.i.i.i.epil.init = phi i32 [ %i.ok, %.peel.next.i.i.i60.i.i.i.i ], [ %i.pq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i63.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1077 = trunc i64 %i.ol to i1
  call void @llvm.assume(i1 %lcmp.mod1077)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !209
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !209
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.oa
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = sext i32 %i.pz to i64                   ; 2 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.pv, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !3  ; 2 uses
  %i.qd = icmp eq i32 %.02021.i.i.i63.i.i.i.i.epil.init, %i.qc
  %49 = select i1 %i.qd, i1 %.11536.epil.init, i1 false
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !209
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.qa
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.qi = icmp eq i32 %.01422.i.i.i62.i.i.i.i.epil.init, %i.qh
  %i.qj = select i1 %i.qi, i1 %.11.epil.init, i1 false
  %.sroa.speculated.i.i.i64.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i.epil.init, i32 %i.qc)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %.epil.preheader1071, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %bb.al, %bb.ak
  %.10535 = phi i1 [ %.9534, %bb.al ], [ %.9534, %bb.ak ], [ %48, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %49, %.epil.preheader1071 ] ; 2 uses
  %.10 = phi i1 [ %.9, %bb.al ], [ %.9, %bb.ak ], [ %i.pt, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.qj, %.epil.preheader1071 ] ; 2 uses
  %.020.lcssa.i.i.i56.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %bb.al ], [ 0, %bb.ak ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i64.i.i.i.i.epil, %.epil.preheader1071 ] ; 2 uses
  %i.qk = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ql = add nsw i32 %i.qk, %.020.lcssa.i.i.i56.i.i.i.i
  store i32 %i.ql, ptr %i.b, align 4, !tbaa !3
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.031.i.i.i.i.i
  store i32 %.020.lcssa.i.i.i56.i.i.i.i, ptr %i.qm, align 4, !tbaa !3
  %i.qn = add nuw i64 %.031.i.i.i.i.i, 1          ; 2 uses
  %i.qo = icmp ult i64 %i.qn, %i.nt
  br i1 %i.qo, label %bb.ak, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !313

bb.an:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.12537 = phi i1 [ %.3528, %.lr.ph.i.i.i.i.i ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 4 uses
  %.12 = phi i1 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 4 uses
  %.01530.i.i.i.i.i = phi i64 [ %i.nl, %.lr.ph.i.i.i.i.i ], [ %i.tg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 3 uses
  %i.qp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01530.i.i.i.i.i, i1 true)
  %i.qq = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  %i.qs = or disjoint i64 %i.qp, %i.nq            ; 5 uses
  br i1 %i.qr, label %bb.ao, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.qt = load ptr, ptr %i.nn, align 8, !tbaa !209
  %i.qu = load ptr, ptr %i.no, align 8, !tbaa !209
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i19.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.qz, i32 0) ; 3 uses
  %exitcond.peel.not.i.i20.i.i.i.i.i = icmp eq i32 %i.qq, 1
  br i1 %exitcond.peel.not.i.i20.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, label %.peel.next.i.i21.i.i.i.i.i

.peel.next.i.i21.i.i.i.i.i:                       ; preds = %bb.ao
  %wide.trip.count.i.i18.i.i.i.i.i = zext nneg i32 %i.qq to i64
  %i.ra = load ptr, ptr %i.np, align 8, !tbaa !209
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.qx
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !3  ; 2 uses
  %i.rd = add nsw i64 %wide.trip.count.i.i18.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1081 = and i64 %i.rd, 1
  %i.re = icmp eq i32 %i.qq, 2
  br i1 %i.re, label %.epil.preheader1080, label %.peel.next.i.i21.i.i.i.i.i.new

.peel.next.i.i21.i.i.i.i.i.new:                   ; preds = %.peel.next.i.i21.i.i.i.i.i
  %unroll_iter1087 = and i64 %i.rd, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.peel.next.i.i21.i.i.i.i.i.new
  %.14539 = phi i1 [ %.12537, %.peel.next.i.i21.i.i.i.i.i.new ], [ %50, %bb.ap ]
  %.14 = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.sl, %bb.ap ]
  %indvars.iv.i.i22.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i.new ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %bb.ap ] ; 5 uses
  %.01422.i.i23.i.i.i.i.i = phi i32 [ %i.rc, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.si, %bb.ap ]
  %.02021.i.i24.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i.new ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %bb.ap ] ; 2 uses
  %niter1088 = phi i64 [ 0, %.peel.next.i.i21.i.i.i.i.i.new ], [ %niter1088.next.1, %bb.ap ]
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !209
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !209
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.qs
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !3
  %i.rl = sext i32 %i.rk to i64                   ; 2 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !3  ; 2 uses
  %i.ro = icmp eq i32 %.02021.i.i24.i.i.i.i.i, %i.rn
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !209
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rl
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !3  ; 2 uses
  %i.rt = icmp eq i32 %.01422.i.i23.i.i.i.i.i, %i.rs
  %.sroa.speculated.i.i25.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i, i32 %i.rn) ; 2 uses
  %indvars.iv.next.i.i26.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !209
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !209
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.qs
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !3
  %i.sa = sext i32 %i.rz to i64                   ; 2 uses
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !3  ; 2 uses
  %i.sd = icmp eq i32 %.sroa.speculated.i.i25.i.i.i.i.i, %i.sc
  %i.se = and i1 %i.sd, %i.ro
  %50 = select i1 %i.se, i1 %.14539, i1 false     ; 3 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !209
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.sa
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !3  ; 3 uses
  %i.sj = icmp eq i32 %i.rs, %i.si
  %i.sk = select i1 %i.sj, i1 %i.rt, i1 false
  %i.sl = select i1 %i.sk, i1 %.14, i1 false      ; 3 uses
  %.sroa.speculated.i.i25.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i25.i.i.i.i.i, i32 %i.sc) ; 3 uses
  %indvars.iv.next.i.i26.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 2 ; 2 uses
  %niter1088.next.1 = add nuw i64 %niter1088, 2   ; 2 uses
  %niter1088.ncmp.1 = icmp eq i64 %niter1088.next.1, %unroll_iter1087
  br i1 %niter1088.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ap
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  br i1 %lcmp.mod1082.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, label %.epil.preheader1080

.epil.preheader1080:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i21.i.i.i.i.i
  %.14539.epil.init = phi i1 [ %.12537, %.peel.next.i.i21.i.i.i.i.i ], [ %50, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.14.epil.init = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i ], [ %i.sl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i22.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i23.i.i.i.i.i.epil.init = phi i32 [ %i.rc, %.peel.next.i.i21.i.i.i.i.i ], [ %i.si, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i24.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1086 = trunc i64 %i.rd to i1
  call void @llvm.assume(i1 %lcmp.mod1086)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !209
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !209
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.qs
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !3
  %i.ss = sext i32 %i.sr to i64                   ; 2 uses
  %i.st = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !3  ; 2 uses
  %i.sv = icmp eq i32 %.02021.i.i24.i.i.i.i.i.epil.init, %i.su
  %51 = select i1 %i.sv, i1 %.14539.epil.init, i1 false
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !209
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.ss
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !3
  %i.ta = icmp eq i32 %.01422.i.i23.i.i.i.i.i.epil.init, %i.sz
  %i.tb = select i1 %i.ta, i1 %.14.epil.init, i1 false
  %.sroa.speculated.i.i25.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i.epil.init, i32 %i.su)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i: ; preds = %.epil.preheader1080, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %bb.an, %bb.ao
  %.13538 = phi i1 [ %.12537, %bb.ao ], [ %.12537, %bb.an ], [ %50, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %51, %.epil.preheader1080 ] ; 2 uses
  %.13 = phi i1 [ %.12, %bb.ao ], [ %.12, %bb.an ], [ %i.sl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %i.tb, %.epil.preheader1080 ] ; 2 uses
  %.020.lcssa.i.i17.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %bb.ao ], [ 0, %bb.an ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i25.i.i.i.i.i.epil, %.epil.preheader1080 ] ; 2 uses
  %i.tc = load i32, ptr %i.b, align 4, !tbaa !3
  %i.td = add nsw i32 %i.tc, %.020.lcssa.i.i17.i.i.i.i.i
  store i32 %i.td, ptr %i.b, align 4, !tbaa !3
  %i.te = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.qs
  store i32 %.020.lcssa.i.i17.i.i.i.i.i, ptr %i.te, align 4, !tbaa !3
  %i.tf = add i64 %.01530.i.i.i.i.i, -1
  %i.tg = and i64 %i.tf, %.01530.i.i.i.i.i        ; 2 uses
  %.not.i71.i.i.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i71.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.an, !llvm.loop !314

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i
  %.4529 = phi i1 [ %.3528, %.lr.ph.i.i.i.i ], [ %.3528, %bb.aj ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %.4 = phi i1 [ %.3, %.lr.ph.i.i.i.i ], [ %.3, %bb.aj ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %i.th = add nsw i32 %i.nh, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.th, %i.gl
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !315

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ti = ashr i32 %i.gh, 6
  %i.tj = and i32 %i.gh, 63
  %i.tk = zext nneg i32 %i.tj to i64
  %notmask.i72.i.i.i.i = shl nsw i64 -1, %i.tk
  %i.tl = xor i64 %notmask.i72.i.i.i.i, -1
  %i.tm = sext i32 %i.ti to i64
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.tm
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !160
  %i.tp = and i64 %i.to, %i.tl                    ; 2 uses
  %.not.i73.i.i.i.i = icmp eq i64 %i.tp, 0
  br i1 %.not.i73.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i.preheader

.preheader.i74.i.i.i.i.preheader:                 ; preds = %bb.aq
  %i.tq = load ptr, ptr %13, align 8              ; 4 uses
  %i.tr = load ptr, ptr %15, align 8              ; 4 uses
  %i.ts = load ptr, ptr %14, align 8              ; 4 uses
  %i.tt = sext i32 %i.gl to i64
  br label %.preheader.i74.i.i.i.i

.preheader.i74.i.i.i.i:                           ; preds = %.preheader.i74.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i
  %.6531 = phi i1 [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5530, %.preheader.i74.i.i.i.i.preheader ] ; 4 uses
  %.6 = phi i1 [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5, %.preheader.i74.i.i.i.i.preheader ] ; 4 uses
  %.011.i75.i.i.i.i = phi i64 [ %i.wl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %i.tp, %.preheader.i74.i.i.i.i.preheader ] ; 3 uses
  %i.tu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i75.i.i.i.i, i1 true)
  %i.tv = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  %i.tx = or disjoint i64 %i.tu, %i.tt            ; 5 uses
  br i1 %i.tw, label %bb.ar, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

bb.ar:                                            ; preds = %.preheader.i74.i.i.i.i
  %i.ty = load ptr, ptr %i.tq, align 8, !tbaa !209
  %i.tz = load ptr, ptr %i.tr, align 8, !tbaa !209
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.tx
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !3
  %i.uc = sext i32 %i.ub to i64                   ; 2 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i83.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ue, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i84.i.i.i.i = icmp eq i32 %i.tv, 1
  br i1 %exitcond.peel.not.i.i.i84.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, label %.peel.next.i.i.i85.i.i.i.i

.peel.next.i.i.i85.i.i.i.i:                       ; preds = %bb.ar
  %wide.trip.count.i.i.i82.i.i.i.i = zext nneg i32 %i.tv to i64
  %i.uf = load ptr, ptr %i.ts, align 8, !tbaa !209
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.uc
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !3  ; 2 uses
  %i.ui = add nsw i64 %wide.trip.count.i.i.i82.i.i.i.i, -1 ; 3 uses
  %xtraiter1090 = and i64 %i.ui, 1
  %i.uj = icmp eq i32 %i.tv, 2
  br i1 %i.uj, label %.epil.preheader1089, label %.peel.next.i.i.i85.i.i.i.i.new

.peel.next.i.i.i85.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i85.i.i.i.i
  %unroll_iter1096 = and i64 %i.ui, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.peel.next.i.i.i85.i.i.i.i.new
  %.8533 = phi i1 [ %.6531, %.peel.next.i.i.i85.i.i.i.i.new ], [ %52, %bb.as ]
  %.8 = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.vq, %bb.as ]
  %indvars.iv.i.i.i86.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i.new ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %bb.as ] ; 5 uses
  %.01422.i.i.i87.i.i.i.i = phi i32 [ %i.uh, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.vn, %bb.as ]
  %.02021.i.i.i88.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i.new ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %bb.as ] ; 2 uses
  %niter1097 = phi i64 [ 0, %.peel.next.i.i.i85.i.i.i.i.new ], [ %niter1097.next.1, %bb.as ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !209
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !209
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.tx
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !3
  %i.uq = sext i32 %i.up to i64                   ; 2 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3  ; 2 uses
  %i.ut = icmp eq i32 %.02021.i.i.i88.i.i.i.i, %i.us
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !209
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.uq
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !3  ; 2 uses
  %i.uy = icmp eq i32 %.01422.i.i.i87.i.i.i.i, %i.ux
  %.sroa.speculated.i.i.i89.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i, i32 %i.us) ; 2 uses
  %indvars.iv.next.i.i.i90.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 1 ; 3 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !209
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !209
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.tx
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !3
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !3  ; 2 uses
  %i.vi = icmp eq i32 %.sroa.speculated.i.i.i89.i.i.i.i, %i.vh
  %i.vj = and i1 %i.vi, %i.ut
  %52 = select i1 %i.vj, i1 %.8533, i1 false      ; 3 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !209
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.vf
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !3  ; 3 uses
  %i.vo = icmp eq i32 %i.ux, %i.vn
  %i.vp = select i1 %i.vo, i1 %i.uy, i1 false
  %i.vq = select i1 %i.vp, i1 %.8, i1 false       ; 3 uses
  %.sroa.speculated.i.i.i89.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i89.i.i.i.i, i32 %i.vh) ; 3 uses
  %indvars.iv.next.i.i.i90.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 2 ; 2 uses
  %niter1097.next.1 = add nuw i64 %niter1097, 2   ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, label %bb.as, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod1091.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1091.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, label %.epil.preheader1089

.epil.preheader1089:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i85.i.i.i.i
  %.8533.epil.init = phi i1 [ %.6531, %.peel.next.i.i.i85.i.i.i.i ], [ %52, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.8.epil.init = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i ], [ %i.vq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i86.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i87.i.i.i.i.epil.init = phi i32 [ %i.uh, %.peel.next.i.i.i85.i.i.i.i ], [ %i.vn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i88.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1095 = trunc i64 %i.ui to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !209
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !209
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.tx
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !3
  %i.vx = sext i32 %i.vw to i64                   ; 2 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3  ; 2 uses
  %i.wa = icmp eq i32 %.02021.i.i.i88.i.i.i.i.epil.init, %i.vz
  %53 = select i1 %i.wa, i1 %.8533.epil.init, i1 false
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !209
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vx
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !3
  %i.wf = icmp eq i32 %.01422.i.i.i87.i.i.i.i.epil.init, %i.we
  %i.wg = select i1 %i.wf, i1 %.8.epil.init, i1 false
  %.sroa.speculated.i.i.i89.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i.epil.init, i32 %i.vz)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i: ; preds = %.epil.preheader1089, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.preheader.i74.i.i.i.i, %bb.ar
  %.7532 = phi i1 [ %.6531, %bb.ar ], [ %.6531, %.preheader.i74.i.i.i.i ], [ %52, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %53, %.epil.preheader1089 ] ; 2 uses
  %.7 = phi i1 [ %.6, %bb.ar ], [ %.6, %.preheader.i74.i.i.i.i ], [ %i.vq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %i.wg, %.epil.preheader1089 ] ; 2 uses
  %.020.lcssa.i.i.i80.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %bb.ar ], [ 0, %.preheader.i74.i.i.i.i ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i89.i.i.i.i.epil, %.epil.preheader1089 ] ; 2 uses
  %i.wh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.wi = add nsw i32 %i.wh, %.020.lcssa.i.i.i80.i.i.i.i
  store i32 %i.wi, ptr %i.b, align 4, !tbaa !3
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.tx
  store i32 %.020.lcssa.i.i.i80.i.i.i.i, ptr %i.wj, align 4, !tbaa !3
  %i.wk = add nsw i64 %.011.i75.i.i.i.i, -1
  %i.wl = and i64 %i.wk, %.011.i75.i.i.i.i        ; 2 uses
  %.not10.i81.i.i.i.i = icmp eq i64 %i.wl, 0
  br i1 %.not10.i81.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i, !llvm.loop !312

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %bb.aq, %._crit_edge.i.i.i.i, %bb.ab, %bb.z, %bb.v
  %.22.a = phi i1 [ true, %bb.z ], [ true, %bb.v ], [ true, %bb.ab ], [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5530, %._crit_edge.i.i.i.i ], [ %.5530, %bb.aq ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %.22 = phi i1 [ true, %bb.z ], [ true, %bb.v ], [ true, %bb.ab ], [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.aq ], [ %.20, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %or.cond = select i1 %.22.a, i1 %.22, i1 false
  br i1 %or.cond, label %bb.at, label %.critedge

bb.at:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %i.wm = load ptr, ptr %2, align 8, !tbaa !316   ; 28 uses
  %i.wn = load ptr, ptr %i.j, align 8, !tbaa !316 ; 6 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn                ; 2 uses
  br i1 %i.wo, label %.critedge665, label %iter.check

iter.check:                                       ; preds = %bb.at
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = ptrtoint ptr %i.wm to i64
  %i.wr = add i64 %i.wp, -16
  %i.ws = sub i64 %i.wr, %i.wq                    ; 3 uses
  %i.wt = lshr i64 %i.ws, 4
  %i.wu = add nuw nsw i64 %i.wt, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.ws, 64
  br i1 %min.iters.check, label %.lr.ph652.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check935 = icmp ult i64 %i.ws, 256
  br i1 %min.iters.check935, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.wu, 15                   ; 2 uses
  %i.wv = icmp eq i64 %n.mod.vf, 0
  %i.ww = select i1 %i.wv, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.wu, %i.ww               ; 3 uses
  %i.wx = shl i64 %n.vec, 4
  %i.wy = getelementptr i8, ptr %i.wm, i64 %i.wx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aaf, %vector.body ]
  %vec.phi936 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aag, %vector.body ]
  %vec.phi937 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aah, %vector.body ]
  %vec.phi938 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aai, %vector.body ]
  %i.wz = shl i64 %index, 4                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.wm, i64 %i.wz
  %i.xa = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep939.a = getelementptr i8, ptr %i.xa, i64 16
  %i.xb = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep940.a = getelementptr i8, ptr %i.xb, i64 32
  %i.xc = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep941.a = getelementptr i8, ptr %i.xc, i64 48
  %i.xd = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep942.a = getelementptr i8, ptr %i.xd, i64 64
  %i.xe = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep943.a = getelementptr i8, ptr %i.xe, i64 80
  %i.xf = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep944.a = getelementptr i8, ptr %i.xf, i64 96
  %i.xg = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep945.a = getelementptr i8, ptr %i.xg, i64 112
  %i.xh = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep946.a = getelementptr i8, ptr %i.xh, i64 128
  %i.xi = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep947.a = getelementptr i8, ptr %i.xi, i64 144
  %i.xj = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep948 = getelementptr i8, ptr %i.xj, i64 160
  %i.xk = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep949 = getelementptr i8, ptr %i.xk, i64 176
  %i.xl = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep950 = getelementptr i8, ptr %i.xl, i64 192
  %i.xm = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep951 = getelementptr i8, ptr %i.xm, i64 208
  %i.xn = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep952 = getelementptr i8, ptr %i.xn, i64 224
  %i.xo = getelementptr i8, ptr %i.wm, i64 %i.wz
  %next.gep953 = getelementptr i8, ptr %i.xo, i64 240
  %i.xp = load ptr, ptr %next.gep, align 8, !tbaa !317
  %i.xq = load ptr, ptr %next.gep939.a, align 8, !tbaa !317
  %i.xr = load ptr, ptr %next.gep940.a, align 8, !tbaa !317
  %i.xs = load ptr, ptr %next.gep941.a, align 8, !tbaa !317
  %i.xt = load ptr, ptr %next.gep942.a, align 8, !tbaa !317
  %i.xu = load ptr, ptr %next.gep943.a, align 8, !tbaa !317
  %i.xv = load ptr, ptr %next.gep944.a, align 8, !tbaa !317
  %i.xw = load ptr, ptr %next.gep945.a, align 8, !tbaa !317
  %i.xx = load ptr, ptr %next.gep946.a, align 8, !tbaa !317
  %i.xy = load ptr, ptr %next.gep947.a, align 8, !tbaa !317
  %i.xz = load ptr, ptr %next.gep948, align 8, !tbaa !317
  %i.ya = load ptr, ptr %next.gep949, align 8, !tbaa !317
  %i.yb = load ptr, ptr %next.gep950, align 8, !tbaa !317
  %i.yc = load ptr, ptr %next.gep951, align 8, !tbaa !317
  %i.yd = load ptr, ptr %next.gep952, align 8, !tbaa !317
  %i.ye = load ptr, ptr %next.gep953, align 8, !tbaa !317
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xp, i64 28
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xq, i64 28
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xr, i64 28
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xs, i64 28
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xt, i64 28
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xu, i64 28
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xw, i64 28
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xx, i64 28
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xy, i64 28
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xz, i64 28
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ya, i64 28
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yb, i64 28
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yc, i64 28
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yd, i64 28
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ye, i64 28
  %i.yv = load i32, ptr %i.yf, align 4, !tbaa !319
  %i.yw = load i32, ptr %i.yg, align 4, !tbaa !319
  %i.yx = load i32, ptr %i.yh, align 4, !tbaa !319
  %i.yy = load i32, ptr %i.yi, align 4, !tbaa !319
  %i.yz = insertelement <4 x i32> poison, i32 %i.yv, i64 0
  %i.za = insertelement <4 x i32> %i.yz, i32 %i.yw, i64 1
  %i.zb = insertelement <4 x i32> %i.za, i32 %i.yx, i64 2
  %i.zc = insertelement <4 x i32> %i.zb, i32 %i.yy, i64 3
  %i.zd = load i32, ptr %i.yj, align 4, !tbaa !319
  %i.ze = load i32, ptr %i.yk, align 4, !tbaa !319
  %i.zf = load i32, ptr %i.yl, align 4, !tbaa !319
  %i.zg = load i32, ptr %i.ym, align 4, !tbaa !319
  %i.zh = insertelement <4 x i32> poison, i32 %i.zd, i64 0
  %i.zi = insertelement <4 x i32> %i.zh, i32 %i.ze, i64 1
  %i.zj = insertelement <4 x i32> %i.zi, i32 %i.zf, i64 2
  %i.zk = insertelement <4 x i32> %i.zj, i32 %i.zg, i64 3
  %i.zl = load i32, ptr %i.yn, align 4, !tbaa !319
  %i.zm = load i32, ptr %i.yo, align 4, !tbaa !319
  %i.zn = load i32, ptr %i.yp, align 4, !tbaa !319
  %i.zo = load i32, ptr %i.yq, align 4, !tbaa !319
  %i.zp = insertelement <4 x i32> poison, i32 %i.zl, i64 0
  %i.zq = insertelement <4 x i32> %i.zp, i32 %i.zm, i64 1
  %i.zr = insertelement <4 x i32> %i.zq, i32 %i.zn, i64 2
  %i.zs = insertelement <4 x i32> %i.zr, i32 %i.zo, i64 3
  %i.zt = load i32, ptr %i.yr, align 4, !tbaa !319
  %i.zu = load i32, ptr %i.ys, align 4, !tbaa !319
  %i.zv = load i32, ptr %i.yt, align 4, !tbaa !319
  %i.zw = load i32, ptr %i.yu, align 4, !tbaa !319
  %i.zx = insertelement <4 x i32> poison, i32 %i.zt, i64 0
  %i.zy = insertelement <4 x i32> %i.zx, i32 %i.zu, i64 1
  %i.zz = insertelement <4 x i32> %i.zy, i32 %i.zv, i64 2
  %i.aaa = insertelement <4 x i32> %i.zz, i32 %i.zw, i64 3
  %i.aab = icmp eq <4 x i32> %i.zc, splat (i32 8)
  %i.aac = icmp eq <4 x i32> %i.zk, splat (i32 8)
  %i.aad = icmp eq <4 x i32> %i.zs, splat (i32 8)
  %i.aae = icmp eq <4 x i32> %i.aaa, splat (i32 8)
  %i.aaf = and <4 x i1> %vec.phi, %i.aab          ; 2 uses
  %i.aag = and <4 x i1> %vec.phi936, %i.aac       ; 2 uses
  %i.aah = and <4 x i1> %vec.phi937, %i.aad       ; 2 uses
  %i.aai = and <4 x i1> %vec.phi938, %i.aae       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aaj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaj, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !320

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.aag, %i.aaf
  %bin.rdx954 = and <4 x i1> %i.aah, %bin.rdx
  %bin.rdx955 = and <4 x i1> %i.aai, %bin.rdx954
  %i.aak = bitcast <4 x i1> %bin.rdx955 to i4
  %i.aal = icmp eq i4 %i.aak, -1                  ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ww, 5
  br i1 %min.epilog.iters.check, label %.lr.ph652.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aal, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.mod.vf956 = and i64 %i.wu, 3                 ; 2 uses
  %i.aam = icmp eq i64 %n.mod.vf956, 0
  %i.aan = select i1 %i.aam, i64 4, i64 %n.mod.vf956
  %n.vec957 = sub nsw i64 %i.wu, %i.aan           ; 2 uses
  %i.aao = shl i64 %n.vec957, 4
  %i.aap = getelementptr i8, ptr %i.wm, i64 %i.aao
  %i.aaq = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index958 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next964, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi959 = phi <4 x i1> [ %i.aaq, %vec.epilog.ph ], [ %i.abm, %vec.epilog.vector.body ]
  %i.aar = shl i64 %index958, 4                   ; 4 uses
  %next.gep960 = getelementptr i8, ptr %i.wm, i64 %i.aar
  %i.aas = getelementptr i8, ptr %i.wm, i64 %i.aar
  %next.gep961 = getelementptr i8, ptr %i.aas, i64 16
  %i.aat = getelementptr i8, ptr %i.wm, i64 %i.aar
  %next.gep962 = getelementptr i8, ptr %i.aat, i64 32
  %i.aau = getelementptr i8, ptr %i.wm, i64 %i.aar
  %next.gep963 = getelementptr i8, ptr %i.aau, i64 48
  %i.aav = load ptr, ptr %next.gep960, align 8, !tbaa !317
  %i.aaw = load ptr, ptr %next.gep961, align 8, !tbaa !317
  %i.aax = load ptr, ptr %next.gep962, align 8, !tbaa !317
  %i.aay = load ptr, ptr %next.gep963, align 8, !tbaa !317
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 28
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 28
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 28
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 28
  %i.abd = load i32, ptr %i.aaz, align 4, !tbaa !319
  %i.abe = load i32, ptr %i.aba, align 4, !tbaa !319
  %i.abf = load i32, ptr %i.abb, align 4, !tbaa !319
  %i.abg = load i32, ptr %i.abc, align 4, !tbaa !319
  %i.abh = insertelement <4 x i32> poison, i32 %i.abd, i64 0
  %i.abi = insertelement <4 x i32> %i.abh, i32 %i.abe, i64 1
  %i.abj = insertelement <4 x i32> %i.abi, i32 %i.abf, i64 2
  %i.abk = insertelement <4 x i32> %i.abj, i32 %i.abg, i64 3
  %i.abl = icmp eq <4 x i32> %i.abk, splat (i32 8)
  %i.abm = and <4 x i1> %vec.phi959, %i.abl       ; 2 uses
  %index.next964 = add nuw i64 %index958, 4       ; 2 uses
  %i.abn = icmp eq i64 %index.next964, %n.vec957
  br i1 %i.abn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
end_hunk_0

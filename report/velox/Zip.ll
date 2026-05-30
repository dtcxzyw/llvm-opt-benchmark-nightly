inline.NumInlined: 2341
inline.NumDeleted: 1232
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
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
  %.19544 = phi i8 [ 1, %.lr.ph.i ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
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
  %42 = icmp ne i8 %.19544, 0                     ; 2 uses
  %i.ee = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter1108 = and i64 %i.ee, 1
  %i.ef = icmp eq i32 %i.ds, 2
  br i1 %i.ef, label %.epil.preheader1107, label %.peel.next.i.i.i.new

.peel.next.i.i.i.new:                             ; preds = %.peel.next.i.i.i
  %unroll_iter1114 = and i64 %i.ee, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.peel.next.i.i.i.new
  %.21546 = phi i1 [ %42, %.peel.next.i.i.i.new ], [ %i.fg, %bb.y ]
  %.21 = phi i1 [ %.19, %.peel.next.i.i.i.new ], [ %44, %bb.y ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.y ] ; 5 uses
  %.01422.i.i.i = phi i32 [ %i.ed, %.peel.next.i.i.i.new ], [ %i.fk, %bb.y ]
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
  %i.eq = and i1 %.21546, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !209
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.em
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 2 uses
  %i.ev = icmp eq i32 %.01422.i.i.i, %i.eu
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i, i32 %i.eo) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !209
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !209
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 2 uses
  %i.ff = icmp eq i32 %.sroa.speculated.i.i.i, %i.fe
  %i.fg = and i1 %i.eq, %i.ff                     ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !209
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fc
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3  ; 3 uses
  %i.fl = icmp eq i32 %i.eu, %i.fk
  %43 = select i1 %i.fl, i1 %i.ev, i1 false
  %44 = select i1 %43, i1 %.21, i1 false          ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i, i32 %i.fe) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1115.next.1 = add i64 %niter1115, 2       ; 2 uses
  %niter1115.ncmp.1 = icmp eq i64 %niter1115.next.1, %unroll_iter1114
  br i1 %niter1115.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.peel.next.i.i.i
  %.21546.epil.init = phi i1 [ %42, %.peel.next.i.i.i ], [ %i.fg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.21.epil.init = phi i1 [ %.19, %.peel.next.i.i.i ], [ %44, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.epil.init = phi i32 [ %i.ed, %.peel.next.i.i.i ], [ %i.fk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i ], [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1113 = trunc i64 %i.ee to i1
  call void @llvm.assume(i1 %lcmp.mod1113)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i.epil.init
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !209
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i.epil.init
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !209
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3  ; 2 uses
  %i.fv = icmp eq i32 %.02021.i.i.i.epil.init, %i.fu
  %i.fw = and i1 %.21546.epil.init, %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i.epil.init
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !209
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fs
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = icmp eq i32 %.01422.i.i.i.epil.init, %i.ga
  %45 = select i1 %i.gb, i1 %.21.epil.init, i1 false
  %.sroa.speculated.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.epil.init, i32 %i.fu)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.epil.preheader1107
  %.lcssa1053 = phi i1 [ %i.fg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.fw, %.epil.preheader1107 ]
  %.lcssa1052 = phi i1 [ %44, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %45, %.epil.preheader1107 ]
  %.sroa.speculated.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.epil, %.epil.preheader1107 ]
  %i.gc = zext i1 %.lcssa1053 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, %bb.x, %bb.w
  %.20545 = phi i8 [ %.19544, %bb.x ], [ %.19544, %bb.w ], [ %i.gc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.20 = phi i1 [ %.19, %bb.x ], [ %.19, %bb.w ], [ %.lcssa1052, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.020.lcssa.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %bb.x ], [ 0, %bb.w ], [ %.sroa.speculated.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
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
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i
  %.16541 = phi i8 [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %.16 = phi i1 [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ true, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.011.i.i.i.i.i = phi i64 [ %i.jy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %i.hb, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.hf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = or disjoint i32 %i.gl, %i.hg
  %i.hi = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  %i.hk = sext i32 %i.hh to i64                   ; 5 uses
  br i1 %i.hj, label %bb.ac, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

bb.ac:                                            ; preds = %.preheader.i.i.i.i.i
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !209
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !209
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hk
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.hr, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i.i.i.i.i = icmp eq i32 %i.hi, 1
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %bb.ac
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.hi to i64
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !209
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hp
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3  ; 2 uses
  %46 = icmp ne i8 %.16541, 0                     ; 2 uses
  %i.hv = add nsw i64 %wide.trip.count.i.i.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1099 = and i64 %i.hv, 1
  %i.hw = icmp eq i32 %i.hi, 2
  br i1 %i.hw, label %.epil.preheader1098, label %.peel.next.i.i.i.i.i.i.i.new

.peel.next.i.i.i.i.i.i.i.new:                     ; preds = %.peel.next.i.i.i.i.i.i.i
  %unroll_iter1105 = and i64 %i.hv, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.peel.next.i.i.i.i.i.i.i.new
  %.18543 = phi i1 [ %46, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.ix, %bb.ad ]
  %.18 = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i.new ], [ %48, %bb.ad ]
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %bb.ad ] ; 5 uses
  %.01422.i.i.i.i.i.i.i = phi i32 [ %i.hu, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.jb, %bb.ad ]
  %.02021.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i.new ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %bb.ad ] ; 2 uses
  %niter1106 = phi i64 [ 0, %.peel.next.i.i.i.i.i.i.i.new ], [ %niter1106.next.1, %bb.ad ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !209
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !209
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.hk
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3  ; 2 uses
  %i.ig = icmp eq i32 %.02021.i.i.i.i.i.i.i, %i.if
  %i.ih = and i1 %.18543, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !209
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.id
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3  ; 2 uses
  %i.im = icmp eq i32 %.01422.i.i.i.i.i.i.i, %i.il
  %.sroa.speculated.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i, i32 %i.if) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !209
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !209
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.hk
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3  ; 2 uses
  %i.iw = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i, %i.iv
  %i.ix = and i1 %i.ih, %i.iw                     ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !209
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.it
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3  ; 3 uses
  %i.jc = icmp eq i32 %i.il, %i.jb
  %47 = select i1 %i.jc, i1 %i.im, i1 false
  %48 = select i1 %47, i1 %.18, i1 false          ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i.i.i.i.i, i32 %i.iv) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter1106.next.1 = add i64 %niter1106, 2       ; 2 uses
  %niter1106.ncmp.1 = icmp eq i64 %niter1106.next.1, %unroll_iter1105
  br i1 %niter1106.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1100.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit, label %.epil.preheader1098

.epil.preheader1098:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i.i.i.i.i
  %.18543.epil.init = phi i1 [ %46, %.peel.next.i.i.i.i.i.i.i ], [ %i.ix, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.18.epil.init = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i ], [ %48, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.i.i.i.i.epil.init = phi i32 [ %i.hu, %.peel.next.i.i.i.i.i.i.i ], [ %i.jb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1104 = trunc i64 %i.hv to i1
  call void @llvm.assume(i1 %lcmp.mod1104)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !209
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !209
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.hk
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3  ; 2 uses
  %i.jm = icmp eq i32 %.02021.i.i.i.i.i.i.i.epil.init, %i.jl
  %i.jn = and i1 %.18543.epil.init, %i.jm
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !209
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jj
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.js = icmp eq i32 %.01422.i.i.i.i.i.i.i.epil.init, %i.jr
  %49 = select i1 %i.js, i1 %.18.epil.init, i1 false
  %.sroa.speculated.i.i.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i.epil.init, i32 %i.jl)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1098
  %.lcssa1056 = phi i1 [ %i.ix, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.jn, %.epil.preheader1098 ]
  %.lcssa1055 = phi i1 [ %48, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %49, %.epil.preheader1098 ]
  %.sroa.speculated.i.i.i.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.i.i.i.i.epil, %.epil.preheader1098 ]
  %i.jt = zext i1 %.lcssa1056 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit, %bb.ac
  %.17542 = phi i8 [ %.16541, %bb.ac ], [ %i.jt, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ %.16541, %.preheader.i.i.i.i.i ] ; 2 uses
  %.17 = phi i1 [ %.16, %bb.ac ], [ %.lcssa1055, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ %.16, %.preheader.i.i.i.i.i ] ; 2 uses
  %.020.lcssa.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.speculated.i.i.i.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.ju = load i32, ptr %i.b, align 4, !tbaa !3
  %i.jv = add nsw i32 %i.ju, %.020.lcssa.i.i.i.i.i.i.i
  store i32 %i.jv, ptr %i.b, align 4, !tbaa !3
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.hk
  store i32 %.020.lcssa.i.i.i.i.i.i.i, ptr %i.jw, align 4, !tbaa !3
  %i.jx = add nsw i64 %.011.i.i.i.i.i, -1
  %i.jy = and i64 %i.jx, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i, !llvm.loop !312

bb.ae:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.dl, %i.gk
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jz = sdiv i32 %i.dl, 64                      ; 2 uses
  %i.ka = sub nsw i32 %i.gk, %i.dl                ; 2 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.kb
  %i.kc = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.kd = sub nsw i32 64, %i.ka
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %i.kc, %i.ke
  %i.kg = sext i32 %i.jz to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !160
  %i.kj = and i64 %i.ki, %i.kf                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.kj, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.af
  %i.kk = shl nsw i32 %i.jz, 6
  %i.kl = load ptr, ptr %13, align 8              ; 4 uses
  %i.km = load ptr, ptr %15, align 8              ; 4 uses
  %i.kn = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %.preheader.i37.i.i.i.i
  %.0525 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %.0524 = phi i1 [ true, %.preheader.i37.i.i.i.i ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 4 uses
  %.011.i38.i.i.i.i = phi i64 [ %i.kj, %.preheader.i37.i.i.i.i ], [ %i.nh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %i.ko = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = or disjoint i32 %i.kk, %i.kp
  %i.kr = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  %i.kt = sext i32 %i.kq to i64                   ; 5 uses
  br i1 %i.ks, label %bb.ah, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ku = load ptr, ptr %i.kl, align 8, !tbaa !209
  %i.kv = load ptr, ptr %i.km, align 8, !tbaa !209
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.kt
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !3
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i46.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.la, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i47.i.i.i.i = icmp eq i32 %i.kr, 1
  br i1 %exitcond.peel.not.i.i.i47.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, label %.peel.next.i.i.i48.i.i.i.i

.peel.next.i.i.i48.i.i.i.i:                       ; preds = %bb.ah
  %wide.trip.count.i.i.i45.i.i.i.i = zext nneg i32 %i.kr to i64
  %i.lb = load ptr, ptr %i.kn, align 8, !tbaa !209
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.ky
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3  ; 2 uses
  %50 = icmp ne i8 %.0525, 0                      ; 2 uses
  %i.le = add nsw i64 %wide.trip.count.i.i.i45.i.i.i.i, -1 ; 3 uses
  %xtraiter = and i64 %i.le, 1
  %i.lf = icmp eq i32 %i.kr, 2
  br i1 %i.lf, label %.epil.preheader, label %.peel.next.i.i.i48.i.i.i.i.new

.peel.next.i.i.i48.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i48.i.i.i.i
  %unroll_iter = and i64 %i.le, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.peel.next.i.i.i48.i.i.i.i.new
  %.15540 = phi i1 [ %50, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mg, %bb.ai ]
  %.15 = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i.new ], [ %52, %bb.ai ]
  %indvars.iv.i.i.i49.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i.new ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %bb.ai ] ; 5 uses
  %.01422.i.i.i50.i.i.i.i = phi i32 [ %i.ld, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mk, %bb.ai ]
  %.02021.i.i.i51.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i.new ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.peel.next.i.i.i48.i.i.i.i.new ], [ %niter.next.1, %bb.ai ]
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !209
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !209
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.kt
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !3  ; 2 uses
  %i.lp = icmp eq i32 %.02021.i.i.i51.i.i.i.i, %i.lo
  %i.lq = and i1 %.15540, %i.lp
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !209
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lm
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !3  ; 2 uses
  %i.lv = icmp eq i32 %.01422.i.i.i50.i.i.i.i, %i.lu
  %.sroa.speculated.i.i.i52.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i, i32 %i.lo) ; 2 uses
  %indvars.iv.next.i.i.i53.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 1 ; 3 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !209
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !209
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.kt
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !3
  %i.mc = sext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3  ; 2 uses
  %i.mf = icmp eq i32 %.sroa.speculated.i.i.i52.i.i.i.i, %i.me
  %i.mg = and i1 %i.lq, %i.mf                     ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !209
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mc
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !3  ; 3 uses
  %i.ml = icmp eq i32 %i.lu, %i.mk
  %51 = select i1 %i.ml, i1 %i.lv, i1 false
  %52 = select i1 %51, i1 %.15, i1 false          ; 3 uses
  %.sroa.speculated.i.i.i52.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i52.i.i.i.i, i32 %i.me) ; 3 uses
  %indvars.iv.next.i.i.i53.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i48.i.i.i.i
  %.15540.epil.init = phi i1 [ %50, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.15.epil.init = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i ], [ %52, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i49.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i50.i.i.i.i.epil.init = phi i32 [ %i.ld, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i51.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1070 = trunc i64 %i.le to i1
  call void @llvm.assume(i1 %lcmp.mod1070)
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !209
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !209
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.kt
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !3
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3  ; 2 uses
  %i.mv = icmp eq i32 %.02021.i.i.i51.i.i.i.i.epil.init, %i.mu
  %i.mw = and i1 %.15540.epil.init, %i.mv
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !209
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.ms
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = icmp eq i32 %.01422.i.i.i50.i.i.i.i.epil.init, %i.na
  %53 = select i1 %i.nb, i1 %.15.epil.init, i1 false
  %.sroa.speculated.i.i.i52.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i.epil.init, i32 %i.mu)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa1066 = phi i1 [ %i.mg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %i.mw, %.epil.preheader ]
  %.lcssa1065.a = phi i1 [ %52, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %53, %.epil.preheader ]
  %.sroa.speculated.i.i.i52.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i52.i.i.i.i.epil, %.epil.preheader ]
  %i.nc = zext i1 %.lcssa1066 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i: ; preds = %bb.ag, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit, %bb.ah
  %.1526 = phi i8 [ %.0525, %bb.ah ], [ %i.nc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ %.0525, %bb.ag ] ; 2 uses
  %.1 = phi i1 [ %.0524, %bb.ah ], [ %.lcssa1065.a, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ %.0524, %bb.ag ] ; 2 uses
  %.020.lcssa.i.i.i43.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %bb.ah ], [ %.sroa.speculated.i.i.i52.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ 0, %bb.ag ] ; 2 uses
  %i.nd = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ne = add nsw i32 %i.nd, %.020.lcssa.i.i.i43.i.i.i.i
  store i32 %i.ne, ptr %i.b, align 4, !tbaa !3
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.kt
  store i32 %.020.lcssa.i.i.i43.i.i.i.i, ptr %i.nf, align 4, !tbaa !3
  %i.ng = add i64 %.011.i38.i.i.i.i, -1
  %i.nh = and i64 %i.ng, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i44.i.i.i.i = icmp eq i64 %i.nh, 0
  br i1 %.not10.i44.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.ag, !llvm.loop !312

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %bb.af, %bb.ae
  %.2527 = phi i8 [ 1, %bb.ae ], [ 1, %bb.af ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ae ], [ true, %bb.af ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %i.ni = add nsw i32 %i.gk, 64                   ; 2 uses
  %.not3395.i.i.i.i = icmp sgt i32 %i.ni, %i.gl
  br i1 %.not3395.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i
  %.5530 = phi i8 [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.5 = phi i1 [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.gh, %i.gl
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.aq

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %.3528 = phi i8 [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %.3 = phi i1 [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %i.nj = phi i32 [ %i.tk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ni, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %.096.i.i.i.i = phi i32 [ %i.nj, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.gk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %i.nk = sdiv i32 %.096.i.i.i.i, 64              ; 3 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !160 ; 2 uses
  switch i64 %i.nn, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.aj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.no = shl nsw i32 %i.nk, 6
  %i.np = load ptr, ptr %13, align 8              ; 4 uses
  %i.nq = load ptr, ptr %15, align 8              ; 4 uses
  %i.nr = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ns = shl nsw i32 %i.nk, 6                    ; 2 uses
  %i.nt = add i32 %i.ns, 64
  %i.nu = sext i32 %i.nt to i64
  %.0.off.i.i.i.i = add i32 %.096.i.i.i.i, 127
  %.not33.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not33.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph32.i.i.i.i.i

.lr.ph32.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nv = sext i32 %i.ns to i64
  %i.nw = load ptr, ptr %13, align 8              ; 4 uses
  %i.nx = load ptr, ptr %15, align 8              ; 4 uses
  %i.ny = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph32.i.i.i.i.i
  %.9534 = phi i8 [ %.3528, %.lr.ph32.i.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %.9 = phi i1 [ %.3, %.lr.ph32.i.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  %.031.i.i.i.i.i = phi i64 [ %i.nv, %.lr.ph32.i.i.i.i.i ], [ %i.qo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.nz = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %bb.al, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %sext.i.i.i.i.i.i = shl i64 %.031.i.i.i.i.i, 32
  %i.ob = ashr exact i64 %sext.i.i.i.i.i.i, 32    ; 4 uses
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !209
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !209
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.ob
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !3
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i58.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.oi, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i59.i.i.i.i = icmp eq i32 %i.nz, 1
  br i1 %exitcond.peel.not.i.i.i59.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i60.i.i.i.i

.peel.next.i.i.i60.i.i.i.i:                       ; preds = %bb.al
  %wide.trip.count.i.i.i57.i.i.i.i = zext nneg i32 %i.nz to i64
  %i.oj = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.og
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !3  ; 2 uses
  %54 = icmp ne i8 %.9534, 0                      ; 2 uses
  %i.om = add nsw i64 %wide.trip.count.i.i.i57.i.i.i.i, -1 ; 3 uses
  %xtraiter1072 = and i64 %i.om, 1
  %i.on = icmp eq i32 %i.nz, 2
  br i1 %i.on, label %.epil.preheader1071, label %.peel.next.i.i.i60.i.i.i.i.new

.peel.next.i.i.i60.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i60.i.i.i.i
  %unroll_iter1078 = and i64 %i.om, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.peel.next.i.i.i60.i.i.i.i.new
  %.11536 = phi i1 [ %54, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.po, %bb.am ]
  %.11 = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i.new ], [ %56, %bb.am ]
  %indvars.iv.i.i.i61.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i.new ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %bb.am ] ; 5 uses
  %.01422.i.i.i62.i.i.i.i = phi i32 [ %i.ol, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.ps, %bb.am ]
  %.02021.i.i.i63.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i.new ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %bb.am ] ; 2 uses
  %niter1079 = phi i64 [ 0, %.peel.next.i.i.i60.i.i.i.i.new ], [ %niter1079.next.1, %bb.am ]
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !209
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !209
  %i.os = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.ob
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !3
  %i.ou = sext i32 %i.ot to i64                   ; 2 uses
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !3  ; 2 uses
  %i.ox = icmp eq i32 %.02021.i.i.i63.i.i.i.i, %i.ow
  %i.oy = and i1 %.11536, %i.ox
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !209
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.pa, i64 %i.ou
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3  ; 2 uses
  %i.pd = icmp eq i32 %.01422.i.i.i62.i.i.i.i, %i.pc
  %.sroa.speculated.i.i.i64.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i, i32 %i.ow) ; 2 uses
  %indvars.iv.next.i.i.i65.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 1 ; 3 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !209
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !209
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ob
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  %i.pk = sext i32 %i.pj to i64                   ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3  ; 2 uses
  %i.pn = icmp eq i32 %.sroa.speculated.i.i.i64.i.i.i.i, %i.pm
  %i.po = and i1 %i.oy, %i.pn                     ; 3 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !209
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.pk
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3  ; 3 uses
  %i.pt = icmp eq i32 %i.pc, %i.ps
  %55 = select i1 %i.pt, i1 %i.pd, i1 false
  %56 = select i1 %55, i1 %.11, i1 false          ; 3 uses
  %.sroa.speculated.i.i.i64.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i64.i.i.i.i, i32 %i.pm) ; 3 uses
  %indvars.iv.next.i.i.i65.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 2 ; 2 uses
  %niter1079.next.1 = add i64 %niter1079, 2       ; 2 uses
  %niter1079.ncmp.1 = icmp eq i64 %niter1079.next.1, %unroll_iter1078
  br i1 %niter1079.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit, label %.epil.preheader1071

.epil.preheader1071:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i60.i.i.i.i
  %.11536.epil.init = phi i1 [ %54, %.peel.next.i.i.i60.i.i.i.i ], [ %i.po, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.11.epil.init = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i ], [ %56, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i61.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i62.i.i.i.i.epil.init = phi i32 [ %i.ol, %.peel.next.i.i.i60.i.i.i.i ], [ %i.ps, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i63.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1077 = trunc i64 %i.om to i1
  call void @llvm.assume(i1 %lcmp.mod1077)
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !209
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !209
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.ob
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = sext i32 %i.pz to i64                   ; 2 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.pv, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !3  ; 2 uses
  %i.qd = icmp eq i32 %.02021.i.i.i63.i.i.i.i.epil.init, %i.qc
  %i.qe = and i1 %.11536.epil.init, %i.qd
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !209
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qa
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %i.qj = icmp eq i32 %.01422.i.i.i62.i.i.i.i.epil.init, %i.qi
  %57 = select i1 %i.qj, i1 %.11.epil.init, i1 false
  %.sroa.speculated.i.i.i64.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i.epil.init, i32 %i.qc)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1071
  %.lcssa1062 = phi i1 [ %i.po, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.qe, %.epil.preheader1071 ]
  %.lcssa1061 = phi i1 [ %56, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %57, %.epil.preheader1071 ]
  %.sroa.speculated.i.i.i64.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i64.i.i.i.i.epil, %.epil.preheader1071 ]
  %i.qk = zext i1 %.lcssa1062 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit, %bb.al, %bb.ak
  %.10535 = phi i8 [ %.9534, %bb.al ], [ %.9534, %bb.ak ], [ %i.qk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %.10 = phi i1 [ %.9, %bb.al ], [ %.9, %bb.ak ], [ %.lcssa1061, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %.020.lcssa.i.i.i56.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %bb.al ], [ 0, %bb.ak ], [ %.sroa.speculated.i.i.i64.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %i.ql = load i32, ptr %i.b, align 4, !tbaa !3
  %i.qm = add nsw i32 %i.ql, %.020.lcssa.i.i.i56.i.i.i.i
  store i32 %i.qm, ptr %i.b, align 4, !tbaa !3
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.031.i.i.i.i.i
  store i32 %.020.lcssa.i.i.i56.i.i.i.i, ptr %i.qn, align 4, !tbaa !3
  %i.qo = add nuw i64 %.031.i.i.i.i.i, 1          ; 2 uses
  %i.qp = icmp ult i64 %i.qo, %i.nu
  br i1 %i.qp, label %bb.ak, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !313

bb.an:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.12537 = phi i8 [ %.3528, %.lr.ph.i.i.i.i.i ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 3 uses
  %.12 = phi i1 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 4 uses
  %.01530.i.i.i.i.i = phi i64 [ %i.nn, %.lr.ph.i.i.i.i.i ], [ %i.tj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 3 uses
  %i.qq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01530.i.i.i.i.i, i1 true)
  %i.qr = trunc nuw nsw i64 %i.qq to i32
  %i.qs = or disjoint i32 %i.no, %i.qr
  %i.qt = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.qu = icmp sgt i32 %i.qt, 0
  %i.qv = sext i32 %i.qs to i64                   ; 5 uses
  br i1 %i.qu, label %bb.ao, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.qw = load ptr, ptr %i.np, align 8, !tbaa !209
  %i.qx = load ptr, ptr %i.nq, align 8, !tbaa !209
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.qv
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i19.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.rc, i32 0) ; 3 uses
  %exitcond.peel.not.i.i20.i.i.i.i.i = icmp eq i32 %i.qt, 1
  br i1 %exitcond.peel.not.i.i20.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, label %.peel.next.i.i21.i.i.i.i.i

.peel.next.i.i21.i.i.i.i.i:                       ; preds = %bb.ao
  %wide.trip.count.i.i18.i.i.i.i.i = zext nneg i32 %i.qt to i64
  %i.rd = load ptr, ptr %i.nr, align 8, !tbaa !209
  %i.re = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ra
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !3  ; 2 uses
  %58 = icmp ne i8 %.12537, 0                     ; 2 uses
  %i.rg = add nsw i64 %wide.trip.count.i.i18.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1081 = and i64 %i.rg, 1
  %i.rh = icmp eq i32 %i.qt, 2
  br i1 %i.rh, label %.epil.preheader1080, label %.peel.next.i.i21.i.i.i.i.i.new

.peel.next.i.i21.i.i.i.i.i.new:                   ; preds = %.peel.next.i.i21.i.i.i.i.i
  %unroll_iter1087 = and i64 %i.rg, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.peel.next.i.i21.i.i.i.i.i.new
  %.14539 = phi i1 [ %58, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.si, %bb.ap ]
  %.14 = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i.new ], [ %60, %bb.ap ]
  %indvars.iv.i.i22.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i.new ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %bb.ap ] ; 5 uses
  %.01422.i.i23.i.i.i.i.i = phi i32 [ %i.rf, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.sm, %bb.ap ]
  %.02021.i.i24.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i.new ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %bb.ap ] ; 2 uses
  %niter1088 = phi i64 [ 0, %.peel.next.i.i21.i.i.i.i.i.new ], [ %niter1088.next.1, %bb.ap ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !209
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !209
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.qv
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !3
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3  ; 2 uses
  %i.rr = icmp eq i32 %.02021.i.i24.i.i.i.i.i, %i.rq
  %i.rs = and i1 %.14539, %i.rr
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !209
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.ro
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3  ; 2 uses
  %i.rx = icmp eq i32 %.01422.i.i23.i.i.i.i.i, %i.rw
  %.sroa.speculated.i.i25.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i, i32 %i.rq) ; 2 uses
  %indvars.iv.next.i.i26.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 1 ; 3 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !209
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !209
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.qv
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !3
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !3  ; 2 uses
  %i.sh = icmp eq i32 %.sroa.speculated.i.i25.i.i.i.i.i, %i.sg
  %i.si = and i1 %i.rs, %i.sh                     ; 3 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !209
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.se
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !3  ; 3 uses
  %i.sn = icmp eq i32 %i.rw, %i.sm
  %59 = select i1 %i.sn, i1 %i.rx, i1 false
  %60 = select i1 %59, i1 %.14, i1 false          ; 3 uses
  %.sroa.speculated.i.i25.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i25.i.i.i.i.i, i32 %i.sg) ; 3 uses
  %indvars.iv.next.i.i26.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 2 ; 2 uses
  %niter1088.next.1 = add i64 %niter1088, 2       ; 2 uses
  %niter1088.ncmp.1 = icmp eq i64 %niter1088.next.1, %unroll_iter1087
  br i1 %niter1088.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ap
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  br i1 %lcmp.mod1082.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit, label %.epil.preheader1080

.epil.preheader1080:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i21.i.i.i.i.i
  %.14539.epil.init = phi i1 [ %58, %.peel.next.i.i21.i.i.i.i.i ], [ %i.si, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.14.epil.init = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i ], [ %60, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i22.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i23.i.i.i.i.i.epil.init = phi i32 [ %i.rf, %.peel.next.i.i21.i.i.i.i.i ], [ %i.sm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i24.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1086 = trunc i64 %i.rg to i1
  call void @llvm.assume(i1 %lcmp.mod1086)
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !209
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !209
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.qv
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !3
  %i.su = sext i32 %i.st to i64                   ; 2 uses
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3  ; 2 uses
  %i.sx = icmp eq i32 %.02021.i.i24.i.i.i.i.i.epil.init, %i.sw
  %i.sy = and i1 %.14539.epil.init, %i.sx
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !209
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.su
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !3
  %i.td = icmp eq i32 %.01422.i.i23.i.i.i.i.i.epil.init, %i.tc
  %61 = select i1 %i.td, i1 %.14.epil.init, i1 false
  %.sroa.speculated.i.i25.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i.epil.init, i32 %i.sw)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1080
  %.lcssa1064.a = phi i1 [ %i.si, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %i.sy, %.epil.preheader1080 ]
  %.lcssa1063 = phi i1 [ %60, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %61, %.epil.preheader1080 ]
  %.sroa.speculated.i.i25.i.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i25.i.i.i.i.i.epil, %.epil.preheader1080 ]
  %i.te = zext i1 %.lcssa1064.a to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i: ; preds = %bb.an, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit, %bb.ao
  %.13538 = phi i8 [ %.12537, %bb.ao ], [ %i.te, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ %.12537, %bb.an ] ; 2 uses
  %.13 = phi i1 [ %.12, %bb.ao ], [ %.lcssa1063, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ %.12, %bb.an ] ; 2 uses
  %.020.lcssa.i.i17.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %bb.ao ], [ %.sroa.speculated.i.i25.i.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ 0, %bb.an ] ; 2 uses
  %i.tf = load i32, ptr %i.b, align 4, !tbaa !3
  %i.tg = add nsw i32 %i.tf, %.020.lcssa.i.i17.i.i.i.i.i
  store i32 %i.tg, ptr %i.b, align 4, !tbaa !3
  %i.th = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.qv
  store i32 %.020.lcssa.i.i17.i.i.i.i.i, ptr %i.th, align 4, !tbaa !3
  %i.ti = add i64 %.01530.i.i.i.i.i, -1
  %i.tj = and i64 %i.ti, %.01530.i.i.i.i.i        ; 2 uses
  %.not.i71.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not.i71.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.an, !llvm.loop !314

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i
  %.4529 = phi i8 [ %.3528, %.lr.ph.i.i.i.i ], [ %.3528, %bb.aj ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %.4 = phi i1 [ %.3, %.lr.ph.i.i.i.i ], [ %.3, %bb.aj ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %i.tk = add nsw i32 %i.nj, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.tk, %i.gl
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !315

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.tl = ashr i32 %i.gh, 6
  %i.tm = and i32 %i.gh, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %notmask.i72.i.i.i.i = shl nsw i64 -1, %i.tn
  %i.to = xor i64 %notmask.i72.i.i.i.i, -1
  %i.tp = sext i32 %i.tl to i64
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.tp
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !160
  %i.ts = and i64 %i.tr, %i.to                    ; 2 uses
  %.not.i73.i.i.i.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i73.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i.preheader

.preheader.i74.i.i.i.i.preheader:                 ; preds = %bb.aq
  %i.tt = load ptr, ptr %13, align 8              ; 4 uses
  %i.tu = load ptr, ptr %15, align 8              ; 4 uses
  %i.tv = load ptr, ptr %14, align 8              ; 4 uses
  br label %.preheader.i74.i.i.i.i

.preheader.i74.i.i.i.i:                           ; preds = %.preheader.i74.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i
  %.6531 = phi i8 [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5530, %.preheader.i74.i.i.i.i.preheader ] ; 3 uses
  %.6 = phi i1 [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5, %.preheader.i74.i.i.i.i.preheader ] ; 4 uses
  %.011.i75.i.i.i.i = phi i64 [ %i.wp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %i.ts, %.preheader.i74.i.i.i.i.preheader ] ; 3 uses
  %i.tw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i75.i.i.i.i, i1 true)
  %i.tx = trunc nuw nsw i64 %i.tw to i32
  %i.ty = or disjoint i32 %i.gl, %i.tx
  %i.tz = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  %i.ub = sext i32 %i.ty to i64                   ; 5 uses
  br i1 %i.ua, label %bb.ar, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

bb.ar:                                            ; preds = %.preheader.i74.i.i.i.i
  %i.uc = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.ud = load ptr, ptr %i.tu, align 8, !tbaa !209
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.ub
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.ug = sext i32 %i.uf to i64                   ; 2 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i83.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ui, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i84.i.i.i.i = icmp eq i32 %i.tz, 1
  br i1 %exitcond.peel.not.i.i.i84.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, label %.peel.next.i.i.i85.i.i.i.i

.peel.next.i.i.i85.i.i.i.i:                       ; preds = %bb.ar
  %wide.trip.count.i.i.i82.i.i.i.i = zext nneg i32 %i.tz to i64
  %i.uj = load ptr, ptr %i.tv, align 8, !tbaa !209
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.ug
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !3  ; 2 uses
  %62 = icmp ne i8 %.6531, 0                      ; 2 uses
  %i.um = add nsw i64 %wide.trip.count.i.i.i82.i.i.i.i, -1 ; 3 uses
  %xtraiter1090 = and i64 %i.um, 1
  %i.un = icmp eq i32 %i.tz, 2
  br i1 %i.un, label %.epil.preheader1089, label %.peel.next.i.i.i85.i.i.i.i.new

.peel.next.i.i.i85.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i85.i.i.i.i
  %unroll_iter1096 = and i64 %i.um, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.peel.next.i.i.i85.i.i.i.i.new
  %.8533 = phi i1 [ %62, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.vo, %bb.as ]
  %.8 = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i.new ], [ %64, %bb.as ]
  %indvars.iv.i.i.i86.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i.new ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %bb.as ] ; 5 uses
  %.01422.i.i.i87.i.i.i.i = phi i32 [ %i.ul, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.vs, %bb.as ]
  %.02021.i.i.i88.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i.new ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %bb.as ] ; 2 uses
  %niter1097 = phi i64 [ 0, %.peel.next.i.i.i85.i.i.i.i.new ], [ %niter1097.next.1, %bb.as ]
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !209
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !209
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.ub
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !3
  %i.uu = sext i32 %i.ut to i64                   ; 2 uses
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !3  ; 2 uses
  %i.ux = icmp eq i32 %.02021.i.i.i88.i.i.i.i, %i.uw
  %i.uy = and i1 %.8533, %i.ux
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !209
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.uu
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !3  ; 2 uses
  %i.vd = icmp eq i32 %.01422.i.i.i87.i.i.i.i, %i.vc
  %.sroa.speculated.i.i.i89.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i, i32 %i.uw) ; 2 uses
  %indvars.iv.next.i.i.i90.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 1 ; 3 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !209
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !209
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.ub
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !3
  %i.vk = sext i32 %i.vj to i64                   ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3  ; 2 uses
  %i.vn = icmp eq i32 %.sroa.speculated.i.i.i89.i.i.i.i, %i.vm
  %i.vo = and i1 %i.uy, %i.vn                     ; 3 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !209
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.vk
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !3  ; 3 uses
  %i.vt = icmp eq i32 %i.vc, %i.vs
  %63 = select i1 %i.vt, i1 %i.vd, i1 false
  %64 = select i1 %63, i1 %.8, i1 false           ; 3 uses
  %.sroa.speculated.i.i.i89.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i89.i.i.i.i, i32 %i.vm) ; 3 uses
  %indvars.iv.next.i.i.i90.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 2 ; 2 uses
  %niter1097.next.1 = add i64 %niter1097, 2       ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, label %bb.as, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod1091.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1091.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit, label %.epil.preheader1089

.epil.preheader1089:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i85.i.i.i.i
  %.8533.epil.init = phi i1 [ %62, %.peel.next.i.i.i85.i.i.i.i ], [ %i.vo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.8.epil.init = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i ], [ %64, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i86.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i87.i.i.i.i.epil.init = phi i32 [ %i.ul, %.peel.next.i.i.i85.i.i.i.i ], [ %i.vs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i88.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1095 = trunc i64 %i.um to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !209
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !209
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.ub
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !3  ; 2 uses
  %i.wd = icmp eq i32 %.02021.i.i.i88.i.i.i.i.epil.init, %i.wc
  %i.we = and i1 %.8533.epil.init, %i.wd
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !209
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.wa
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !3
  %i.wj = icmp eq i32 %.01422.i.i.i87.i.i.i.i.epil.init, %i.wi
  %65 = select i1 %i.wj, i1 %.8.epil.init, i1 false
  %.sroa.speculated.i.i.i89.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i.epil.init, i32 %i.wc)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1089
  %.lcssa1059 = phi i1 [ %i.vo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %i.we, %.epil.preheader1089 ]
  %.lcssa1058 = phi i1 [ %64, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %65, %.epil.preheader1089 ]
  %.sroa.speculated.i.i.i89.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i89.i.i.i.i.epil, %.epil.preheader1089 ]
  %i.wk = zext i1 %.lcssa1059 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i: ; preds = %.preheader.i74.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit, %bb.ar
  %.7532 = phi i8 [ %.6531, %bb.ar ], [ %i.wk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ %.6531, %.preheader.i74.i.i.i.i ] ; 2 uses
  %.7 = phi i1 [ %.6, %bb.ar ], [ %.lcssa1058, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ %.6, %.preheader.i74.i.i.i.i ] ; 2 uses
  %.020.lcssa.i.i.i80.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %bb.ar ], [ %.sroa.speculated.i.i.i89.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ 0, %.preheader.i74.i.i.i.i ] ; 2 uses
  %i.wl = load i32, ptr %i.b, align 4, !tbaa !3
  %i.wm = add nsw i32 %i.wl, %.020.lcssa.i.i.i80.i.i.i.i
  store i32 %i.wm, ptr %i.b, align 4, !tbaa !3
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ub
  store i32 %.020.lcssa.i.i.i80.i.i.i.i, ptr %i.wn, align 4, !tbaa !3
  %i.wo = add nsw i64 %.011.i75.i.i.i.i, -1
  %i.wp = and i64 %i.wo, %.011.i75.i.i.i.i        ; 2 uses
  %.not10.i81.i.i.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not10.i81.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i, !llvm.loop !312

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %bb.aq, %._crit_edge.i.i.i.i, %bb.ab, %bb.z, %bb.v
  %.22547 = phi i8 [ 1, %bb.z ], [ 1, %bb.v ], [ 1, %bb.ab ], [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5530, %._crit_edge.i.i.i.i ], [ %.5530, %bb.aq ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %.22 = phi i1 [ true, %bb.z ], [ true, %bb.v ], [ true, %bb.ab ], [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.aq ], [ %.20, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %i.wq = trunc nuw i8 %.22547 to i1
  %or.cond = select i1 %i.wq, i1 %.22, i1 false
  br i1 %or.cond, label %bb.at, label %.critedge

bb.at:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %i.wr = load ptr, ptr %2, align 8, !tbaa !316   ; 28 uses
  %i.ws = load ptr, ptr %i.j, align 8, !tbaa !316 ; 6 uses
  %i.wt = icmp eq ptr %i.wr, %i.ws                ; 2 uses
  br i1 %i.wt, label %.critedge665, label %iter.check

iter.check:                                       ; preds = %bb.at
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = add i64 %i.wu, -16
  %i.wx = sub i64 %i.ww, %i.wv                    ; 3 uses
  %i.wy = lshr i64 %i.wx, 4
  %i.wz = add nuw nsw i64 %i.wy, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.wx, 64
  br i1 %min.iters.check, label %.lr.ph652.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check935 = icmp ult i64 %i.wx, 256
  br i1 %min.iters.check935, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.wz, 15                   ; 2 uses
  %i.xa = icmp eq i64 %n.mod.vf, 0
  %i.xb = select i1 %i.xa, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.wz, %i.xb               ; 3 uses
  %i.xc = shl i64 %n.vec, 4
  %i.xd = getelementptr i8, ptr %i.wr, i64 %i.xc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aak, %vector.body ]
  %vec.phi936 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aal, %vector.body ]
  %vec.phi937 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aam, %vector.body ]
  %vec.phi938 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aan, %vector.body ]
  %i.xe = shl i64 %index, 4                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.wr, i64 %i.xe
  %i.xf = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep939 = getelementptr i8, ptr %i.xf, i64 16
  %i.xg = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep940 = getelementptr i8, ptr %i.xg, i64 32
  %i.xh = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep941 = getelementptr i8, ptr %i.xh, i64 48
  %i.xi = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep942 = getelementptr i8, ptr %i.xi, i64 64
  %i.xj = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep943 = getelementptr i8, ptr %i.xj, i64 80
  %i.xk = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep944 = getelementptr i8, ptr %i.xk, i64 96
  %i.xl = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep945 = getelementptr i8, ptr %i.xl, i64 112
  %i.xm = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep946 = getelementptr i8, ptr %i.xm, i64 128
  %i.xn = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep947 = getelementptr i8, ptr %i.xn, i64 144
  %i.xo = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep948 = getelementptr i8, ptr %i.xo, i64 160
  %i.xp = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep949 = getelementptr i8, ptr %i.xp, i64 176
  %i.xq = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep950 = getelementptr i8, ptr %i.xq, i64 192
  %i.xr = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep951 = getelementptr i8, ptr %i.xr, i64 208
  %i.xs = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep952 = getelementptr i8, ptr %i.xs, i64 224
  %i.xt = getelementptr i8, ptr %i.wr, i64 %i.xe
  %next.gep953 = getelementptr i8, ptr %i.xt, i64 240
  %i.xu = load ptr, ptr %next.gep, align 8, !tbaa !317
  %i.xv = load ptr, ptr %next.gep939, align 8, !tbaa !317
  %i.xw = load ptr, ptr %next.gep940, align 8, !tbaa !317
  %i.xx = load ptr, ptr %next.gep941, align 8, !tbaa !317
  %i.xy = load ptr, ptr %next.gep942, align 8, !tbaa !317
  %i.xz = load ptr, ptr %next.gep943, align 8, !tbaa !317
  %i.ya = load ptr, ptr %next.gep944, align 8, !tbaa !317
  %i.yb = load ptr, ptr %next.gep945, align 8, !tbaa !317
  %i.yc = load ptr, ptr %next.gep946, align 8, !tbaa !317
  %i.yd = load ptr, ptr %next.gep947, align 8, !tbaa !317
  %i.ye = load ptr, ptr %next.gep948, align 8, !tbaa !317
  %i.yf = load ptr, ptr %next.gep949, align 8, !tbaa !317
  %i.yg = load ptr, ptr %next.gep950, align 8, !tbaa !317
  %i.yh = load ptr, ptr %next.gep951, align 8, !tbaa !317
  %i.yi = load ptr, ptr %next.gep952, align 8, !tbaa !317
  %i.yj = load ptr, ptr %next.gep953, align 8, !tbaa !317
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
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yf, i64 28
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yg, i64 28
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yh, i64 28
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yi, i64 28
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yj, i64 28
  %i.za = load i32, ptr %i.yk, align 4, !tbaa !319
  %i.zb = load i32, ptr %i.yl, align 4, !tbaa !319
  %i.zc = load i32, ptr %i.ym, align 4, !tbaa !319
  %i.zd = load i32, ptr %i.yn, align 4, !tbaa !319
  %i.ze = insertelement <4 x i32> poison, i32 %i.za, i64 0
  %i.zf = insertelement <4 x i32> %i.ze, i32 %i.zb, i64 1
  %i.zg = insertelement <4 x i32> %i.zf, i32 %i.zc, i64 2
  %i.zh = insertelement <4 x i32> %i.zg, i32 %i.zd, i64 3
  %i.zi = load i32, ptr %i.yo, align 4, !tbaa !319
  %i.zj = load i32, ptr %i.yp, align 4, !tbaa !319
  %i.zk = load i32, ptr %i.yq, align 4, !tbaa !319
  %i.zl = load i32, ptr %i.yr, align 4, !tbaa !319
  %i.zm = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.zn = insertelement <4 x i32> %i.zm, i32 %i.zj, i64 1
  %i.zo = insertelement <4 x i32> %i.zn, i32 %i.zk, i64 2
  %i.zp = insertelement <4 x i32> %i.zo, i32 %i.zl, i64 3
  %i.zq = load i32, ptr %i.ys, align 4, !tbaa !319
  %i.zr = load i32, ptr %i.yt, align 4, !tbaa !319
  %i.zs = load i32, ptr %i.yu, align 4, !tbaa !319
  %i.zt = load i32, ptr %i.yv, align 4, !tbaa !319
  %i.zu = insertelement <4 x i32> poison, i32 %i.zq, i64 0
  %i.zv = insertelement <4 x i32> %i.zu, i32 %i.zr, i64 1
  %i.zw = insertelement <4 x i32> %i.zv, i32 %i.zs, i64 2
  %i.zx = insertelement <4 x i32> %i.zw, i32 %i.zt, i64 3
  %i.zy = load i32, ptr %i.yw, align 4, !tbaa !319
  %i.zz = load i32, ptr %i.yx, align 4, !tbaa !319
  %i.aaa = load i32, ptr %i.yy, align 4, !tbaa !319
  %i.aab = load i32, ptr %i.yz, align 4, !tbaa !319
  %i.aac = insertelement <4 x i32> poison, i32 %i.zy, i64 0
  %i.aad = insertelement <4 x i32> %i.aac, i32 %i.zz, i64 1
  %i.aae = insertelement <4 x i32> %i.aad, i32 %i.aaa, i64 2
  %i.aaf = insertelement <4 x i32> %i.aae, i32 %i.aab, i64 3
  %i.aag = icmp eq <4 x i32> %i.zh, splat (i32 8)
  %i.aah = icmp eq <4 x i32> %i.zp, splat (i32 8)
  %i.aai = icmp eq <4 x i32> %i.zx, splat (i32 8)
  %i.aaj = icmp eq <4 x i32> %i.aaf, splat (i32 8)
  %i.aak = and <4 x i1> %vec.phi, %i.aag          ; 2 uses
  %i.aal = and <4 x i1> %vec.phi936, %i.aah       ; 2 uses
  %i.aam = and <4 x i1> %vec.phi937, %i.aai       ; 2 uses
  %i.aan = and <4 x i1> %vec.phi938, %i.aaj       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aao = icmp eq i64 %index.next, %n.vec
  br i1 %i.aao, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !320

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.aal, %i.aak
  %bin.rdx954 = and <4 x i1> %i.aam, %bin.rdx
  %bin.rdx955 = and <4 x i1> %i.aan, %bin.rdx954
  %i.aap = bitcast <4 x i1> %bin.rdx955 to i4
  %i.aaq = icmp eq i4 %i.aap, -1                  ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.xb, 5
  br i1 %min.epilog.iters.check, label %.lr.ph652.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aaq, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.mod.vf956 = and i64 %i.wz, 3                 ; 2 uses
  %i.aar = icmp eq i64 %n.mod.vf956, 0
  %i.aas = select i1 %i.aar, i64 4, i64 %n.mod.vf956
  %n.vec957 = sub nsw i64 %i.wz, %i.aas           ; 2 uses
  %i.aat = shl i64 %n.vec957, 4
  %i.aau = getelementptr i8, ptr %i.wr, i64 %i.aat
  %i.aav = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index958 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next964, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi959 = phi <4 x i1> [ %i.aav, %vec.epilog.ph ], [ %i.abr, %vec.epilog.vector.body ]
  %i.aaw = shl i64 %index958, 4                   ; 4 uses
  %next.gep960 = getelementptr i8, ptr %i.wr, i64 %i.aaw
  %i.aax = getelementptr i8, ptr %i.wr, i64 %i.aaw
  %next.gep961 = getelementptr i8, ptr %i.aax, i64 16
  %i.aay = getelementptr i8, ptr %i.wr, i64 %i.aaw
  %next.gep962 = getelementptr i8, ptr %i.aay, i64 32
  %i.aaz = getelementptr i8, ptr %i.wr, i64 %i.aaw
  %next.gep963 = getelementptr i8, ptr %i.aaz, i64 48
  %i.aba = load ptr, ptr %next.gep960, align 8, !tbaa !317
  %i.abb = load ptr, ptr %next.gep961, align 8, !tbaa !317
  %i.abc = load ptr, ptr %next.gep962, align 8, !tbaa !317
  %i.abd = load ptr, ptr %next.gep963, align 8, !tbaa !317
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 28
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 28
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 28
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 28
  %i.abi = load i32, ptr %i.abe, align 4, !tbaa !319
  %i.abj = load i32, ptr %i.abf, align 4, !tbaa !319
  %i.abk = load i32, ptr %i.abg, align 4, !tbaa !319
  %i.abl = load i32, ptr %i.abh, align 4, !tbaa !319
  %i.abm = insertelement <4 x i32> poison, i32 %i.abi, i64 0
  %i.abn = insertelement <4 x i32> %i.abm, i32 %i.abj, i64 1
  %i.abo = insertelement <4 x i32> %i.abn, i32 %i.abk, i64 2
  %i.abp = insertelement <4 x i32> %i.abo, i32 %i.abl, i64 3
  %i.abq = icmp eq <4 x i32> %i.abp, splat (i32 8)
  %i.abr = and <4 x i1> %vec.phi959, %i.abq       ; 2 uses
  %index.next964 = add nuw i64 %index958, 4       ; 2 uses
  %i.abs = icmp eq i64 %index.next964, %n.vec957
  br i1 %i.abs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
end_hunk_0

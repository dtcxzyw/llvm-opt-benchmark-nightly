inline.NumInlined: 2341
inline.NumDeleted: 1232
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a

_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i132: ; preds = %.noexc137
  %.idx.i.i.i.i.i.i.i133 = shl nuw nsw i64 %i.w, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i133, i1 false), !tbaa !209
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i133
  br label %bb.f

bb.f:                                             ; preds = %.noexc137, %_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i132
  %.0.i.i.i.i.i134.ph = phi ptr [ %i.aj, %_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i132 ], [ %i.ai, %.noexc137 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i134.ph, ptr %i.ak, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
          to label %.noexc146 unwind label %bb.j  ; 4 uses

.noexc146:                                        ; preds = %bb.f
  store ptr %i.al, ptr %15, align 8, !tbaa !205
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !208
  store ptr null, ptr %i.al, align 8, !tbaa !209
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 3 uses
  br i1 %i.x, label %.lr.ph.preheader, label %_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i141

_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i141: ; preds = %.noexc146
  %.idx.i.i.i.i.i.i.i142 = shl nuw nsw i64 %i.w, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i142, i1 false), !tbaa !209
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.i142
  br label %.lr.ph.preheader

bb.g:                                             ; preds = %_ZNSt6vectorIPKN8facebook5velox11ArrayVectorESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i141, %.noexc146
  %.0.i.i.i.i.i143.ph = phi ptr [ %i.ap, %_ZSt6fill_nIPPKimS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i141 ], [ %i.ao, %.noexc146 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.0.i.i.i.i.i143.ph, ptr %i.aq, align 8, !tbaa !211
  br label %.lr.ph

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN8facebook5velox11ArrayVectorESaIS4_EED2Ev.exit446

_ZNSt6vectorIPKiSaIS1_EED2Ev.exit444.thread:      ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ka

bb.i:                                             ; preds = %bb.e
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
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i929, 64 ; 2 uses
  %.not37.i.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.cv
  br i1 %.not37.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph930, !llvm.loop !308

.lr.ph930:                                        ; preds = %bb.s, %bb.t
  %indvars.iv.next.i.i929 = phi i64 [ %indvars.iv.next.i.i, %bb.t ], [ 64, %bb.s ] ; 2 uses
  %indvars.iv.i.i928 = phi i64 [ %indvars.iv.next.i.i929, %bb.t ], [ 0, %bb.s ]
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
  %i.ee = icmp ne i8 %.19544, 0                   ; 2 uses
  %i.ef = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter1108 = and i64 %i.ef, 1
  %i.eg = icmp eq i32 %i.ds, 2
  br i1 %i.eg, label %.epil.preheader1107, label %.peel.next.i.i.i.new

.peel.next.i.i.i.new:                             ; preds = %.peel.next.i.i.i
  %unroll_iter1114 = and i64 %i.ef, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.peel.next.i.i.i.new
  %.21546 = phi i1 [ %i.ee, %.peel.next.i.i.i.new ], [ %i.fh, %bb.y ]
  %.21 = phi i1 [ %.19, %.peel.next.i.i.i.new ], [ %i.fo, %bb.y ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.y ] ; 5 uses
  %.01422.i.i.i = phi i32 [ %i.ed, %.peel.next.i.i.i.new ], [ %i.fl, %bb.y ]
  %.02021.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i.new ], [ %.sroa.speculated.i.i.i.1, %bb.y ] ; 2 uses
  %niter1115 = phi i64 [ 0, %.peel.next.i.i.i.new ], [ %niter1115.next.1, %bb.y ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !209
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !209
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %indvars.iv.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3  ; 2 uses
  %i.eq = icmp eq i32 %.02021.i.i.i, %i.ep
  %i.er = and i1 %.21546, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !209
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.en
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = icmp eq i32 %.01422.i.i.i, %i.ev
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i, i32 %i.ep) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !209
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !209
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 2 uses
  %i.fg = icmp eq i32 %.sroa.speculated.i.i.i, %i.ff
  %i.fh = and i1 %i.er, %i.fg                     ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !209
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fd
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 3 uses
  %i.fm = icmp eq i32 %i.ev, %i.fl
  %i.fn = select i1 %i.fm, i1 %i.ew, i1 false
  %i.fo = select i1 %i.fn, i1 %.21, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i, i32 %i.ff) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1115.next.1 = add i64 %niter1115, 2       ; 2 uses
  %niter1115.ncmp.1 = icmp eq i64 %niter1115.next.1, %unroll_iter1114
  br i1 %niter1115.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.peel.next.i.i.i
  %.21546.epil.init = phi i1 [ %i.ee, %.peel.next.i.i.i ], [ %i.fh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.21.epil.init = phi i1 [ %.19, %.peel.next.i.i.i ], [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.epil.init = phi i32 [ %i.ed, %.peel.next.i.i.i ], [ %i.fl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i ], [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1113 = trunc i64 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod1113)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i.epil.init
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !209
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i.epil.init
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !209
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3  ; 2 uses
  %i.fy = icmp eq i32 %.02021.i.i.i.epil.init, %i.fx
  %i.fz = and i1 %.21546.epil.init, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i.epil.init
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !209
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.fv
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = icmp eq i32 %.01422.i.i.i.epil.init, %i.gd
  %i.gf = select i1 %i.ge, i1 %.21.epil.init, i1 false
  %.sroa.speculated.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.epil.init, i32 %i.fx)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.epil.preheader1107
  %.lcssa1053 = phi i1 [ %i.fh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.fz, %.epil.preheader1107 ]
  %.lcssa1052 = phi i1 [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader1107 ]
  %.sroa.speculated.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.epil, %.epil.preheader1107 ]
  %i.gg = zext i1 %.lcssa1053 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, %bb.x, %bb.w
  %.20545 = phi i8 [ %.19544, %bb.x ], [ %.19544, %bb.w ], [ %i.gg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.20 = phi i1 [ %.19, %bb.x ], [ %.19, %bb.w ], [ %.lcssa1052, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.020.lcssa.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %bb.x ], [ 0, %bb.w ], [ %.sroa.speculated.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.gi = add nsw i32 %i.gh, %.020.lcssa.i.i.i
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !3
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store i32 %.020.lcssa.i.i.i, ptr %i.gj, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.w, !llvm.loop !311

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.gk = load ptr, ptr %1, align 8, !tbaa !307   ; 4 uses
  %i.gl = load i32, ptr %i.by, align 8, !tbaa !287 ; 7 uses
  %.not.i.i.i.i155 = icmp slt i32 %i.dl, %i.gl
  br i1 %.not.i.i.i.i155, label %bb.aa, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gm = add i32 %i.dl, 63                       ; 2 uses
  %i.gn = srem i32 %i.gm, 64
  %i.go = sub nsw i32 %i.gm, %i.gn                ; 6 uses
  %i.gp = and i32 %i.gl, -64                      ; 6 uses
  %i.gq = icmp slt i32 %i.gp, %i.go
  br i1 %i.gq, label %bb.ab, label %bb.ae

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %i.aoc, label %.sink.split.i.i.i230, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit234

.sink.split.i.i.i230:                             ; preds = %bb.dy
  %i.aod = load ptr, ptr %i.anz, align 8, !tbaa !84
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 64
  %i.aof = load ptr, ptr %i.aoe, align 8
  invoke void %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.anz)
          to label %.noexc.i.i231 unwind label %bb.dz, !inline_history !332

.noexc.i.i231:                                    ; preds = %.sink.split.i.i.i230
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !333
  %.not.i.i.i232 = icmp eq ptr %i.aoh, null
  %i.aoi = load ptr, ptr %i.anz, align 8, !tbaa !84
  %..i.i.i233 = select i1 %.not.i.i.i232, i64 8, i64 48
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %..i.i.i233
  %i.aok = load ptr, ptr %i.aoj, align 8
  invoke void %i.aok(ptr noundef nonnull align 8 dereferenceable(64) %i.anz)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit234 unwind label %bb.dz, !inline_history !332

bb.dz:                                            ; preds = %.noexc.i.i231, %.sink.split.i.i.i230
  %i.aol = landingpad { ptr, i32 }
          catch ptr null
  %i.aom = extractvalue { ptr, i32 } %i.aol, 0
  call void @__clang_call_terminate(ptr %i.aom) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit234: ; preds = %bb.dx, %bb.dy, %.noexc.i.i231
  %i.aon = load ptr, ptr %29, align 8, !tbaa !297 ; 7 uses
  %.not.i235 = icmp eq ptr %i.aon, null
  br i1 %.not.i235, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240, label %bb.ea

bb.ea:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit234
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 40
  %i.aop = atomicrmw sub ptr %i.aoo, i32 1 acq_rel, align 4
  %i.aoq = icmp eq i32 %i.aop, 1
  br i1 %i.aoq, label %.sink.split.i.i236, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240

.sink.split.i.i236:                               ; preds = %bb.ea
  %i.aor = load ptr, ptr %i.aon, align 8, !tbaa !84
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 64
  %i.aot = load ptr, ptr %i.aos, align 8
  invoke void %i.aot(ptr noundef nonnull align 8 dereferenceable(64) %i.aon)
          to label %.noexc.i237 unwind label %bb.eb, !inline_history !332

.noexc.i237:                                      ; preds = %.sink.split.i.i236
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !333
  %.not.i.i238 = icmp eq ptr %i.aov, null
  %i.aow = load ptr, ptr %i.aon, align 8, !tbaa !84
  %..i.i239 = select i1 %.not.i.i238, i64 8, i64 48
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 %..i.i239
  %i.aoy = load ptr, ptr %i.aox, align 8
  invoke void %i.aoy(ptr noundef nonnull align 8 dereferenceable(64) %i.aon)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240 unwind label %bb.eb, !inline_history !332

bb.eb:                                            ; preds = %.noexc.i237, %.sink.split.i.i236
  %i.aoz = landingpad { ptr, i32 }
          catch ptr null
  %i.apa = extractvalue { ptr, i32 } %i.aoz, 0
  call void @__clang_call_terminate(ptr %i.apa) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit234, %bb.ea, %.noexc.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.apb = load ptr, ptr %24, align 8, !tbaa !343 ; 2 uses
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %indvars.iv686
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !297 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 44
  %i.apf = load i8, ptr %i.ape, align 4, !tbaa !298
  %i.apg = and i8 %i.apf, 2
  %.not.i241 = icmp eq i8 %i.apg, 0
  br i1 %.not.i241, label %bb.ec, label %.invoke, !prof !126

bb.ec:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !303
  %i.apj = load ptr, ptr %26, align 8, !tbaa !348
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %indvars.iv686
  store ptr %i.api, ptr %i.apk, align 8, !tbaa !209
  %i.apl = load ptr, ptr %25, align 8, !tbaa !343
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %i.apl, i64 %indvars.iv686
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !297 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 44
  %i.app = load i8, ptr %i.apo, align 4, !tbaa !298
  %i.apq = and i8 %i.app, 2
  %.not.i244 = icmp eq i8 %i.apq, 0
  br i1 %.not.i244, label %bb.ed, label %.invoke, !prof !126

.invoke:                                          ; preds = %bb.ec, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240
  %i.apr = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit240 ], [ @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs, %bb.ec ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.apr) #24
          to label %.cont unwind label %bb.eg

.cont:                                            ; preds = %.invoke
  unreachable

bb.ed:                                            ; preds = %bb.ec
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apn, i64 16
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !303
  %i.apu = load ptr, ptr %27, align 8, !tbaa !352
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %indvars.iv686
  store ptr %i.apt, ptr %i.apv, align 8, !tbaa !356
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.apw = load i32, ptr %i.a, align 4, !tbaa !3
  %i.apx = sext i32 %i.apw to i64
  %i.apy = icmp slt i64 %indvars.iv.next687, %i.apx
  br i1 %i.apy, label %bb.dq, label %._crit_edge657, !llvm.loop !369

bb.ee:                                            ; preds = %bb.dq
  %i.apz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.jp

bb.ef:                                            ; preds = %bb.dw
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.jp

bb.eg:                                            ; preds = %.invoke
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.eh:                                            ; preds = %._crit_edge657
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.aqc = load ptr, ptr %30, align 8, !tbaa !297 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 44
  %i.aqe = load i8, ptr %i.aqd, align 4, !tbaa !298
  %i.aqf = and i8 %i.aqe, 2
  %.not.i246 = icmp eq i8 %i.aqf, 0
  br i1 %.not.i246, label %bb.ej, label %bb.ei, !prof !126

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #24
          to label %.noexc247 unwind label %bb.fn

.noexc247:                                        ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !303
  store ptr %i.aqh, ptr %i.g, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 0, ptr %i.h, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.d, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.h, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %14, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %13, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %26, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %27, ptr %.sroa.9.0..sroa_idx, align 8
  %i.aqi = load i8, ptr %i.cj, align 1, !tbaa !304, !range !100, !noundef !101
  %i.aqj = trunc nuw i8 %i.aqi to i1
  br i1 %i.aqj, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292, label %bb.ek

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292: ; preds = %bb.ej
  %.0.in.pre.i.i293 = load i8, ptr %i.ci, align 4, !tbaa !117, !range !100
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251

bb.ek:                                            ; preds = %bb.ej
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !305
  %i.aqm = icmp eq i32 %i.aql, 0
  br i1 %i.aqm, label %bb.el, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

bb.el:                                            ; preds = %bb.ek
  %i.aqn = load i32, ptr %i.by, align 8, !tbaa !287 ; 6 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aqp = load i32, ptr %i.aqo, align 8, !tbaa !306
  %i.aqq = icmp eq i32 %i.aqn, %i.aqp
  br i1 %i.aqq, label %bb.em, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

bb.em:                                            ; preds = %bb.el
  %i.aqr = load ptr, ptr %1, align 8, !tbaa !307  ; 2 uses
  %.not.i.i.i284 = icmp sgt i32 %i.aqn, 0
  br i1 %.not.i.i.i284, label %bb.en, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

bb.en:                                            ; preds = %bb.em
  %i.aqs = and i32 %i.aqn, 2147483584             ; 3 uses
  %i.aqt = zext nneg i32 %i.aqs to i64
  %.not37.i.i.not.i.i286931.not = icmp eq i32 %i.aqs, 0
  br i1 %.not37.i.i.not.i.i286931.not, label %.critedge.i.i.i.i287, label %.lr.ph934

bb.eo:                                            ; preds = %.lr.ph934
  %indvars.iv.next.i.i291 = add nuw nsw i64 %indvars.iv.next.i.i286934, 64 ; 2 uses
  %.not37.i.i.i.i287 = icmp samesign ugt i64 %indvars.iv.next.i.i291, %i.aqt
  br i1 %.not37.i.i.i.i287, label %.critedge.i.i.i.i287, label %.lr.ph934, !llvm.loop !308

.lr.ph934:                                        ; preds = %bb.en, %bb.eo
  %indvars.iv.next.i.i286934 = phi i64 [ %indvars.iv.next.i.i291, %bb.eo ], [ 64, %bb.en ] ; 2 uses
  %indvars.iv.i.i285932 = phi i64 [ %indvars.iv.next.i.i286934, %bb.eo ], [ 0, %bb.en ]
  %i.aqu = lshr exact i64 %indvars.iv.i.i285932, 3
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqr, i64 %i.aqu
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !160
  %i.aqx = icmp eq i64 %i.aqw, -1
  br i1 %i.aqx, label %bb.eo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, !llvm.loop !308

.critedge.i.i.i.i287:                             ; preds = %bb.eo, %bb.en
  %.not38.i.i.i.i288 = icmp eq i32 %i.aqn, %i.aqs
  br i1 %.not38.i.i.i.i288, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, label %bb.ep

bb.ep:                                            ; preds = %.critedge.i.i.i.i287
  %i.aqy = lshr i32 %i.aqn, 6
  %i.aqz = and i32 %i.aqn, 63
  %i.ara = zext nneg i32 %i.aqz to i64
  %notmask.i40.i.i.i.i289 = shl nsw i64 -1, %i.ara
  %i.arb = zext nneg i32 %i.aqy to i64
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.aqr, i64 %i.arb
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !160
  %.demorgan.i.i290 = or i64 %i.ard, %notmask.i40.i.i.i.i289
  %i.are = icmp eq i64 %.demorgan.i.i290, -1
  %i.arf = zext i1 %i.are to i16
  %i.arg = or disjoint i16 %i.arf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249: ; preds = %.lr.ph934, %bb.ep, %.critedge.i.i.i.i287, %bb.em, %bb.el, %bb.ek
  %.sroa.0.0.insert.ext.i.i250 = phi i16 [ 256, %bb.el ], [ 256, %bb.ek ], [ 257, %bb.em ], [ 257, %.critedge.i.i.i.i287 ], [ %i.arg, %bb.ep ], [ 256, %.lr.ph934 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i250, ptr %i.ci, align 4
  %i.arh = trunc i16 %.sroa.0.0.insert.ext.i.i250 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292
  %.0.in.i.i252 = phi i8 [ %.0.in.pre.i.i293, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292 ], [ %i.arh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249 ]
  %.0.i.i253 = trunc nuw i8 %.0.in.i.i252 to i1
  %i.ari = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !305 ; 8 uses
  br i1 %.0.i.i253, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251
  %i.ark = load i32, ptr %i.by, align 8, !tbaa !287 ; 2 uses
  %i.arl = icmp slt i32 %i.arj, %i.ark
  br i1 %i.arl, label %.lr.ph.i282, label %.loopexit

.lr.ph.i282:                                      ; preds = %bb.eq, %.lr.ph.i282
  %.014.i = phi i32 [ %i.arm, %.lr.ph.i282 ], [ %i.arj, %bb.eq ] ; 2 uses
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %7, i32 noundef %.014.i)
  %i.arm = add i32 %.014.i, 1                     ; 2 uses
  %exitcond.not.i283 = icmp eq i32 %i.arm, %i.ark
  br i1 %exitcond.not.i283, label %.loopexit, label %.lr.ph.i282, !llvm.loop !370

bb.er:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251
  %i.arn = load ptr, ptr %1, align 8, !tbaa !307  ; 5 uses
  %i.aro = load i32, ptr %i.by, align 8, !tbaa !287 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.g, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.h, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %14, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %15, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %13, ptr %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %26, ptr %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.12.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %27, ptr %.sroa.12.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %6, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.arn, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i259 = icmp slt i32 %i.arj, %i.aro
  br i1 %.not.i.i.i.i259, label %bb.es, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i

bb.es:                                            ; preds = %bb.er
  %i.arp = add i32 %i.arj, 63                     ; 2 uses
  %i.arq = srem i32 %i.arp, 64
  %i.arr = sub nsw i32 %i.arp, %i.arq             ; 6 uses
  %i.ars = and i32 %i.aro, -64                    ; 6 uses
  %i.art = icmp slt i32 %i.ars, %i.arr
  br i1 %i.art, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aru = ashr i32 %i.aro, 6
  %i.arv = and i32 %i.aro, 63
  %i.arw = zext nneg i32 %i.arv to i64
  %notmask.i.i.i.i.i276 = shl nsw i64 -1, %i.arw
  %i.arx = xor i64 %notmask.i.i.i.i.i276, -1
  %i.ary = sub nsw i32 %i.arr, %i.arj             ; 2 uses
  %i.arz = zext nneg i32 %i.ary to i64
  %notmask.i.i.i.i.i.i277 = shl nsw i64 -1, %i.arz
  %i.asa = xor i64 %notmask.i.i.i.i.i.i277, -1
  %i.asb = sub nsw i32 64, %i.ary
  %i.asc = zext nneg i32 %i.asb to i64
  %i.asd = shl i64 %i.asa, %i.asc
  %i.ase = and i64 %i.asd, %i.arx
  %i.asf = sext i32 %i.aru to i64
  %i.asg = getelementptr inbounds [8 x i8], ptr %i.arn, i64 %i.asf
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !160
  %i.asi = and i64 %i.ase, %i.ash                 ; 2 uses
  %.not.i.i.i.i.i278 = icmp eq i64 %i.asi, 0
  br i1 %.not.i.i.i.i.i278, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i279

.preheader.i.i.i.i.i279:                          ; preds = %bb.et, %.preheader.i.i.i.i.i279
  %.011.i.i.i.i.i280 = phi i64 [ %i.asn, %.preheader.i.i.i.i.i279 ], [ %i.asi, %bb.et ] ; 3 uses
  %i.asj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i280, i1 true)
  %i.ask = trunc nuw nsw i64 %i.asj to i32
  %i.asl = or disjoint i32 %i.ars, %i.ask
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.asl)
  %i.asm = add nsw i64 %.011.i.i.i.i.i280, -1
  %i.asn = and i64 %i.asm, %.011.i.i.i.i.i280     ; 2 uses
  %.not10.i.i.i.i.i281 = icmp eq i64 %i.asn, 0
  br i1 %.not10.i.i.i.i.i281, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i279, !llvm.loop !371

bb.eu:                                            ; preds = %bb.es
  %.not32.i.i.i.i260 = icmp eq i32 %i.arj, %i.arr
  br i1 %.not32.i.i.i.i260, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aso = sdiv i32 %i.arj, 64                    ; 2 uses
  %i.asp = sub nsw i32 %i.arr, %i.arj             ; 2 uses
  %i.asq = zext nneg i32 %i.asp to i64
  %notmask.i.i35.i.i.i.i261 = shl nsw i64 -1, %i.asq
  %i.asr = xor i64 %notmask.i.i35.i.i.i.i261, -1
  %i.ass = sub nsw i32 64, %i.asp
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = shl i64 %i.asr, %i.ast
  %i.asv = sext i32 %i.aso to i64
  %i.asw = getelementptr inbounds [8 x i8], ptr %i.arn, i64 %i.asv
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !160
  %i.asy = and i64 %i.asx, %i.asu                 ; 2 uses
  %.not.i36.i.i.i.i262 = icmp eq i64 %i.asy, 0
  br i1 %.not.i36.i.i.i.i262, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i263

.preheader.i37.i.i.i.i263:                        ; preds = %bb.ev
  %i.asz = shl nsw i32 %i.aso, 6
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.preheader.i37.i.i.i.i263
  %.011.i38.i.i.i.i264 = phi i64 [ %i.asy, %.preheader.i37.i.i.i.i263 ], [ %i.ate, %bb.ew ] ; 3 uses
  %i.ata = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i264, i1 true)
  %i.atb = trunc nuw nsw i64 %i.ata to i32
  %i.atc = or disjoint i32 %i.asz, %i.atb
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.atc)
  %i.atd = add i64 %.011.i38.i.i.i.i264, -1
  %i.ate = and i64 %i.atd, %.011.i38.i.i.i.i264   ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.ate, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ew, !llvm.loop !371

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.atf = add nsw i32 %i.arr, 64                 ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.atf, %i.ars
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i267, label %.lr.ph.i.i.i.i265.preheader

.lr.ph.i.i.i.i265.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %i.atg = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ath = load ptr, ptr %i.g, align 8            ; 2 uses
  br label %.lr.ph.i.i.i.i265

._crit_edge.i.i.i.i267:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i268 = icmp eq i32 %i.aro, %i.ars
  br i1 %.not34.i.i.i.i268, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %bb.fk

.lr.ph.i.i.i.i265:                                ; preds = %.lr.ph.i.i.i.i265.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %i.ati = phi i32 [ %i.bbm, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.atf, %.lr.ph.i.i.i.i265.preheader ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.ati, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.arr, %.lr.ph.i.i.i.i265.preheader ] ; 2 uses
  %i.atj = sdiv i32 %.060.i.i.i.i, 64             ; 3 uses
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds [8 x i8], ptr %i.arn, i64 %i.atk
  %i.atm = load i64, ptr %i.atl, align 8, !tbaa !160 ; 2 uses
  switch i64 %i.atm, label %.lr.ph.i.i.i.i.i275 [
    i64 -1, label %bb.ex
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i275:                              ; preds = %.lr.ph.i.i.i.i265
  %i.atn = shl nsw i32 %i.atj, 6
  %.pre.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.ato = load ptr, ptr %14, align 8
  %i.atp = load ptr, ptr %15, align 8
  %i.atq = load ptr, ptr %13, align 8
  %i.atr = load ptr, ptr %26, align 8
  %i.ats = load ptr, ptr %27, align 8
  br label %bb.fe

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i265
  %i.att = shl nsw i32 %i.atj, 6                  ; 2 uses
  %i.atu = add i32 %i.att, 64
  %i.atv = sext i32 %i.atu to i64
  %.0.off.i.i.i.i269 = add i32 %.060.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i269, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.ex
  %i.atw = sext i32 %i.att to i64
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.atx = load ptr, ptr %14, align 8
end_hunk_1

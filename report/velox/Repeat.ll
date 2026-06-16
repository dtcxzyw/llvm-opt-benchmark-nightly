inline.NumInlined: 3737
inline.NumDeleted: 1486
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
bb.h:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxUserErrorE
  %i.ai = load ptr, ptr %41, align 8, !tbaa !47, !noalias !220 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !28, !noalias !220
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29, !noalias !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27, !noalias !220
  br label %.body.i

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxUserErrorE
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %eh.lpad-body.i, 1
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxUserErrorE) #27
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.bw

bb.j:                                             ; preds = %.body.i
  %i.ar = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #27, !noalias !220 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27, !noalias !220
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %42) #27, !noalias !220
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.k unwind label %bb.m, !noalias !220

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %42, align 8, !tbaa !285, !noalias !220
  %.not.i35.i = icmp eq ptr %i.at, null
  br i1 %.not.i35.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #27, !noalias !220
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %51, i8 0, i64 16, i1 false), !alias.scope !220
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.cm

bb.m:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %42, align 8, !tbaa !285, !noalias !220
  %.not.i36.i = icmp eq ptr %i.av, null
  br i1 %.not.i36.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #27, !noalias !220
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !220
  invoke void @__cxa_end_catch()
          to label %bb.bw unwind label %bb.bx, !noalias !220

_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !220
  %i.aw = trunc nuw nsw i64 %i.ad to i32
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27, !noalias !287
  store i32 0, ptr %39, align 4, !tbaa !28, !noalias !287
  %i.ay = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i8 1, ptr %i.ay, align 4, !tbaa !290, !noalias !287
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %43, i64 noundef %i.ad, ptr noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(8) %39, i1 noundef zeroext false)
          to label %.noexc18 unwind label %bb.cm

.noexc18:                                         ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27, !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27, !noalias !220
  %i.az = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !220
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !220
  %i.bb = sext i32 %i.az to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27, !noalias !291
  store i32 0, ptr %38, align 4, !tbaa !28, !noalias !291
  %i.bc = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i8 1, ptr %i.bc, align 4, !tbaa !290, !noalias !291
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %44, i64 noundef %i.bb, ptr noundef %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %38, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.bl, !noalias !220

bb.o:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27, !noalias !220
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !220
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !220
  %i.bf = sext i32 %i.bd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27, !noalias !294
  store i32 0, ptr %37, align 4, !tbaa !28, !noalias !294
  %i.bg = getelementptr inbounds nuw i8, ptr %37, i64 4
  store i8 1, ptr %i.bg, align 4, !tbaa !290, !noalias !294
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %45, i64 noundef %i.bf, ptr noundef %i.be, ptr noundef nonnull align 4 dereferenceable(8) %37, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.bm, !noalias !220

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27, !noalias !294
  %i.bh = load ptr, ptr %43, align 8, !tbaa !297, !noalias !220 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !298, !noalias !220
  %i.bk = and i8 %i.bj, 2
  %.not.i40.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i40.i, label %bb.r, label %bb.q, !prof !51

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc41.i unwind label %bb.bn, !noalias !220

.noexc41.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !303, !noalias !220 ; 6 uses
  %i.bn = load ptr, ptr %44, align 8, !tbaa !297, !noalias !220 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !298, !noalias !220
  %i.bq = and i8 %i.bp, 2
  %.not.i42.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i42.i, label %bb.t, label %bb.s, !prof !51

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc43.i unwind label %bb.bo, !noalias !220

.noexc43.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !303, !noalias !220 ; 20 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 2 uses
  %i.bu = load ptr, ptr %45, align 8, !tbaa !297, !noalias !220 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !298, !noalias !220
  %i.bx = and i8 %i.bw, 2
  %.not.i45.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i45.i, label %bb.v, label %bb.u, !prof !51

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc46.i unwind label %bb.bp, !noalias !220

.noexc46.i:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !303, !noalias !220 ; 20 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !304, !range !55, !noalias !220, !noundef !56
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i, label %bb.w

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i: ; preds = %bb.v
  %.0.in.pre.i.i.i.i.i = load i8, ptr %i.cb, align 4, !tbaa !72, !range !55, !noalias !220
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !305, !noalias !220
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !305, !noalias !220 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !223, !noalias !220 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !306, !noalias !220
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.y, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %1, align 8, !tbaa !307, !noalias !220 ; 2 uses
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cn = and i32 %i.ci, 2147483584               ; 3 uses
  %i.co = zext nneg i32 %i.cn to i64
  %.not37.i.i.not.i.i.i.i.i317.not = icmp eq i32 %i.cn, 0
  br i1 %.not37.i.i.not.i.i.i.i.i317.not, label %.critedge.i.i.i.i.i.i.i, label %.lr.ph319

bb.aa:                                            ; preds = %.lr.ph319
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i.i.i.i.i321, 64 ; 2 uses
  %.not37.i.i.i.i.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i.i.i.i.i, %i.co
  br i1 %.not37.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i, label %.lr.ph319, !llvm.loop !308

.lr.ph319:                                        ; preds = %bb.z, %bb.aa
  %indvars.iv.next.i.i.i.i.i321 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.aa ], [ 64, %bb.z ] ; 2 uses
  %indvars.iv.i.i.i.i.i318 = phi i64 [ %indvars.iv.next.i.i.i.i.i321, %bb.aa ], [ 0, %bb.z ]
  %i.cp = lshr exact i64 %indvars.iv.i.i.i.i.i318, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !148, !noalias !220
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.aa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, !llvm.loop !308

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.aa, %bb.z
  %.not38.i.i.i.i.i.i.i = icmp eq i32 %i.ci, %i.cn
  br i1 %.not38.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.ct = lshr i32 %i.ci, 6
  %i.cu = and i32 %i.ci, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %notmask.i40.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cv
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !148, !noalias !220
  %.demorgan.i.i.i.i.i = or i64 %i.cy, %notmask.i40.i.i.i.i.i.i.i
  %i.cz = icmp eq i64 %.demorgan.i.i.i.i.i, -1
  %i.da = zext i1 %i.cz to i16
  %i.db = or disjoint i16 %i.da, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i: ; preds = %.lr.ph319, %bb.ab, %.critedge.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.insert.ext.i.i.i.i.i = phi i16 [ 256, %bb.x ], [ 256, %bb.w ], [ 257, %bb.y ], [ 257, %.critedge.i.i.i.i.i.i.i ], [ %i.db, %bb.ab ], [ 256, %.lr.ph319 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.cb, align 4, !noalias !220
  %i.dc = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i
  %i.dd = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i ], [ %i.cg, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i ] ; 8 uses
  %.0.in.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i ], [ %i.dc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.de = load i32, ptr %i.p, align 8, !tbaa !223, !noalias !220 ; 2 uses
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac
  %i.dg = sext i32 %i.dd to i64                   ; 7 uses
  %wide.trip.count.i.i.i.i = sext i32 %i.de to i64 ; 5 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2      ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %iter.check714, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader.i.i.i.i.preheader:       ; preds = %.lr.ph.i.i.i.i
  %i.dh = add nsw i64 %.idx.i.i.i.i.i, -4         ; 3 uses
  %i.di = lshr exact i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 5 uses
  %min.iters.check669 = icmp ult i64 %i.dh, 28
  %min.iters.check671 = icmp ult i64 %i.dh, 124
  %n.mod.vf673 = and i64 %i.dj, 24
  %n.vec674 = and i64 %i.dj, 9223372036854775776  ; 4 uses
  %i.dk = shl i64 %n.vec674, 2
  %cmp.n682 = icmp eq i64 %i.dj, %n.vec674
  %min.epilog.iters.check687 = icmp eq i64 %n.mod.vf673, 0
  %n.vec690 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec690, 2
  %cmp.n698 = icmp eq i64 %i.dj, %n.vec690
  br label %iter.check684

iter.check714:                                    ; preds = %.lr.ph.i.i.i.i
  %i.dm = sub nsw i64 %wide.trip.count.i.i.i.i, %i.dg ; 7 uses
  %min.iters.check702 = icmp ult i64 %i.dm, 8
  %i.dn = sub i64 %i.ca, %i.bt
  %diff.check701 = icmp ult i64 %i.dn, 128
  %or.cond = select i1 %min.iters.check702, i1 true, i1 %diff.check701
  br i1 %or.cond, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader, label %vector.main.loop.iter.check703

vector.main.loop.iter.check703:                   ; preds = %iter.check714
  %min.iters.check704 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check704, label %vec.epilog.ph718, label %vector.ph705

vector.ph705:                                     ; preds = %vector.main.loop.iter.check703
  %n.mod.vf706 = and i64 %i.dm, 24
  %n.vec707 = and i64 %i.dm, -32                  ; 4 uses
  %i.do = add nsw i64 %n.vec707, %i.dg
  br label %vector.body708

vector.body708:                                   ; preds = %vector.body708, %vector.ph705
  %index709 = phi i64 [ 0, %vector.ph705 ], [ %index.next710, %vector.body708 ] ; 2 uses
  %i.dp = add i64 %index709, %i.dg                ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store <8 x i32> zeroinitializer, ptr %i.dq, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.dr, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.ds, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.dt, align 4, !tbaa !3, !noalias !220
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.dp ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  store <8 x i32> zeroinitializer, ptr %i.du, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.dv, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.dw, align 4, !tbaa !3, !noalias !220
  store <8 x i32> zeroinitializer, ptr %i.dx, align 4, !tbaa !3, !noalias !220
  %index.next710 = add nuw i64 %index709, 32      ; 2 uses
  %i.dy = icmp eq i64 %index.next710, %n.vec707
  br i1 %i.dy, label %middle.block711, label %vector.body708, !llvm.loop !309

middle.block711:                                  ; preds = %vector.body708
  %cmp.n712 = icmp eq i64 %i.dm, %n.vec707
  br i1 %cmp.n712, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %vec.epilog.iter.check716

vec.epilog.iter.check716:                         ; preds = %middle.block711
  %min.epilog.iters.check717 = icmp eq i64 %n.mod.vf706, 0
  br i1 %min.epilog.iters.check717, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader, label %vec.epilog.ph718, !prof !312

vec.epilog.ph718:                                 ; preds = %vector.main.loop.iter.check703, %vec.epilog.iter.check716
  %vec.epilog.resume.val713 = phi i64 [ %n.vec707, %vec.epilog.iter.check716 ], [ 0, %vector.main.loop.iter.check703 ]
  %n.vec720 = and i64 %i.dm, -8                   ; 3 uses
  %i.dz = add nsw i64 %n.vec720, %i.dg
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph718
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph718 ], [ %index.next723, %vec.epilog.vector.body721 ] ; 2 uses
  %i.ea = add i64 %index722, %i.dg                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ea
  store <8 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !3, !noalias !220
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ea
  store <8 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !3, !noalias !220
  %index.next723 = add nuw i64 %index722, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next723, %n.vec720
  br i1 %i.ed, label %vec.epilog.middle.block724, label %vec.epilog.vector.body721, !llvm.loop !313

vec.epilog.middle.block724:                       ; preds = %vec.epilog.vector.body721
  %cmp.n725 = icmp eq i64 %i.dm, %n.vec720
  br i1 %cmp.n725, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader: ; preds = %iter.check714, %vec.epilog.iter.check716, %vec.epilog.middle.block724
  %indvars.iv.i.i.i.us.i.ph = phi i64 [ %i.dg, %iter.check714 ], [ %i.do, %vec.epilog.iter.check716 ], [ %i.dz, %vec.epilog.middle.block724 ] ; 4 uses
  %i.ee = sub nsw i64 %wide.trip.count.i.i.i.i, %indvars.iv.i.i.i.us.i.ph
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol
  %indvars.iv.i.i.i.us.i.prol = phi i64 [ %indvars.iv.next.i.i.i.us.i.prol, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol ], [ %indvars.iv.i.i.i.us.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader ]
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.us.i.prol
  store i32 0, ptr %i.ef, align 4, !tbaa !3, !noalias !220
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i.us.i.prol
  store i32 0, ptr %i.eg, align 4, !tbaa !3, !noalias !220
  %indvars.iv.next.i.i.i.us.i.prol = add nsw i64 %indvars.iv.i.i.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol, !llvm.loop !314

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader
  %indvars.iv.i.i.i.us.i.unr = phi i64 [ %indvars.iv.i.i.i.us.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.preheader ], [ %indvars.iv.next.i.i.i.us.i.prol, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol ]
  %i.eh = sub nsw i64 %indvars.iv.i.i.i.us.i.ph, %wide.trip.count.i.i.i.i
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i
  %indvars.iv.i.i.i.us.i = phi i64 [ %indvars.iv.next.i.i.i.us.i.3, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i ], [ %indvars.iv.i.i.i.us.i.unr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.us.i
  store i32 0, ptr %i.ej, align 4, !tbaa !3, !noalias !220
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i.us.i
  store i32 0, ptr %i.ek, align 4, !tbaa !3, !noalias !220
  %indvars.iv.next.i.i.i.us.i = add nsw i64 %indvars.iv.i.i.i.us.i, 1 ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.us.i
  store i32 0, ptr %i.el, align 4, !tbaa !3, !noalias !220
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i.us.i
  store i32 0, ptr %i.em, align 4, !tbaa !3, !noalias !220
  %indvars.iv.next.i.i.i.us.i.1 = add nsw i64 %indvars.iv.i.i.i.us.i, 2 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.us.i.1
  store i32 0, ptr %i.en, align 4, !tbaa !3, !noalias !220
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i.us.i.1
  store i32 0, ptr %i.eo, align 4, !tbaa !3, !noalias !220
  %indvars.iv.next.i.i.i.us.i.2 = add nsw i64 %indvars.iv.i.i.i.us.i, 3 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.us.i.2
  store i32 0, ptr %i.ep, align 4, !tbaa !3, !noalias !220
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i.us.i.2
  store i32 0, ptr %i.eq, align 4, !tbaa !3, !noalias !220
  %indvars.iv.next.i.i.i.us.i.3 = add nsw i64 %indvars.iv.i.i.i.us.i, 4 ; 2 uses
  %exitcond.not.i.i.i.us.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.us.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.us.i.3, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_EEvS9_SN_.exit.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.us.i, !llvm.loop !316

iter.check684:                                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.preheader ] ; 3 uses
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction18applyConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.loopexit.i ], [ %i.dg, %.lr.ph.i.i.i.i.preheader.i.i.i.i.preheader ] ; 4 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i.i
  store i32 %i.z, ptr %i.er, align 4, !tbaa !3, !noalias !220
  %i.es = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i.i
  %i.et = trunc nuw nsw i64 %indvars.iv82.i to i32
  store i32 %i.et, ptr %i.es, align 4, !tbaa !3, !noalias !220
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv82.i ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i.i.i.i
  %i.ew = trunc nsw i64 %indvars.iv.i.i.i.i to i32 ; 3 uses
  br i1 %min.iters.check669, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check670

vector.main.loop.iter.check670:                   ; preds = %iter.check684
  br i1 %min.iters.check671, label %vec.epilog.ph688, label %vector.ph672

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br label %.body

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #31, !noalias !220
  unreachable

bb.by:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88.i, %bb.c, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  %i.td = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.tf = load <2 x ptr>, ptr %51, align 16, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  %i.tg = load ptr, ptr %i.te, align 8, !tbaa !35 ; 8 uses
  store <2 x ptr> %i.tf, ptr %50, align 16, !tbaa !38
  %.not.i.i.i.i19 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i19, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 4 uses
  %i.ti = load atomic i64, ptr %i.th acquire, align 8 ; 2 uses
  %i.tj = icmp eq i64 %i.ti, 4294967297
  %i.tk = trunc i64 %i.ti to i32                  ; 2 uses
  br i1 %i.tj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.th, align 8, !tbaa !40
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  store i32 0, ptr %i.tl, align 4, !tbaa !42
  %i.tm = load ptr, ptr %i.tg, align 8, !tbaa !43
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(16) %i.tg) #27, !inline_history !351
  %i.tp = load ptr, ptr %i.tg, align 8, !tbaa !43
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(16) %i.tg) #27, !inline_history !351
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ts = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i20 = icmp eq i8 %i.ts, 0
  br i1 %.not.i.i.i.i.i20, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tt = add nsw i32 %i.tk, -1
  store i32 %i.tt, ptr %i.th, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.tu = atomicrmw volatile add ptr %i.th, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i = phi i32 [ %i.tk, %bb.cc ], [ %i.tu, %bb.cd ]
  %i.tv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.tv, label %bb.ce, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !46

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tg) #27
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.by, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ce
  %i.tw = load ptr, ptr %i.td, align 8, !tbaa !35 ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 4 uses
  %i.ty = load atomic i64, ptr %i.tx acquire, align 8 ; 2 uses
  %i.tz = icmp eq i64 %i.ty, 4294967297
  %i.ua = trunc i64 %i.ty to i32                  ; 2 uses
  br i1 %i.tz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.tx, align 8, !tbaa !40
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  store i32 0, ptr %i.ub, align 4, !tbaa !42
  %i.uc = load ptr, ptr %i.tw, align 8, !tbaa !43
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #27, !inline_history !352
  %i.uf = load ptr, ptr %i.tw, align 8, !tbaa !43
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #27, !inline_history !352
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.ui = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.ui, 0
  br i1 %.not.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.uj = add nsw i32 %i.ua, -1
  store i32 %i.uj, ptr %i.tx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.uk = atomicrmw volatile add ptr %i.tx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i = phi i32 [ %i.ua, %bb.ci ], [ %i.uk, %bb.cj ]
  %i.ul = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ul, label %bb.ck, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #27
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  %i.um = load ptr, ptr %50, align 16, !tbaa !201
  %.not.i = icmp eq ptr %i.um, null
  br i1 %.not.i, label %bb.ms, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98

bb.cl:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.cm:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %bb.c
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bw, %bb.cm
  %eh.lpad-body = phi { ptr, i32 } [ %i.uo, %bb.cm ], [ %.merged.i, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %.body87

bb.cn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27, !noalias !353
  invoke void @_ZN8facebook5velox4exec11DecodedArgsC2ERKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS9_EERNS1_7EvalCtxE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %.noexc86 unwind label %bb.mr

.noexc86:                                         ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !353
  %i.up = load ptr, ptr %25, align 8, !tbaa !356, !noalias !353
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uq)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit.i unwind label %bb.gk, !noalias !353

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit.i: ; preds = %.noexc86
  store ptr %i.ur, ptr %i.a, align 8, !tbaa !359, !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !353
  store i64 0, ptr %i.b, align 8, !tbaa !148, !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !353
  store ptr %i.a, ptr %24, align 8, !noalias !353
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store ptr %0, ptr %.sroa.4189.0..sroa_idx.i, align 8, !noalias !353
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.b, ptr %.sroa.5190.0..sroa_idx.i, align 8, !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !353
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !304, !range !55, !noalias !353, !noundef !56
  %i.uv = trunc nuw i8 %i.uu to i1
  br i1 %i.uv, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i84, label %bb.co

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i84: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit.i
  %.0.in.pre.i.i.i.i.i85 = load i8, ptr %i.us, align 4, !tbaa !72, !range !55, !noalias !353
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i25

bb.co:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit.i
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !305, !noalias !353
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.cp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23

bb.cp:                                            ; preds = %bb.co
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !223, !noalias !353 ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !306, !noalias !353
  %i.vd = icmp eq i32 %i.va, %i.vc
  br i1 %i.vd, label %bb.cq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23

bb.cq:                                            ; preds = %bb.cp
  %i.ve = load ptr, ptr %1, align 8, !tbaa !307, !noalias !353 ; 2 uses
  %.not.i.i.i.i.i.i76 = icmp sgt i32 %i.va, 0
  br i1 %.not.i.i.i.i.i.i76, label %bb.cr, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23

bb.cr:                                            ; preds = %bb.cq
  %i.vf = and i32 %i.va, 2147483584               ; 3 uses
  %i.vg = zext nneg i32 %i.vf to i64
  %.not37.i.i.not.i.i.i.i.i78312.not = icmp eq i32 %i.vf, 0
  br i1 %.not37.i.i.not.i.i.i.i.i78312.not, label %.critedge.i.i.i.i.i.i.i79, label %.lr.ph

bb.cs:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i.i83 = add nuw nsw i64 %indvars.iv.next.i.i.i.i.i78314, 64 ; 2 uses
  %.not37.i.i.i.i.i.i.i79 = icmp samesign ugt i64 %indvars.iv.next.i.i.i.i.i83, %i.vg
  br i1 %.not37.i.i.i.i.i.i.i79, label %.critedge.i.i.i.i.i.i.i79, label %.lr.ph, !llvm.loop !308

.lr.ph:                                           ; preds = %bb.cr, %bb.cs
  %indvars.iv.next.i.i.i.i.i78314 = phi i64 [ %indvars.iv.next.i.i.i.i.i83, %bb.cs ], [ 64, %bb.cr ] ; 2 uses
  %indvars.iv.i.i.i.i.i77313 = phi i64 [ %indvars.iv.next.i.i.i.i.i78314, %bb.cs ], [ 0, %bb.cr ]
  %i.vh = lshr exact i64 %indvars.iv.i.i.i.i.i77313, 3
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vh
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !148, !noalias !353
  %i.vk = icmp eq i64 %i.vj, -1
  br i1 %i.vk, label %bb.cs, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23, !llvm.loop !308

.critedge.i.i.i.i.i.i.i79:                        ; preds = %bb.cs, %bb.cr
  %.not38.i.i.i.i.i.i.i80 = icmp eq i32 %i.va, %i.vf
  br i1 %.not38.i.i.i.i.i.i.i80, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i.i.i.i.i.i.i79
  %i.vl = lshr i32 %i.va, 6
  %i.vm = and i32 %i.va, 63
  %i.vn = zext nneg i32 %i.vm to i64
  %notmask.i40.i.i.i.i.i.i.i81 = shl nsw i64 -1, %i.vn
  %i.vo = zext nneg i32 %i.vl to i64
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vo
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !148, !noalias !353
  %.demorgan.i.i.i.i.i82 = or i64 %i.vq, %notmask.i40.i.i.i.i.i.i.i81
  %i.vr = icmp eq i64 %.demorgan.i.i.i.i.i82, -1
  %i.vs = zext i1 %i.vr to i16
  %i.vt = or disjoint i16 %i.vs, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23: ; preds = %.lr.ph, %bb.ct, %.critedge.i.i.i.i.i.i.i79, %bb.cq, %bb.cp, %bb.co
  %.sroa.0.0.insert.ext.i.i.i.i.i24 = phi i16 [ 256, %bb.cp ], [ 256, %bb.co ], [ 257, %bb.cq ], [ 257, %.critedge.i.i.i.i.i.i.i79 ], [ %i.vt, %bb.ct ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i24, ptr %i.us, align 4, !noalias !353
  %i.vu = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i24 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i25

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i25: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i84
  %.0.in.i.i.i.i.i26 = phi i8 [ %.0.in.pre.i.i.i.i.i85, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i84 ], [ %i.vu, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i23 ]
  %.0.i.i.i.i.i27 = trunc nuw i8 %.0.in.i.i.i.i.i26 to i1
  br i1 %.0.i.i.i.i.i27, label %bb.cu, label %bb.du

bb.cu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i25
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !223, !noalias !353 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !305, !noalias !353 ; 2 uses
  %i.vz = icmp slt i32 %i.vy, %i.vw
  br i1 %i.vz, label %.lr.ph.i.i.i.i70, label %.loopexit233.i

.lr.ph.i.i.i.i70:                                 ; preds = %bb.cu
  %i.wa = sext i32 %i.vy to i64
  br label %bb.cv

bb.cv:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i, %.lr.ph.i.i.i.i70
  %indvars.iv.i.i.i.i71 = phi i64 [ %i.wa, %.lr.ph.i.i.i.i70 ], [ %indvars.iv.next.i.i.i.i73, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i ] ; 9 uses
  %i.wb = load ptr, ptr %.sroa.4189.0..sroa_idx.i, align 8, !tbaa !361, !noalias !353 ; 2 uses
  %i.wc = load ptr, ptr %24, align 8, !tbaa !364, !noalias !353, !nonnull !56, !align !179
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !359, !noalias !353 ; 11 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 24
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.wf, null
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wd, i64 58
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 2, !tbaa !376, !range !55, !noalias !353
  %.pre47.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i4.i.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.cw

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.cv
  %.pre-phi4974.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i71 to i32
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !377, !noalias !353 ; 2 uses
  br i1 %.pre47.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 57
  %i.wj = load i8, ptr %i.wi, align 1, !range !55, !noalias !353
  %i.wk = trunc nuw i8 %i.wj to i1
  %or.cond.i.i.i.i.i.i = select i1 %.pre47.i.i.i.i, i1 true, i1 %i.wk
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.wl = lshr i64 %indvars.iv.i.i.i.i71, 6
  %i.wm = and i64 %i.wl, 67108863
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.wm
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !148, !noalias !353
  %i.wp = and i64 %indvars.iv.i.i.i.i71, 63
  %i.wq = shl nuw i64 1, %i.wp
  %i.wr = and i64 %i.wo, %i.wq
  %.not.i.i.i.i.i.i.i75 = icmp eq i64 %i.wr, 0
  br i1 %.not.i.i.i.i.i.i.i75, label %bb.dd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wd, i64 59
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56 ; 2 uses
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !379, !noalias !353
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.ww, i64 %indvars.iv.i.i.i.i71
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !3, !noalias !353
  %i.wz = zext i32 %i.wy to i64                   ; 2 uses
  %i.xa = lshr i64 %i.wz, 6
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.xa
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !148, !noalias !353
  %i.xd = and i64 %i.wz, 63
  %i.xe = shl nuw i64 1, %i.xd
  %i.xf = and i64 %i.xe, %i.xc
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.dd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.cy
  %i.xg = load i64, ptr %i.wf, align 8, !tbaa !148, !noalias !353
  %i.xh = and i64 %i.xg, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.xh, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.dd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.cz
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !377, !noalias !353
  br label %bb.da

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.cx
  %.pre-phi49.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i71 to i32
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !377, !noalias !353 ; 2 uses
  br i1 %.pre47.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.xm = phi ptr [ %i.wh, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ], [ %i.xl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wd, i64 59
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !tbaa !378, !range !55, !noalias !353
  br label %bb.da

bb.da:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i
  %i.xn = phi i8 [ %i.wt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %.pre.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i ]
  %i.xo = phi ptr [ %i.xj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %i.xm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i ] ; 2 uses
  %i.xp = trunc nuw i8 %i.xn to i1
  br i1 %i.xp, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wd, i64 64
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !379, !noalias !353
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %indvars.iv.i.i.i.i71
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.xw = phi ptr [ %i.xo, %bb.dc ], [ %i.xo, %bb.db ], [ %i.xl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %i.wh, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.xv, %bb.dc ], [ %i.xr, %bb.db ], [ %.pre-phi49.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ], [ %.pre-phi4974.i.i.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.xx = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !3, !noalias !353
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %bb.cz, %bb.cx
  %i.ya = phi i32 [ %i.xz, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i ], [ 0, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i ], [ 0, %bb.cx ], [ 0, %bb.cz ]
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.yc = load i8, ptr %i.yb, align 8, !tbaa !77, !range !55, !noalias !353, !noundef !56
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = getelementptr i8, ptr %i.wb, i64 12
  %.val.i.i.i.i.i = load i32, ptr %i.ye, align 4, !noalias !353
  %i.yf = invoke fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction10checkCountEib(i32 %.val.i.i.i.i.i, i32 noundef %i.ya, i1 noundef zeroext %i.yd)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i unwind label %bb.de, !noalias !353

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E_clIiEEDaSM_.exit.i.i.i.i: ; preds = %bb.dd
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = load ptr, ptr %.sroa.5190.0..sroa_idx.i, align 8, !tbaa !381, !noalias !353, !nonnull !56, !align !179 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !148, !noalias !353
  %i.yj = add i64 %i.yi, %i.yg
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !148, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.yk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0      ; 2 uses
  %i.ym = extractvalue { ptr, i32 } %i.yk, 1      ; 2 uses
  %i.yn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #27
  %i.yo = icmp eq i32 %i.ym, %i.yn
  br i1 %i.yo, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.yp = call ptr @__cxa_begin_catch(ptr %i.yl) #27, !noalias !353
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !382, !noalias !353 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !47, !noalias !353 ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 152
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !29, !noalias !353
  %i.yw = icmp eq i64 %i.yv, 4
  br i1 %i.yw, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i:       ; preds = %bb.df
  %i.yx = load i8, ptr %i.yt, align 1, !tbaa !28, !noalias !353
  %or.cond.not.i.i.i.i.i.i.i = icmp eq i8 %i.yx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27, !noalias !353
  br label %bb.mf

bb.hd:                                            ; preds = %bb.ha, %bb.gs
  %i.amf = phi ptr [ %.pre274.i, %bb.ha ], [ %i.akm, %bb.gs ]
  %i.amg = phi i64 [ %.pre.i, %bb.ha ], [ %i.ajo, %bb.gs ]
  %.0.i = phi ptr [ %i.amc, %bb.ha ], [ null, %bb.gs ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27, !noalias !353
  %sext.i = shl i64 %i.amg, 32
  %i.amh = ashr exact i64 %sext.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !412
  store i32 0, ptr %8, align 4, !tbaa !28, !noalias !412
  %i.ami = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 1, ptr %i.ami, align 4, !tbaa !290, !noalias !412
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %29, i64 noundef %i.amh, ptr noundef %i.amf, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.he unwind label %bb.lo, !noalias !353

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27, !noalias !353
  %i.amj = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !353
  %i.amk = load ptr, ptr %i.d, align 8, !tbaa !269, !noalias !353
  %i.aml = sext i32 %i.amj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !415
  store i32 0, ptr %7, align 4, !tbaa !28, !noalias !415
  %i.amm = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.amm, align 4, !tbaa !290, !noalias !415
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %30, i64 noundef %i.aml, ptr noundef %i.amk, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.hf unwind label %bb.lp, !noalias !353

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27, !noalias !353
  %i.amn = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !353
  %i.amo = load ptr, ptr %i.d, align 8, !tbaa !269, !noalias !353
  %i.amp = sext i32 %i.amn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !418
  store i32 0, ptr %6, align 4, !tbaa !28, !noalias !418
  %i.amq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.amq, align 4, !tbaa !290, !noalias !418
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %31, i64 noundef %i.amp, ptr noundef %i.amo, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.hg unwind label %bb.lq, !noalias !353

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !418
  %i.amr = load ptr, ptr %29, align 8, !tbaa !297, !noalias !353 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 44
  %i.amt = load i8, ptr %i.ams, align 4, !tbaa !298, !noalias !353
  %i.amu = and i8 %i.amt, 2
  %.not.i71.i30 = icmp eq i8 %i.amu, 0
  br i1 %.not.i71.i30, label %bb.hi, label %bb.hh, !prof !51

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc72.i unwind label %bb.lr, !noalias !353

.noexc72.i:                                       ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %bb.hg
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !303, !noalias !353 ; 6 uses
  %i.amx = load ptr, ptr %30, align 8, !tbaa !297, !noalias !353 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 44
  %i.amz = load i8, ptr %i.amy, align 4, !tbaa !298, !noalias !353
  %i.ana = and i8 %i.amz, 2
  %.not.i73.i = icmp eq i8 %i.ana, 0
  br i1 %.not.i73.i, label %bb.hk, label %bb.hj, !prof !51

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc74.i unwind label %bb.ls, !noalias !353

.noexc74.i:                                       ; preds = %bb.hj
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !303, !noalias !353 ; 6 uses
  %i.and = load ptr, ptr %31, align 8, !tbaa !297, !noalias !353 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 44
  %i.anf = load i8, ptr %i.ane, align 4, !tbaa !298, !noalias !353
  %i.ang = and i8 %i.anf, 2
  %.not.i76.i = icmp eq i8 %i.ang, 0
  br i1 %.not.i76.i, label %bb.hm, label %bb.hl, !prof !51

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc77.i unwind label %bb.lt, !noalias !353

.noexc77.i:                                       ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.anh = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !303, !noalias !353 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27, !noalias !353
  %i.anj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !421, !noalias !353 ; 2 uses
  %i.anl = load ptr, ptr %1, align 8, !tbaa !307, !noalias !353 ; 4 uses
  %i.anm = ptrtoint ptr %i.ank to i64
  %i.ann = ptrtoint ptr %i.anl to i64
  %i.ano = sub i64 %i.anm, %i.ann                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %32, i8 0, i64 24, i1 false), !noalias !353
  %.not.i.i.i.i.i79.i = icmp eq ptr %i.ank, %i.anl
  br i1 %.not.i.i.i.i.i79.i, label %.thread.i, label %bb.hn

.thread.i:                                        ; preds = %bb.hm
  %i.anp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.anq = getelementptr inbounds i8, ptr null, i64 %i.ano ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false), !noalias !353
  store ptr %i.anq, ptr %i.anr, align 8, !tbaa !422, !noalias !353
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.ans = icmp ugt i64 %i.ano, 9223372036854775800
  br i1 %i.ans, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !46

.noexc.i.i.i.i:                                   ; preds = %bb.hn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc80.i unwind label %bb.lu, !noalias !353

.noexc80.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.hn
  %i.ant = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ano) #28
          to label %.noexc81.i unwind label %bb.lu, !noalias !353 ; 5 uses

.noexc81.i:                                       ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ant, ptr %32, align 8, !tbaa !307, !noalias !353
  %i.anu = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %i.ant, ptr %i.anu, align 8, !tbaa !421, !noalias !353
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.ano ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr %i.anv, ptr %i.anw, align 8, !tbaa !422, !noalias !353
  %i.anx = icmp samesign ugt i64 %i.ano, 8
  br i1 %i.anx, label %bb.ho, label %bb.hp, !prof !423

bb.ho:                                            ; preds = %.noexc81.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ant, ptr align 8 %i.anl, i64 %i.ano, i1 false), !noalias !353
  br label %bb.hr

bb.hp:                                            ; preds = %.noexc81.i
  %i.any = icmp eq i64 %i.ano, 8
  br i1 %i.any, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.anz = load i64, ptr %i.anl, align 8, !tbaa !148, !noalias !353
  store i64 %i.anz, ptr %i.ant, align 8, !tbaa !148, !noalias !353
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %.thread.i
  %i.aoa = phi ptr [ %i.anw, %bb.ho ], [ %i.anw, %bb.hp ], [ %i.anw, %bb.hq ], [ %i.anr, %.thread.i ] ; 2 uses
  %i.aob = phi ptr [ %i.anv, %bb.ho ], [ %i.anv, %bb.hp ], [ %i.anv, %bb.hq ], [ %i.anq, %.thread.i ]
  %i.aoc = phi ptr [ %i.anu, %bb.ho ], [ %i.anu, %bb.hp ], [ %i.anu, %bb.hq ], [ %i.anp, %.thread.i ]
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !421, !noalias !353
  %i.aod = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aod, ptr noundef nonnull align 8 dereferenceable(14) %i.aoe, i64 14, i1 false), !noalias !353
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %32)
          to label %bb.hs unwind label %bb.lv, !noalias !353

bb.hs:                                            ; preds = %bb.hr
  %i.aof = getelementptr inbounds nuw i8, ptr %32, i64 36 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %32, i64 37
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !304, !range !55, !noalias !353, !noundef !56
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i, label %bb.ht

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i: ; preds = %bb.hs
  %.0.in.pre.i.i.i.i124.i = load i8, ptr %i.aof, align 4, !tbaa !72, !range !55, !noalias !353
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i

bb.ht:                                            ; preds = %bb.hs
  %i.aoj = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !305, !noalias !353
  %i.aol = icmp eq i32 %i.aok, 0
  br i1 %i.aol, label %bb.hu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hu:                                            ; preds = %bb.ht
  %i.aom = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !223, !noalias !353 ; 6 uses
  %i.aoo = load i32, ptr %i.aod, align 8, !tbaa !306, !noalias !353
  %i.aop = icmp eq i32 %i.aon, %i.aoo
  br i1 %i.aop, label %bb.hv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hv:                                            ; preds = %bb.hu
  %i.aoq = load ptr, ptr %32, align 8, !tbaa !307, !noalias !353 ; 2 uses
  %.not.i.i.i.i.i115.i = icmp sgt i32 %i.aon, 0
  br i1 %.not.i.i.i.i.i115.i, label %bb.hw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hw:                                            ; preds = %bb.hv
  %i.aor = and i32 %i.aon, 2147483584             ; 3 uses
  %i.aos = zext nneg i32 %i.aor to i64
  %.not37.i.i.not.i.i.i.i117.i314.not = icmp eq i32 %i.aor, 0
  br i1 %.not37.i.i.not.i.i.i.i117.i314.not, label %.critedge.i.i.i.i.i.i118.i, label %.lr.ph316

bb.hx:                                            ; preds = %.lr.ph316
  %indvars.iv.next.i.i.i.i122.i = add nuw nsw i64 %indvars.iv.next.i.i.i.i117.i317, 64 ; 2 uses
  %.not37.i.i.i.i.i.i118.i = icmp samesign ugt i64 %indvars.iv.next.i.i.i.i122.i, %i.aos
  br i1 %.not37.i.i.i.i.i.i118.i, label %.critedge.i.i.i.i.i.i118.i, label %.lr.ph316, !llvm.loop !308

.lr.ph316:                                        ; preds = %bb.hw, %bb.hx
  %indvars.iv.next.i.i.i.i117.i317 = phi i64 [ %indvars.iv.next.i.i.i.i122.i, %bb.hx ], [ 64, %bb.hw ] ; 2 uses
  %indvars.iv.i.i.i.i116.i315 = phi i64 [ %indvars.iv.next.i.i.i.i117.i317, %bb.hx ], [ 0, %bb.hw ]
  %i.aot = lshr exact i64 %indvars.iv.i.i.i.i116.i315, 3
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aot
  %i.aov = load i64, ptr %i.aou, align 8, !tbaa !148, !noalias !353
  %i.aow = icmp eq i64 %i.aov, -1
  br i1 %i.aow, label %bb.hx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, !llvm.loop !308

.critedge.i.i.i.i.i.i118.i:                       ; preds = %bb.hx, %bb.hw
  %.not38.i.i.i.i.i.i119.i = icmp eq i32 %i.aon, %i.aor
  br i1 %.not38.i.i.i.i.i.i119.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, label %bb.hy

bb.hy:                                            ; preds = %.critedge.i.i.i.i.i.i118.i
  %i.aox = lshr i32 %i.aon, 6
  %i.aoy = and i32 %i.aon, 63
  %i.aoz = zext nneg i32 %i.aoy to i64
  %notmask.i40.i.i.i.i.i.i120.i = shl nsw i64 -1, %i.aoz
  %i.apa = zext nneg i32 %i.aox to i64
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.aoq, i64 %i.apa
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !148, !noalias !353
  %.demorgan.i.i.i.i121.i = or i64 %i.apc, %notmask.i40.i.i.i.i.i.i120.i
  %i.apd = icmp eq i64 %.demorgan.i.i.i.i121.i, -1
  %i.ape = zext i1 %i.apd to i16
  %i.apf = or disjoint i16 %i.ape, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i: ; preds = %.lr.ph316, %bb.hy, %.critedge.i.i.i.i.i.i118.i, %bb.hv, %bb.hu, %bb.ht
  %.sroa.0.0.insert.ext.i.i.i.i83.i = phi i16 [ 256, %bb.hu ], [ 256, %bb.ht ], [ 257, %bb.hv ], [ 257, %.critedge.i.i.i.i.i.i118.i ], [ %i.apf, %bb.hy ], [ 256, %.lr.ph316 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i83.i, ptr %i.aof, align 4, !noalias !353
  %i.apg = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i83.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i
  %.0.in.i.i.i.i85.i = phi i8 [ %.0.in.pre.i.i.i.i124.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i ], [ %i.apg, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i ]
  %.0.i.i.i.i86.i = trunc nuw i8 %.0.in.i.i.i.i85.i to i1
  br i1 %.0.i.i.i.i86.i, label %bb.hz, label %bb.ij

bb.hz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i
  %i.aph = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.api = load i32, ptr %i.aph, align 8, !tbaa !223, !noalias !353 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !305, !noalias !353 ; 2 uses
  %i.apl = icmp slt i32 %i.apk, %i.api
  br i1 %i.apl, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i: ; preds = %bb.hz
  %.not.i50.i.i = icmp eq ptr %.0.i, null
  %.pre9.i53.i.pre290.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i
  %.pre9.i53.i.i = phi ptr [ %.pre9.i53.i291.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ %.pre9.i53.i.pre290.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 11 uses
  %.14.i = phi i32 [ %.15.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ 0, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 4 uses
  %.014.i.i.i.i = phi i32 [ %i.asp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ %i.apk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 10 uses
  br i1 %.not.i50.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i, label %bb.ia

bb.ia:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i
  %i.apm = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 24
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i54.i.i = icmp eq ptr %i.apn, null
  br i1 %.not.i.i54.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.apo = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 58
  %i.app = load i8, ptr %i.apo, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.apq = trunc nuw i8 %i.app to i1
  %i.apr = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 57
  %i.aps = load i8, ptr %i.apr, align 1, !range !55, !noalias !353
  %i.apt = trunc nuw i8 %i.aps to i1
  %or.cond.i.i55.i.i = select i1 %i.apq, i1 true, i1 %i.apt
  br i1 %or.cond.i.i55.i.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.apu = zext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.apv = lshr i64 %i.apu, 6
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apv
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !148, !noalias !353
  %i.apy = and i64 %i.apu, 63
  %i.apz = shl nuw i64 1, %i.apy
  %i.aqa = and i64 %i.apx, %i.apz
  %.not.i.i.i71.i.i = icmp eq i64 %i.aqa, 0
  br i1 %.not.i.i.i71.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

bb.id:                                            ; preds = %bb.ib
  %i.aqb = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 59
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.aqd = trunc nuw i8 %i.aqc to i1
  br i1 %i.aqd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aqe = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !379, !noalias !353
  %i.aqg = sext i32 %.014.i.i.i.i to i64
  %i.aqh = getelementptr inbounds [4 x i8], ptr %i.aqf, i64 %i.aqg
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !3, !noalias !353
  %i.aqj = zext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = lshr i64 %i.aqj, 6
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.aqk
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !148, !noalias !353
  %i.aqn = and i64 %i.aqj, 63
  %i.aqo = shl nuw i64 1, %i.aqn
  %i.aqp = and i64 %i.aqo, %i.aqm
  %.not.i7.i.i56.i.i = icmp eq i64 %i.aqp, 0
  br i1 %.not.i7.i.i56.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i: ; preds = %bb.id
  %i.aqq = load i64, ptr %i.apn, align 8, !tbaa !148, !noalias !353
  %i.aqr = and i64 %i.aqq, 1
  %.not.i6.i.i70.i.i = icmp eq i64 %i.aqr, 0
  br i1 %.not.i6.i.i70.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

bb.if:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, %bb.ie, %bb.ic
  %i.aqs = zext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.aqt = and i64 %i.aqs, 7
  %i.aqu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !28, !noalias !353
  %i.aqw = lshr i64 %i.aqs, 3
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.aqw ; 2 uses
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !28, !noalias !353
  %i.aqz = and i8 %i.aqy, %i.aqv
  store i8 %i.aqz, ptr %i.aqx, align 1, !tbaa !28, !noalias !353
  %.pre9.i53.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, %bb.ie, %bb.ic, %bb.ia, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i
  %i.ara = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 16
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !377, !noalias !353
  %i.arc = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 58
  %i.ard = load i8, ptr %i.arc, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.are = trunc nuw i8 %i.ard to i1
  br i1 %i.are, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i, label %bb.ig

bb.ig:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i
  %i.arf = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 59
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.arh = trunc nuw i8 %i.arg to i1
  br i1 %i.arh, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.ari = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 64
  %i.arj = load i32, ptr %i.ari, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i

bb.ii:                                            ; preds = %bb.ig
  %i.ark = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 8
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !379, !noalias !353
  %i.arm = sext i32 %.014.i.i.i.i to i64
  %i.arn = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i: ; preds = %bb.ii, %bb.ih, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i
  %.0.i.i.i59.i.i = phi i32 [ %i.aro, %bb.ii ], [ %i.arj, %bb.ih ], [ %.014.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i ]
  %i.arp = sext i32 %.0.i.i.i59.i.i to i64
  %i.arq = getelementptr inbounds [4 x i8], ptr %i.arb, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i60.i.i = call i32 @llvm.smax.i32(i32 %i.arr, i32 0) ; 3 uses
  %i.ars = sext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.art = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ars
  store i32 %spec.store.select.i60.i.i, ptr %i.art, align 4, !tbaa !3, !noalias !353
  %i.aru = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.ars
  store i32 %.14.i, ptr %i.aru, align 4, !tbaa !3, !noalias !353
  %i.arv = zext nneg i32 %.14.i to i64
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.arv ; 6 uses
  %i.arx = zext nneg i32 %spec.store.select.i60.i.i to i64
  %.idx.i61.i.i = shl nuw nsw i64 %i.arx, 2       ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 %.idx.i61.i.i
  %.not5.i.i.i.i62.i.i = icmp slt i32 %i.arr, 1
  br i1 %.not5.i.i.i.i62.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, label %iter.check469

iter.check469:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i
  %i.arz = add nsw i64 %.idx.i61.i.i, -4          ; 3 uses
  %i.asa = lshr exact i64 %i.arz, 2
  %i.asb = add nuw nsw i64 %i.asa, 1              ; 5 uses
  %min.iters.check454 = icmp ult i64 %i.arz, 28
  br i1 %min.iters.check454, label %.lr.ph.i.i.i.i63.i.i.preheader, label %vector.main.loop.iter.check455

vector.main.loop.iter.check455:                   ; preds = %iter.check469
  %min.iters.check456 = icmp ult i64 %i.arz, 124
  br i1 %min.iters.check456, label %vec.epilog.ph473, label %vector.ph457

vector.ph457:                                     ; preds = %vector.main.loop.iter.check455
  %n.mod.vf458 = and i64 %i.asb, 24
  %n.vec459 = and i64 %i.asb, 9223372036854775776 ; 4 uses
  %i.asc = shl i64 %n.vec459, 2
  %i.asd = getelementptr i8, ptr %i.arw, i64 %i.asc
  %broadcast.splatinsert460 = insertelement <8 x i32> poison, i32 %.014.i.i.i.i, i64 0
  %broadcast.splat461 = shufflevector <8 x i32> %broadcast.splatinsert460, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph457
  %index463 = phi i64 [ 0, %vector.ph457 ], [ %index.next465, %vector.body462 ] ; 2 uses
  %i.ase = shl i64 %index463, 2
  %next.gep464 = getelementptr i8, ptr %i.arw, i64 %i.ase ; 4 uses
  %i.asf = getelementptr i8, ptr %next.gep464, i64 32
  %i.asg = getelementptr i8, ptr %next.gep464, i64 64
  %i.ash = getelementptr i8, ptr %next.gep464, i64 96
  store <8 x i32> %broadcast.splat461, ptr %next.gep464, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.asf, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.asg, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.ash, align 4, !tbaa !3, !noalias !353
  %index.next465 = add nuw i64 %index463, 32      ; 2 uses
end_hunk_2

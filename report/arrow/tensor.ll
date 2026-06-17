inline.NumInlined: 5130
inline.NumDeleted: 1400
begin_hunk_0_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !317
  %i.bd = fptrunc double %i.bc to float
  %i.be = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.be
  store float %i.bd, ptr %gep, align 4, !tbaa !310
  %i.bf = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !317
  %i.bi = fptrunc double %i.bh to float
  %i.bj = mul nsw i64 %i.bf, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj
  store float %i.bi, ptr %gep.1, align 4, !tbaa !310
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !317
  %i.bn = fptrunc double %i.bm to float
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float %i.bn, ptr %gep.2, align 4, !tbaa !310
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !317
  %i.bs = fptrunc double %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.3, align 4, !tbaa !310
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1525

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  %i.cx = fptrunc double %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1444, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store float %i.cy, ptr %i.dh, align 4, !tbaa !310
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1443, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1526

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1527
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1532, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !234 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.aj ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ai, %i.ah
  %bound132 = icmp ult ptr %i.n, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ah
  %bound135 = icmp ult ptr %i.n, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.ak = shl i64 %n.vec, 2
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %.promoted, i64 %i.an
  %next.gep39 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1533
  %wide.load40 = load <2 x i8>, ptr %i.ap, align 1, !tbaa !81, !alias.scope !1533
  %i.aq = sitofp <2 x i8> %wide.load to <2 x float>
  %i.ar = sitofp <2 x i8> %wide.load40 to <2 x float>
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.aq, ptr %next.gep, align 4, !tbaa !310, !alias.scope !1536, !noalias !1533
  store <2 x float> %i.ar, ptr %i.at, align 4, !tbaa !310, !alias.scope !1536, !noalias !1533
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1538

middle.block:                                     ; preds = %vector.body
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !234, !alias.scope !1539, !noalias !1541
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.al, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.am, %middle.block ] ; 3 uses
  %i.av = add i64 %i.m, %i.i
  %i.aw = add i64 %i.av, %i.l                     ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.ax = sub i64 %i.aw, %.01320.ph43
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.ba = sitofp i8 %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !234
  store float %i.ba, ptr %i.ay, align 4, !tbaa !310
  %i.bc = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1542

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub i64 %.01320.ph43, %i.aw
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi ptr [ %i.bu, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bv, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bh = sitofp i8 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !234
  store float %i.bh, ptr %i.bf, align 4, !tbaa !310
  %i.bj = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = sitofp i8 %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !234
  store float %i.bl, ptr %i.bi, align 4, !tbaa !310
  %i.bn = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = sitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !234
  store float %i.bp, ptr %i.bm, align 4, !tbaa !310
  %i.br = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = sitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !234
  store float %i.bt, ptr %i.bq, align 4, !tbaa !310
  %i.bv = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bv, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1543

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bw = phi ptr [ %i.df, %bb.l ], [ %i.ae, %.preheader ]
  %i.bx = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dd, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !425
  %i.cf = add nsw i64 %i.ce, %.018                ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  switch i32 %i.cp, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cr, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.ct, %i.cu
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = sitofp i8 %i.cx to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cz = phi float [ %i.cy, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !1532, !nonnull !54, !align !342 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !234 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !234
  store float %i.cz, ptr %i.db, align 4, !tbaa !310
  %i.dd = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !404
  %i.dh = icmp slt i64 %i.dd, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit, !llvm.loop !1544

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1545
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1532, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !234 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 2
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.aj ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ai, %i.ah
  %bound132 = icmp ult ptr %i.n, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ah
  %bound135 = icmp ult ptr %i.n, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.ak = shl i64 %n.vec, 2
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %.promoted, i64 %i.an
  %next.gep39 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1548
  %wide.load40 = load <2 x i8>, ptr %i.ap, align 1, !tbaa !81, !alias.scope !1548
  %i.aq = uitofp <2 x i8> %wide.load to <2 x float>
  %i.ar = uitofp <2 x i8> %wide.load40 to <2 x float>
  %i.as = getelementptr i8, ptr %i.ao, i64 16
  %i.at = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.aq, ptr %next.gep, align 4, !tbaa !310, !alias.scope !1551, !noalias !1548
  store <2 x float> %i.ar, ptr %i.at, align 4, !tbaa !310, !alias.scope !1551, !noalias !1548
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1553

middle.block:                                     ; preds = %vector.body
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !234, !alias.scope !1554, !noalias !1556
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.al, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.am, %middle.block ] ; 3 uses
  %i.av = add i64 %i.m, %i.i
  %i.aw = add i64 %i.av, %i.l                     ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.ax = sub i64 %i.aw, %.01320.ph43
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.ba = uitofp i8 %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !234
  store float %i.ba, ptr %i.ay, align 4, !tbaa !310
  %i.bc = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1557

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub i64 %.01320.ph43, %i.aw
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi ptr [ %i.bu, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bv, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !234
  store float %i.bh, ptr %i.bf, align 4, !tbaa !310
  %i.bj = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !234
  store float %i.bl, ptr %i.bi, align 4, !tbaa !310
  %i.bn = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !234
  store float %i.bp, ptr %i.bm, align 4, !tbaa !310
  %i.br = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !234
  store float %i.bt, ptr %i.bq, align 4, !tbaa !310
  %i.bv = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bv, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1558

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bw = phi ptr [ %i.df, %bb.l ], [ %i.ae, %.preheader ]
  %i.bx = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dd, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !425
  %i.cf = add nsw i64 %i.ce, %.018                ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  switch i32 %i.cp, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cr, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.ct, %i.cu
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = uitofp i8 %i.cx to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cz = phi float [ %i.cy, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !1532, !nonnull !54, !align !342 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !234 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !234
  store float %i.cz, ptr %i.db, align 4, !tbaa !310
  %i.dd = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !404
  %i.dh = icmp slt i64 %i.dd, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit, !llvm.loop !1559

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1560
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1530, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !317
  %i.bh = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh
  store double %i.bg, ptr %gep, align 8, !tbaa !317
  %i.bi = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !317
  %i.bl = mul nsw i64 %i.bi, %i.ak
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  store double %i.bk, ptr %gep.1, align 8, !tbaa !317
  %i.bm = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !317
  %i.bp = mul nsw i64 %i.bm, %i.ak
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp
  store double %i.bo, ptr %gep.2, align 8, !tbaa !317
  %i.bq = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !317
  %i.bt = mul nsw i64 %i.bq, %i.ak
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.3, align 8, !tbaa !317
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1696

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.ab, %.lr.ph ], [ %i.dj, %bb.l ]
  %i.bw = phi ptr [ %i.aa, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cx = phi double [ %i.cw, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !1614, !nonnull !54, !align !342
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !241
  %i.da = load i32, ptr %i.ae, align 8, !tbaa !245
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %.016, %i.db
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !247
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  store double %i.cx, ptr %i.dg, align 8, !tbaa !317
  %i.dh = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !1613, !nonnull !54, !align !342 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !404
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !1697

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1698
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1703, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !241 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.aj ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ai, %i.ah
  %bound132 = icmp ult ptr %i.n, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ah
  %bound135 = icmp ult ptr %i.n, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.ak = shl i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %.promoted, i64 %i.an
  %next.gep39 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1704
  %wide.load40 = load <2 x i8>, ptr %i.ap, align 1, !tbaa !81, !alias.scope !1704
  %i.aq = sitofp <2 x i8> %wide.load to <2 x double>
  %i.ar = sitofp <2 x i8> %wide.load40 to <2 x double>
  %i.as = getelementptr i8, ptr %i.ao, i64 32
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.aq, ptr %next.gep, align 8, !tbaa !317, !alias.scope !1707, !noalias !1704
  store <2 x double> %i.ar, ptr %i.at, align 8, !tbaa !317, !alias.scope !1707, !noalias !1704
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1709

middle.block:                                     ; preds = %vector.body
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !241, !alias.scope !1710, !noalias !1712
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.al, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.am, %middle.block ] ; 3 uses
  %i.av = add i64 %i.m, %i.i
  %i.aw = add i64 %i.av, %i.l                     ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.ax = sub i64 %i.aw, %.01320.ph43
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.ba = sitofp i8 %i.az to double
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !241
  store double %i.ba, ptr %i.ay, align 8, !tbaa !317
  %i.bc = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1713

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub i64 %.01320.ph43, %i.aw
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi ptr [ %i.bu, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bv, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bh = sitofp i8 %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !241
  store double %i.bh, ptr %i.bf, align 8, !tbaa !317
  %i.bj = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = sitofp i8 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !241
  store double %i.bl, ptr %i.bi, align 8, !tbaa !317
  %i.bn = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = sitofp i8 %i.bo to double
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !241
  store double %i.bp, ptr %i.bm, align 8, !tbaa !317
  %i.br = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = sitofp i8 %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !241
  store double %i.bt, ptr %i.bq, align 8, !tbaa !317
  %i.bv = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bv, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1714

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bw = phi ptr [ %i.df, %bb.l ], [ %i.ae, %.preheader ]
  %i.bx = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dd, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !425
  %i.cf = add nsw i64 %i.ce, %.018                ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  switch i32 %i.cp, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cr, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.ct, %i.cu
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = sitofp i8 %i.cx to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cz = phi double [ %i.cy, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !1703, !nonnull !54, !align !342 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !241 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !241
  store double %i.cz, ptr %i.db, align 8, !tbaa !317
  %i.dd = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !404
  %i.dh = icmp slt i64 %i.dd, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit, !llvm.loop !1715

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1716
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1703, !nonnull !54, !align !342 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !241 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = shl i64 %i.i, 3
  %scevgep30 = getelementptr i8, ptr %.promoted, i64 %i.aj ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %scevgep30
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.ai, %i.ah
  %bound132 = icmp ult ptr %i.n, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  %bound034 = icmp ult ptr %.promoted, %i.ah
  %bound135 = icmp ult ptr %i.n, %scevgep30
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx, %found.conflict36
  br i1 %conflict.rdx37, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.ak = shl i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %.promoted, i64 %i.an
  %next.gep39 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep39, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep39, align 1, !tbaa !81, !alias.scope !1719
  %wide.load40 = load <2 x i8>, ptr %i.ap, align 1, !tbaa !81, !alias.scope !1719
  %i.aq = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ar = uitofp <2 x i8> %wide.load40 to <2 x double>
  %i.as = getelementptr i8, ptr %i.ao, i64 32
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.aq, ptr %next.gep, align 8, !tbaa !317, !alias.scope !1722, !noalias !1719
  store <2 x double> %i.ar, ptr %i.at, align 8, !tbaa !317, !alias.scope !1722, !noalias !1719
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1724

middle.block:                                     ; preds = %vector.body
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !241, !alias.scope !1725, !noalias !1727
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.al, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.am, %middle.block ] ; 3 uses
  %i.av = add i64 %i.m, %i.i
  %i.aw = add i64 %i.av, %i.l                     ; 2 uses
  %.01320.ph43 = ptrtoint ptr %.01320.ph to i64   ; 2 uses
  %i.ax = sub i64 %i.aw, %.01320.ph43
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi ptr [ %i.bb, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = load i8, ptr %.01320.prol, align 1, !tbaa !81
  %i.ba = uitofp i8 %i.az to double
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !241
  store double %i.ba, ptr %i.ay, align 8, !tbaa !317
  %i.bc = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1728

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub i64 %.01320.ph43, %i.aw
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bf = phi ptr [ %i.bu, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bv, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.01320, align 1, !tbaa !81
  %i.bh = uitofp i8 %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.ai, align 8, !tbaa !241
  store double %i.bh, ptr %i.bf, align 8, !tbaa !317
  %i.bj = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = uitofp i8 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !241
  store double %i.bl, ptr %i.bi, align 8, !tbaa !317
  %i.bn = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = uitofp i8 %i.bo to double
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !241
  store double %i.bp, ptr %i.bm, align 8, !tbaa !317
  %i.br = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = uitofp i8 %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !241
  store double %i.bt, ptr %i.bq, align 8, !tbaa !317
  %i.bv = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bv, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1729

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bw = phi ptr [ %i.df, %bb.l ], [ %i.ae, %.preheader ]
  %i.bx = phi ptr [ %i.de, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dd, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !425
  %i.cf = add nsw i64 %i.ce, %.018                ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  switch i32 %i.cp, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cr, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.ct, %i.cu
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.018)
  br i1 %i.cv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = uitofp i8 %i.cx to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cz = phi double [ %i.cy, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !1703, !nonnull !54, !align !342 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !241 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !241
  store double %i.cz, ptr %i.db, align 8, !tbaa !317
  %i.dd = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !404
  %i.dh = icmp slt i64 %i.dd, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit, !llvm.loop !1730

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1731
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1701, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
end_hunk_1

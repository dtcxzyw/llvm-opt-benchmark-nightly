inline.NumInlined: 5087
inline.NumDeleted: 1397
begin_hunk_0_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_8Int8TypeEEENS_6StatusERKT_:bb.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1575

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.01319.unr = phi ptr [ %.01319.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub i64 %.01319.ph40, %i.ax
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi ptr [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01319 = phi ptr [ %i.bw, %scalar.ph ], [ %.01319.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.01319, align 1, !tbaa !88
  %i.bi = sitofp i8 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !274
  store float %i.bi, ptr %i.bg, align 4, !tbaa !349
  %i.bk = getelementptr inbounds nuw i8, ptr %.01319, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !88
  %i.bm = sitofp i8 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !274
  store float %i.bm, ptr %i.bj, align 4, !tbaa !349
  %i.bo = getelementptr inbounds nuw i8, ptr %.01319, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !88
  %i.bq = sitofp i8 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !274
  store float %i.bq, ptr %i.bn, align 4, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %.01319, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = sitofp i8 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !274
  store float %i.bu, ptr %i.br, align 4, !tbaa !349
  %i.bw = getelementptr inbounds nuw i8, ptr %.01319, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bw, %i.ai
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1576

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.bx = phi ptr [ %i.dg, %bb.m ], [ %i.af, %.preheader ]
  %i.by = phi ptr [ %i.df, %bb.m ], [ %i.ae, %.preheader ] ; 7 uses
  %.017 = phi i64 [ %i.de, %bb.m ], [ 0, %.preheader ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !453
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !454
  %i.cg = add nsw i64 %i.cf, %.017                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !88
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.l, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !43
  switch i32 %i.cq, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cr, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cs, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !433
  %.not25 = icmp eq i64 %i.cu, %i.cv
  br i1 %.not25, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = sitofp i8 %i.cy to float
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.da = phi float [ %i.cz, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1565, !nonnull !81, !align !82 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !274 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !274
  store float %i.da, ptr %i.dc, align 4, !tbaa !349
  %i.de = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !433
  %i.di = icmp slt i64 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph, label %.loopexit, !llvm.loop !1577

.loopexit:                                        ; preds = %bb.m, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1578
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !433  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !427  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !428
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.p, ptr noundef %i.r)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !431
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !433
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not18 = icmp samesign eq i64 %i.i, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1565, !nonnull !81, !align !82 ; 10 uses
  %.promoted = load ptr, ptr %i.aj, align 8, !tbaa !274 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph20
  %scevgep = getelementptr i8, ptr %i.aj, i64 8   ; 2 uses
  %i.ak = shl i64 %i.i, 2
  %scevgep27 = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.aj, %scevgep27
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %i.aj, %i.ai
  %bound129 = icmp ult ptr %i.n, %scevgep
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  %bound031 = icmp ult ptr %.promoted, %i.ai
  %bound132 = icmp ult ptr %i.n, %scevgep27
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx34 = or i1 %conflict.rdx, %found.conflict33
  br i1 %conflict.rdx34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al
  %i.an = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %.promoted, i64 %i.ao
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep36, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep36, align 1, !tbaa !88, !alias.scope !1581
  %wide.load37 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !88, !alias.scope !1581
  %i.ar = uitofp <2 x i8> %wide.load to <2 x float>
  %i.as = uitofp <2 x i8> %wide.load37 to <2 x float>
  %i.at = getelementptr i8, ptr %i.ap, i64 16
  %i.au = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ar, ptr %next.gep, align 4, !tbaa !349, !alias.scope !1584, !noalias !1581
  store <2 x float> %i.as, ptr %i.au, align 4, !tbaa !349, !alias.scope !1584, !noalias !1581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1586

middle.block:                                     ; preds = %vector.body
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !274, !alias.scope !1587, !noalias !1589
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph20, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph20 ], [ %i.am, %middle.block ] ; 2 uses
  %.01319.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph20 ], [ %i.an, %middle.block ] ; 3 uses
  %i.aw = add i64 %i.m, %i.i
  %i.ax = add i64 %i.aw, %i.l                     ; 2 uses
  %.01319.ph40 = ptrtoint ptr %.01319.ph to i64   ; 2 uses
  %i.ay = sub i64 %i.ax, %.01319.ph40
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.az = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01319.prol = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.01319.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = load i8, ptr %.01319.prol, align 1, !tbaa !88
  %i.bb = uitofp i8 %i.ba to float
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !274
  store float %i.bb, ptr %i.az, align 4, !tbaa !349
  %i.bd = getelementptr inbounds nuw i8, ptr %.01319.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1590

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.01319.unr = phi ptr [ %.01319.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub i64 %.01319.ph40, %i.ax
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi ptr [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01319 = phi ptr [ %i.bw, %scalar.ph ], [ %.01319.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.01319, align 1, !tbaa !88
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !274
  store float %i.bi, ptr %i.bg, align 4, !tbaa !349
  %i.bk = getelementptr inbounds nuw i8, ptr %.01319, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !88
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !274
  store float %i.bm, ptr %i.bj, align 4, !tbaa !349
  %i.bo = getelementptr inbounds nuw i8, ptr %.01319, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !88
  %i.bq = uitofp i8 %i.bp to float
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 2 uses
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !274
  store float %i.bq, ptr %i.bn, align 4, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %.01319, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !274
  store float %i.bu, ptr %i.br, align 4, !tbaa !349
  %i.bw = getelementptr inbounds nuw i8, ptr %.01319, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bw, %i.ai
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1591

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.bx = phi ptr [ %i.dg, %bb.m ], [ %i.af, %.preheader ]
  %i.by = phi ptr [ %i.df, %bb.m ], [ %i.ae, %.preheader ] ; 7 uses
  %.017 = phi i64 [ %i.de, %bb.m ], [ 0, %.preheader ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !453
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !454
  %i.cg = add nsw i64 %i.cf, %.017                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !88
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.l, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !43
  switch i32 %i.cq, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cr, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cs, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !433
  %.not25 = icmp eq i64 %i.cu, %i.cv
  br i1 %.not25, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = uitofp i8 %i.cy to float
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.da = phi float [ %i.cz, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1565, !nonnull !81, !align !82 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !274 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !274
  store float %i.da, ptr %i.dc, align 4, !tbaa !349
  %i.de = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !433
  %i.di = icmp slt i64 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph, label %.loopexit, !llvm.loop !1592

.loopexit:                                        ; preds = %bb.m, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1593
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01116.unr = phi i64 [ %.01116.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.01116.ph, %i.ad
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01116 = phi i64 [ %i.bv, %scalar.ph ], [ %.01116.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01116
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !356
  %i.bi = mul nsw i64 %.01116, %i.al
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bi
  store double %i.bh, ptr %gep, align 8, !tbaa !356
  %i.bj = add nuw nsw i64 %.01116, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !356
  %i.bm = mul nsw i64 %i.bj, %i.al
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bm
  store double %i.bl, ptr %gep.1, align 8, !tbaa !356
  %i.bn = add nuw nsw i64 %.01116, 2              ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !356
  %i.bq = mul nsw i64 %i.bn, %i.al
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bq
  store double %i.bp, ptr %gep.2, align 8, !tbaa !356
  %i.br = add nuw nsw i64 %.01116, 3              ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !356
  %i.bu = mul nsw i64 %i.br, %i.al
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bu
  store double %i.bt, ptr %gep.3, align 8, !tbaa !356
  %i.bv = add nuw nsw i64 %.01116, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1730

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.bw = phi ptr [ %i.ac, %.lr.ph ], [ %i.dk, %bb.m ]
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dj, %bb.m ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.m ] ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !453
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !454
  %i.cf = add nsw i64 %i.ce, %.015                ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !88
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !43
  switch i32 %i.cp, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.015)
  br i1 %i.cq, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.015)
  br i1 %i.cr, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !433
  %.not = icmp eq i64 %i.ct, %i.cu
  br i1 %.not, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i64 noundef %.015)
  br i1 %i.cv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.015
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !356
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.cy = phi double [ %i.cx, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1647, !nonnull !81, !align !82
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !281
  %i.db = load i32, ptr %i.af, align 8, !tbaa !285
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.015, %i.dc
  %i.de = load i32, ptr %i.ag, align 4, !tbaa !287
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  store double %i.cy, ptr %i.dh, align 8, !tbaa !356
  %i.di = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1646, !nonnull !81, !align !82 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !433
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.f, label %.loopexit, !llvm.loop !1731

.loopexit:                                        ; preds = %bb.m, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader13, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1732
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !433  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !427  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !428
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.p, ptr noundef %i.r)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !431
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !433
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not18 = icmp samesign eq i64 %i.i, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1737, !nonnull !81, !align !82 ; 10 uses
  %.promoted = load ptr, ptr %i.aj, align 8, !tbaa !281 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph20
  %scevgep = getelementptr i8, ptr %i.aj, i64 8   ; 2 uses
  %i.ak = shl i64 %i.i, 3
  %scevgep27 = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.aj, %scevgep27
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %i.aj, %i.ai
  %bound129 = icmp ult ptr %i.n, %scevgep
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  %bound031 = icmp ult ptr %.promoted, %i.ai
  %bound132 = icmp ult ptr %i.n, %scevgep27
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx34 = or i1 %conflict.rdx, %found.conflict33
  br i1 %conflict.rdx34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.al = shl i64 %n.vec, 3
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al
  %i.an = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %.promoted, i64 %i.ao
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep36, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep36, align 1, !tbaa !88, !alias.scope !1738
  %wide.load37 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !88, !alias.scope !1738
  %i.ar = sitofp <2 x i8> %wide.load to <2 x double>
  %i.as = sitofp <2 x i8> %wide.load37 to <2 x double>
  %i.at = getelementptr i8, ptr %i.ap, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ar, ptr %next.gep, align 8, !tbaa !356, !alias.scope !1741, !noalias !1738
  store <2 x double> %i.as, ptr %i.au, align 8, !tbaa !356, !alias.scope !1741, !noalias !1738
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1743

middle.block:                                     ; preds = %vector.body
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !281, !alias.scope !1744, !noalias !1746
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph20, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph20 ], [ %i.am, %middle.block ] ; 2 uses
  %.01319.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph20 ], [ %i.an, %middle.block ] ; 3 uses
  %i.aw = add i64 %i.m, %i.i
  %i.ax = add i64 %i.aw, %i.l                     ; 2 uses
  %.01319.ph40 = ptrtoint ptr %.01319.ph to i64   ; 2 uses
  %i.ay = sub i64 %i.ax, %.01319.ph40
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.az = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01319.prol = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.01319.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = load i8, ptr %.01319.prol, align 1, !tbaa !88
  %i.bb = sitofp i8 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !281
  store double %i.bb, ptr %i.az, align 8, !tbaa !356
  %i.bd = getelementptr inbounds nuw i8, ptr %.01319.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1747

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.01319.unr = phi ptr [ %.01319.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub i64 %.01319.ph40, %i.ax
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi ptr [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01319 = phi ptr [ %i.bw, %scalar.ph ], [ %.01319.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.01319, align 1, !tbaa !88
  %i.bi = sitofp i8 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !281
  store double %i.bi, ptr %i.bg, align 8, !tbaa !356
  %i.bk = getelementptr inbounds nuw i8, ptr %.01319, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !88
  %i.bm = sitofp i8 %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !281
  store double %i.bm, ptr %i.bj, align 8, !tbaa !356
  %i.bo = getelementptr inbounds nuw i8, ptr %.01319, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !88
  %i.bq = sitofp i8 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !281
  store double %i.bq, ptr %i.bn, align 8, !tbaa !356
  %i.bs = getelementptr inbounds nuw i8, ptr %.01319, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = sitofp i8 %i.bt to double
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !281
  store double %i.bu, ptr %i.br, align 8, !tbaa !356
  %i.bw = getelementptr inbounds nuw i8, ptr %.01319, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bw, %i.ai
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1748

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.bx = phi ptr [ %i.dg, %bb.m ], [ %i.af, %.preheader ]
  %i.by = phi ptr [ %i.df, %bb.m ], [ %i.ae, %.preheader ] ; 7 uses
  %.017 = phi i64 [ %i.de, %bb.m ], [ 0, %.preheader ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !453
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !454
  %i.cg = add nsw i64 %i.cf, %.017                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !88
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.l, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !43
  switch i32 %i.cq, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cr, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cs, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !433
  %.not25 = icmp eq i64 %i.cu, %i.cv
  br i1 %.not25, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = sitofp i8 %i.cy to double
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.da = phi double [ %i.cz, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1737, !nonnull !81, !align !82 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !281 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !281
  store double %i.da, ptr %i.dc, align 8, !tbaa !356
  %i.de = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !433
  %i.di = icmp slt i64 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph, label %.loopexit, !llvm.loop !1749

.loopexit:                                        ; preds = %bb.m, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1750
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #21
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !433  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !424  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !427  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !428
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !429
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.p, ptr noundef %i.r)
          to label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i unwind label %bb.e, !inline_history !430

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i: ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !428  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !431
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24, !inline_history !432
  br label %_ZN5arrow9ArraySpanD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25, !inline_history !432
  unreachable

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !433
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not18 = icmp samesign eq i64 %i.i, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1737, !nonnull !81, !align !82 ; 10 uses
  %.promoted = load ptr, ptr %i.aj, align 8, !tbaa !281 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph20
  %scevgep = getelementptr i8, ptr %i.aj, i64 8   ; 2 uses
  %i.ak = shl i64 %i.i, 3
  %scevgep27 = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.aj, %scevgep27
  %bound1 = icmp ult ptr %.promoted, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %i.aj, %i.ai
  %bound129 = icmp ult ptr %i.n, %scevgep
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  %bound031 = icmp ult ptr %.promoted, %i.ai
  %bound132 = icmp ult ptr %i.n, %scevgep27
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx34 = or i1 %conflict.rdx, %found.conflict33
  br i1 %conflict.rdx34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.al = shl i64 %n.vec, 3
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al
  %i.an = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %.promoted, i64 %i.ao
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep36, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep36, align 1, !tbaa !88, !alias.scope !1753
  %wide.load37 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !88, !alias.scope !1753
  %i.ar = uitofp <2 x i8> %wide.load to <2 x double>
  %i.as = uitofp <2 x i8> %wide.load37 to <2 x double>
  %i.at = getelementptr i8, ptr %i.ap, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ar, ptr %next.gep, align 8, !tbaa !356, !alias.scope !1756, !noalias !1753
  store <2 x double> %i.as, ptr %i.au, align 8, !tbaa !356, !alias.scope !1756, !noalias !1753
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1758

middle.block:                                     ; preds = %vector.body
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !281, !alias.scope !1759, !noalias !1761
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph20, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph20 ], [ %i.am, %middle.block ] ; 2 uses
  %.01319.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph20 ], [ %i.an, %middle.block ] ; 3 uses
  %i.aw = add i64 %i.m, %i.i
  %i.ax = add i64 %i.aw, %i.l                     ; 2 uses
  %.01319.ph40 = ptrtoint ptr %.01319.ph to i64   ; 2 uses
  %i.ay = sub i64 %i.ax, %.01319.ph40
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.az = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01319.prol = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.01319.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = load i8, ptr %.01319.prol, align 1, !tbaa !88
  %i.bb = uitofp i8 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !281
  store double %i.bb, ptr %i.az, align 8, !tbaa !356
  %i.bd = getelementptr inbounds nuw i8, ptr %.01319.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1762

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.01319.unr = phi ptr [ %.01319.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub i64 %.01319.ph40, %i.ax
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi ptr [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01319 = phi ptr [ %i.bw, %scalar.ph ], [ %.01319.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.01319, align 1, !tbaa !88
  %i.bi = uitofp i8 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !281
  store double %i.bi, ptr %i.bg, align 8, !tbaa !356
  %i.bk = getelementptr inbounds nuw i8, ptr %.01319, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !88
  %i.bm = uitofp i8 %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !281
  store double %i.bm, ptr %i.bj, align 8, !tbaa !356
  %i.bo = getelementptr inbounds nuw i8, ptr %.01319, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !88
  %i.bq = uitofp i8 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.br, ptr %i.aj, align 8, !tbaa !281
  store double %i.bq, ptr %i.bn, align 8, !tbaa !356
  %i.bs = getelementptr inbounds nuw i8, ptr %.01319, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !88
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !281
  store double %i.bu, ptr %i.br, align 8, !tbaa !356
  %i.bw = getelementptr inbounds nuw i8, ptr %.01319, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bw, %i.ai
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1763

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.bx = phi ptr [ %i.dg, %bb.m ], [ %i.af, %.preheader ]
  %i.by = phi ptr [ %i.df, %bb.m ], [ %i.ae, %.preheader ] ; 7 uses
  %.017 = phi i64 [ %i.de, %bb.m ], [ 0, %.preheader ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !453
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !454
  %i.cg = add nsw i64 %i.cf, %.017                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !88
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.l, label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !43
  switch i32 %i.cq, label %bb.k [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.i
    i32 38, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cr, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cs, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !433
  %.not25 = icmp eq i64 %i.cu, %i.cv
  br i1 %.not25, label %bb.m, label %bb.l

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.h
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.017)
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 %.017
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = uitofp i8 %i.cy to double
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.l
  %i.da = phi double [ %i.cz, %bb.l ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.g ], [ +qnan, %bb.k ], [ +qnan, %bb.j ], [ +qnan, %bb.i ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1737, !nonnull !81, !align !82 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !281 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !281
  store double %i.da, ptr %i.dc, align 8, !tbaa !356
  %i.de = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !433
  %i.di = icmp slt i64 %i.de, %i.dh
  br i1 %i.di, label %.lr.ph, label %.loopexit, !llvm.loop !1764

.loopexit:                                        ; preds = %bb.m, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1765
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1735, !nonnull !81, !align !82
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
end_hunk_1

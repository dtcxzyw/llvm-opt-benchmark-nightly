Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_preprocess?download=true
inline.NumInlined: 1276
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3opt10preprocess12prop_mutexesER6vectorINS_4softELb1EjER8rational:bb.a
  %i.ako = shl nuw nsw i64 %i.akn, 2
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0234.3.i, i64 %i.ako
  %.not78722.i = icmp eq i32 %.pr, 0
  br i1 %.not78722.i, label %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i, label %.lr.ph724.i

_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i: ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i, %._crit_edge714.i, %bb.em
  %.sroa.0234.0.lcssa1319132513291336.i = phi ptr [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i ], [ null, %bb.em ], [ null, %._crit_edge714.i ], [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit.i ]
  %i.akq = phi i1 [ false, %_ZN6vectorIjLb0EjE3endEv.exit133.i ], [ true, %bb.em ], [ true, %._crit_edge714.i ], [ false, %_ZN6vectorIjLb0EjE3endEv.exit.i ]
  %.pre961.i = load ptr, ptr %26, align 8, !tbaa !74
  br label %._crit_edge725.i

._crit_edge725.i:                                 ; preds = %.thread401.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i
  %.sroa.0234.0.lcssa1319132513291335.i = phi ptr [ %.sroa.0234.0.lcssa1319132513291336.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i ], [ %.sroa.0234.3.i, %.thread401.i ] ; 5 uses
  %i.akr = phi i1 [ %i.akq, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i ], [ false, %.thread401.i ]
  %i.aks = phi ptr [ %.pre961.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge725_crit_edge.i ], [ %i.aui, %.thread401.i ] ; 4 uses
  %i.akt = lshr i32 %.val104.val.i, 5             ; 4 uses
  %i.aku = icmp eq ptr %i.aks, null
  br i1 %i.aku, label %thread-pre-split.i.i137.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i:           ; preds = %._crit_edge725.i
  %i.akv = getelementptr inbounds i8, ptr %i.aks, i64 -4
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !42 ; 2 uses
  %.not.i135.i = icmp ult i32 %i.akt, %i.akw
  br i1 %.not.i135.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i, label %thread-pre-split.i.i137.i.preheader

thread-pre-split.i.i137.i.preheader:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i, %._crit_edge725.i
  %.ph1882 = phi ptr [ null, %._crit_edge725.i ], [ %i.aks, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ]
  %.0.i16.i.i140.i.ph = phi i32 [ 0, %._crit_edge725.i ], [ %i.akw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ] ; 2 uses
  %.ph1883 = add nuw nsw i32 %i.akt, 1            ; 3 uses
  br label %thread-pre-split.i.i137.i

thread-pre-split.i.i137.i:                        ; preds = %thread-pre-split.i.i137.i.backedge, %thread-pre-split.i.i137.i.preheader
  %i.akx = phi ptr [ %.ph1882, %thread-pre-split.i.i137.i.preheader ], [ %.be1887, %thread-pre-split.i.i137.i.backedge ] ; 6 uses
  %i.aky = icmp eq ptr %i.akx, null
  br i1 %i.aky, label %bb.gj, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i:     ; preds = %thread-pre-split.i.i137.i
  %i.akz = getelementptr inbounds i8, ptr %i.akx, i64 -8 ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !42 ; 3 uses
  %.not2106 = icmp ult i32 %i.akt, %i.ala
  br i1 %.not2106, label %bb.gr, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i

bb.gj:                                            ; preds = %thread-pre-split.i.i137.i
  %i.alb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc424.i unwind label %.loopexit.split-lp528.loopexit.split-lp.i.loopexit.split-lp ; 3 uses

.noexc424.i:                                      ; preds = %bb.gj
  store i32 2, ptr %i.alb, align 4, !tbaa !42
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store i32 0, ptr %i.alc, align 4, !tbaa !42
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 8 ; 2 uses
  store ptr %i.ald, ptr %26, align 8, !tbaa !74
  br label %thread-pre-split.i.i137.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i
  %i.ale = mul nuw nsw i32 %i.ala, 3
  %i.alf = add nuw nsw i32 %i.ale, 1
  %i.alg = lshr i32 %i.alf, 1                     ; 3 uses
  %.not.i414.i = icmp ugt i32 %i.alg, %i.ala
  br i1 %.not.i414.i, label %bb.gp, label %bb.gk

bb.gk:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i
  %i.alh = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.gl unwind label %bb.go

bb.gl:                                            ; preds = %bb.gk
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.alh, align 8, !tbaa !49
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 24 ; 3 uses
  store ptr %i.alj, ptr %i.ali, align 8, !tbaa !100
  %i.alk = load ptr, ptr %11, align 8, !tbaa !103 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.alm = icmp eq ptr %i.alk, %i.all
  br i1 %i.alm, label %bb.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i

bb.gm:                                            ; preds = %bb.gl
  %i.aln = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !104 ; 3 uses
  %i.alp = icmp ult i64 %i.alo, 16
  call void @llvm.assume(i1 %i.alp)
  %i.alq = add nuw nsw i64 %i.alo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.alj, ptr noundef nonnull align 8 dereferenceable(1) %i.all, i64 %i.alq, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i: ; preds = %bb.gl
  store ptr %i.alk, ptr %i.ali, align 8, !tbaa !103
  %i.alr = load i64, ptr %i.all, align 8, !tbaa !105
  store i64 %i.alr, ptr %i.alj, align 8, !tbaa !105
  %.phi.trans.insert.i417.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre.i418.i = load i64, ptr %.phi.trans.insert.i417.i, align 8, !tbaa !104
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i, %bb.gm
  %i.als = phi i64 [ %i.alo, %bb.gm ], [ %.pre.i418.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i ]
  %i.alt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  store i64 %i.als, ptr %i.alu, align 8, !tbaa !104
  store ptr %i.all, ptr %11, align 8, !tbaa !103
  store i64 0, ptr %i.alt, align 8, !tbaa !104
  store i8 0, ptr %i.all, align 8, !tbaa !105
  invoke void @__cxa_throw(ptr nonnull %i.alh, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.gq unwind label %bb.gn

bb.gn:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i
  %i.alv = landingpad { ptr, i32 }
          cleanup
  %i.alw = load ptr, ptr %11, align 8, !tbaa !103 ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.all
  br i1 %i.alx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i: ; preds = %bb.gn
  %i.aly = load i64, ptr %i.all, align 8, !tbaa !105
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i: ; preds = %bb.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body425.i

bb.go:                                            ; preds = %bb.gk
  %i.ama = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @__cxa_free_exception(ptr %i.alh) #22
  br label %.body425.i

bb.gp:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i
  %i.amb = shl nuw nsw i32 %i.alg, 2
  %i.amc = add nuw nsw i32 %i.amb, 8
  %i.amd = zext nneg i32 %i.amc to i64
  %i.ame = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.akz, i64 noundef %i.amd)
          to label %.noexc427.i unwind label %.loopexit.split-lp528.loopexit.split-lp.i.loopexit.split-lp ; 2 uses

.noexc427.i:                                      ; preds = %bb.gp
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8 ; 2 uses
  store ptr %i.amf, ptr %26, align 8, !tbaa !74
  store i32 %i.alg, ptr %i.ame, align 4, !tbaa !42
  br label %thread-pre-split.i.i137.i.backedge

thread-pre-split.i.i137.i.backedge:               ; preds = %.noexc427.i, %.noexc424.i
  %.be1887 = phi ptr [ %i.amf, %.noexc427.i ], [ %i.ald, %.noexc424.i ]
  br label %thread-pre-split.i.i137.i, !llvm.loop !152

bb.gq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i
  unreachable

bb.gr:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i
  %i.amg = getelementptr inbounds i8, ptr %i.akx, i64 -4
  store i32 %.ph1883, ptr %i.amg, align 4, !tbaa !42
  %.not1218.i.i142.i = icmp eq i32 %.0.i16.i.i140.i.ph, %.ph1883
  br i1 %.not1218.i.i142.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i, label %.lr.ph.preheader.i.i143.i

.lr.ph.preheader.i.i143.i:                        ; preds = %bb.gr
  %i.amh = zext nneg i32 %.ph1883 to i64
  %i.ami = zext nneg i32 %.0.i16.i.i140.i.ph to i64 ; 2 uses
  %i.amj = getelementptr [4 x i8], ptr %i.akx, i64 %i.ami
  %i.amk = sub nsw i64 %i.amh, %i.ami
  %i.aml = shl nsw i64 %i.amk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.amj, i8 0, i64 %i.aml, i1 false), !tbaa !42
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i

.lr.ph724.i:                                      ; preds = %_ZN6vectorIjLb0EjE3endEv.exit133.i, %.thread401.i
  %.051723.i = phi ptr [ %i.auj, %.thread401.i ], [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i ] ; 2 uses
  %i.amm = load i32, ptr %.051723.i, align 4, !tbaa !42 ; 9 uses
  %.val105.i = load ptr, ptr %i.pr, align 8, !tbaa !112 ; 3 uses
  %i.amn = icmp eq ptr %.val105.i, null
  br i1 %i.amn, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph724.i
  %i.amo = getelementptr inbounds i8, ptr %.val105.i, i64 -4
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !42
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.gs, %.lr.ph724.i
  %.0.i.i149.i = phi i32 [ %i.amp, %bb.gs ], [ 0, %.lr.ph724.i ]
  %i.amq = icmp slt i32 %i.amm, %.0.i.i149.i
  br i1 %i.amq, label %bb.gt, label %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i

bb.gt:                                            ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i
  %i.amr = zext i32 %i.amm to i64
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %i.amr
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !42
  %i.amu = icmp ne i32 %i.amt, 0
  br label %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i

_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i: ; preds = %bb.gt, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i
  %i.amv = phi i1 [ false, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ], [ %i.amu, %bb.gt ]
  %.pr.pre.i.i150.i = load ptr, ptr %26, align 8, !tbaa !74 ; 19 uses
  %i.amw = icmp eq ptr %.pr.pre.i.i150.i, null    ; 4 uses
  br i1 %i.amw, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i:        ; preds = %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i
  %i.amx = getelementptr inbounds i8, ptr %.pr.pre.i.i150.i, i64 -4
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !42 ; 4 uses
  %i.amz = shl i32 %i.amy, 5                      ; 9 uses
  %i.ana = zext i32 %i.amz to i64
  %i.anb = shl nuw i64 %i.ana, 32                 ; 3 uses
  %.not1537.i = icmp eq i32 %i.amy, 0
  br i1 %.not1537.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZNK8uint_set8iterator8containsEv.exit.i464.i

_ZNK8uint_set8iterator8containsEv.exit.i464.i:    ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i
  %i.anc = load i32, ptr %.pr.pre.i.i150.i, align 4, !tbaa !42
  %i.and = trunc i32 %i.anc to i1
  %i.ane = icmp eq i32 %i.amz, 0
  %or.cond.i465.i = or i1 %i.ane, %i.and
  br i1 %or.cond.i465.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %.lr.ph.i4.i441.i.preheader

.lr.ph.i4.i441.i.preheader:                       ; preds = %_ZNK8uint_set8iterator8containsEv.exit.i464.i
  %47 = add i32 %i.amz, -32
  %48 = lshr exact i32 %47, 5
  %49 = add nuw nsw i32 %48, 1
  %wide.trip.count = zext nneg i32 %49 to i64
  br label %.lr.ph.i4.i441.i

.lr.ph.i4.i441.i:                                 ; preds = %.lr.ph.i4.i441.i.preheader, %bb.gu
  %indvars.iv764 = phi i64 [ 0, %.lr.ph.i4.i441.i.preheader ], [ %indvars.iv.next765, %bb.gu ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.i4.i441.i.preheader ], [ %indvars.iv.next, %bb.gu ] ; 2 uses
  %.sroa.5259.6.i = phi i64 [ %i.anb, %.lr.ph.i4.i441.i.preheader ], [ %.sroa.5259.8.insert.insert283.i, %bb.gu ] ; 3 uses
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %indvars.iv
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !42
  %.not.i5.i443.i = icmp eq i32 %i.ang, 0
  br i1 %.not.i5.i443.i, label %bb.gu, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i

bb.gu:                                            ; preds = %.lr.ph.i4.i441.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 32 ; 2 uses
  %.sroa.5259.8.insert.ext281.i = and i64 %indvars.iv.next765, 4294967264
  %.sroa.5259.8.insert.mask282.i = and i64 %.sroa.5259.6.i, -4294967296
  %.sroa.5259.8.insert.insert283.i = or disjoint i64 %.sroa.5259.8.insert.mask282.i, %.sroa.5259.8.insert.ext281.i ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %.lr.ph.i4.i441.i, !llvm.loop !4

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i:      ; preds = %.lr.ph.i4.i441.i
  %i.anh = trunc nuw i64 %indvars.iv764 to i32    ; 3 uses
  %i.ani = lshr exact i32 %i.anh, 5               ; 2 uses
  %i.anj = icmp ult i32 %i.ani, %i.amy
  br i1 %i.anj, label %_ZNK8uint_set8iterator8containsEv.exit8.i456.i, label %bb.gv

_ZNK8uint_set8iterator8containsEv.exit8.i456.i:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i
  %i.ank = zext nneg i32 %i.ani to i64
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.ank
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !42
  %i.ann = and i32 %i.anm, 1
  %.not.i457.i = icmp eq i32 %i.ann, 0
  br i1 %.not.i457.i, label %bb.gv, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader

bb.gv:                                            ; preds = %_ZNK8uint_set8iterator8containsEv.exit8.i456.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i
  %i.ano = or disjoint i32 %i.anh, 1              ; 2 uses
  %.sroa.5259.8.insert.ext265.i = zext i32 %i.ano to i64
  %.sroa.5259.8.insert.mask266.i = and i64 %.sroa.5259.6.i, -4294967296
  %.sroa.5259.8.insert.insert267.i = or disjoint i64 %.sroa.5259.8.insert.mask266.i, %.sroa.5259.8.insert.ext265.i
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader: ; preds = %bb.gv, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i
  %.sroa.5259.9.i.ph = phi i64 [ %.sroa.5259.8.insert.insert267.i, %bb.gv ], [ %.sroa.5259.6.i, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i ]
  %.ph1870 = phi i32 [ %i.ano, %bb.gv ], [ %i.anh, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i:     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader, %bb.gw
  %.sroa.5259.9.i = phi i64 [ %.sroa.5259.8.insert.insert271.i, %bb.gw ], [ %.sroa.5259.9.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader ] ; 3 uses
  %i.anp = phi i32 [ %i.anz, %bb.gw ], [ %.ph1870, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader ] ; 4 uses
  %i.anq = lshr i32 %i.anp, 5                     ; 2 uses
  %i.anr = icmp ult i32 %i.anq, %i.amy
  br i1 %i.anr, label %_ZNK8uint_set8containsEj.exit.i15.i453.i, label %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i

_ZNK8uint_set8containsEj.exit.i15.i453.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i
  %i.ans = zext nneg i32 %i.anq to i64
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.ans
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !42
  %i.anv = and i32 %i.anp, 31                     ; 2 uses
  %i.anw = shl nuw i32 1, %i.anv
  %i.anx = and i32 %i.anu, %i.anw
  %i.any = icmp ne i32 %i.anx, 0
  %.not.i16.i454.i = icmp eq i32 %i.anv, 0
  %or.cond.i17.i455.i = or i1 %.not.i16.i454.i, %i.any
  br i1 %or.cond.i17.i455.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %bb.gw

_ZNK8uint_set8containsEj.exit.thread.i12.i450.i:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i
  %.old.i13.i451.i = and i32 %i.anp, 31
  %.not.old.i14.i452.i = icmp eq i32 %.old.i13.i451.i, 0
  br i1 %.not.old.i14.i452.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %bb.gw

bb.gw:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i, %_ZNK8uint_set8containsEj.exit.i15.i453.i
  %i.anz = add i32 %i.anp, 1                      ; 3 uses
  %.sroa.5259.8.insert.ext269.i = zext i32 %i.anz to i64
  %.sroa.5259.8.insert.mask270.i = and i64 %.sroa.5259.9.i, -4294967296
  %.sroa.5259.8.insert.insert271.i = or disjoint i64 %.sroa.5259.8.insert.mask270.i, %.sroa.5259.8.insert.ext269.i ; 2 uses
  %i.aoa = icmp eq i32 %i.anz, %i.amz
  br i1 %i.aoa, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i, !llvm.loop !3

_ZN8uint_set8iterator8scan_idxEv.exit.i482.i:     ; preds = %bb.gu, %_ZNK8uint_set8containsEj.exit.i15.i453.i, %bb.gw, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i, %_ZNK8uint_set8iterator8containsEv.exit.i464.i, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i
  %.sroa.5259.10391.i = phi i64 [ 0, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i ], [ %i.anb, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i ], [ %i.anb, %_ZNK8uint_set8iterator8containsEv.exit.i464.i ], [ %.sroa.5259.9.i, %_ZNK8uint_set8containsEj.exit.i15.i453.i ], [ %.sroa.5259.9.i, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i ], [ %.sroa.5259.8.insert.insert271.i, %bb.gw ], [ %.sroa.5259.8.insert.insert283.i, %bb.gu ] ; 2 uses
  %.sink.i162.i = phi i32 [ 0, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i ], [ 0, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i ], [ %i.amz, %_ZNK8uint_set8iterator8containsEv.exit.i464.i ], [ %i.amz, %_ZNK8uint_set8containsEj.exit.i15.i453.i ], [ %i.amz, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i ], [ %i.amz, %bb.gw ], [ %i.amz, %bb.gu ] ; 2 uses
  %.sroa.5158.8.extract.trunc716.i = trunc i64 %.sroa.5259.10391.i to i32 ; 2 uses
  %.not456717.i = icmp eq i32 %.sink.i162.i, %.sroa.5158.8.extract.trunc716.i
  br i1 %.not456717.i, label %._crit_edge721.i, label %.lr.ph720.i

.lr.ph720.i:                                      ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i
  %i.aob = load i32, ptr %i.cc, align 8, !tbaa !77 ; 3 uses
  %i.aoc = add i32 %i.aob, -1
  %i.aod = and i32 %i.aoc, %i.amm                 ; 2 uses
  %i.aoe = load ptr, ptr %37, align 8, !tbaa !87  ; 3 uses
  %i.aof = zext i32 %i.aod to i64
  %.idx.i.i.i.i170.i = mul nuw nsw i64 %i.aof, 24
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aoe, i64 %.idx.i.i.i.i170.i
  %i.aoh = zext i32 %i.aob to i64
  %i.aoi = getelementptr inbounds nuw [24 x i8], ptr %i.aoe, i64 %i.aoh
  %.not30.i.i.i.i171.i = icmp eq i32 %i.aod, %i.aob
  %i.aoj = getelementptr inbounds i8, ptr %.pr.pre.i.i150.i, i64 -4 ; 3 uses
  br label %bb.gx

bb.gx:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit188.i, %.lr.ph720.i
  %.sroa.5158.8.extract.trunc719.i = phi i32 [ %.sroa.5158.8.extract.trunc716.i, %.lr.ph720.i ], [ %.sroa.5158.8.extract.trunc.i, %_ZN8uint_set8iteratorppEv.exit188.i ] ; 2 uses
  %.sroa.5158.0718.i = phi i64 [ %.sroa.5259.10391.i, %.lr.ph720.i ], [ %.sroa.5158.11.i, %_ZN8uint_set8iteratorppEv.exit188.i ] ; 3 uses
  br i1 %.not30.i.i.i.i171.i, label %.lr.ph34.i.i.i.i178.i.preheader, label %.lr.ph.i.i.i.i172.i

.lr.ph.i.i.i.i172.i:                              ; preds = %bb.gx, %bb.ha
  %.031.i.i.i.i173.i = phi ptr [ %i.aor, %bb.ha ], [ %i.aog, %bb.gx ] ; 5 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 4
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !86
  %cond.i.i174.i = icmp eq i32 %i.aol, 2
  br i1 %cond.i.i174.i, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %.lr.ph.i.i.i.i172.i
  %i.aom = load i32, ptr %.031.i.i.i.i173.i, align 8, !tbaa !85
  %i.aon = icmp eq i32 %i.aom, %i.amm
  br i1 %i.aon, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.aoo = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 8
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !113
  %i.aoq = icmp eq i32 %i.aop, %i.amm
  br i1 %i.aoq, label %.loopexit484.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy, %.lr.ph.i.i.i.i172.i
  %i.aor = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 24 ; 2 uses
  %.not.i.i.i.i175.i = icmp eq ptr %i.aor, %i.aoi
  br i1 %.not.i.i.i.i175.i, label %.lr.ph34.i.i.i.i178.i.preheader, label %.lr.ph.i.i.i.i172.i, !llvm.loop !1

.lr.ph34.i.i.i.i178.i.preheader:                  ; preds = %bb.ha, %bb.gx
  br label %.lr.ph34.i.i.i.i178.i

.lr.ph34.i.i.i.i178.i:                            ; preds = %.lr.ph34.i.i.i.i178.i.preheader, %bb.hd
  %.133.i.i.i.i180.i = phi ptr [ %i.aoz, %bb.hd ], [ %i.aoe, %.lr.ph34.i.i.i.i178.i.preheader ] ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 4
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !86
  %cond4.i.i181.i = icmp eq i32 %i.aot, 2
  br i1 %cond4.i.i181.i, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %.lr.ph34.i.i.i.i178.i
  %i.aou = load i32, ptr %.133.i.i.i.i180.i, align 8, !tbaa !85
  %i.aov = icmp eq i32 %i.aou, %i.amm
  br i1 %i.aov, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.aow = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 8
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !113
  %i.aoy = icmp eq i32 %i.aox, %i.amm
  br i1 %i.aoy, label %.loopexit484.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %.lr.ph34.i.i.i.i178.i
  %i.aoz = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 24
  br label %.lr.ph34.i.i.i.i178.i

.loopexit484.i:                                   ; preds = %bb.gz, %bb.hc
  %.026.i.i.i.i183.i = phi ptr [ %.133.i.i.i.i180.i, %bb.hc ], [ %.031.i.i.i.i173.i, %bb.gz ]
  %i.apa = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i183.i, i64 16
  %i.apb = lshr i32 %.sroa.5158.8.extract.trunc719.i, 5 ; 2 uses
  %i.apc = load ptr, ptr %i.apa, align 8, !tbaa !74 ; 3 uses
  %i.apd = icmp eq ptr %i.apc, null
  br i1 %i.apd, label %.thread401.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i:           ; preds = %.loopexit484.i
  %i.ape = getelementptr inbounds i8, ptr %i.apc, i64 -4
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !42
  %i.apg = icmp ult i32 %i.apb, %i.apf
  br i1 %i.apg, label %_ZNK8uint_set8containsEj.exit186.i, label %.thread401.i

_ZNK8uint_set8containsEj.exit186.i:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i
  %i.aph = zext nneg i32 %i.apb to i64
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.aph
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !42
  %i.apk = and i32 %.sroa.5158.8.extract.trunc719.i, 31
  %i.apl = shl nuw i32 1, %i.apk
  %i.apm = and i32 %i.apj, %i.apl
  %.not457.i = icmp eq i32 %i.apm, 0
  br i1 %.not457.i, label %.thread401.i, label %bb.he

bb.he:                                            ; preds = %_ZNK8uint_set8containsEj.exit186.i
  %i.apn = add i64 %.sroa.5158.0718.i, 1          ; 2 uses
  %.sroa.5158.8.insert.ext.i = and i64 %i.apn, 4294967295
  %.sroa.5158.8.insert.mask.i = and i64 %.sroa.5158.0718.i, -4294967296
  %.sroa.5158.8.insert.insert.i = or disjoint i64 %.sroa.5158.8.insert.ext.i, %.sroa.5158.8.insert.mask.i ; 3 uses
  %.sroa.5158.12.extract.shift.i = lshr i64 %.sroa.5158.0718.i, 32
  %.sroa.5158.12.extract.trunc.i = trunc nuw i64 %.sroa.5158.12.extract.shift.i to i32 ; 15 uses
  %.sroa.5158.8.extract.trunc164.i = trunc i64 %i.apn to i32 ; 3 uses
  %i.apo = icmp eq i32 %.sroa.5158.8.extract.trunc164.i, %.sroa.5158.12.extract.trunc.i
  br i1 %i.apo, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %.lr.ph.i.i522.i

.lr.ph.i.i522.i:                                  ; preds = %bb.he
  br i1 %i.amw, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i: ; preds = %.lr.ph.i.i522.i
  %i.app = load i32, ptr %i.aoj, align 4, !tbaa !42 ; 4 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i

_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i: ; preds = %.lr.ph.i.i522.i, %bb.hf
  %.sroa.5158.1.i = phi i64 [ %.sroa.5158.8.insert.insert192.i, %bb.hf ], [ %.sroa.5158.8.insert.insert.i, %.lr.ph.i.i522.i ] ; 2 uses
  %i.apq = phi i32 [ %i.apr, %bb.hf ], [ %.sroa.5158.8.extract.trunc164.i, %.lr.ph.i.i522.i ] ; 3 uses
  %.old.us.i.i561.i = and i32 %i.apq, 31
  %.not.old.us.i.i562.i = icmp eq i32 %.old.us.i.i561.i, 0
  br i1 %.not.old.us.i.i562.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %bb.hf

bb.hf:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i
  %i.apr = add i32 %i.apq, 1                      ; 3 uses
  %.sroa.5158.8.insert.ext190.i = zext i32 %i.apr to i64
  %.sroa.5158.8.insert.mask191.i = and i64 %.sroa.5158.1.i, -4294967296
  %.sroa.5158.8.insert.insert192.i = or disjoint i64 %.sroa.5158.8.insert.mask191.i, %.sroa.5158.8.insert.ext190.i ; 2 uses
  %i.aps = icmp eq i32 %i.apr, %.sroa.5158.12.extract.trunc.i
  br i1 %i.aps, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i, !llvm.loop !3

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i:       ; preds = %bb.hg, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i
  %.sroa.5158.2.i = phi i64 [ %.sroa.5158.8.insert.insert168.i, %bb.hg ], [ %.sroa.5158.8.insert.insert.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i ] ; 3 uses
  %i.apt = phi i32 [ %i.aqd, %bb.hg ], [ %.sroa.5158.8.extract.trunc164.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i ] ; 6 uses
  %i.apu = lshr i32 %i.apt, 5                     ; 4 uses
  %i.apv = icmp ult i32 %i.apu, %i.app
  br i1 %i.apv, label %_ZNK8uint_set8containsEj.exit.i.i556.i, label %_ZNK8uint_set8containsEj.exit.thread.i.i524.i

_ZNK8uint_set8containsEj.exit.i.i556.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i
  %i.apw = zext nneg i32 %i.apu to i64
end_hunk_0
begin_hunk_1_@_ZN3opt10preprocess12prop_mutexesER6vectorINS_4softELb1EjER8rational:bb.a
  br i1 %.not1218.i.i197.i, label %_ZN8uint_set6insertEj.exit203.i, label %.lr.ph.preheader.i.i198.i

.lr.ph.preheader.i.i198.i:                        ; preds = %bb.hw
  %i.atw = zext nneg i32 %.ph1869 to i64
  %i.atx = zext nneg i32 %.0.i16.i.i195.i.ph to i64 ; 2 uses
  %i.aty = getelementptr [4 x i8], ptr %i.asm, i64 %i.atx
  %i.atz = sub nsw i64 %i.atw, %i.atx
  %i.aua = shl nsw i64 %i.atz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aty, i8 0, i64 %i.aua, i1 false), !tbaa !42
  br label %_ZN8uint_set6insertEj.exit203.i

_ZN8uint_set6insertEj.exit203.i:                  ; preds = %.lr.ph.preheader.i.i198.i, %bb.hw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i189.i
  %i.aub = phi ptr [ %i.asm, %.lr.ph.preheader.i.i198.i ], [ %i.asm, %bb.hw ], [ %.pr.pre.i.i150.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i189.i ] ; 2 uses
  %i.auc = and i32 %i.amm, 31
  %i.aud = shl nuw i32 1, %i.auc
  %i.aue = zext nneg i32 %i.asj to i64
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %i.aue ; 2 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !42
  %i.auh = or i32 %i.aug, %i.aud
  store i32 %i.auh, ptr %i.auf, align 4, !tbaa !42
  br label %.thread401.i

.thread401.i:                                     ; preds = %_ZNK8uint_set8containsEj.exit186.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i, %.loopexit484.i, %_ZN8uint_set6insertEj.exit203.i, %._crit_edge721.i
  %i.aui = phi ptr [ %.pr.pre.i.i150.i, %._crit_edge721.i ], [ %i.aub, %_ZN8uint_set6insertEj.exit203.i ], [ %.pr.pre.i.i150.i, %.loopexit484.i ], [ %.pr.pre.i.i150.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i ], [ %.pr.pre.i.i150.i, %_ZNK8uint_set8containsEj.exit186.i ]
  %i.auj = getelementptr inbounds nuw i8, ptr %.051723.i, i64 4 ; 2 uses
  %.not78.i = icmp eq ptr %i.auj, %i.akp
  br i1 %.not78.i, label %._crit_edge725.i, label %.lr.ph724.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i:        ; preds = %.lr.ph.preheader.i.i143.i, %bb.gr, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i
  %.pr.pre.i.i204.i = phi ptr [ %i.akx, %.lr.ph.preheader.i.i143.i ], [ %i.akx, %bb.gr ], [ %i.aks, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ] ; 2 uses
  %i.auk = and i32 %.val104.val.i, 31
  %i.aul = shl nuw i32 1, %i.auk
  %i.aum = zext nneg i32 %i.akt to i64
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i204.i, i64 %i.aum ; 2 uses
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !42
  %i.aup = or i32 %i.auo, %i.aul
  store i32 %i.aup, ptr %i.aun, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %26, ptr %22, align 8, !tbaa !116
  store i32 0, ptr %i.qy, align 8, !tbaa !117
  %i.auq = getelementptr inbounds i8, ptr %.pr.pre.i.i204.i, i64 -4
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !42
  %i.aus = shl i32 %i.aur, 5
  store i32 %i.aus, ptr %i.qz, align 4, !tbaa !118
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.hx unwind label %.loopexit.split-lp528.loopexit.split-lp.i.loopexit.split-lp

bb.hx:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i
  %.fca.0.load.i207.i = load ptr, ptr %22, align 8
  %.fca.1.load.i209.i = load i64, ptr %i.qy, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %26, ptr %21, align 8, !tbaa !116
  %.pr.pre.i.i213.i = load ptr, ptr %26, align 8, !tbaa !74 ; 2 uses
  %i.aut = icmp eq ptr %.pr.pre.i.i213.i, null
  br i1 %i.aut, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i, label %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i

_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i: ; preds = %bb.hx
  %i.auu = getelementptr inbounds i8, ptr %.pr.pre.i.i213.i, i64 -4
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !42
  %i.auw = shl i32 %i.auv, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i:        ; preds = %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i, %bb.hx
  %.sink.i216.i = phi i32 [ %i.auw, %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i ], [ 0, %bb.hx ] ; 2 uses
  store i32 %.sink.i216.i, ptr %i.ra, align 8, !tbaa !117
  store i32 %.sink.i216.i, ptr %i.rb, align 4, !tbaa !118
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.hy unwind label %.loopexit.split-lp528.loopexit.split-lp.i.loopexit.split-lp

bb.hy:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i
  %.fca.1.load.i220.i = load i64, ptr %i.ra, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %.sroa.4118.8.extract.trunc.i = trunc i64 %.fca.1.load.i220.i to i32 ; 2 uses
  %.sroa.5120.8.extract.trunc732.i = trunc i64 %.fca.1.load.i209.i to i32 ; 2 uses
  %.not458733.i = icmp eq i32 %.sroa.5120.8.extract.trunc732.i, %.sroa.4118.8.extract.trunc.i
  br i1 %.not458733.i, label %._crit_edge736.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i:     ; preds = %bb.hy
  %i.aux = load ptr, ptr %37, align 8, !tbaa !87  ; 6 uses
  %.val106.i = load ptr, ptr %i.pr, align 8       ; 5 uses
  %i.auy = icmp eq ptr %.val106.i, null
  %i.auz = getelementptr inbounds i8, ptr %.val106.i, i64 -4
  %.pre26.i671.i = load ptr, ptr %.fca.0.load.i207.i, align 8, !tbaa !74 ; 7 uses
  %i.ava = icmp eq ptr %.pre26.i671.i, null       ; 2 uses
  %i.avb = getelementptr inbounds i8, ptr %.pre26.i671.i, i64 -4 ; 3 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i

._crit_edge736.i:                                 ; preds = %_ZN8uint_set8iteratorppEv.exit270.i, %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %26, ptr %20, align 8, !tbaa !116
  %.pr.pre.i.i224.i = load ptr, ptr %26, align 8, !tbaa !74 ; 2 uses
  store i32 0, ptr %i.rc, align 8, !tbaa !117
  %i.avc = icmp eq ptr %.pr.pre.i.i224.i, null
  br i1 %i.avc, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i, label %bb.hz

bb.hz:                                            ; preds = %._crit_edge736.i
  %i.avd = getelementptr inbounds i8, ptr %.pr.pre.i.i224.i, i64 -4
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !42
  %i.avf = shl i32 %i.ave, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i:        ; preds = %bb.hz, %._crit_edge736.i
  %.0.i.i4.i.i226.i = phi i32 [ %i.avf, %bb.hz ], [ 0, %._crit_edge736.i ]
  store i32 %.0.i.i4.i.i226.i, ptr %i.rd, align 4, !tbaa !118
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.jy unwind label %.loopexit.split-lp528.loopexit.split-lp.i.loopexit.split-lp

_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i:           ; preds = %_ZN8uint_set8iteratorppEv.exit270.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i
  %.sroa.5120.8.extract.trunc735.i = phi i32 [ %.sroa.5120.8.extract.trunc732.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i ], [ %.sroa.5120.8.extract.trunc.i, %_ZN8uint_set8iteratorppEv.exit270.i ] ; 8 uses
  %.sroa.5120.0734.i = phi i64 [ %.fca.1.load.i209.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i ], [ %.sroa.5120.11.i, %_ZN8uint_set8iteratorppEv.exit270.i ] ; 3 uses
  %i.avg = lshr i32 %.sroa.5120.8.extract.trunc735.i, 5 ; 4 uses
  %i.avh = load i32, ptr %i.qt, align 4, !tbaa !42
  %i.avi = icmp ult i32 %i.avg, %i.avh
  br i1 %i.avi, label %bb.ia, label %_ZN8uint_set6removeEj.exit.i

bb.ia:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i
  %i.avj = and i32 %.sroa.5120.8.extract.trunc735.i, 31
  %i.avk = shl nuw i32 1, %i.avj
  %i.avl = xor i32 %i.avk, -1
  %i.avm = zext nneg i32 %i.avg to i64
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0245.4.i, i64 %i.avm ; 2 uses
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !42
  %i.avp = and i32 %i.avo, %i.avl
  store i32 %i.avp, ptr %i.avn, align 4, !tbaa !42
  br label %_ZN8uint_set6removeEj.exit.i

_ZN8uint_set6removeEj.exit.i:                     ; preds = %bb.ia, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i
  %i.avq = load i32, ptr %i.cc, align 8, !tbaa !77 ; 3 uses
  %i.avr = add i32 %i.avq, -1
  %i.avs = and i32 %i.avr, %.sroa.5120.8.extract.trunc735.i ; 2 uses
  %i.avt = zext i32 %i.avq to i64
  %i.avu = getelementptr inbounds nuw [24 x i8], ptr %i.aux, i64 %i.avt
  %.not30.i.i.i.i235.i = icmp eq i32 %i.avs, %i.avq
  br i1 %.not30.i.i.i.i235.i, label %.lr.ph34.i.i.i.i242.i.preheader, label %.lr.ph.i.i.i.i236.i.preheader

.lr.ph.i.i.i.i236.i.preheader:                    ; preds = %_ZN8uint_set6removeEj.exit.i
  %i.avv = zext i32 %i.avs to i64
  %.idx.i.i.i.i234.i = mul nuw nsw i64 %i.avv, 24
  %i.avw = getelementptr inbounds nuw i8, ptr %i.aux, i64 %.idx.i.i.i.i234.i
  br label %.lr.ph.i.i.i.i236.i

.lr.ph.i.i.i.i236.i:                              ; preds = %.lr.ph.i.i.i.i236.i.preheader, %bb.id
  %.031.i.i.i.i237.i = phi ptr [ %i.awe, %bb.id ], [ %i.avw, %.lr.ph.i.i.i.i236.i.preheader ] ; 5 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 4
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !86
  %cond.i.i238.i = icmp eq i32 %i.avy, 2
  br i1 %cond.i.i238.i, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %.lr.ph.i.i.i.i236.i
  %i.avz = load i32, ptr %.031.i.i.i.i237.i, align 8, !tbaa !85
  %i.awa = icmp eq i32 %i.avz, %.sroa.5120.8.extract.trunc735.i
  br i1 %i.awa, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.awb = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 8
  %i.awc = load i32, ptr %i.awb, align 8, !tbaa !113
  %i.awd = icmp eq i32 %i.awc, %.sroa.5120.8.extract.trunc735.i
  br i1 %i.awd, label %.loopexit511.i, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %.lr.ph.i.i.i.i236.i
  %i.awe = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 24 ; 2 uses
  %.not.i.i.i.i239.i = icmp eq ptr %i.awe, %i.avu
  br i1 %.not.i.i.i.i239.i, label %.lr.ph34.i.i.i.i242.i.preheader, label %.lr.ph.i.i.i.i236.i, !llvm.loop !1

.lr.ph34.i.i.i.i242.i.preheader:                  ; preds = %bb.id, %_ZN8uint_set6removeEj.exit.i
  br label %.lr.ph34.i.i.i.i242.i

.lr.ph34.i.i.i.i242.i:                            ; preds = %.lr.ph34.i.i.i.i242.i.preheader, %bb.ig
  %.133.i.i.i.i244.i = phi ptr [ %i.awm, %bb.ig ], [ %i.aux, %.lr.ph34.i.i.i.i242.i.preheader ] ; 5 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 4
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !86
  %cond4.i.i245.i = icmp eq i32 %i.awg, 2
  br i1 %cond4.i.i245.i, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %.lr.ph34.i.i.i.i242.i
  %i.awh = load i32, ptr %.133.i.i.i.i244.i, align 8, !tbaa !85
  %i.awi = icmp eq i32 %i.awh, %.sroa.5120.8.extract.trunc735.i
  br i1 %i.awi, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.awj = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 8
  %i.awk = load i32, ptr %i.awj, align 8, !tbaa !113
  %i.awl = icmp eq i32 %i.awk, %.sroa.5120.8.extract.trunc735.i
  br i1 %i.awl, label %.loopexit511.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie, %.lr.ph34.i.i.i.i242.i
  %i.awm = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 24
  br label %.lr.ph34.i.i.i.i242.i

.loopexit511.i:                                   ; preds = %bb.ic, %bb.if
  %.026.i.i.i.i247.i = phi ptr [ %.133.i.i.i.i244.i, %bb.if ], [ %.031.i.i.i.i237.i, %bb.ic ]
  %i.awn = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i247.i, i64 16
  %.pr.pre.i.i249.i = load ptr, ptr %i.awn, align 8, !tbaa !74 ; 12 uses
  %i.awo = icmp eq ptr %.pr.pre.i.i249.i, null    ; 3 uses
  br i1 %i.awo, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i:        ; preds = %.loopexit511.i
  %i.awp = getelementptr inbounds i8, ptr %.pr.pre.i.i249.i, i64 -4
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !42 ; 4 uses
  %i.awr = shl i32 %i.awq, 5                      ; 9 uses
  %i.aws = zext i32 %i.awr to i64
  %i.awt = shl nuw i64 %i.aws, 32                 ; 3 uses
  %.not1538.i = icmp eq i32 %i.awq, 0
  br i1 %.not1538.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZNK8uint_set8iterator8containsEv.exit.i614.i

_ZNK8uint_set8iterator8containsEv.exit.i614.i:    ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i
  %i.awu = load i32, ptr %.pr.pre.i.i249.i, align 4, !tbaa !42
  %i.awv = trunc i32 %i.awu to i1
  %i.aww = icmp eq i32 %i.awr, 0
  %or.cond.i615.i = or i1 %i.aww, %i.awv
  br i1 %or.cond.i615.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %.lr.ph.i4.i591.i.preheader

.lr.ph.i4.i591.i.preheader:                       ; preds = %_ZNK8uint_set8iterator8containsEv.exit.i614.i
  %50 = add i32 %i.awr, -32
  %51 = lshr exact i32 %50, 5
  %52 = add nuw nsw i32 %51, 1
  %wide.trip.count776 = zext nneg i32 %52 to i64
  br label %.lr.ph.i4.i591.i

.lr.ph.i4.i591.i:                                 ; preds = %.lr.ph.i4.i591.i.preheader, %bb.ih
  %indvars.iv771 = phi i64 [ 0, %.lr.ph.i4.i591.i.preheader ], [ %indvars.iv.next772, %bb.ih ] ; 2 uses
  %indvars.iv769 = phi i64 [ 0, %.lr.ph.i4.i591.i.preheader ], [ %indvars.iv.next770, %bb.ih ] ; 2 uses
  %.sroa.5320.6.i = phi i64 [ %i.awt, %.lr.ph.i4.i591.i.preheader ], [ %.sroa.5320.8.insert.insert344.i, %bb.ih ] ; 3 uses
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %indvars.iv769
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !42
  %.not.i5.i593.i = icmp eq i32 %i.awy, 0
  br i1 %.not.i5.i593.i, label %bb.ih, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i

bb.ih:                                            ; preds = %.lr.ph.i4.i591.i
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 32 ; 2 uses
  %.sroa.5320.8.insert.ext342.i = and i64 %indvars.iv.next772, 4294967264
  %.sroa.5320.8.insert.mask343.i = and i64 %.sroa.5320.6.i, -4294967296
  %.sroa.5320.8.insert.insert344.i = or disjoint i64 %.sroa.5320.8.insert.mask343.i, %.sroa.5320.8.insert.ext342.i ; 2 uses
  %exitcond777 = icmp eq i64 %indvars.iv.next770, %wide.trip.count776
  br i1 %exitcond777, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %.lr.ph.i4.i591.i, !llvm.loop !4

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i:      ; preds = %.lr.ph.i4.i591.i
  %i.awz = trunc nuw i64 %indvars.iv771 to i32    ; 3 uses
  %i.axa = lshr exact i32 %i.awz, 5               ; 2 uses
  %i.axb = icmp ult i32 %i.axa, %i.awq
  br i1 %i.axb, label %_ZNK8uint_set8iterator8containsEv.exit8.i606.i, label %bb.ii

_ZNK8uint_set8iterator8containsEv.exit8.i606.i:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i
  %i.axc = zext nneg i32 %i.axa to i64
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %i.axc
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !42
  %i.axf = and i32 %i.axe, 1
  %.not.i607.i = icmp eq i32 %i.axf, 0
  br i1 %.not.i607.i, label %bb.ii, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader

bb.ii:                                            ; preds = %_ZNK8uint_set8iterator8containsEv.exit8.i606.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i
  %i.axg = or disjoint i32 %i.awz, 1              ; 2 uses
  %.sroa.5320.8.insert.ext326.i = zext i32 %i.axg to i64
  %.sroa.5320.8.insert.mask327.i = and i64 %.sroa.5320.6.i, -4294967296
  %.sroa.5320.8.insert.insert328.i = or disjoint i64 %.sroa.5320.8.insert.mask327.i, %.sroa.5320.8.insert.ext326.i
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader: ; preds = %bb.ii, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i
  %.sroa.5320.9.i.ph = phi i64 [ %.sroa.5320.8.insert.insert328.i, %bb.ii ], [ %.sroa.5320.6.i, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i ]
  %.ph1865 = phi i32 [ %i.axg, %bb.ii ], [ %i.awz, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i:     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader, %bb.ij
  %.sroa.5320.9.i = phi i64 [ %.sroa.5320.8.insert.insert332.i, %bb.ij ], [ %.sroa.5320.9.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader ] ; 3 uses
  %i.axh = phi i32 [ %i.axr, %bb.ij ], [ %.ph1865, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader ] ; 4 uses
  %i.axi = lshr i32 %i.axh, 5                     ; 2 uses
  %i.axj = icmp ult i32 %i.axi, %i.awq
  br i1 %i.axj, label %_ZNK8uint_set8containsEj.exit.i15.i603.i, label %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i

_ZNK8uint_set8containsEj.exit.i15.i603.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i
  %i.axk = zext nneg i32 %i.axi to i64
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %i.axk
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !42
  %i.axn = and i32 %i.axh, 31                     ; 2 uses
  %i.axo = shl nuw i32 1, %i.axn
  %i.axp = and i32 %i.axm, %i.axo
  %i.axq = icmp ne i32 %i.axp, 0
  %.not.i16.i604.i = icmp eq i32 %i.axn, 0
  %or.cond.i17.i605.i = or i1 %.not.i16.i604.i, %i.axq
  br i1 %or.cond.i17.i605.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %bb.ij

_ZNK8uint_set8containsEj.exit.thread.i12.i600.i:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i
  %.old.i13.i601.i = and i32 %i.axh, 31
  %.not.old.i14.i602.i = icmp eq i32 %.old.i13.i601.i, 0
  br i1 %.not.old.i14.i602.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %bb.ij

bb.ij:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i, %_ZNK8uint_set8containsEj.exit.i15.i603.i
  %i.axr = add i32 %i.axh, 1                      ; 3 uses
  %.sroa.5320.8.insert.ext330.i = zext i32 %i.axr to i64
  %.sroa.5320.8.insert.mask331.i = and i64 %.sroa.5320.9.i, -4294967296
  %.sroa.5320.8.insert.insert332.i = or disjoint i64 %.sroa.5320.8.insert.mask331.i, %.sroa.5320.8.insert.ext330.i ; 2 uses
  %i.axs = icmp eq i32 %i.axr, %i.awr
  br i1 %i.axs, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i, !llvm.loop !3

_ZN8uint_set8iterator8scan_idxEv.exit.i632.i:     ; preds = %bb.ih, %_ZNK8uint_set8containsEj.exit.i15.i603.i, %bb.ij, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i, %_ZNK8uint_set8iterator8containsEv.exit.i614.i, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i, %.loopexit511.i
  %.sroa.5320.10411.i = phi i64 [ 0, %.loopexit511.i ], [ %i.awt, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i ], [ %i.awt, %_ZNK8uint_set8iterator8containsEv.exit.i614.i ], [ %.sroa.5320.9.i, %_ZNK8uint_set8containsEj.exit.i15.i603.i ], [ %.sroa.5320.9.i, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i ], [ %.sroa.5320.8.insert.insert332.i, %bb.ij ], [ %.sroa.5320.8.insert.insert344.i, %bb.ih ] ; 2 uses
  %.sink.i261.i = phi i32 [ 0, %.loopexit511.i ], [ 0, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i ], [ %i.awr, %_ZNK8uint_set8iterator8containsEv.exit.i614.i ], [ %i.awr, %_ZNK8uint_set8containsEj.exit.i15.i603.i ], [ %i.awr, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i ], [ %i.awr, %bb.ij ], [ %i.awr, %bb.ih ] ; 2 uses
  %.sroa.580.8.extract.trunc726.i = trunc i64 %.sroa.5320.10411.i to i32 ; 2 uses
  %.not461727.i = icmp eq i32 %.sink.i261.i, %.sroa.580.8.extract.trunc726.i
  br i1 %.not461727.i, label %._crit_edge731.i, label %.lr.ph730.i

.lr.ph730.i:                                      ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i
  %i.axt = and i32 %.sroa.5120.8.extract.trunc735.i, 31
  %i.axu = shl nuw i32 1, %i.axt
  %i.axv = xor i32 %i.axu, -1
  %i.axw = zext nneg i32 %i.avg to i64
  %i.axx = load ptr, ptr %i.pq, align 8           ; 4 uses
  %.val.i.i292.i = load ptr, ptr %25, align 8     ; 2 uses
  %i.axy = getelementptr i8, ptr %.val.i.i292.i, i64 8
  %i.axz = getelementptr inbounds i8, ptr %.pr.pre.i.i249.i, i64 -4 ; 3 uses
  br label %bb.is

._crit_edge731.i:                                 ; preds = %_ZN8uint_set8iteratorppEv.exit301.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i
  %i.aya = add i64 %.sroa.5120.0734.i, 1          ; 2 uses
  %.sroa.5120.8.insert.ext.i = and i64 %i.aya, 4294967295
  %.sroa.5120.8.insert.mask.i = and i64 %.sroa.5120.0734.i, -4294967296
  %.sroa.5120.8.insert.insert.i = or disjoint i64 %.sroa.5120.8.insert.ext.i, %.sroa.5120.8.insert.mask.i ; 3 uses
  %.sroa.5120.12.extract.shift.i = lshr i64 %.sroa.5120.0734.i, 32
  %.sroa.5120.12.extract.trunc.i = trunc nuw i64 %.sroa.5120.12.extract.shift.i to i32 ; 15 uses
  %.sroa.5120.8.extract.trunc126.i = trunc i64 %i.aya to i32 ; 3 uses
  %i.ayb = icmp eq i32 %.sroa.5120.8.extract.trunc126.i, %.sroa.5120.12.extract.trunc.i
  br i1 %i.ayb, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %.lr.ph.i.i672.i

.lr.ph.i.i672.i:                                  ; preds = %._crit_edge731.i
  br i1 %i.ava, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i: ; preds = %.lr.ph.i.i672.i
  %i.ayc = load i32, ptr %i.avb, align 4, !tbaa !42 ; 4 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i

_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i: ; preds = %.lr.ph.i.i672.i, %bb.ik
  %.sroa.5120.1.i = phi i64 [ %.sroa.5120.8.insert.insert154.i, %bb.ik ], [ %.sroa.5120.8.insert.insert.i, %.lr.ph.i.i672.i ] ; 2 uses
  %i.ayd = phi i32 [ %i.aye, %bb.ik ], [ %.sroa.5120.8.extract.trunc126.i, %.lr.ph.i.i672.i ] ; 3 uses
  %.old.us.i.i711.i = and i32 %i.ayd, 31
  %.not.old.us.i.i712.i = icmp eq i32 %.old.us.i.i711.i, 0
  br i1 %.not.old.us.i.i712.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %bb.ik

bb.ik:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i
  %i.aye = add i32 %i.ayd, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext152.i = zext i32 %i.aye to i64
  %.sroa.5120.8.insert.mask153.i = and i64 %.sroa.5120.1.i, -4294967296
  %.sroa.5120.8.insert.insert154.i = or disjoint i64 %.sroa.5120.8.insert.mask153.i, %.sroa.5120.8.insert.ext152.i ; 2 uses
  %i.ayf = icmp eq i32 %i.aye, %.sroa.5120.12.extract.trunc.i
  br i1 %i.ayf, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, !llvm.loop !3

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i:       ; preds = %bb.il, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i
  %.sroa.5120.2.i = phi i64 [ %.sroa.5120.8.insert.insert130.i, %bb.il ], [ %.sroa.5120.8.insert.insert.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i ] ; 3 uses
  %i.ayg = phi i32 [ %i.ayq, %bb.il ], [ %.sroa.5120.8.extract.trunc126.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i ] ; 6 uses
  %i.ayh = lshr i32 %i.ayg, 5                     ; 4 uses
  %i.ayi = icmp ult i32 %i.ayh, %i.ayc
  br i1 %i.ayi, label %_ZNK8uint_set8containsEj.exit.i.i706.i, label %_ZNK8uint_set8containsEj.exit.thread.i.i674.i

_ZNK8uint_set8containsEj.exit.i.i706.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i
  %i.ayj = zext nneg i32 %i.ayh to i64
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.ayj
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !42
  %i.aym = and i32 %i.ayg, 31                     ; 2 uses
  %i.ayn = shl nuw i32 1, %i.aym
  %i.ayo = and i32 %i.ayl, %i.ayn
  %i.ayp = icmp ne i32 %i.ayo, 0
  %.not.i.i707.i = icmp eq i32 %i.aym, 0
  %or.cond.i.i708.i = or i1 %.not.i.i707.i, %i.ayp
  br i1 %or.cond.i.i708.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, label %bb.il

_ZNK8uint_set8containsEj.exit.thread.i.i674.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i
  %.old.i.i675.i = and i32 %i.ayg, 31
  %.not.old.i.i676.i = icmp eq i32 %.old.i.i675.i, 0
  br i1 %.not.old.i.i676.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, label %bb.il

bb.il:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i674.i, %_ZNK8uint_set8containsEj.exit.i.i706.i
  %i.ayq = add i32 %i.ayg, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext128.i = zext i32 %i.ayq to i64
  %.sroa.5120.8.insert.mask129.i = and i64 %.sroa.5120.2.i, -4294967296
  %.sroa.5120.8.insert.insert130.i = or disjoint i64 %.sroa.5120.8.insert.mask129.i, %.sroa.5120.8.insert.ext128.i ; 2 uses
  %i.ayr = icmp eq i32 %i.ayq, %.sroa.5120.12.extract.trunc.i
  br i1 %i.ayr, label %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i, !llvm.loop !3

._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i: ; preds = %bb.il
  %.pre980.i = lshr i32 %.sroa.5120.12.extract.trunc.i, 5
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, !llvm.loop !3

_ZN8uint_set8iterator8scan_idxEv.exit.i677.i:     ; preds = %bb.ik, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, %._crit_edge731.i
  %.sroa.5120.3.i = phi i64 [ %.sroa.5120.8.insert.insert.i, %._crit_edge731.i ], [ %.sroa.5120.1.i, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i ], [ %.sroa.5120.8.insert.insert154.i, %bb.ik ] ; 2 uses
  %i.ays = phi i32 [ %.sroa.5120.12.extract.trunc.i, %._crit_edge731.i ], [ %i.ayd, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i ], [ %.sroa.5120.12.extract.trunc.i, %bb.ik ] ; 3 uses
  %i.ayt = lshr i32 %i.ays, 5                     ; 2 uses
  br i1 %i.ava, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i

_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i: ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i
  %.pre967.i = load i32, ptr %i.avb, align 4, !tbaa !42
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i:      ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i674.i, %_ZNK8uint_set8containsEj.exit.i.i706.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i
  %i.ayu = phi i32 [ %.pre967.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %i.ayc, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ayc, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ayc, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ]
  %.sroa.5120.4.i = phi i64 [ %.sroa.5120.3.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.sroa.5120.8.insert.insert130.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %.sroa.5120.2.i, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %.sroa.5120.2.i, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 3 uses
  %i.ayv = phi i32 [ %i.ayt, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.pre980.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ayh, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ayh, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 4 uses
  %i.ayw = phi i32 [ %i.ays, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.sroa.5120.12.extract.trunc.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ayg, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ayg, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 4 uses
  %i.ayx = icmp ult i32 %i.ayv, %i.ayu
  br i1 %i.ayx, label %_ZNK8uint_set8iterator8containsEv.exit.i704.i, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i

_ZNK8uint_set8iterator8containsEv.exit.i704.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i
  %i.ayy = zext nneg i32 %i.ayv to i64
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.ayy
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !42
  %i.azb = and i32 %i.ayw, 31
  %i.azc = shl nuw i32 1, %i.azb
  %i.azd = and i32 %i.aza, %i.azc
  %i.aze = icmp ne i32 %i.azd, 0
  %i.azf = icmp eq i32 %i.ayw, %.sroa.5120.12.extract.trunc.i
  %or.cond.i705.i = or i1 %i.azf, %i.aze
  br i1 %or.cond.i705.i, label %_ZN8uint_set8iteratorppEv.exit270.i, label %.lr.ph.i4.i681.i

_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i
  %.sroa.5120.5.i = phi i64 [ %.sroa.5120.3.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %.sroa.5120.4.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ] ; 2 uses
  %i.azg = phi i1 [ true, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ false, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ]
  %i.azh = phi i32 [ %i.ayt, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %i.ayv, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ]
  %i.azi = phi i32 [ %i.ays, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %i.ayw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ] ; 2 uses
  %.old.i680.i = icmp eq i32 %i.azi, %.sroa.5120.12.extract.trunc.i
  br i1 %.old.i680.i, label %_ZN8uint_set8iteratorppEv.exit270.i, label %.lr.ph.i4.i681.i

.lr.ph.i4.i681.i:                                 ; preds = %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i, %_ZNK8uint_set8iterator8containsEv.exit.i704.i
  %.sroa.5120.6.i = phi i64 [ %.sroa.5120.5.i, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %.sroa.5120.4.i, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azj = phi i1 [ %i.azg, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ false, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azk = phi i32 [ %i.azh, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %i.ayv, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azl = phi i32 [ %i.azi, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %i.ayw, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  br label %bb.im

bb.im:                                            ; preds = %bb.in, %.lr.ph.i4.i681.i
  %.sroa.5120.7.i = phi i64 [ %.sroa.5120.6.i, %.lr.ph.i4.i681.i ], [ %.sroa.5120.8.insert.insert150.i, %bb.in ] ; 5 uses
  %.02.i.i682.i = phi i32 [ %i.azk, %.lr.ph.i4.i681.i ], [ %i.azq, %bb.in ] ; 2 uses
  %i.azm = phi i32 [ %i.azl, %.lr.ph.i4.i681.i ], [ %i.azr, %bb.in ] ; 7 uses
  %i.azn = zext i32 %.02.i.i682.i to i64
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.azn
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !42
  %.not.i5.i683.i = icmp eq i32 %i.azp, 0
end_hunk_1

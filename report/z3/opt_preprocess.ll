Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_preprocess?download=true
inline.NumInlined: 1276
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3opt10preprocess12prop_mutexesER6vectorINS_4softELb1EjER8rational:bb.a
_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge729_crit_edge.i: ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i, %._crit_edge718.i, %bb.ep
  %.sroa.0234.0.lcssa1330133613401347.i = phi ptr [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i ], [ null, %bb.ep ], [ null, %._crit_edge718.i ], [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit.i ]
  %i.aku = phi i1 [ false, %_ZN6vectorIjLb0EjE3endEv.exit133.i ], [ true, %bb.ep ], [ true, %._crit_edge718.i ], [ false, %_ZN6vectorIjLb0EjE3endEv.exit.i ]
  %.pre972.i = load ptr, ptr %26, align 8, !tbaa !75
  br label %._crit_edge729.i

._crit_edge729.i:                                 ; preds = %.thread401.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge729_crit_edge.i
  %.sroa.0234.0.lcssa1330133613401346.i = phi ptr [ %.sroa.0234.0.lcssa1330133613401347.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge729_crit_edge.i ], [ %.sroa.0234.3.i, %.thread401.i ] ; 9 uses
  %i.akv = phi i1 [ %i.aku, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge729_crit_edge.i ], [ false, %.thread401.i ]
  %i.akw = phi ptr [ %.pre972.i, %_ZN6vectorIjLb0EjE3endEv.exit133.._crit_edge729_crit_edge.i ], [ %i.auq, %.thread401.i ] ; 4 uses
  %i.akx = lshr i32 %.val104.val.i, 5             ; 4 uses
  %i.aky = icmp eq ptr %i.akw, null
  br i1 %i.aky, label %thread-pre-split.i.i137.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i:           ; preds = %._crit_edge729.i
  %i.akz = getelementptr inbounds i8, ptr %i.akw, i64 -4
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !26 ; 2 uses
  %.not.i135.i = icmp ult i32 %i.akx, %i.ala
  br i1 %.not.i135.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i, label %thread-pre-split.i.i137.i.preheader

thread-pre-split.i.i137.i.preheader:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i, %._crit_edge729.i
  %.ph1880 = phi ptr [ null, %._crit_edge729.i ], [ %i.akw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ]
  %.0.i16.i.i140.i.ph = phi i32 [ 0, %._crit_edge729.i ], [ %i.ala, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ] ; 2 uses
  %.ph1881 = add nuw nsw i32 %i.akx, 1            ; 3 uses
  br label %thread-pre-split.i.i137.i

thread-pre-split.i.i137.i:                        ; preds = %thread-pre-split.i.i137.i.backedge, %thread-pre-split.i.i137.i.preheader
  %i.alb = phi ptr [ %.ph1880, %thread-pre-split.i.i137.i.preheader ], [ %.be1882, %thread-pre-split.i.i137.i.backedge ] ; 6 uses
  %i.alc = icmp eq ptr %i.alb, null
  br i1 %i.alc, label %bb.go, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i:     ; preds = %thread-pre-split.i.i137.i
  %i.ald = getelementptr inbounds i8, ptr %i.alb, i64 -8 ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !26 ; 3 uses
  %.not2093 = icmp ult i32 %i.akx, %i.ale
  br i1 %.not2093, label %bb.gw, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i

bb.go:                                            ; preds = %thread-pre-split.i.i137.i
  %i.alf = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc424.i unwind label %bb.gx ; 3 uses

.noexc424.i:                                      ; preds = %bb.go
  store i32 2, ptr %i.alf, align 4, !tbaa !26
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 4
  store i32 0, ptr %i.alg, align 4, !tbaa !26
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 2 uses
  store ptr %i.alh, ptr %26, align 8, !tbaa !75
  br label %thread-pre-split.i.i137.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i
  %i.ali = mul nuw nsw i32 %i.ale, 3
  %i.alj = add nuw nsw i32 %i.ali, 1
  %i.alk = lshr i32 %i.alj, 1                     ; 3 uses
  %.not.i414.i = icmp ugt i32 %i.alk, %i.ale
  br i1 %.not.i414.i, label %bb.gu, label %bb.gp

bb.gp:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i
  %i.all = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.gq unwind label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.all, align 8, !tbaa !32
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 24 ; 3 uses
  store ptr %i.aln, ptr %i.alm, align 8, !tbaa !107
  %i.alo = load ptr, ptr %11, align 8, !tbaa !109 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.alq = icmp eq ptr %i.alo, %i.alp
  br i1 %i.alq, label %bb.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i

bb.gr:                                            ; preds = %bb.gq
  %i.alr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !112 ; 3 uses
  %i.alt = icmp ult i64 %i.als, 16
  call void @llvm.assume(i1 %i.alt)
  %i.alu = add nuw nsw i64 %i.als, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aln, ptr noundef nonnull align 8 dereferenceable(1) %i.alp, i64 %i.alu, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i: ; preds = %bb.gq
  store ptr %i.alo, ptr %i.alm, align 8, !tbaa !109
  %i.alv = load i64, ptr %i.alp, align 8, !tbaa !113
  store i64 %i.alv, ptr %i.aln, align 8, !tbaa !113
  %.phi.trans.insert.i417.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre.i418.i = load i64, ptr %.phi.trans.insert.i417.i, align 8, !tbaa !112
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i, %bb.gr
  %i.alw = phi i64 [ %i.als, %bb.gr ], [ %.pre.i418.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i416.i ]
  %i.alx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  store i64 %i.alw, ptr %i.aly, align 8, !tbaa !112
  store ptr %i.alp, ptr %11, align 8, !tbaa !109
  store i64 0, ptr %i.alx, align 8, !tbaa !112
  store i8 0, ptr %i.alp, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.all, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.gv unwind label %bb.gs

bb.gs:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i
  %i.alz = landingpad { ptr, i32 }
          cleanup
  %i.ama = load ptr, ptr %11, align 8, !tbaa !109 ; 2 uses
  %i.amb = icmp eq ptr %i.ama, %i.alp
  br i1 %i.amb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i: ; preds = %bb.gs
  %i.amc = load i64, ptr %i.alp, align 8, !tbaa !113
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.ama, i64 noundef %i.amd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i421.i: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i420.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body405.i

bb.gt:                                            ; preds = %bb.gp
  %i.ame = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @__cxa_free_exception(ptr %i.all) #22
  br label %.body405.i

bb.gu:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i144.i
  %i.amf = shl nuw nsw i32 %i.alk, 2
  %i.amg = add nuw nsw i32 %i.amf, 8
  %i.amh = zext nneg i32 %i.amg to i64
  %i.ami = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ald, i64 noundef %i.amh)
          to label %.noexc427.i unwind label %bb.gx ; 2 uses

.noexc427.i:                                      ; preds = %bb.gu
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 8 ; 2 uses
  store ptr %i.amj, ptr %26, align 8, !tbaa !75
  store i32 %i.alk, ptr %i.ami, align 4, !tbaa !26
  br label %thread-pre-split.i.i137.i.backedge

thread-pre-split.i.i137.i.backedge:               ; preds = %.noexc427.i, %.noexc424.i
  %.be1882 = phi ptr [ %i.amj, %.noexc427.i ], [ %i.alh, %.noexc424.i ]
  br label %thread-pre-split.i.i137.i, !llvm.loop !106

bb.gv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i419.i
  unreachable

bb.gw:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i141.i
  %i.amk = getelementptr inbounds i8, ptr %i.alb, i64 -4
  store i32 %.ph1881, ptr %i.amk, align 4, !tbaa !26
  %.not1218.i.i142.i = icmp eq i32 %.0.i16.i.i140.i.ph, %.ph1881
  br i1 %.not1218.i.i142.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i, label %.lr.ph.preheader.i.i143.i

.lr.ph.preheader.i.i143.i:                        ; preds = %bb.gw
  %i.aml = zext nneg i32 %.ph1881 to i64
  %i.amm = zext nneg i32 %.0.i16.i.i140.i.ph to i64 ; 2 uses
  %i.amn = getelementptr [4 x i8], ptr %i.alb, i64 %i.amm
  %i.amo = sub nsw i64 %i.aml, %i.amm
  %i.amp = shl nsw i64 %i.amo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.amn, i8 0, i64 %i.amp, i1 false), !tbaa !26
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i

bb.gx:                                            ; preds = %bb.gu, %bb.go
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %.body405.i

.lr.ph728.i:                                      ; preds = %_ZN6vectorIjLb0EjE3endEv.exit133.i, %.thread401.i
  %.051727.i = phi ptr [ %i.aur, %.thread401.i ], [ %.sroa.0234.3.i, %_ZN6vectorIjLb0EjE3endEv.exit133.i ] ; 2 uses
  %i.amr = load i32, ptr %.051727.i, align 4, !tbaa !26 ; 9 uses
  %.val105.i = load ptr, ptr %i.pr, align 8, !tbaa !122 ; 3 uses
  %i.ams = icmp eq ptr %.val105.i, null
  br i1 %i.ams, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph728.i
  %i.amt = getelementptr inbounds i8, ptr %.val105.i, i64 -4
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !26
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.gy, %.lr.ph728.i
  %.0.i.i149.i = phi i32 [ %i.amu, %bb.gy ], [ 0, %.lr.ph728.i ]
  %i.amv = icmp slt i32 %i.amr, %.0.i.i149.i
  br i1 %i.amv, label %bb.gz, label %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i

bb.gz:                                            ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i
  %i.amw = zext i32 %i.amr to i64
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %i.amw
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !26
  %i.amz = icmp ne i32 %i.amy, 0
  br label %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i

_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i: ; preds = %bb.gz, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i
  %i.ana = phi i1 [ false, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ], [ %i.amz, %bb.gz ]
  %.pr.pre.i.i150.i = load ptr, ptr %26, align 8, !tbaa !75 ; 19 uses
  %i.anb = icmp eq ptr %.pr.pre.i.i150.i, null    ; 4 uses
  br i1 %i.anb, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i:        ; preds = %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i
  %i.anc = getelementptr inbounds i8, ptr %.pr.pre.i.i150.i, i64 -4
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !26 ; 4 uses
  %i.ane = shl i32 %i.and, 5                      ; 9 uses
  %i.anf = zext i32 %i.ane to i64
  %i.ang = shl nuw i64 %i.anf, 32                 ; 3 uses
  %.not1554.i = icmp eq i32 %i.and, 0
  br i1 %.not1554.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZNK8uint_set8iterator8containsEv.exit.i464.i

_ZNK8uint_set8iterator8containsEv.exit.i464.i:    ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i
  %i.anh = load i32, ptr %.pr.pre.i.i150.i, align 4, !tbaa !26
  %i.ani = trunc i32 %i.anh to i1
  %i.anj = icmp eq i32 %i.ane, 0
  %or.cond.i465.i = or i1 %i.anj, %i.ani
  br i1 %or.cond.i465.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %.lr.ph.i4.i441.i.preheader

.lr.ph.i4.i441.i.preheader:                       ; preds = %_ZNK8uint_set8iterator8containsEv.exit.i464.i
  %i.ank = add i32 %i.ane, -32
  %i.anl = lshr exact i32 %i.ank, 5
  %i.anm = add nuw nsw i32 %i.anl, 1
  %wide.trip.count = zext nneg i32 %i.anm to i64
  br label %.lr.ph.i4.i441.i

.lr.ph.i4.i441.i:                                 ; preds = %.lr.ph.i4.i441.i.preheader, %bb.ha
  %indvars.iv760 = phi i64 [ 0, %.lr.ph.i4.i441.i.preheader ], [ %indvars.iv.next761, %bb.ha ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.i4.i441.i.preheader ], [ %indvars.iv.next, %bb.ha ] ; 2 uses
  %.sroa.5259.6.i = phi i64 [ %i.ang, %.lr.ph.i4.i441.i.preheader ], [ %.sroa.5259.8.insert.insert283.i, %bb.ha ] ; 3 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %indvars.iv
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !26
  %.not.i5.i443.i = icmp eq i32 %i.ano, 0
  br i1 %.not.i5.i443.i, label %bb.ha, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i

bb.ha:                                            ; preds = %.lr.ph.i4.i441.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 32 ; 2 uses
  %.sroa.5259.8.insert.ext281.i = and i64 %indvars.iv.next761, 4294967264
  %.sroa.5259.8.insert.mask282.i = and i64 %.sroa.5259.6.i, -4294967296
  %.sroa.5259.8.insert.insert283.i = or disjoint i64 %.sroa.5259.8.insert.mask282.i, %.sroa.5259.8.insert.ext281.i ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %.lr.ph.i4.i441.i, !llvm.loop !151

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i:      ; preds = %.lr.ph.i4.i441.i
  %47 = trunc nuw i64 %indvars.iv760 to i32       ; 3 uses
  %i.anp = lshr exact i32 %47, 5                  ; 2 uses
  %i.anq = icmp ult i32 %i.anp, %i.and
  br i1 %i.anq, label %_ZNK8uint_set8iterator8containsEv.exit8.i456.i, label %bb.hb

_ZNK8uint_set8iterator8containsEv.exit8.i456.i:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i
  %i.anr = zext nneg i32 %i.anp to i64
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.anr
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !26
  %i.anu = and i32 %i.ant, 1
  %.not.i457.i = icmp eq i32 %i.anu, 0
  br i1 %.not.i457.i, label %bb.hb, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader

bb.hb:                                            ; preds = %_ZNK8uint_set8iterator8containsEv.exit8.i456.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i445.i
  %i.anv = or disjoint i32 %47, 1                 ; 2 uses
  %.sroa.5259.8.insert.ext265.i = zext i32 %i.anv to i64
  %.sroa.5259.8.insert.mask266.i = and i64 %.sroa.5259.6.i, -4294967296
  %.sroa.5259.8.insert.insert267.i = or disjoint i64 %.sroa.5259.8.insert.mask266.i, %.sroa.5259.8.insert.ext265.i
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader: ; preds = %bb.hb, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i
  %.sroa.5259.9.i.ph = phi i64 [ %.sroa.5259.8.insert.insert267.i, %bb.hb ], [ %.sroa.5259.6.i, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i ]
  %.ph1871 = phi i32 [ %i.anv, %bb.hb ], [ %47, %_ZNK8uint_set8iterator8containsEv.exit8.i456.i ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i:     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader, %bb.hc
  %.sroa.5259.9.i = phi i64 [ %.sroa.5259.8.insert.insert271.i, %bb.hc ], [ %.sroa.5259.9.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader ] ; 3 uses
  %i.anw = phi i32 [ %i.aog, %bb.hc ], [ %.ph1871, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i.preheader ] ; 4 uses
  %i.anx = lshr i32 %i.anw, 5                     ; 2 uses
  %i.any = icmp ult i32 %i.anx, %i.and
  br i1 %i.any, label %_ZNK8uint_set8containsEj.exit.i15.i453.i, label %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i

_ZNK8uint_set8containsEj.exit.i15.i453.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i
  %i.anz = zext nneg i32 %i.anx to i64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.anz
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !26
  %i.aoc = and i32 %i.anw, 31                     ; 2 uses
  %i.aod = shl nuw i32 1, %i.aoc
  %i.aoe = and i32 %i.aob, %i.aod
  %i.aof = icmp ne i32 %i.aoe, 0
  %.not.i16.i454.i = icmp eq i32 %i.aoc, 0
  %or.cond.i17.i455.i = or i1 %.not.i16.i454.i, %i.aof
  br i1 %or.cond.i17.i455.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %bb.hc

_ZNK8uint_set8containsEj.exit.thread.i12.i450.i:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i
  %.old.i13.i451.i = and i32 %i.anw, 31
  %.not.old.i14.i452.i = icmp eq i32 %.old.i13.i451.i, 0
  br i1 %.not.old.i14.i452.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %bb.hc

bb.hc:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i, %_ZNK8uint_set8containsEj.exit.i15.i453.i
  %i.aog = add i32 %i.anw, 1                      ; 3 uses
  %.sroa.5259.8.insert.ext269.i = zext i32 %i.aog to i64
  %.sroa.5259.8.insert.mask270.i = and i64 %.sroa.5259.9.i, -4294967296
  %.sroa.5259.8.insert.insert271.i = or disjoint i64 %.sroa.5259.8.insert.mask270.i, %.sroa.5259.8.insert.ext269.i ; 2 uses
  %i.aoh = icmp eq i32 %i.aog, %i.ane
  br i1 %i.aoh, label %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i449.i, !llvm.loop !150

_ZN8uint_set8iterator8scan_idxEv.exit.i482.i:     ; preds = %bb.ha, %_ZNK8uint_set8containsEj.exit.i15.i453.i, %bb.hc, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i, %_ZNK8uint_set8iterator8containsEv.exit.i464.i, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i
  %.sroa.5259.10391.i = phi i64 [ 0, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i ], [ %i.ang, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i ], [ %i.ang, %_ZNK8uint_set8iterator8containsEv.exit.i464.i ], [ %.sroa.5259.9.i, %_ZNK8uint_set8containsEj.exit.i15.i453.i ], [ %.sroa.5259.9.i, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i ], [ %.sroa.5259.8.insert.insert271.i, %bb.hc ], [ %.sroa.5259.8.insert.insert283.i, %bb.ha ] ; 2 uses
  %.sink.i162.i = phi i32 [ 0, %_ZNK4heapIN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS1_4softELb1EjER8rationalE11neg_literalE14compare_degreeEE8containsEi.exit.i ], [ 0, %_ZN8uint_set8iteratorC2ERKS_b.exit.i151.i ], [ %i.ane, %_ZNK8uint_set8iterator8containsEv.exit.i464.i ], [ %i.ane, %_ZNK8uint_set8containsEj.exit.i15.i453.i ], [ %i.ane, %_ZNK8uint_set8containsEj.exit.thread.i12.i450.i ], [ %i.ane, %bb.hc ], [ %i.ane, %bb.ha ] ; 2 uses
  %.sroa.5158.8.extract.trunc720.i = trunc i64 %.sroa.5259.10391.i to i32 ; 2 uses
  %.not460721.i = icmp eq i32 %.sink.i162.i, %.sroa.5158.8.extract.trunc720.i
  br i1 %.not460721.i, label %._crit_edge725.i, label %.lr.ph724.i

.lr.ph724.i:                                      ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i482.i
  %i.aoi = load i32, ptr %i.cc, align 8, !tbaa !78 ; 3 uses
  %i.aoj = add i32 %i.aoi, -1
  %i.aok = and i32 %i.aoj, %i.amr                 ; 2 uses
  %i.aol = load ptr, ptr %37, align 8, !tbaa !92  ; 3 uses
  %i.aom = zext i32 %i.aok to i64
  %.idx.i.i.i.i170.i = mul nuw nsw i64 %i.aom, 24
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 %.idx.i.i.i.i170.i
  %i.aoo = zext i32 %i.aoi to i64
  %i.aop = getelementptr inbounds nuw [24 x i8], ptr %i.aol, i64 %i.aoo
  %.not30.i.i.i.i171.i = icmp eq i32 %i.aok, %i.aoi
  %i.aoq = getelementptr inbounds i8, ptr %.pr.pre.i.i150.i, i64 -4 ; 3 uses
  br label %bb.he

bb.hd:                                            ; preds = %bb.ib, %bb.hv
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %.body405.i

bb.he:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit188.i, %.lr.ph724.i
  %.sroa.5158.8.extract.trunc723.i = phi i32 [ %.sroa.5158.8.extract.trunc720.i, %.lr.ph724.i ], [ %.sroa.5158.8.extract.trunc.i, %_ZN8uint_set8iteratorppEv.exit188.i ] ; 2 uses
  %.sroa.5158.0722.i = phi i64 [ %.sroa.5259.10391.i, %.lr.ph724.i ], [ %.sroa.5158.11.i, %_ZN8uint_set8iteratorppEv.exit188.i ] ; 3 uses
  br i1 %.not30.i.i.i.i171.i, label %.lr.ph34.i.i.i.i178.i.preheader, label %.lr.ph.i.i.i.i172.i

.lr.ph.i.i.i.i172.i:                              ; preds = %bb.he, %bb.hh
  %.031.i.i.i.i173.i = phi ptr [ %i.aoz, %bb.hh ], [ %i.aon, %bb.he ] ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 4
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !91
  %cond.i.i174.i = icmp eq i32 %i.aot, 2
  br i1 %cond.i.i174.i, label %bb.hf, label %bb.hh

bb.hf:                                            ; preds = %.lr.ph.i.i.i.i172.i
  %i.aou = load i32, ptr %.031.i.i.i.i173.i, align 8, !tbaa !86
  %i.aov = icmp eq i32 %i.aou, %i.amr
  br i1 %i.aov, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.aow = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 8
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !128
  %i.aoy = icmp eq i32 %i.aox, %i.amr
  br i1 %i.aoy, label %.loopexit488.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %.lr.ph.i.i.i.i172.i
  %i.aoz = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i173.i, i64 24 ; 2 uses
  %.not.i.i.i.i175.i = icmp eq ptr %i.aoz, %i.aop
  br i1 %.not.i.i.i.i175.i, label %.lr.ph34.i.i.i.i178.i.preheader, label %.lr.ph.i.i.i.i172.i, !llvm.loop !129

.lr.ph34.i.i.i.i178.i.preheader:                  ; preds = %bb.hh, %bb.he
  br label %.lr.ph34.i.i.i.i178.i

.lr.ph34.i.i.i.i178.i:                            ; preds = %.lr.ph34.i.i.i.i178.i.preheader, %bb.hk
  %.133.i.i.i.i180.i = phi ptr [ %i.aph, %bb.hk ], [ %i.aol, %.lr.ph34.i.i.i.i178.i.preheader ] ; 5 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 4
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !91
  %cond4.i.i181.i = icmp eq i32 %i.apb, 2
  br i1 %cond4.i.i181.i, label %bb.hi, label %bb.hk

bb.hi:                                            ; preds = %.lr.ph34.i.i.i.i178.i
  %i.apc = load i32, ptr %.133.i.i.i.i180.i, align 8, !tbaa !86
  %i.apd = icmp eq i32 %i.apc, %i.amr
  br i1 %i.apd, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ape = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 8
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !128
  %i.apg = icmp eq i32 %i.apf, %i.amr
  br i1 %i.apg, label %.loopexit488.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %.lr.ph34.i.i.i.i178.i
  %i.aph = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i180.i, i64 24
  br label %.lr.ph34.i.i.i.i178.i

.loopexit488.i:                                   ; preds = %bb.hg, %bb.hj
  %.026.i.i.i.i183.i = phi ptr [ %.133.i.i.i.i180.i, %bb.hj ], [ %.031.i.i.i.i173.i, %bb.hg ]
  %i.api = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i183.i, i64 16
  %i.apj = lshr i32 %.sroa.5158.8.extract.trunc723.i, 5 ; 2 uses
  %i.apk = load ptr, ptr %i.api, align 8, !tbaa !75 ; 3 uses
  %i.apl = icmp eq ptr %i.apk, null
  br i1 %i.apl, label %.thread401.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i:           ; preds = %.loopexit488.i
  %i.apm = getelementptr inbounds i8, ptr %i.apk, i64 -4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !26
  %i.apo = icmp ult i32 %i.apj, %i.apn
  br i1 %i.apo, label %_ZNK8uint_set8containsEj.exit186.i, label %.thread401.i

_ZNK8uint_set8containsEj.exit186.i:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i
  %i.app = zext nneg i32 %i.apj to i64
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.apk, i64 %i.app
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !26
  %i.aps = and i32 %.sroa.5158.8.extract.trunc723.i, 31
  %i.apt = shl nuw i32 1, %i.aps
  %i.apu = and i32 %i.apr, %i.apt
  %.not461.i = icmp eq i32 %i.apu, 0
  br i1 %.not461.i, label %.thread401.i, label %bb.hl

bb.hl:                                            ; preds = %_ZNK8uint_set8containsEj.exit186.i
  %i.apv = add i64 %.sroa.5158.0722.i, 1          ; 2 uses
  %.sroa.5158.8.insert.ext.i = and i64 %i.apv, 4294967295
  %.sroa.5158.8.insert.mask.i = and i64 %.sroa.5158.0722.i, -4294967296
  %.sroa.5158.8.insert.insert.i = or disjoint i64 %.sroa.5158.8.insert.ext.i, %.sroa.5158.8.insert.mask.i ; 3 uses
  %.sroa.5158.12.extract.shift.i = lshr i64 %.sroa.5158.0722.i, 32
  %.sroa.5158.12.extract.trunc.i = trunc nuw i64 %.sroa.5158.12.extract.shift.i to i32 ; 15 uses
  %.sroa.5158.8.extract.trunc164.i = trunc i64 %i.apv to i32 ; 3 uses
  %i.apw = icmp eq i32 %.sroa.5158.8.extract.trunc164.i, %.sroa.5158.12.extract.trunc.i
  br i1 %i.apw, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %.lr.ph.i.i522.i

.lr.ph.i.i522.i:                                  ; preds = %bb.hl
  br i1 %i.anb, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i: ; preds = %.lr.ph.i.i522.i
  %i.apx = load i32, ptr %i.aoq, align 4, !tbaa !26 ; 4 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i

_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i: ; preds = %.lr.ph.i.i522.i, %bb.hm
  %.sroa.5158.1.i = phi i64 [ %.sroa.5158.8.insert.insert192.i, %bb.hm ], [ %.sroa.5158.8.insert.insert.i, %.lr.ph.i.i522.i ] ; 2 uses
  %i.apy = phi i32 [ %i.apz, %bb.hm ], [ %.sroa.5158.8.extract.trunc164.i, %.lr.ph.i.i522.i ] ; 3 uses
  %.old.us.i.i561.i = and i32 %i.apy, 31
  %.not.old.us.i.i562.i = icmp eq i32 %.old.us.i.i561.i, 0
  br i1 %.not.old.us.i.i562.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %bb.hm

bb.hm:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i
  %i.apz = add i32 %i.apy, 1                      ; 3 uses
  %.sroa.5158.8.insert.ext190.i = zext i32 %i.apz to i64
  %.sroa.5158.8.insert.mask191.i = and i64 %.sroa.5158.1.i, -4294967296
  %.sroa.5158.8.insert.insert192.i = or disjoint i64 %.sroa.5158.8.insert.mask191.i, %.sroa.5158.8.insert.ext190.i ; 2 uses
  %i.aqa = icmp eq i32 %i.apz, %.sroa.5158.12.extract.trunc.i
  br i1 %i.aqa, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i, !llvm.loop !150

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i:       ; preds = %bb.hn, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i
  %.sroa.5158.2.i = phi i64 [ %.sroa.5158.8.insert.insert168.i, %bb.hn ], [ %.sroa.5158.8.insert.insert.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i ] ; 3 uses
  %i.aqb = phi i32 [ %i.aql, %bb.hn ], [ %.sroa.5158.8.extract.trunc164.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.preheader.i ] ; 6 uses
  %i.aqc = lshr i32 %i.aqb, 5                     ; 4 uses
  %i.aqd = icmp ult i32 %i.aqc, %i.apx
  br i1 %i.aqd, label %_ZNK8uint_set8containsEj.exit.i.i556.i, label %_ZNK8uint_set8containsEj.exit.thread.i.i524.i

_ZNK8uint_set8containsEj.exit.i.i556.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i
  %i.aqe = zext nneg i32 %i.aqc to i64
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !26
  %i.aqh = and i32 %i.aqb, 31                     ; 2 uses
  %i.aqi = shl nuw i32 1, %i.aqh
  %i.aqj = and i32 %i.aqg, %i.aqi
  %i.aqk = icmp ne i32 %i.aqj, 0
  %.not.i.i557.i = icmp eq i32 %i.aqh, 0
  %or.cond.i.i558.i = or i1 %.not.i.i557.i, %i.aqk
  br i1 %or.cond.i.i558.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i, label %bb.hn

_ZNK8uint_set8containsEj.exit.thread.i.i524.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i
  %.old.i.i525.i = and i32 %i.aqb, 31
  %.not.old.i.i526.i = icmp eq i32 %.old.i.i525.i, 0
  br i1 %.not.old.i.i526.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i, label %bb.hn

bb.hn:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i524.i, %_ZNK8uint_set8containsEj.exit.i.i556.i
  %i.aql = add i32 %i.aqb, 1                      ; 3 uses
  %.sroa.5158.8.insert.ext166.i = zext i32 %i.aql to i64
  %.sroa.5158.8.insert.mask167.i = and i64 %.sroa.5158.2.i, -4294967296
  %.sroa.5158.8.insert.insert168.i = or disjoint i64 %.sroa.5158.8.insert.mask167.i, %.sroa.5158.8.insert.ext166.i ; 2 uses
  %i.aqm = icmp eq i32 %i.aql, %.sroa.5158.12.extract.trunc.i
  br i1 %i.aqm, label %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i523.i, !llvm.loop !150

._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i: ; preds = %bb.hn
  %.pre997.i = lshr i32 %.sroa.5158.12.extract.trunc.i, 5
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i, !llvm.loop !150

_ZN8uint_set8iterator8scan_idxEv.exit.i527.i:     ; preds = %bb.hm, %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i, %bb.hl
  %.sroa.5158.3.i = phi i64 [ %.sroa.5158.8.insert.insert.i, %bb.hl ], [ %.sroa.5158.1.i, %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i ], [ %.sroa.5158.8.insert.insert192.i, %bb.hm ] ; 2 uses
  %i.aqn = phi i32 [ %.sroa.5158.12.extract.trunc.i, %bb.hl ], [ %i.apy, %_ZNK8uint_set8containsEj.exit.thread.us.i.i560.i ], [ %.sroa.5158.12.extract.trunc.i, %bb.hm ] ; 3 uses
  %i.aqo = lshr i32 %i.aqn, 5                     ; 2 uses
  br i1 %i.anb, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i529.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i

_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i: ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i
  %.pre970.i = load i32, ptr %i.aoq, align 4, !tbaa !26
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i:      ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i524.i, %_ZNK8uint_set8containsEj.exit.i.i556.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i
  %i.aqp = phi i32 [ %.pre970.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i ], [ %i.apx, %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i ], [ %i.apx, %_ZNK8uint_set8containsEj.exit.i.i556.i ], [ %i.apx, %_ZNK8uint_set8containsEj.exit.thread.i.i524.i ]
  %.sroa.5158.4.i = phi i64 [ %.sroa.5158.3.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i ], [ %.sroa.5158.8.insert.insert168.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i ], [ %.sroa.5158.2.i, %_ZNK8uint_set8containsEj.exit.i.i556.i ], [ %.sroa.5158.2.i, %_ZNK8uint_set8containsEj.exit.thread.i.i524.i ] ; 3 uses
  %i.aqq = phi i32 [ %i.aqo, %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i ], [ %.pre997.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i ], [ %i.aqc, %_ZNK8uint_set8containsEj.exit.i.i556.i ], [ %i.aqc, %_ZNK8uint_set8containsEj.exit.thread.i.i524.i ] ; 4 uses
  %i.aqr = phi i32 [ %i.aqn, %_ZN8uint_set8iterator8scan_idxEv.exit.i527._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528_crit_edge.i ], [ %.sroa.5158.12.extract.trunc.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i527.thread_crit_edge.i ], [ %i.aqb, %_ZNK8uint_set8containsEj.exit.i.i556.i ], [ %i.aqb, %_ZNK8uint_set8containsEj.exit.thread.i.i524.i ] ; 4 uses
  %i.aqs = icmp ult i32 %i.aqq, %i.aqp
  br i1 %i.aqs, label %_ZNK8uint_set8iterator8containsEv.exit.i554.i, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i529.i

_ZNK8uint_set8iterator8containsEv.exit.i554.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i
  %i.aqt = zext nneg i32 %i.aqq to i64
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i150.i, i64 %i.aqt
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !26
  %i.aqw = and i32 %i.aqr, 31
  %i.aqx = shl nuw i32 1, %i.aqw
  %i.aqy = and i32 %i.aqv, %i.aqx
  %i.aqz = icmp ne i32 %i.aqy, 0
  %i.ara = icmp eq i32 %i.aqr, %.sroa.5158.12.extract.trunc.i
  %or.cond.i555.i = or i1 %i.ara, %i.aqz
  br i1 %or.cond.i555.i, label %_ZN8uint_set8iteratorppEv.exit188.i, label %.lr.ph.i4.i531.i

_ZNK8uint_set8iterator8containsEv.exit.thread.i529.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i528.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i527.i
end_hunk_0
begin_hunk_1_@_ZN3opt10preprocess12prop_mutexesER6vectorINS_4softELb1EjER8rational:bb.a

_ZN8uint_set6insertEj.exit203.i:                  ; preds = %.lr.ph.preheader.i.i198.i, %bb.id, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i189.i
  %i.auj = phi ptr [ %i.asu, %.lr.ph.preheader.i.i198.i ], [ %i.asu, %bb.id ], [ %.pr.pre.i.i150.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i189.i ] ; 2 uses
  %i.auk = and i32 %i.amr, 31
  %i.aul = shl nuw i32 1, %i.auk
  %i.aum = zext nneg i32 %i.asr to i64
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.auj, i64 %i.aum ; 2 uses
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !26
  %i.aup = or i32 %i.auo, %i.aul
  store i32 %i.aup, ptr %i.aun, align 4, !tbaa !26
  br label %.thread401.i

.thread401.i:                                     ; preds = %_ZNK8uint_set8containsEj.exit186.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i, %.loopexit488.i, %_ZN8uint_set6insertEj.exit203.i, %._crit_edge725.i
  %i.auq = phi ptr [ %.pr.pre.i.i150.i, %._crit_edge725.i ], [ %i.auj, %_ZN8uint_set6insertEj.exit203.i ], [ %.pr.pre.i.i150.i, %.loopexit488.i ], [ %.pr.pre.i.i150.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i185.i ], [ %.pr.pre.i.i150.i, %_ZNK8uint_set8containsEj.exit186.i ]
  %i.aur = getelementptr inbounds nuw i8, ptr %.051727.i, i64 4 ; 2 uses
  %.not78.i = icmp eq ptr %i.aur, %i.akt
  br i1 %.not78.i, label %._crit_edge729.i, label %.lr.ph728.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i:        ; preds = %.lr.ph.preheader.i.i143.i, %bb.gw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i
  %.pr.pre.i.i204.i = phi ptr [ %i.alb, %.lr.ph.preheader.i.i143.i ], [ %i.alb, %bb.gw ], [ %i.akw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i134.i ] ; 2 uses
  %i.aus = and i32 %.val104.val.i, 31
  %i.aut = shl nuw i32 1, %i.aus
  %i.auu = zext nneg i32 %i.akx to i64
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i204.i, i64 %i.auu ; 2 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !26
  %i.aux = or i32 %i.auw, %i.aut
  store i32 %i.aux, ptr %i.auv, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %26, ptr %22, align 8, !tbaa !135
  store i32 0, ptr %i.ra, align 8, !tbaa !138
  %i.auy = getelementptr inbounds i8, ptr %.pr.pre.i.i204.i, i64 -4
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !26
  %i.ava = shl i32 %i.auz, 5
  store i32 %i.ava, ptr %i.rb, align 4, !tbaa !139
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.ie unwind label %bb.ih

bb.ie:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i
  %.fca.0.load.i207.i = load ptr, ptr %22, align 8
  %.fca.1.load.i209.i = load i64, ptr %i.ra, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %26, ptr %21, align 8, !tbaa !135
  %.pr.pre.i.i213.i = load ptr, ptr %26, align 8, !tbaa !75 ; 2 uses
  %i.avb = icmp eq ptr %.pr.pre.i.i213.i, null
  br i1 %i.avb, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i, label %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i

_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i: ; preds = %bb.ie
  %i.avc = getelementptr inbounds i8, ptr %.pr.pre.i.i213.i, i64 -4
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !26
  %i.ave = shl i32 %i.avd, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i:        ; preds = %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i, %bb.ie
  %.sink.i216.i = phi i32 [ %i.ave, %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i214.i ], [ 0, %bb.ie ] ; 2 uses
  store i32 %.sink.i216.i, ptr %i.rc, align 8, !tbaa !138
  store i32 %.sink.i216.i, ptr %i.rd, align 4, !tbaa !139
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.if unwind label %bb.ii

bb.if:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i
  %.fca.1.load.i220.i = load i64, ptr %i.rc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %.sroa.4118.8.extract.trunc.i = trunc i64 %.fca.1.load.i220.i to i32 ; 2 uses
  %.sroa.5120.8.extract.trunc736.i = trunc i64 %.fca.1.load.i209.i to i32 ; 2 uses
  %.not462737.i = icmp eq i32 %.sroa.5120.8.extract.trunc736.i, %.sroa.4118.8.extract.trunc.i
  br i1 %.not462737.i, label %._crit_edge740.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i:     ; preds = %bb.if
  %i.avf = load ptr, ptr %37, align 8, !tbaa !92  ; 6 uses
  %.val106.i = load ptr, ptr %i.pr, align 8       ; 5 uses
  %i.avg = icmp eq ptr %.val106.i, null
  %i.avh = getelementptr inbounds i8, ptr %.val106.i, i64 -4
  %.pre26.i671.i = load ptr, ptr %.fca.0.load.i207.i, align 8, !tbaa !75 ; 7 uses
  %i.avi = icmp eq ptr %.pre26.i671.i, null       ; 2 uses
  %i.avj = getelementptr inbounds i8, ptr %.pre26.i671.i, i64 -4 ; 3 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i

._crit_edge740.i:                                 ; preds = %_ZN8uint_set8iteratorppEv.exit270.i, %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %26, ptr %20, align 8, !tbaa !135
  %.pr.pre.i.i224.i = load ptr, ptr %26, align 8, !tbaa !75 ; 2 uses
  store i32 0, ptr %i.re, align 8, !tbaa !138
  %i.avk = icmp eq ptr %.pr.pre.i.i224.i, null
  br i1 %i.avk, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i, label %bb.ig

bb.ig:                                            ; preds = %._crit_edge740.i
  %i.avl = getelementptr inbounds i8, ptr %.pr.pre.i.i224.i, i64 -4
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !26
  %i.avn = shl i32 %i.avm, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i225.i:        ; preds = %bb.ig, %._crit_edge740.i
  %.0.i.i4.i.i226.i = phi i32 [ %i.avn, %bb.ig ], [ 0, %._crit_edge740.i ]
  store i32 %.0.i.i4.i.i226.i, ptr %i.rf, align 4, !tbaa !139
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.kh unwind label %bb.kj

bb.ih:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i205.i
  %i.avo = landingpad { ptr, i32 }
          cleanup
  br label %.body405.i

bb.ii:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i215.i
  %i.avp = landingpad { ptr, i32 }
          cleanup
  br label %.body405.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i:           ; preds = %_ZN8uint_set8iteratorppEv.exit270.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i
  %.sroa.5120.8.extract.trunc739.i = phi i32 [ %.sroa.5120.8.extract.trunc736.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i ], [ %.sroa.5120.8.extract.trunc.i, %_ZN8uint_set8iteratorppEv.exit270.i ] ; 8 uses
  %.sroa.5120.0738.i = phi i64 [ %.fca.1.load.i209.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.lr.ph.i ], [ %.sroa.5120.11.i, %_ZN8uint_set8iteratorppEv.exit270.i ] ; 3 uses
  %i.avq = lshr i32 %.sroa.5120.8.extract.trunc739.i, 5 ; 4 uses
  %i.avr = load i32, ptr %i.qv, align 4, !tbaa !26
  %i.avs = icmp ult i32 %i.avq, %i.avr
  br i1 %i.avs, label %bb.ij, label %_ZN8uint_set6removeEj.exit.i

bb.ij:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i
  %i.avt = and i32 %.sroa.5120.8.extract.trunc739.i, 31
  %i.avu = shl nuw i32 1, %i.avt
  %i.avv = xor i32 %i.avu, -1
  %i.avw = zext nneg i32 %i.avq to i64
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0245.4.i, i64 %i.avw ; 2 uses
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !26
  %i.avz = and i32 %i.avy, %i.avv
  store i32 %i.avz, ptr %i.avx, align 4, !tbaa !26
  br label %_ZN8uint_set6removeEj.exit.i

_ZN8uint_set6removeEj.exit.i:                     ; preds = %bb.ij, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i233.i
  %i.awa = load i32, ptr %i.cc, align 8, !tbaa !78 ; 3 uses
  %i.awb = add i32 %i.awa, -1
  %i.awc = and i32 %i.awb, %.sroa.5120.8.extract.trunc739.i ; 2 uses
  %i.awd = zext i32 %i.awa to i64
  %i.awe = getelementptr inbounds nuw [24 x i8], ptr %i.avf, i64 %i.awd
  %.not30.i.i.i.i235.i = icmp eq i32 %i.awc, %i.awa
  br i1 %.not30.i.i.i.i235.i, label %.lr.ph34.i.i.i.i242.i.preheader, label %.lr.ph.i.i.i.i236.i.preheader

.lr.ph.i.i.i.i236.i.preheader:                    ; preds = %_ZN8uint_set6removeEj.exit.i
  %i.awf = zext i32 %i.awc to i64
  %.idx.i.i.i.i234.i = mul nuw nsw i64 %i.awf, 24
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avf, i64 %.idx.i.i.i.i234.i
  br label %.lr.ph.i.i.i.i236.i

.lr.ph.i.i.i.i236.i:                              ; preds = %.lr.ph.i.i.i.i236.i.preheader, %bb.im
  %.031.i.i.i.i237.i = phi ptr [ %i.awo, %bb.im ], [ %i.awg, %.lr.ph.i.i.i.i236.i.preheader ] ; 5 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 4
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !91
  %cond.i.i238.i = icmp eq i32 %i.awi, 2
  br i1 %cond.i.i238.i, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %.lr.ph.i.i.i.i236.i
  %i.awj = load i32, ptr %.031.i.i.i.i237.i, align 8, !tbaa !86
  %i.awk = icmp eq i32 %i.awj, %.sroa.5120.8.extract.trunc739.i
  br i1 %i.awk, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.awl = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 8
  %i.awm = load i32, ptr %i.awl, align 8, !tbaa !128
  %i.awn = icmp eq i32 %i.awm, %.sroa.5120.8.extract.trunc739.i
  br i1 %i.awn, label %.loopexit515.i, label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik, %.lr.ph.i.i.i.i236.i
  %i.awo = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i237.i, i64 24 ; 2 uses
  %.not.i.i.i.i239.i = icmp eq ptr %i.awo, %i.awe
  br i1 %.not.i.i.i.i239.i, label %.lr.ph34.i.i.i.i242.i.preheader, label %.lr.ph.i.i.i.i236.i, !llvm.loop !129

.lr.ph34.i.i.i.i242.i.preheader:                  ; preds = %bb.im, %_ZN8uint_set6removeEj.exit.i
  br label %.lr.ph34.i.i.i.i242.i

.lr.ph34.i.i.i.i242.i:                            ; preds = %.lr.ph34.i.i.i.i242.i.preheader, %bb.ip
  %.133.i.i.i.i244.i = phi ptr [ %i.aww, %bb.ip ], [ %i.avf, %.lr.ph34.i.i.i.i242.i.preheader ] ; 5 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 4
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !91
  %cond4.i.i245.i = icmp eq i32 %i.awq, 2
  br i1 %cond4.i.i245.i, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %.lr.ph34.i.i.i.i242.i
  %i.awr = load i32, ptr %.133.i.i.i.i244.i, align 8, !tbaa !86
  %i.aws = icmp eq i32 %i.awr, %.sroa.5120.8.extract.trunc739.i
  br i1 %i.aws, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.awt = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 8
  %i.awu = load i32, ptr %i.awt, align 8, !tbaa !128
  %i.awv = icmp eq i32 %i.awu, %.sroa.5120.8.extract.trunc739.i
  br i1 %i.awv, label %.loopexit515.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %.lr.ph34.i.i.i.i242.i
  %i.aww = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i244.i, i64 24
  br label %.lr.ph34.i.i.i.i242.i

.loopexit515.i:                                   ; preds = %bb.il, %bb.io
  %.026.i.i.i.i247.i = phi ptr [ %.133.i.i.i.i244.i, %bb.io ], [ %.031.i.i.i.i237.i, %bb.il ]
  %i.awx = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i247.i, i64 16
  %.pr.pre.i.i249.i = load ptr, ptr %i.awx, align 8, !tbaa !75 ; 12 uses
  %i.awy = icmp eq ptr %.pr.pre.i.i249.i, null    ; 3 uses
  br i1 %i.awy, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i:        ; preds = %.loopexit515.i
  %i.awz = getelementptr inbounds i8, ptr %.pr.pre.i.i249.i, i64 -4
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !26 ; 4 uses
  %i.axb = shl i32 %i.axa, 5                      ; 9 uses
  %i.axc = zext i32 %i.axb to i64
  %i.axd = shl nuw i64 %i.axc, 32                 ; 3 uses
  %.not1555.i = icmp eq i32 %i.axa, 0
  br i1 %.not1555.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZNK8uint_set8iterator8containsEv.exit.i614.i

_ZNK8uint_set8iterator8containsEv.exit.i614.i:    ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i
  %i.axe = load i32, ptr %.pr.pre.i.i249.i, align 4, !tbaa !26
  %i.axf = trunc i32 %i.axe to i1
  %i.axg = icmp eq i32 %i.axb, 0
  %or.cond.i615.i = or i1 %i.axg, %i.axf
  br i1 %or.cond.i615.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %.lr.ph.i4.i591.i.preheader

.lr.ph.i4.i591.i.preheader:                       ; preds = %_ZNK8uint_set8iterator8containsEv.exit.i614.i
  %i.axh = add i32 %i.axb, -32
  %i.axi = lshr exact i32 %i.axh, 5
  %i.axj = add nuw nsw i32 %i.axi, 1
  %wide.trip.count772 = zext nneg i32 %i.axj to i64
  br label %.lr.ph.i4.i591.i

.lr.ph.i4.i591.i:                                 ; preds = %.lr.ph.i4.i591.i.preheader, %bb.iq
  %indvars.iv767 = phi i64 [ 0, %.lr.ph.i4.i591.i.preheader ], [ %indvars.iv.next768, %bb.iq ] ; 2 uses
  %indvars.iv765 = phi i64 [ 0, %.lr.ph.i4.i591.i.preheader ], [ %indvars.iv.next766, %bb.iq ] ; 2 uses
  %.sroa.5320.6.i = phi i64 [ %i.axd, %.lr.ph.i4.i591.i.preheader ], [ %.sroa.5320.8.insert.insert344.i, %bb.iq ] ; 3 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %indvars.iv765
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !26
  %.not.i5.i593.i = icmp eq i32 %i.axl, 0
  br i1 %.not.i5.i593.i, label %bb.iq, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i

bb.iq:                                            ; preds = %.lr.ph.i4.i591.i
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1 ; 2 uses
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 32 ; 2 uses
  %.sroa.5320.8.insert.ext342.i = and i64 %indvars.iv.next768, 4294967264
  %.sroa.5320.8.insert.mask343.i = and i64 %.sroa.5320.6.i, -4294967296
  %.sroa.5320.8.insert.insert344.i = or disjoint i64 %.sroa.5320.8.insert.mask343.i, %.sroa.5320.8.insert.ext342.i ; 2 uses
  %exitcond773 = icmp eq i64 %indvars.iv.next766, %wide.trip.count772
  br i1 %exitcond773, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %.lr.ph.i4.i591.i, !llvm.loop !151

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i:      ; preds = %.lr.ph.i4.i591.i
  %48 = trunc nuw i64 %indvars.iv767 to i32       ; 3 uses
  %i.axm = lshr exact i32 %48, 5                  ; 2 uses
  %i.axn = icmp ult i32 %i.axm, %i.axa
  br i1 %i.axn, label %_ZNK8uint_set8iterator8containsEv.exit8.i606.i, label %bb.ir

_ZNK8uint_set8iterator8containsEv.exit8.i606.i:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i
  %i.axo = zext nneg i32 %i.axm to i64
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %i.axo
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !26
  %i.axr = and i32 %i.axq, 1
  %.not.i607.i = icmp eq i32 %i.axr, 0
  br i1 %.not.i607.i, label %bb.ir, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader

bb.ir:                                            ; preds = %_ZNK8uint_set8iterator8containsEv.exit8.i606.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i595.i
  %i.axs = or disjoint i32 %48, 1                 ; 2 uses
  %.sroa.5320.8.insert.ext326.i = zext i32 %i.axs to i64
  %.sroa.5320.8.insert.mask327.i = and i64 %.sroa.5320.6.i, -4294967296
  %.sroa.5320.8.insert.insert328.i = or disjoint i64 %.sroa.5320.8.insert.mask327.i, %.sroa.5320.8.insert.ext326.i
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader: ; preds = %bb.ir, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i
  %.sroa.5320.9.i.ph = phi i64 [ %.sroa.5320.8.insert.insert328.i, %bb.ir ], [ %.sroa.5320.6.i, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i ]
  %.ph1866 = phi i32 [ %i.axs, %bb.ir ], [ %48, %_ZNK8uint_set8iterator8containsEv.exit8.i606.i ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i:     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader, %bb.is
  %.sroa.5320.9.i = phi i64 [ %.sroa.5320.8.insert.insert332.i, %bb.is ], [ %.sroa.5320.9.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader ] ; 3 uses
  %i.axt = phi i32 [ %i.ayd, %bb.is ], [ %.ph1866, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i.preheader ] ; 4 uses
  %i.axu = lshr i32 %i.axt, 5                     ; 2 uses
  %i.axv = icmp ult i32 %i.axu, %i.axa
  br i1 %i.axv, label %_ZNK8uint_set8containsEj.exit.i15.i603.i, label %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i

_ZNK8uint_set8containsEj.exit.i15.i603.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i
  %i.axw = zext nneg i32 %i.axu to i64
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %.pr.pre.i.i249.i, i64 %i.axw
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !26
  %i.axz = and i32 %i.axt, 31                     ; 2 uses
  %i.aya = shl nuw i32 1, %i.axz
  %i.ayb = and i32 %i.axy, %i.aya
  %i.ayc = icmp ne i32 %i.ayb, 0
  %.not.i16.i604.i = icmp eq i32 %i.axz, 0
  %or.cond.i17.i605.i = or i1 %.not.i16.i604.i, %i.ayc
  br i1 %or.cond.i17.i605.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %bb.is

_ZNK8uint_set8containsEj.exit.thread.i12.i600.i:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i
  %.old.i13.i601.i = and i32 %i.axt, 31
  %.not.old.i14.i602.i = icmp eq i32 %.old.i13.i601.i, 0
  br i1 %.not.old.i14.i602.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %bb.is

bb.is:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i, %_ZNK8uint_set8containsEj.exit.i15.i603.i
  %i.ayd = add i32 %i.axt, 1                      ; 3 uses
  %.sroa.5320.8.insert.ext330.i = zext i32 %i.ayd to i64
  %.sroa.5320.8.insert.mask331.i = and i64 %.sroa.5320.9.i, -4294967296
  %.sroa.5320.8.insert.insert332.i = or disjoint i64 %.sroa.5320.8.insert.mask331.i, %.sroa.5320.8.insert.ext330.i ; 2 uses
  %i.aye = icmp eq i32 %i.ayd, %i.axb
  br i1 %i.aye, label %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i599.i, !llvm.loop !150

_ZN8uint_set8iterator8scan_idxEv.exit.i632.i:     ; preds = %bb.iq, %_ZNK8uint_set8containsEj.exit.i15.i603.i, %bb.is, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i, %_ZNK8uint_set8iterator8containsEv.exit.i614.i, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i, %.loopexit515.i
  %.sroa.5320.10411.i = phi i64 [ 0, %.loopexit515.i ], [ %i.axd, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i ], [ %i.axd, %_ZNK8uint_set8iterator8containsEv.exit.i614.i ], [ %.sroa.5320.9.i, %_ZNK8uint_set8containsEj.exit.i15.i603.i ], [ %.sroa.5320.9.i, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i ], [ %.sroa.5320.8.insert.insert332.i, %bb.is ], [ %.sroa.5320.8.insert.insert344.i, %bb.iq ] ; 2 uses
  %.sink.i261.i = phi i32 [ 0, %.loopexit515.i ], [ 0, %_ZN8uint_set8iteratorC2ERKS_b.exit.i250.i ], [ %i.axb, %_ZNK8uint_set8iterator8containsEv.exit.i614.i ], [ %i.axb, %_ZNK8uint_set8containsEj.exit.i15.i603.i ], [ %i.axb, %_ZNK8uint_set8containsEj.exit.thread.i12.i600.i ], [ %i.axb, %bb.is ], [ %i.axb, %bb.iq ] ; 2 uses
  %.sroa.580.8.extract.trunc730.i = trunc i64 %.sroa.5320.10411.i to i32 ; 2 uses
  %.not465731.i = icmp eq i32 %.sink.i261.i, %.sroa.580.8.extract.trunc730.i
  br i1 %.not465731.i, label %._crit_edge735.i, label %.lr.ph734.i

.lr.ph734.i:                                      ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i
  %i.ayf = and i32 %.sroa.5120.8.extract.trunc739.i, 31
  %i.ayg = shl nuw i32 1, %i.ayf
  %i.ayh = xor i32 %i.ayg, -1
  %i.ayi = zext nneg i32 %i.avq to i64
  %i.ayj = load ptr, ptr %i.pq, align 8           ; 4 uses
  %.val.i.i292.i = load ptr, ptr %25, align 8     ; 2 uses
  %i.ayk = getelementptr i8, ptr %.val.i.i292.i, i64 8
  %i.ayl = getelementptr inbounds i8, ptr %.pr.pre.i.i249.i, i64 -4 ; 3 uses
  br label %bb.jb

._crit_edge735.i:                                 ; preds = %_ZN8uint_set8iteratorppEv.exit301.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i632.i
  %i.aym = add i64 %.sroa.5120.0738.i, 1          ; 2 uses
  %.sroa.5120.8.insert.ext.i = and i64 %i.aym, 4294967295
  %.sroa.5120.8.insert.mask.i = and i64 %.sroa.5120.0738.i, -4294967296
  %.sroa.5120.8.insert.insert.i = or disjoint i64 %.sroa.5120.8.insert.ext.i, %.sroa.5120.8.insert.mask.i ; 3 uses
  %.sroa.5120.12.extract.shift.i = lshr i64 %.sroa.5120.0738.i, 32
  %.sroa.5120.12.extract.trunc.i = trunc nuw i64 %.sroa.5120.12.extract.shift.i to i32 ; 15 uses
  %.sroa.5120.8.extract.trunc126.i = trunc i64 %i.aym to i32 ; 3 uses
  %i.ayn = icmp eq i32 %.sroa.5120.8.extract.trunc126.i, %.sroa.5120.12.extract.trunc.i
  br i1 %i.ayn, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %.lr.ph.i.i672.i

.lr.ph.i.i672.i:                                  ; preds = %._crit_edge735.i
  br i1 %i.avi, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i: ; preds = %.lr.ph.i.i672.i
  %i.ayo = load i32, ptr %i.avj, align 4, !tbaa !26 ; 4 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i

_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i: ; preds = %.lr.ph.i.i672.i, %bb.it
  %.sroa.5120.1.i = phi i64 [ %.sroa.5120.8.insert.insert154.i, %bb.it ], [ %.sroa.5120.8.insert.insert.i, %.lr.ph.i.i672.i ] ; 2 uses
  %i.ayp = phi i32 [ %i.ayq, %bb.it ], [ %.sroa.5120.8.extract.trunc126.i, %.lr.ph.i.i672.i ] ; 3 uses
  %.old.us.i.i711.i = and i32 %i.ayp, 31
  %.not.old.us.i.i712.i = icmp eq i32 %.old.us.i.i711.i, 0
  br i1 %.not.old.us.i.i712.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %bb.it

bb.it:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i
  %i.ayq = add i32 %i.ayp, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext152.i = zext i32 %i.ayq to i64
  %.sroa.5120.8.insert.mask153.i = and i64 %.sroa.5120.1.i, -4294967296
  %.sroa.5120.8.insert.insert154.i = or disjoint i64 %.sroa.5120.8.insert.mask153.i, %.sroa.5120.8.insert.ext152.i ; 2 uses
  %i.ayr = icmp eq i32 %i.ayq, %.sroa.5120.12.extract.trunc.i
  br i1 %i.ayr, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i, label %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, !llvm.loop !150

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i:       ; preds = %bb.iu, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i
  %.sroa.5120.2.i = phi i64 [ %.sroa.5120.8.insert.insert130.i, %bb.iu ], [ %.sroa.5120.8.insert.insert.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i ] ; 3 uses
  %i.ays = phi i32 [ %i.azc, %bb.iu ], [ %.sroa.5120.8.extract.trunc126.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.preheader.i ] ; 6 uses
  %i.ayt = lshr i32 %i.ays, 5                     ; 4 uses
  %i.ayu = icmp ult i32 %i.ayt, %i.ayo
  br i1 %i.ayu, label %_ZNK8uint_set8containsEj.exit.i.i706.i, label %_ZNK8uint_set8containsEj.exit.thread.i.i674.i

_ZNK8uint_set8containsEj.exit.i.i706.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i
  %i.ayv = zext nneg i32 %i.ayt to i64
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !26
  %i.ayy = and i32 %i.ays, 31                     ; 2 uses
  %i.ayz = shl nuw i32 1, %i.ayy
  %i.aza = and i32 %i.ayx, %i.ayz
  %i.azb = icmp ne i32 %i.aza, 0
  %.not.i.i707.i = icmp eq i32 %i.ayy, 0
  %or.cond.i.i708.i = or i1 %.not.i.i707.i, %i.azb
  br i1 %or.cond.i.i708.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, label %bb.iu

_ZNK8uint_set8containsEj.exit.thread.i.i674.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i
  %.old.i.i675.i = and i32 %i.ays, 31
  %.not.old.i.i676.i = icmp eq i32 %.old.i.i675.i, 0
  br i1 %.not.old.i.i676.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, label %bb.iu

bb.iu:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i674.i, %_ZNK8uint_set8containsEj.exit.i.i706.i
  %i.azc = add i32 %i.ays, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext128.i = zext i32 %i.azc to i64
  %.sroa.5120.8.insert.mask129.i = and i64 %.sroa.5120.2.i, -4294967296
  %.sroa.5120.8.insert.insert130.i = or disjoint i64 %.sroa.5120.8.insert.mask129.i, %.sroa.5120.8.insert.ext128.i ; 2 uses
  %i.azd = icmp eq i32 %i.azc, %.sroa.5120.12.extract.trunc.i
  br i1 %i.azd, label %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i673.i, !llvm.loop !150

._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i: ; preds = %bb.iu
  %.pre991.i = lshr i32 %.sroa.5120.12.extract.trunc.i, 5
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, !llvm.loop !150

_ZN8uint_set8iterator8scan_idxEv.exit.i677.i:     ; preds = %bb.it, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i, %._crit_edge735.i
  %.sroa.5120.3.i = phi i64 [ %.sroa.5120.8.insert.insert.i, %._crit_edge735.i ], [ %.sroa.5120.1.i, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i ], [ %.sroa.5120.8.insert.insert154.i, %bb.it ] ; 2 uses
  %i.aze = phi i32 [ %.sroa.5120.12.extract.trunc.i, %._crit_edge735.i ], [ %i.ayp, %_ZNK8uint_set8containsEj.exit.thread.us.i.i710.i ], [ %.sroa.5120.12.extract.trunc.i, %bb.it ] ; 3 uses
  %i.azf = lshr i32 %i.aze, 5                     ; 2 uses
  br i1 %i.avi, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i, label %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i

_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i: ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i
  %.pre978.i = load i32, ptr %i.avj, align 4, !tbaa !26
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i:      ; preds = %_ZNK8uint_set8containsEj.exit.thread.i.i674.i, %_ZNK8uint_set8containsEj.exit.i.i706.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i
  %i.azg = phi i32 [ %.pre978.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %i.ayo, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ayo, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ayo, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ]
  %.sroa.5120.4.i = phi i64 [ %.sroa.5120.3.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.sroa.5120.8.insert.insert130.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %.sroa.5120.2.i, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %.sroa.5120.2.i, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 3 uses
  %i.azh = phi i32 [ %i.azf, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.pre991.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ayt, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ayt, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 4 uses
  %i.azi = phi i32 [ %i.aze, %_ZN8uint_set8iterator8scan_idxEv.exit.i677._ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678_crit_edge.i ], [ %.sroa.5120.12.extract.trunc.i, %._ZN8uint_set8iterator8scan_idxEv.exit.i677.thread_crit_edge.i ], [ %i.ays, %_ZNK8uint_set8containsEj.exit.i.i706.i ], [ %i.ays, %_ZNK8uint_set8containsEj.exit.thread.i.i674.i ] ; 4 uses
  %i.azj = icmp ult i32 %i.azh, %i.azg
  br i1 %i.azj, label %_ZNK8uint_set8iterator8containsEv.exit.i704.i, label %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i

_ZNK8uint_set8iterator8containsEv.exit.i704.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i
  %i.azk = zext nneg i32 %i.azh to i64
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.azk
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !26
  %i.azn = and i32 %i.azi, 31
  %i.azo = shl nuw i32 1, %i.azn
  %i.azp = and i32 %i.azm, %i.azo
  %i.azq = icmp ne i32 %i.azp, 0
  %i.azr = icmp eq i32 %i.azi, %.sroa.5120.12.extract.trunc.i
  %or.cond.i705.i = or i1 %i.azr, %i.azq
  br i1 %or.cond.i705.i, label %_ZN8uint_set8iteratorppEv.exit270.i, label %.lr.ph.i4.i681.i

_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i
  %.sroa.5120.5.i = phi i64 [ %.sroa.5120.3.i, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %.sroa.5120.4.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ] ; 2 uses
  %i.azs = phi i1 [ true, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ false, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ]
  %i.azt = phi i32 [ %i.azf, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %i.azh, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ]
  %i.azu = phi i32 [ %i.aze, %_ZN8uint_set8iterator8scan_idxEv.exit.i677.i ], [ %i.azi, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i678.i ] ; 2 uses
  %.old.i680.i = icmp eq i32 %i.azu, %.sroa.5120.12.extract.trunc.i
  br i1 %.old.i680.i, label %_ZN8uint_set8iteratorppEv.exit270.i, label %.lr.ph.i4.i681.i

.lr.ph.i4.i681.i:                                 ; preds = %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i, %_ZNK8uint_set8iterator8containsEv.exit.i704.i
  %.sroa.5120.6.i = phi i64 [ %.sroa.5120.5.i, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %.sroa.5120.4.i, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azv = phi i1 [ %i.azs, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ false, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azw = phi i32 [ %i.azt, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %i.azh, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  %i.azx = phi i32 [ %i.azu, %_ZNK8uint_set8iterator8containsEv.exit.thread.i679.i ], [ %i.azi, %_ZNK8uint_set8iterator8containsEv.exit.i704.i ]
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iw, %.lr.ph.i4.i681.i
  %.sroa.5120.7.i = phi i64 [ %.sroa.5120.6.i, %.lr.ph.i4.i681.i ], [ %.sroa.5120.8.insert.insert150.i, %bb.iw ] ; 5 uses
  %.02.i.i682.i = phi i32 [ %i.azw, %.lr.ph.i4.i681.i ], [ %i.bac, %bb.iw ] ; 2 uses
  %i.azy = phi i32 [ %i.azx, %.lr.ph.i4.i681.i ], [ %i.bad, %bb.iw ] ; 7 uses
  %i.azz = zext i32 %.02.i.i682.i to i64
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.azz
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !26
  %.not.i5.i683.i = icmp eq i32 %i.bab, 0
  br i1 %.not.i5.i683.i, label %bb.iw, label %_ZN8uint_set8iterator9scan_wordEv.exit.i684.i

bb.iw:                                            ; preds = %bb.iv
  %i.bac = add i32 %.02.i.i682.i, 1
  %i.bad = add i32 %i.azy, 32                     ; 3 uses
  %.sroa.5120.8.insert.ext148.i = zext i32 %i.bad to i64
  %.sroa.5120.8.insert.mask149.i = and i64 %.sroa.5120.7.i, -4294967296
  %.sroa.5120.8.insert.insert150.i = or disjoint i64 %.sroa.5120.8.insert.mask149.i, %.sroa.5120.8.insert.ext148.i ; 2 uses
  %i.bae = icmp eq i32 %i.bad, %.sroa.5120.12.extract.trunc.i
  br i1 %i.bae, label %_ZN8uint_set8iteratorppEv.exit270.i, label %bb.iv, !llvm.loop !151

_ZN8uint_set8iterator9scan_wordEv.exit.i684.i:    ; preds = %bb.iv
  %i.baf = icmp eq i32 %i.azy, %.sroa.5120.12.extract.trunc.i
  br i1 %i.baf, label %_ZN8uint_set8iteratorppEv.exit270.i, label %bb.ix

bb.ix:                                            ; preds = %_ZN8uint_set8iterator9scan_wordEv.exit.i684.i
  %i.bag = lshr i32 %i.azy, 5                     ; 2 uses
  br i1 %i.azv, label %.thread44.i699.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i685.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i685.i:      ; preds = %bb.ix
  %i.bah = load i32, ptr %i.avj, align 4, !tbaa !26 ; 2 uses
  %i.bai = icmp ult i32 %i.bag, %i.bah
  br i1 %i.bai, label %_ZNK8uint_set8iterator8containsEv.exit8.i696.i, label %bb.iy

_ZNK8uint_set8iterator8containsEv.exit8.i696.i:   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i685.i
  %i.baj = zext nneg i32 %i.bag to i64
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.pre26.i671.i, i64 %i.baj
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !26
  %i.bam = and i32 %i.azy, 31
  %i.ban = shl nuw i32 1, %i.bam
  %i.bao = and i32 %i.bal, %i.ban
  %.not.i697.i = icmp eq i32 %i.bao, 0
  br i1 %.not.i697.i, label %bb.iy, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i689.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i689.i.preheader: ; preds = %bb.iy, %_ZNK8uint_set8iterator8containsEv.exit8.i696.i
  %.sroa.5120.10.i.ph = phi i64 [ %.sroa.5120.8.insert.insert134.i, %bb.iy ], [ %.sroa.5120.7.i, %_ZNK8uint_set8iterator8containsEv.exit8.i696.i ]
  %.ph1861 = phi i32 [ %i.bap, %bb.iy ], [ %i.azy, %_ZNK8uint_set8iterator8containsEv.exit8.i696.i ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i689.i

bb.iy:                                            ; preds = %_ZNK8uint_set8iterator8containsEv.exit8.i696.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6.i685.i
  %i.bap = add i32 %i.azy, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext132.i = zext i32 %i.bap to i64
  %.sroa.5120.8.insert.mask133.i = and i64 %.sroa.5120.7.i, -4294967296
  %.sroa.5120.8.insert.insert134.i = or disjoint i64 %.sroa.5120.8.insert.mask133.i, %.sroa.5120.8.insert.ext132.i ; 2 uses
  %i.baq = icmp eq i32 %i.bap, %.sroa.5120.12.extract.trunc.i
  br i1 %i.baq, label %_ZN8uint_set8iteratorppEv.exit270.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.i689.i.preheader

.thread44.i699.i:                                 ; preds = %bb.ix
  %i.bar = add i32 %i.azy, 1                      ; 3 uses
  %.sroa.5120.8.insert.ext140.i = zext i32 %i.bar to i64
  %.sroa.5120.8.insert.mask141.i = and i64 %.sroa.5120.7.i, -4294967296
  %.sroa.5120.8.insert.insert142.i = or disjoint i64 %.sroa.5120.8.insert.mask141.i, %.sroa.5120.8.insert.ext140.i ; 2 uses
  %i.bas = icmp eq i32 %i.bar, %.sroa.5120.12.extract.trunc.i
  br i1 %i.bas, label %_ZN8uint_set8iteratorppEv.exit270.i, label %_ZNK8uint_set8containsEj.exit.thread.us.i18.i701.i

_ZNK8uint_set8containsEj.exit.thread.us.i18.i701.i: ; preds = %.thread44.i699.i, %bb.iz
  %.sroa.5120.9.i = phi i64 [ %.sroa.5120.8.insert.insert146.i, %bb.iz ], [ %.sroa.5120.8.insert.insert142.i, %.thread44.i699.i ] ; 2 uses
  %i.bat = phi i32 [ %i.bau, %bb.iz ], [ %i.bar, %.thread44.i699.i ] ; 2 uses
  %.old.us.i19.i702.i = and i32 %i.bat, 31
  %.not.old.us.i20.i703.i = icmp eq i32 %.old.us.i19.i702.i, 0
  br i1 %.not.old.us.i20.i703.i, label %_ZN8uint_set8iteratorppEv.exit270.i, label %bb.iz

bb.iz:                                            ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i18.i701.i
end_hunk_1

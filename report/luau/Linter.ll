Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau16LintTableLiteral5visitEPNS_12AstExprTableE:bb.a
  %i.y = load i32, ptr %next.gep190.a, align 8, !tbaa !401
  %i.z = load i32, ptr %next.gep191.a, align 8, !tbaa !401
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 3
  %i.ae = load i32, ptr %next.gep192.a, align 8, !tbaa !401
  %i.af = load i32, ptr %next.gep193.a, align 8, !tbaa !401
  %i.ag = load i32, ptr %next.gep194.a, align 8, !tbaa !401
  %i.ah = load i32, ptr %next.gep195, align 8, !tbaa !401
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = icmp eq <4 x i32> %i.ad, zeroinitializer
  %i.an = icmp eq <4 x i32> %i.al, zeroinitializer
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <4 x i32> %vec.phi188, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.preheader215

.lr.ph.preheader215:                              ; preds = %.lr.ph.preheader, %middle.block
  %.055131.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.056130.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

._crit_edge140.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader215, %.lr.ph
  %.055131 = phi ptr [ %i.ax, %.lr.ph ], [ %.055131.ph, %.lr.ph.preheader215 ] ; 2 uses
  %.056130 = phi i32 [ %spec.select, %.lr.ph ], [ %.056130.ph, %.lr.ph.preheader215 ]
  %i.au = load i32, ptr %.055131, align 8, !tbaa !401
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %spec.select = add nuw nsw i32 %.056130, %i.aw  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.055131, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.f
  br i1 %.not, label %.lr.ph139, label %.lr.ph, !llvm.loop !668

.lr.ph139:                                        ; preds = %.lr.ph
  %i.ay = uitofp nneg i32 %spec.select to double
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.d

._crit_edge140:                                   ; preds = %bb.aj
  %.not.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %._crit_edge140
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split: ; preds = %bb.b, %._crit_edge140
  %.pr = load ptr, ptr %2, align 8, !tbaa !406
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, %._crit_edge140.thread
  %i.bc = phi ptr [ %.pr, %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split ], [ null, %._crit_edge140.thread ] ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i80, label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #25
  br label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true

bb.d:                                             ; preds = %.lr.ph139, %bb.aj
  %.0137 = phi ptr [ %i.c, %.lr.ph139 ], [ %i.fp, %bb.aj ] ; 2 uses
  %.sroa.17.0136 = phi i64 [ 0, %.lr.ph139 ], [ %.sroa.17.1, %bb.aj ] ; 11 uses
  %.sroa.0.0135 = phi ptr [ null, %.lr.ph139 ], [ %.sroa.0.1, %bb.aj ] ; 15 uses
  %.sroa.11.0133 = phi i64 [ 0, %.lr.ph139 ], [ %.sroa.11.1, %bb.aj ] ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0137, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !407 ; 10 uses
  %.not66 = icmp eq ptr %i.be, null
  br i1 %.not66, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !308 ; 2 uses
  %i.bh = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !30
  %.not117 = icmp eq i32 %i.bg, %i.bh
  br i1 %.not117, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !408
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !409
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !410
  %i.bl = mul i64 %i.bk, 3
  %i.bm = lshr i64 %i.bl, 2
  %.not.i.i81 = icmp ult i64 %i.bj, %i.bm
  br i1 %.not.i.i81, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E4findERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  %.not2.i.i = icmp eq ptr %i.bn, null
  br i1 %.not2.i.i, label %bb.h, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i unwind label %bb.k

_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i: ; preds = %bb.h, %.noexc, %bb.f
  %i.bo = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E13insert_unsafeERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !30 ; 2 uses
  %.not73 = icmp eq i32 %i.bq, 0
  br i1 %.not73, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !193
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !370
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !369
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.br, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.161, i32 noundef %i.bv, ptr noundef %i.bw, i32 noundef %i.bq)
          to label %bb.aj unwind label %bb.l

bb.k:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i, %bb.h, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.m:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !274
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bp, align 4, !tbaa !30
  br label %bb.aj

bb.n:                                             ; preds = %bb.e
  %i.cc = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantNumberEE5valueE, align 4, !tbaa !30
  %.not119 = icmp eq i32 %i.bg, %i.cc
  br i1 %.not119, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !379 ; 8 uses
  %i.cf = fcmp ult double %i.ce, 1.000000e+00
  %i.cg = fcmp ugt double %i.ce, %i.ay
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = fptosi double %i.ce to i32              ; 2 uses
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fcmp oeq double %i.ce, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.az, align 8, !tbaa !193
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ck, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull @.str.162, i32 noundef %i.ch)
          to label %bb.aj unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.cn = fcmp ult double %i.ce, 0.000000e+00
  %i.co = fcmp ugt double %i.ce, f0x41DFFFFFFFC00000
  %or.cond79 = or i1 %i.cn, %i.co
  br i1 %or.cond79, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = fptosi double %i.ce to i32              ; 6 uses
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fcmp oeq double %i.ce, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.cs = mul i64 %.sroa.11.0133, 3
  %i.ct = lshr i64 %i.cs, 2
  %.not.i.i85 = icmp ult i64 %.sroa.17.0136, %i.ct
  br i1 %.not.i.i85, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq i64 %.sroa.17.0136, 0
  br i1 %i.cu, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = add i64 %.sroa.11.0133, -1              ; 3 uses
  %3 = zext nneg i32 %i.cp to i64
  %i.cw = and i64 %i.cv, %3
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.01832.i.i.i = phi i64 [ 0, %bb.w ], [ %i.db, %bb.z ]
  %.01931.i.i.i = phi i64 [ %i.cw, %bb.w ], [ %i.dd, %bb.z ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.01931.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, %i.cp
  br i1 %i.cz, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = icmp eq i32 %i.cy, -1
  br i1 %i.da, label %.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.dc = add i64 %i.db, %.01931.i.i.i
  %i.dd = and i64 %i.dc, %i.cv
  %.not.i.i.i = icmp ugt i64 %i.db, %i.cv
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.x, !llvm.loop !669

.loopexit.i.i:                                    ; preds = %bb.z, %bb.y, %bb.v
  %i.de = icmp eq i64 %.sroa.11.0133, 0           ; 2 uses
  %i.df = shl i64 %.sroa.11.0133, 1               ; 2 uses
  %spec.select.i = select i1 %i.de, i64 16, i64 %i.df ; 7 uses
  %.not.i.i91 = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i.i91, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i
  %i.dg = shl i64 %spec.select.i, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #26
          to label %.lr.ph.i.i.i.preheader unwind label %bb.ah ; 5 uses

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aa
  %min.iters.check197 = icmp ult i64 %spec.select.i, 4
  br i1 %min.iters.check197, label %.lr.ph.i.i.i.preheader205, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec199 = and i64 %spec.select.i, -4          ; 3 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next202, %vector.body200 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index201
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index201
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.di, align 4, !tbaa !30
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.dk, align 4, !tbaa !30
  %index.next202 = add nuw i64 %index201, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.dl, label %middle.block203, label %vector.body200, !llvm.loop !670

middle.block203:                                  ; preds = %vector.body200
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec199
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i, label %.lr.ph.i.i.i.preheader205

.lr.ph.i.i.i.preheader205:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block203
  %.07.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec199, %middle.block203 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader205, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader205 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.07.i.i.i ; 2 uses
  store i32 -1, ptr %i.dm, align 4, !tbaa !30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 0, ptr %i.dn, align 4, !tbaa !30
  %i.do = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.do, %spec.select.i
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !671

_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block203, %.loopexit.i.i
  %.sroa.0.0.i = phi ptr [ null, %.loopexit.i.i ], [ %i.dh, %middle.block203 ], [ %i.dh, %.lr.ph.i.i.i ] ; 6 uses
  br i1 %i.de, label %._crit_edge27.i, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i
  %i.dp = add i64 %i.df, -1                       ; 3 uses
  br label %bb.ab

._crit_edge27.i:                                  ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEEC2ERS4_m.exit.i
  %.not.i11.i = icmp eq ptr %.sroa.0.0135, null
  br i1 %.not.i11.i, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i, label %._crit_edge27.thread.i

._crit_edge27.thread.i:                           ; preds = %bb.ae, %._crit_edge27.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.0135) #25
  br label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i

bb.ab:                                            ; preds = %bb.ae, %.lr.ph26.i
  %.025.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.em, %bb.ae ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0135, i64 %.025.i ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30 ; 5 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = sext i32 %i.dr to i64
  %i.du = and i64 %i.dp, %i.dt                    ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !30 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %._crit_edge.i94, label %.lr.ph.i93

._crit_edge.i94:                                  ; preds = %bb.ad, %bb.ac
  %.02134.i.lcssa21.i = phi i64 [ %i.du, %bb.ac ], [ %i.ed, %bb.ad ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02134.i.lcssa21.i ; 2 uses
  store i32 %i.dr, ptr %i.dy, align 4, !tbaa !676
  br label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.i

.lr.ph.i93:                                       ; preds = %bb.ac, %bb.ad
  %i.dz = phi i32 [ %i.ef, %bb.ad ], [ %i.dw, %bb.ac ]
  %.02134.i23.i = phi i64 [ %i.ed, %bb.ad ], [ %i.du, %bb.ac ] ; 2 uses
  %.02035.i22.i = phi i64 [ %i.eb, %bb.ad ], [ 0, %bb.ac ]
  %i.ea = icmp eq i32 %i.dz, %i.dr
  br i1 %i.ea, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i93
  %i.eb = add i64 %.02035.i22.i, 1                ; 3 uses
  %i.ec = add i64 %i.eb, %.02134.i23.i
  %i.ed = and i64 %i.ec, %i.dp                    ; 3 uses
  %.not.i12.i = icmp ule i64 %i.eb, %i.dp
  call void @llvm.assume(i1 %.not.i12.i)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !30 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %._crit_edge.i94, label %.lr.ph.i93

_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.loopexit.i: ; preds = %.lr.ph.i93
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02134.i23.i
  br label %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.loopexit.i, %._crit_edge.i94
  %i.ei = phi ptr [ %i.dy, %._crit_edge.i94 ], [ %i.eh, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.loopexit.i ] ; 2 uses
  store i32 %i.dr, ptr %i.ei, align 4, !tbaa !676
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !677
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE13insert_unsafeERS4_.exit.i, %bb.ab
  %i.em = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %.sroa.11.0133
  br i1 %exitcond.not.i, label %._crit_edge27.thread.i, label %bb.ab, !llvm.loop !672

_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.x, %._crit_edge27.i, %._crit_edge27.thread.i, %bb.u
  %.sroa.11.2 = phi i64 [ %.sroa.11.0133, %bb.u ], [ 16, %._crit_edge27.i ], [ %spec.select.i, %._crit_edge27.thread.i ], [ %.sroa.11.0133, %bb.x ] ; 3 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.0135, %bb.u ], [ %.sroa.0.0.i, %._crit_edge27.i ], [ %.sroa.0.0.i, %._crit_edge27.thread.i ], [ %.sroa.0.0135, %bb.x ] ; 7 uses
  %i.en = add i64 %.sroa.11.2, -1                 ; 3 uses
  %4 = zext nneg i32 %i.cp to i64
  %i.eo = and i64 %i.en, %4                       ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30 ; 2 uses
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.af, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.eo, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i ], [ %i.ey, %bb.af ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3, i64 %.02134.i.lcssa5.i
  store i32 %i.cp, ptr %i.es, align 4, !tbaa !676
  %i.et = add i64 %.sroa.17.0136, 1
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i, %bb.af
  %i.eu = phi i32 [ %i.fa, %bb.af ], [ %i.eq, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.ey, %bb.af ], [ %i.eo, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.ew, %bb.af ], [ 0, %_ZN4Luau6detail14DenseHashTableIiSt4pairIiiES2_IKiiENS0_16ItemInterfaceMapIiiEESt4hashIiESt8equal_toIiEE14rehash_if_fullERS4_.exit.i ]
  %i.ev = icmp eq i32 %i.eu, %i.cp
  br i1 %i.ev, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.ew = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.ex = add i64 %i.ew, %.02134.i7.i
  %i.ey = and i64 %i.ex, %i.en                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.ew, %i.en
  call void @llvm.assume(i1 %.not.i3.i)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !30 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge.i
  %.sroa.17.2 = phi i64 [ %i.et, %._crit_edge.i ], [ %.sroa.17.0136, %.lr.ph.i ] ; 2 uses
  %i.fc = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.3, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !30 ; 2 uses
  %.not69 = icmp eq i32 %i.ff, 0
  br i1 %.not69, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fg = load ptr, ptr %i.az, align 8, !tbaa !193
  %i.fh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.fi = load double, ptr %i.cd, align 8, !tbaa !379
  %i.fj = fptosi double %i.fi to i32
  invoke void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.fg, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(16) %i.fh, ptr noundef nonnull @.str.163, i32 noundef %i.fj, i32 noundef %i.ff)
          to label %bb.aj unwind label %.thread

bb.ah:                                            ; preds = %bb.aa
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.thread:                                          ; preds = %bb.ag
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !274
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fe, align 4, !tbaa !30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.m, %bb.ai, %bb.ag, %bb.q, %bb.t, %bb.s, %bb.n, %bb.d
  %.sroa.11.1 = phi i64 [ %.sroa.11.0133, %bb.d ], [ %.sroa.11.0133, %bb.n ], [ %.sroa.11.0133, %bb.s ], [ %.sroa.11.2, %bb.ai ], [ %.sroa.11.2, %bb.ag ], [ %.sroa.11.0133, %bb.t ], [ %.sroa.11.0133, %bb.q ], [ %.sroa.11.0133, %bb.m ], [ %.sroa.11.0133, %bb.j ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0135, %bb.d ], [ %.sroa.0.0135, %bb.n ], [ %.sroa.0.0135, %bb.s ], [ %.sroa.0.3, %bb.ai ], [ %.sroa.0.3, %bb.ag ], [ %.sroa.0.0135, %bb.t ], [ %.sroa.0.0135, %bb.q ], [ %.sroa.0.0135, %bb.m ], [ %.sroa.0.0135, %bb.j ] ; 3 uses
  %.sroa.17.1 = phi i64 [ %.sroa.17.0136, %bb.d ], [ %.sroa.17.0136, %bb.n ], [ %.sroa.17.0136, %bb.s ], [ %.sroa.17.2, %bb.ai ], [ %.sroa.17.2, %bb.ag ], [ %.sroa.17.0136, %bb.t ], [ %.sroa.17.0136, %bb.q ], [ %.sroa.17.0136, %bb.m ], [ %.sroa.17.0136, %bb.j ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0137, i64 24 ; 2 uses
  %.not65 = icmp eq ptr %i.fp, %i.f
  br i1 %.not65, label %._crit_edge140, label %bb.d

bb.ak:                                            ; preds = %bb.r, %bb.ah, %bb.k, %bb.l
  %.pn74.pn = phi { ptr, i32 } [ %i.bx, %bb.k ], [ %i.by, %bb.l ], [ %i.cm, %bb.r ], [ %i.fk, %bb.ah ] ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.0.0135, null
  br i1 %.not.i.i87, label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit88, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %.pn74.pn113 = phi { ptr, i32 } [ %i.fl, %.thread ], [ %.pn74.pn, %bb.ak ]
  %.sroa.0.2112 = phi ptr [ %.sroa.0.3, %.thread ], [ %.sroa.0.0135, %bb.ak ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2112) #25
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit88

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit88: ; preds = %bb.al, %bb.ak
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn113, %bb.al ], [ %.pn74.pn, %bb.ak ]
  %i.fq = load ptr, ptr %2, align 8, !tbaa !406   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i89, label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit90, label %bb.am

bb.am:                                            ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit88
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #25
  br label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit90

_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit90: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit88, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn74.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau16LintTableLiteral5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau16LintTableLiteral5visitEPNS_12AstTypeTableE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::DenseHashMap.419", align 8 ; 11 uses
  %.sroa.5 = alloca %"struct.Luau::Location", align 8 ; 5 uses
  %3 = alloca %"class.Luau::DenseHashMap.422", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = load i8, ptr %i.d, align 8, !tbaa !770, !range !93, !noundef !94
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !773  ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !774  ; 2 uses
  %.idx85 = mul nuw nsw i64 %i.k, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx85
  %.not6279 = icmp eq i64 %i.k, 0
  br i1 %.not6279, label %_ZN4Luau12DenseHashMapINS_7AstNameEZNS_16LintTableLiteral5visitEPNS_12AstTypeTableEE3RecSt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge84:                                    ; preds = %bb.u
  %.pre87 = load ptr, ptr %2, align 8, !tbaa !416 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre87, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEZNS_16LintTableLiteral5visitEPNS_12AstTypeTableEE3RecSt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge84
  call void @_ZdlPv(ptr noundef nonnull %.pre87) #25
  br label %_ZN4Luau12DenseHashMapINS_7AstNameEZNS_16LintTableLiteral5visitEPNS_12AstTypeTableEE3RecSt4hashIS1_ESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashMapINS_7AstNameEZNS_16LintTableLiteral5visitEPNS_12AstTypeTableEE3RecSt4hashIS1_ESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.b, %._crit_edge84, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.af

bb.d:                                             ; preds = %.lr.ph83, %bb.u
  %.05680 = phi ptr [ %i.j, %.lr.ph83 ], [ %i.bd, %bb.u ] ; 8 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !417
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.05680, align 8, !tbaa !73 ; 4 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.n, align 8, !tbaa !418
  %i.u = add i64 %i.t, -1                         ; 2 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = lshr i64 %i.v, 9
  %i.y = xor i64 %i.w, %i.x
  %i.z = load ptr, ptr %2, align 8, !tbaa !416
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i = phi i64 [ %i.y, %bb.f ], [ %i.af, %bb.i ]
  %.01828.i.i = phi i64 [ 0, %bb.f ], [ %i.ae, %bb.i ]
  %.01929.i.i = and i64 %.pn.i.i, %i.u            ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.01929.i.i ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %i.ab, %i.r
  br i1 %i.ad, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.af = add i64 %i.ae, %.01929.i.i
  %.not.i.i67 = icmp ugt i64 %i.ae, %i.u
  br i1 %.not.i.i67, label %.loopexit, label %bb.g, !llvm.loop !14

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.ag = getelementptr inbounds nuw i8, ptr %.05680, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !776
  %i.ai = getelementptr inbounds nuw i8, ptr %.05680, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !317
  %i.aj = invoke noundef nonnull align 4 dereferenceable(20) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEZNS_16LintTableLiteral5visitEPNS_12AstTypeTableEE3RecSt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %.05680)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %.loopexit
end_hunk_0

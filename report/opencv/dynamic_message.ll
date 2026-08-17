inline.NumInlined: 480
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.ag = icmp eq ptr %1, %i.aj
  br i1 %i.ag, label %_ZNSt13unordered_mapIPKN6google8protobuf10DescriptorEPKNS1_21DynamicMessageFactory8TypeInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S8_EEEixERSE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !170

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.ac, %bb.e ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !168 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !169 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = urem i64 %i.ak, %i.x
  %.not19.i.i.i.i = icmp eq i64 %i.al, %i.y
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !170

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit.i.i, !llvm.loop !170

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 5 uses
  store ptr null, ptr %i.am, align 8, !tbaa !168
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %1, ptr %i.an, align 8, !tbaa !171
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !173
  %i.ap = invoke ptr @_ZNSt10_HashtableIPKN6google8protobuf10DescriptorESt4pairIKS4_PKNS1_21DynamicMessageFactory8TypeInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 noundef %i.y, i64 noundef %i.v, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZNSt13unordered_mapIPKN6google8protobuf10DescriptorEPKNS1_21DynamicMessageFactory8TypeInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S8_EEEixERSE_.exit unwind label %_ZNSt10_HashtableIPKN6google8protobuf10DescriptorESt4pairIKS4_PKNS1_21DynamicMessageFactory8TypeInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %bb.ab, %bb.ag, %bb.am, %bb.at, %bb.bc, %bb.aw, %_ZNSt10_HashtableIPKN6google8protobuf10DescriptorESt4pairIKS4_PKNS1_21DynamicMessageFactory8TypeInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt10_HashtableIPKN6google8protobuf10DescriptorESt4pairIKS4_PKNS1_21DynamicMessageFactory8TypeInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.kv, %bb.bc ], [ %i.it, %bb.aw ], [ %lpad.phi163, %bb.ab ], [ %lpad.phi168, %bb.ag ], [ %lpad.phi, %bb.am ], [ %.pn.i, %bb.at ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIPKN6google8protobuf10DescriptorESt4pairIKS4_PKNS1_21DynamicMessageFactory8TypeInfoEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 24) #20
  br label %common.resume

_ZNSt13unordered_mapIPKN6google8protobuf10DescriptorEPKNS1_21DynamicMessageFactory8TypeInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S8_EEEixERSE_.exit: ; preds = %bb.f, %bb.e, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.ap, %.loopexit.i.i ], [ %i.ac, %bb.e ], [ %i.ah, %bb.f ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %.1.i.i, align 8, !tbaa !174 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt13unordered_mapIPKN6google8protobuf10DescriptorEPKNS1_21DynamicMessageFactory8TypeInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S8_EEEixERSE_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !141
  br label %bb.bd

bb.i:                                             ; preds = %_ZNSt13unordered_mapIPKN6google8protobuf10DescriptorEPKNS1_21DynamicMessageFactory8TypeInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S8_EEEixERSE_.exit
  %i.au = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21 ; 18 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  store ptr %i.au, ptr %.1.i.i, align 8, !tbaa !174
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !175 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !156
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !157
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.be = phi ptr [ %i.bd, %bb.j ], [ %i.ay, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !176
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %0, ptr %i.bg, align 8, !tbaa !139
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !42 ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit

.lr.ph:                                           ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bi to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i32 %i.bi, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.l

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa: ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa ]
  %.098204.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod310 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv.epil.init ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.epil, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.epil

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.epil: ; preds = %.epil.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %.fr156.epil = freeze i8 %i.bu
  %i.bv = and i8 %.fr156.epil, 2
  %.not157.epil = icmp eq i8 %i.bv, 0
  %i.bw = zext i1 %.not157.epil to i32
  br label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.epil

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.epil: ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.epil, %.epil.preheader
  %.sink294.epil = phi i32 [ %i.bw, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.epil ], [ 1, %.epil.preheader ]
  %spec.select.epil = add nuw nsw i32 %.098204.epil.init, %.sink294.epil
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit: ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.epil, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa, %bb.k
  %.098.lcssa = phi i32 [ 0, %bb.k ], [ %spec.select.1, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa ], [ %spec.select.epil, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.epil ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71 ; 4 uses
  %i.bz = add nsw i32 %i.by, %.098.lcssa          ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i32 %i.bz, 0
  %i.cc = shl nsw i64 %i.ca, 2
  %i.cd = select i1 %i.cb, i64 -1, i64 %i.cc
  %i.ce = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #21 ; 4 uses
  store ptr %i.ce, ptr %i.av, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 4 uses
  store i32 -1, ptr %i.cf, align 4, !tbaa !177
  %i.cg = icmp sgt i32 %i.by, 0
  br i1 %i.cg, label %.lr.ph209, label %._crit_edge210.thread

.lr.ph209:                                        ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1 ] ; 3 uses
  %.098204 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1 ]
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  %.fr156 = freeze i8 %i.cq
  %i.cr = and i8 %.fr156, 2
  %.not157 = icmp eq i8 %i.cr, 0
  %i.cs = zext i1 %.not157 to i32
  br label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread: ; preds = %bb.l, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit
  %.sink294 = phi i32 [ %i.cs, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit ], [ 1, %bb.l ]
  %spec.select = add nuw nsw i32 %.098204, %.sink294
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.1, label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.1: ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1
  %.fr156.1 = freeze i8 %i.da
  %i.db = and i8 %.fr156.1, 2
  %.not157.1 = icmp eq i8 %i.db, 0
  %i.dc = zext i1 %.not157.1 to i32
  br label %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1

_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread.1: ; preds = %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.1, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread
  %.sink294.1 = phi i32 [ %i.dc, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.1 ], [ 1, %_ZNK6google8protobuf15OneofDescriptor12is_syntheticEv.exit.thread ]
  %spec.select.1 = add nuw nsw i32 %spec.select, %.sink294.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !178

._crit_edge210:                                   ; preds = %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread
  %i.dd = icmp sgt i32 %.1110, 0
  br i1 %i.dd, label %bb.q, label %._crit_edge210.thread

bb.m:                                             ; preds = %.lr.ph209, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread
  %i.de = phi i32 [ %i.by, %.lr.ph209 ], [ %i.em, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread ] ; 6 uses
  %i.df = phi ptr [ null, %.lr.ph209 ], [ %i.en, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread ] ; 4 uses
  %i.dg = phi ptr [ null, %.lr.ph209 ], [ %i.eo, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread ] ; 5 uses
  %indvars.iv241 = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next242, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread ] ; 3 uses
  %.0109207 = phi i32 [ 0, %.lr.ph209 ], [ %.1110, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread ] ; 5 uses
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %indvars.iv241 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1             ; 3 uses
  %i.dl = and i8 %i.dk, 2
  %.not.i.i114 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i114, label %bb.n, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 58
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !180
  %i.dq = icmp eq i8 %i.dp, 2
  %i.dr = and i8 %i.dk, 96                        ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 32
  %or.cond.i.i = and i1 %i.ds, %i.dq
  br i1 %or.cond.i.i, label %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i, label %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i

_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i: ; preds = %bb.n
  %i.dt = and i8 %i.dk, 16
  %.not.i.i.i = icmp eq i8 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dv = load ptr, ptr %i.du, align 8
  %.not13.i.i = icmp eq ptr %i.dv, null
  %.not1.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not13.i.i
  br i1 %.not1.i.i, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread

_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i: ; preds = %bb.n
  %.old4.i = icmp eq i8 %i.dr, 64
  br i1 %.old4.i, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.m, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !181
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 79
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !182, !range !116, !noundef !117
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit
  %i.eb = load i32, ptr %i.cf, align 4, !tbaa !177
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %bb.p, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117

bb.p:                                             ; preds = %bb.o
  store i32 32, ptr %i.cf, align 4, !tbaa !177
  %i.ed = sext i32 %i.de to i64
  %i.ee = shl nsw i64 %i.ed, 2
  %i.ef = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ee) #21 ; 3 uses
  %i.eg = icmp sgt i32 %i.de, 0
  br i1 %i.eg, label %.lr.ph206.preheader, label %._crit_edge

.lr.ph206.preheader:                              ; preds = %bb.p
  %i.eh = zext nneg i32 %i.de to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ef, i8 -1, i64 %i.ei, i1 false), !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph206.preheader, %bb.p
  store ptr %i.ef, ptr %i.ci, align 8, !tbaa !73
  %.not.i.i115 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i115, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i116

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i116: ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #20
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !73
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i116, %._crit_edge, %bb.o
  %i.ej = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i116 ], [ %i.ef, %._crit_edge ], [ %i.df, %bb.o ] ; 3 uses
  %i.ek = add nsw i32 %.0109207, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv241
  store i32 %.0109207, ptr %i.el, align 4, !tbaa !64
  %.pre260 = load i32, ptr %i.bx, align 4, !tbaa !71
  br label %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117
  %i.em = phi i32 [ %.pre260, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117 ], [ %i.de, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit ], [ %i.de, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i ], [ %i.de, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i ] ; 4 uses
  %i.en = phi ptr [ %i.ej, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117 ], [ %i.df, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit ], [ %i.df, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i ], [ %i.df, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i ]
  %i.eo = phi ptr [ %i.ej, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117 ], [ %i.dg, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit ], [ %i.dg, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i ], [ %i.dg, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i ]
  %.1110 = phi i32 [ %i.ek, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit117 ], [ %.0109207, %_ZN6google8protobuf12_GLOBAL__N_19HasHasbitEPKNS0_15FieldDescriptorE.exit ], [ %.0109207, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.thread3.i ], [ %.0109207, %_ZNK6google8protobuf15FieldDescriptor20has_optional_keywordEv.exit.i ] ; 3 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.ep = sext i32 %i.em to i64
  %i.eq = icmp slt i64 %indvars.iv.next242, %i.ep
  br i1 %i.eq, label %bb.m, label %._crit_edge210, !llvm.loop !188

bb.q:                                             ; preds = %._crit_edge210
  %i.er = add nuw i32 %.1110, 31
  %i.es = sdiv i32 %i.er, 32
  %i.et = shl nsw i32 %i.es, 2
  %i.eu = add nsw i32 %i.et, 39                   ; 2 uses
  %i.ev = srem i32 %i.eu, 8
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %._crit_edge210.thread

._crit_edge210.thread:                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit, %bb.q, %._crit_edge210
  %i.ex = phi i32 [ %i.em, %bb.q ], [ %i.em, %._crit_edge210 ], [ %i.by, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ] ; 3 uses
  %.0106 = phi i32 [ %i.ew, %bb.q ], [ 32, %._crit_edge210 ], [ 32, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ] ; 3 uses
  %i.ey = icmp sgt i32 %.098.lcssa, 0
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge210.thread
  %i.ez = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.0106, ptr %i.ez, align 8, !tbaa !63
  %i.fa = shl i32 %.098.lcssa, 2
  %i.fb = add i32 %i.fa, 7
  %i.fc = add i32 %i.fb, %.0106                   ; 2 uses
  %i.fd = srem i32 %i.fc, 8
  %i.fe = sub nsw i32 %i.fc, %i.fd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge210.thread
  %.1107 = phi i32 [ %i.fe, %bb.r ], [ %.0106, %._crit_edge210.thread ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !189
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fi = add i32 %.1107, 31                      ; 2 uses
  %i.fj = srem i32 %i.fi, 8
  %i.fk = sub nsw i32 %i.fi, %i.fj
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink = phi i32 [ %.1107, %bb.t ], [ -1, %bb.s ]
  %.2 = phi i32 [ %i.fk, %bb.t ], [ %.1107, %bb.s ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %.sink, ptr %i.fl, align 4, !tbaa !58
  %i.fm = icmp sgt i32 %i.ex, 0
  br i1 %i.fm, label %.lr.ph215, label %.preheader

.lr.ph215:                                        ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  %i.fq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.v

.preheader:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread, %bb.u
  %.3.lcssa = phi i32 [ %.2, %bb.u ], [ %.4, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread ] ; 3 uses
  %.lcssa179 = phi i32 [ %i.ex, %bb.u ], [ %i.ht, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread ]
  %i.ft = load i32, ptr %i.bh, align 8, !tbaa !42 ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph220, label %._crit_edge221.thread

._crit_edge221.thread:                            ; preds = %.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  store i32 -1, ptr %i.fv, align 8, !tbaa !142
  store i32 %.3.lcssa, ptr %i.au, align 8, !tbaa !190
  br label %._crit_edge229

.lr.ph220:                                        ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !57
  %i.fy = sext i32 %.lcssa179 to i64
  %wide.trip.count250 = zext nneg i32 %i.ft to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ce, i64 %i.fy
  br label %bb.au

bb.v:                                             ; preds = %.lr.ph215, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread
  %i.fz = phi i32 [ %i.ex, %.lr.ph215 ], [ %i.ht, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread ] ; 2 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next245, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread ] ; 3 uses
  %.3212 = phi i32 [ %.2, %.lr.ph215 ], [ %.4, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread ] ; 3 uses
  %i.ga = load ptr, ptr %i.fn, align 8, !tbaa !72
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.ga, i64 %indvars.iv244 ; 9 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 1
  %.val = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gb, i64 40
  %.val113 = load ptr, ptr %i.gd, align 8         ; 3 uses
  %i.ge = and i8 %.val, 16
  %.not.i.i118 = icmp eq i8 %i.ge, 0
  %.not1.i = icmp eq ptr %.val113, null
  %.not.i = select i1 %.not.i.i118, i1 true, i1 %.not1.i
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread151, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %.val113, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !59
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit, label %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %.val113, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = and i8 %i.gl, 2
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread, label %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread151

_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread151: ; preds = %bb.v, %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.go = and i8 %.val, 96
  %i.gp = icmp eq i8 %i.go, 96
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.gr, null        ; 2 uses
  br i1 %i.gp, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_111InRealOneofEPKNS0_15FieldDescriptorE.exit.thread151
  br i1 %.not.i.i.i119, label %_ZNK6google8protobuf15FieldDescriptor8cpp_typeEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr @_ZN6google8protobuf15FieldDescriptor12TypeOnceInitEPKS1_, ptr %i.e, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %i.gb, ptr %i.f, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.e, ptr %4, align 8, !tbaa !80
  store ptr %i.f, ptr %i.fr, align 8, !tbaa !81
  store ptr %4, ptr %i.fp, align 8, !tbaa !78
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIPFvPKN6google8protobuf15FieldDescriptorEEJS7_EEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.fq, align 8, !tbaa !78
  %i.gs = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.gr, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i unwind label %.loopexit159 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i:        ; preds = %bb.y
  %.not.i.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf8internal9call_onceIJRSt9once_flagPFvPKNS0_15FieldDescriptorEES7_EEEvDpOT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.gs) #19
          to label %bb.aa unwind label %.loopexit.split-lp160

bb.aa:                                            ; preds = %bb.z
  unreachable

.loopexit159:                                     ; preds = %bb.y
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp160:                            ; preds = %bb.z
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp160, %.loopexit159
  %lpad.phi163 = phi { ptr, i32 } [ %lpad.loopexit161, %.loopexit159 ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp160 ]
  store ptr null, ptr %i.fp, align 8, !tbaa !78
  store ptr null, ptr %i.fq, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

_ZN6google8protobuf8internal9call_onceIJRSt9once_flagPFvPKNS0_15FieldDescriptorEES7_EEEvDpOT_.exit.i.i.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i.i
  store ptr null, ptr %i.fp, align 8, !tbaa !78
  store ptr null, ptr %i.fq, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
end_hunk_0

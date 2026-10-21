Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_synchronize?download=true
inline.NumInlined: 784
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7datalog14mk_synchronize18merge_applicationsERNS_4ruleERNS_8rule_setE:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.bs, %bb.o ], [ %.pre111.pre, %bb.n ] ; 3 uses
  %i.bq = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !156
  %i.br = icmp ult ptr %i.bq, inttoptr (i64 2 to ptr)
  br i1 %i.br, label %bb.o, label %.loopexit81

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bp
  br i1 %.not.i.i.i, label %.loopexit81, label %.lr.ph.i.i.i, !llvm.loop !363

.loopexit81:                                      ; preds = %.lr.ph.i.i.i, %bb.o, %bb.n
  %.sroa.0.1.i = phi ptr [ %.pre111.pre, %bb.n ], [ %i.bp, %bb.o ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre111.pre, i64 %i.bo ; 2 uses
  %.not91 = icmp eq ptr %.sroa.0.1.i, %i.bt
  %.pre109.a = load ptr, ptr %3, align 8, !tbaa !92 ; 2 uses
  br i1 %.not91, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, %.loopexit81
  %i.bu = phi ptr [ %.pre109.a, %.loopexit81 ], [ %i.de, %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit.thread, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit.i.i

_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit.thread: ; preds = %._crit_edge95
  store ptr null, ptr %5, align 8, !tbaa !83, !alias.scope !366
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread

_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit.i.i: ; preds = %._crit_edge95
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93, !noalias !366 ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !83, !alias.scope !366
  %.not.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.not.i.i, label %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit, label %.preheader.i

thread-pre-split.i.i:                             ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %5, align 8, !tbaa !83, !alias.scope !366
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit.i.i, %thread-pre-split.i.i
  %i.by = phi ptr [ %.pr.pre.i.i, %thread-pre-split.i.i ], [ null, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.i.i: ; preds = %.preheader.i
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !93
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  br i1 %i.cc, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.thread.i.i, label %_ZN6vectorIP13obj_hashtableI9func_declELb0EjE6resizeEj.exit.i

_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.i.i, %.preheader.i
  invoke void @_ZN6vectorIP13obj_hashtableI9func_declELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %thread-pre-split.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6vectorIP13obj_hashtableI9func_declELb0EjE6resizeEj.exit.i: ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.i.i
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 -4
  store i32 %i.bx, ptr %i.cd, align 4, !tbaa !93
  %i.ce = zext i32 %i.bx to i64                   ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.cf, i1 false), !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !68, !noalias !366
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %_ZN6vectorIP13obj_hashtableI9func_declELb0EjE6resizeEj.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZN6vectorIP13obj_hashtableI9func_declELb0EjE6resizeEj.exit.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !68, !noalias !366
  %i.ck = load ptr, ptr %3, align 8, !tbaa !92, !noalias !366
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !80
  %i.cp = invoke noundef i32 @_ZNK7datalog15rule_stratifier19get_predicate_stratEP9func_decl(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef %i.co)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph.i
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !83
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !85
  %i.cu = load ptr, ptr %5, align 8, !tbaa !83, !alias.scope !366
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !85
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ce
  br i1 %exitcond.not.i, label %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit, label %.lr.ph.i, !llvm.loop !2

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE8capacityEv.exit.thread.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph94:                                         ; preds = %.loopexit81, %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit
  %i.cw = phi ptr [ %i.de, %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %.pre109.a, %.loopexit81 ] ; 4 uses
  %.sroa.065.092 = phi ptr [ %.sroa.065.2, %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit81 ] ; 2 uses
  %i.cx = load ptr, ptr %.sroa.065.092, align 8, !tbaa !94
  %i.cy = icmp eq ptr %i.cw, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph94
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !93 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !93
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %.lr.ph94
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !92  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !93
  br label %bb.s

bb.s:                                             ; preds = %.noexc44, %bb.q
  %i.de = phi ptr [ %.pre.i, %.noexc44 ], [ %i.cw, %bb.q ] ; 4 uses
  %i.df = phi i32 [ %.pre2.i, %.noexc44 ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cx, ptr %i.di, align 8, !tbaa !94
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !93
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.065.092, i64 8 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.dk, %i.bp
  br i1 %.not1.i.i, label %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.sroa.065.1 = phi ptr [ %i.dn, %bb.t ], [ %i.dk, %bb.s ] ; 3 uses
  %i.dl = load ptr, ptr %.sroa.065.1, align 8, !tbaa !156
  %i.dm = icmp ult ptr %i.dl, inttoptr (i64 2 to ptr)
  br i1 %i.dm, label %bb.t, label %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.065.1, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dn, %i.bp
  br i1 %.not.i.i, label %_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !363

_ZN14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.t, %bb.s
  %.sroa.065.2 = phi ptr [ %i.dk, %bb.s ], [ %.sroa.065.1, %.lr.ph.i.i ], [ %i.dn, %bb.t ] ; 2 uses
  %.not = icmp eq ptr %.sroa.065.2, %i.bt
  br i1 %.not, label %._crit_edge95, label %.lr.ph94

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.loopexit82, %bb.e, %bb.m
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit: ; preds = %bb.p, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.do = icmp eq ptr %.pr, null
  br i1 %i.do, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread: ; preds = %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit, %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !101
  br label %_ZN6vectorIP9func_declLb0EjE6resizeEj.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i:      ; preds = %_ZN7datalog14mk_synchronize16add_merged_declsER10ptr_vectorI3appE.exit
  %i.dp = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !93 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !101
  %.not.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.not.i, label %_ZN6vectorIP9func_declLb0EjE6resizeEj.exit, label %.preheader77

thread-pre-split.i:                               ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !101
  br label %.preheader77

.preheader77:                                     ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.dr = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i:  ; preds = %.preheader77
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !93
  %i.dv = icmp ugt i32 %i.dq, %i.du
  br i1 %i.dv, label %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i, %.preheader77
  invoke void @_ZN6vectorIP9func_declLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %thread-pre-split.i unwind label %bb.aa

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.i
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 -4
  store i32 %i.dq, ptr %i.dw, align 4, !tbaa !93
  %i.dx = zext i32 %i.dq to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 0, i64 %i.dy, i1 false), !tbaa !102
  br label %_ZN6vectorIP9func_declLb0EjE6resizeEj.exit

_ZN6vectorIP9func_declLb0EjE6resizeEj.exit:       ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread
  %.not.not.i75 = phi i1 [ true, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread ], [ true, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ], [ false, %.lr.ph.preheader.i ]
  %.0.i74 = phi i32 [ 0, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i.thread ], [ 0, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.i ], [ %i.dq, %.lr.ph.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !tbaa !119
  invoke void @_ZN7datalog14mk_synchronize19add_new_rel_symbolsEjRK10ptr_vectorI13obj_hashtableI9func_declEERS1_IS3_ERb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZN6vectorIP9func_declLb0EjE6resizeEj.exit
  %i.dz = load i8, ptr %i.b, align 1, !tbaa !119, !range !367, !noundef !60
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i.i, label %bb.ah

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !129, !nonnull !60, !align !61
  %i.ed = ptrtoint ptr %i.ec to i64
  store i64 %i.ed, ptr %7, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !143
  br i1 %.not.not.i75, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit, label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i.i, %.noexc52
  %i.ef = phi ptr [ %.pr.pre.i.i47, %.noexc52 ], [ null, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.i.i: ; preds = %.preheader
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !93
  %i.ej = icmp ugt i32 %.0.i74, %i.ei
  br i1 %i.ej, label %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.thread.i.i, label %9

_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.i.i, %.preheader
  invoke void @_ZN6vectorIPN7datalog4ruleELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %.noexc52 unwind label %bb.ac

.noexc52:                                         ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i47 = load ptr, ptr %i.ee, align 8, !tbaa !143
  br label %.preheader

9:                                                ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.i.i
  %10 = getelementptr inbounds i8, ptr %i.ef, i64 -4
  store i32 %.0.i74, ptr %10, align 4, !tbaa !93
  %.not1218.i.i = icmp eq i32 %.0.i74, 0
  br i1 %.not1218.i.i, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %9
  %i.ek = zext i32 %.0.i74 to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ef, i8 0, i64 %i.el, i1 false), !tbaa !144
  br label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit: ; preds = %.lr.ph.preheader.i.i, %9, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN7datalog14mk_synchronize17rename_bound_varsERK10ptr_vectorI13obj_hashtableI9func_declEERNS_8rule_setE(ptr dead_on_unwind nonnull writable sret(%class.vector.137) align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(248) %2)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit
  invoke void @_ZN7datalog14mk_synchronize11merge_rulesEjR10ref_vectorINS_4ruleENS_12rule_managerEERK6vectorIS4_Lb1EjERNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(248) %2)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjE7destroyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #19
  unreachable

_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.eo = load ptr, ptr %i.ee, align 8, !tbaa !143 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53: ; preds = %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !93 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  %.not.i = icmp eq i32 %i.er, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53, %.noexc.i
  %.06.i.i55 = phi ptr [ %i.ex, %.noexc.i ], [ %i.eo, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53 ] ; 2 uses
  %i.ev = load ptr, ptr %.06.i.i55, align 8, !tbaa !144
  %i.ew = load ptr, ptr %7, align 8, !tbaa !145, !nonnull !60, !align !61
  invoke void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104) %i.ew, ptr noundef %i.ev)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %.lr.ph.i.i54
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i55, i64 8 ; 2 uses
  %i.ey = icmp ult ptr %i.ex, %i.eu
  br i1 %i.ey, label %.lr.ph.i.i54, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.i56, !llvm.loop !8

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.i56: ; preds = %.noexc.i
  %.pre.i57 = load ptr, ptr %i.ee, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %.pre.i57, null
  br i1 %.not.i.i.i58, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i: ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.i56, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53
  %i.ez = phi ptr [ %.pre.i57, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.i56 ], [ %i.eo, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.i53 ]
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fa)
          to label %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #19
  unreachable

bb.z:                                             ; preds = %.lr.ph.i.i54
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #19
  unreachable

_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit: ; preds = %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.i56, %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE13dec_range_refEPKPS1_S8_.exit.thread6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ah

bb.aa:                                            ; preds = %_ZNK6vectorIP9func_declLb0EjE8capacityEv.exit.thread.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ab:                                            ; preds = %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_ZN6vectorIP9func_declLb0EjE6resizeEj.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ac:                                            ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE8capacityEv.exit.thread.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE6resizeEj.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit59

bb.ae:                                            ; preds = %bb.v
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjE7destroyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit59 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #19
  unreachable

_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit59: ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.ad ], [ %i.fj, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit59, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6vectorI10ref_vectorIN7datalog4ruleENS1_12rule_managerEELb1EjED2Ev.exit59 ], [ %i.fh, %bb.ac ]
  call void @_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aw

bb.ah:                                            ; preds = %_ZN15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEED2Ev.exit, %bb.u
  invoke void @_ZN7datalog14mk_synchronize20replace_applicationsERNS_4ruleERNS_8rule_setER10ptr_vectorI3appE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ai unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !71
  invoke void @_ZN7datalog17rule_dependencies8populateERKNS_8rule_setE(ptr noundef nonnull align 8 dereferenceable(88) %i.fn, ptr noundef nonnull align 8 dereferenceable(248) %2)
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai
  %i.fo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 120)
          to label %bb.ak unwind label %bb.ab     ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !71
  invoke void @_ZN7datalog15rule_stratifierC2ERKNS_17rule_dependenciesE(ptr noundef nonnull align 8 dereferenceable(120) %i.fo, ptr noundef nonnull align 8 dereferenceable(88) %i.fp)
          to label %bb.al unwind label %bb.ab

bb.al:                                            ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68 ; 4 uses
  %.not.i60 = icmp eq ptr %i.fr, %i.fo
  br i1 %.not.i60, label %_ZN10scoped_ptrIN7datalog15rule_stratifierEEaSEPS1_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_Z7deallocIN7datalog15rule_stratifierEEvPT_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN7datalog15rule_stratifierD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fr) #18
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fr)
          to label %_Z7deallocIN7datalog15rule_stratifierEEvPT_.exit.i unwind label %bb.ab

_Z7deallocIN7datalog15rule_stratifierEEvPT_.exit.i: ; preds = %bb.an, %bb.am
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !68
  br label %_ZN10scoped_ptrIN7datalog15rule_stratifierEEaSEPS1_.exit

_ZN10scoped_ptrIN7datalog15rule_stratifierEEaSEPS1_.exit: ; preds = %_Z7deallocIN7datalog15rule_stratifierEEvPT_.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ft = load ptr, ptr %6, align 8, !tbaa !101   ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i62, label %_ZN6vectorIP9func_declLb0EjED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN10scoped_ptrIN7datalog15rule_stratifierEEaSEPS1_.exit
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fu)
          to label %_ZN6vectorIP9func_declLb0EjED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #19
  unreachable

_ZN6vectorIP9func_declLb0EjED2Ev.exit:            ; preds = %_ZN10scoped_ptrIN7datalog15rule_stratifierEEaSEPS1_.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.fx = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i63, label %_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIP9func_declLb0EjED2Ev.exit
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fy)
          to label %_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #19
  unreachable

_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev.exit: ; preds = %_ZN6vectorIP9func_declLb0EjED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre110 = load ptr, ptr %4, align 8, !tbaa !157
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev.exit
  %i.gb = phi ptr [ %.pre111.pre, %._crit_edge ], [ %.pre110, %_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev.exit ] ; 2 uses
end_hunk_0

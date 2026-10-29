Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstallCommand?download=true
inline.NumInlined: 5614
inline.NumDeleted: 1908
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_116HandleScriptModeERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.v = load i64, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = load ptr, ptr %5, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i8 0, ptr %i.h, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store i8 0, ptr %i.i, align 1, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !56    ; 4 uses
  %.not295 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not295, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232
  %i.ag = icmp sgt i32 %.165370, 1
  br i1 %i.ag, label %.noexc.i111, label %bb.i

bb.e:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232
  %i.ai = phi ptr [ %i.bv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232 ], [ %i.ab, %.lr.ph.preheader ] ; 5 uses
  %i.aj = phi i64 [ %i.cb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232 ], [ %i.af, %.lr.ph.preheader ]
  %.054284 = phi i64 [ %i.bw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.064283 = phi i32 [ %.165370, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %.054284 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %i.an = icmp eq i64 %i.am, 9
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 5640000210908041027
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = xor i64 %i.at, 84
  %i.av = or i64 %i.aq, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.az = add nuw i64 %.054284, 1                 ; 4 uses
  %i.ba = icmp ult i64 %i.az, %i.aj
  br i1 %i.ba, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.az
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge: ; preds = %bb.f
  %i.bc = add nsw i32 %.064283, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.az
  %.phi.trans.insert299 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre300 = load i64, ptr %.phi.trans.insert299, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge, %.lr.ph
  %i.bd = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %i.ai, %.lr.ph ] ; 5 uses
  %i.be = phi i64 [ %.pre300, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %i.am, %.lr.ph ]
  %.165 = phi i32 [ %i.bc, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %.064283, %.lr.ph ] ; 4 uses
  %.155 = phi i64 [ %i.az, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %.054284, %.lr.ph ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %.155 ; 2 uses
  switch i64 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232 [
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bh = load i128, ptr %i.bg, align 1
  %i.bi = icmp ne i128 %i.bh, 101417268148128168882329057067660433477
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = xor i64 %i.bm, 5786368247021194305
  %i.bo = getelementptr i8, ptr %i.bl, i64 6
  %i.bp = load i64, ptr %i.bo, align 1
  %i.bq = xor i64 %i.bp, 6004510262765244493
  %i.br = or i64 %i.bn, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
  %.sink = phi ptr [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107 ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109 ]
  store i8 1, ptr %.sink, align 1, !tbaa !57
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  %.155371 = phi i64 [ %.155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109 ], [ %.155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107 ], [ %.155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.054284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.054284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split ]
  %.165370 = phi i32 [ %.165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109 ], [ %.165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107 ], [ %.165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.064283, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.064283, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split ] ; 3 uses
  %i.bv = phi ptr [ %i.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109 ], [ %i.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread232.sink.split ] ; 3 uses
  %i.bw = add nuw i64 %.155371, 1                 ; 2 uses
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 5                 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !274

.noexc.i111:                                      ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 141, ptr %i.f, align 8, !tbaa !28
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc112 unwind label %bb.g  ; 3 uses

.noexc112:                                        ; preds = %.noexc.i111
  store ptr %i.ce, ptr %6, align 8, !tbaa !30
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !28  ; 3 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(141) %i.ce, ptr noundef nonnull align 1 dereferenceable(141) @.str.39, i64 141, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc112
  %i.cj = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cd
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !31
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bp

bb.g:                                             ; preds = %.noexc.i111
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.h:                                             ; preds = %.noexc112
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cd
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.h
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !31
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.g
  %.pn100 = phi { ptr, i32 } [ %i.cn, %bb.g ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.co, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %._crit_edge
  %i.ct = load i8, ptr %i.i, align 1, !tbaa !57, !range !60, !noundef !52
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = icmp eq i32 %.165370, 1
  %or.cond = and i1 %i.cv, %i.cu
  br i1 %or.cond, label %.noexc.i118, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.i
  %.lcssa280366377 = phi ptr [ %i.bx, %bb.i ], [ %i.aa, %bb.d ] ; 3 uses
  %.lcssa367376 = phi ptr [ %i.bv, %bb.i ], [ %i.ab, %bb.d ] ; 2 uses
  %.not287 = icmp eq ptr %.lcssa367376, %.lcssa280366377
  br i1 %.not287, label %.thread381, label %.lr.ph291

.lr.ph291:                                        ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.l

.noexc.i118:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.dk, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 51, ptr %i.e, align 8, !tbaa !28
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc119 unwind label %bb.j  ; 3 uses

.noexc119:                                        ; preds = %.noexc.i118
  store ptr %i.dl, ptr %7, align 8, !tbaa !30
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !28  ; 3 uses
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.dl, ptr noundef nonnull align 1 dereferenceable(51) @.str.40, i64 51, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.do, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit122 unwind label %bb.k

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit122: ; preds = %.noexc119
  %i.dq = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit122
  %i.ds = load i64, ptr %i.dk, align 8, !tbaa !31
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bp

bb.j:                                             ; preds = %.noexc.i118
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.k:                                             ; preds = %.noexc119
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dk
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.k
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !31
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.j
  %.pn98 = phi { ptr, i32 } [ %i.du, %bb.j ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.dv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %.backedge.backedge, %.lr.ph291
  %.056290 = phi i8 [ 0, %.lr.ph291 ], [ %.056290.be, %.backedge.backedge ] ; 2 uses
  %.060289 = phi i1 [ false, %.lr.ph291 ], [ %.060289.be, %.backedge.backedge ]
  %.sroa.0225.0288 = phi ptr [ %.lcssa367376, %.lr.ph291 ], [ %.sroa.0225.0288.be, %.backedge.backedge ] ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0225.0288, i64 8 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !32 ; 3 uses
  switch i64 %i.eb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130: ; preds = %bb.l
  %i.ec = load ptr, ptr %.sroa.0225.0288, align 8, !tbaa !30 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = xor i32 %i.ed, 1230127955
  %i.ef = getelementptr i8, ptr %i.ec, i64 4
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = zext i16 %i.eg to i32
  %i.ei = xor i32 %i.eh, 21584
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %._crit_edge292, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132: ; preds = %bb.l
  %.pre301 = load ptr, ptr %.sroa.0225.0288, align 8, !tbaa !30
  %bcmp.i131 = call i32 @bcmp(ptr %.pre301, ptr nonnull @.str.25, i64 %i.eb)
  %i.en = icmp eq i32 %bcmp.i131, 0
  br i1 %i.en, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134: ; preds = %bb.l
  %.pre302 = load ptr, ptr %.sroa.0225.0288, align 8, !tbaa !30
  %bcmp.i133 = call i32 @bcmp(ptr %.pre302, ptr nonnull @.str.36, i64 %i.eb)
  %i.eo = icmp eq i32 %bcmp.i133, 0
  br i1 %i.eo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130, %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  br i1 %.060289, label %bb.m, label %bb.au

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.cy, ptr %8, align 8, !tbaa !26
  %i.ep = load ptr, ptr %.sroa.0225.0288, align 8, !tbaa !30 ; 2 uses
  %i.eq = load i64, ptr %i.ea, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.eq, ptr %i.d, align 8, !tbaa !28
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc.i136, label %._crit_edge.i.i135

.noexc.i136:                                      ; preds = %bb.m
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc137 unwind label %bb.z  ; 2 uses

.noexc137:                                        ; preds = %.noexc.i136
  store ptr %i.es, ptr %8, align 8, !tbaa !30
  %i.et = load i64, ptr %i.d, align 8, !tbaa !28
  store i64 %i.et, ptr %i.cy, align 8, !tbaa !31
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %.noexc137, %bb.m
  %i.eu = phi ptr [ %i.es, %.noexc137 ], [ %i.cy, %bb.m ] ; 2 uses
  switch i64 %i.eq, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i135
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !31
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i135
  %i.ew = load i64, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ew, ptr %i.cz, align 8, !tbaa !32
  %i.ex = load ptr, ptr %8, align 8, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ez = load i64, ptr %i.cz, align 8, !tbaa !32 ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread237, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.p
  %i.fb = load ptr, ptr %8, align 8, !tbaa !30
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 17)
  %bcmp.i.i = call i32 @bcmp(ptr %i.fb, ptr nonnull @.str.41, i64 %.sroa.speculated.i.i.i.i)
  %i.fc = icmp eq i32 %bcmp.i.i, 0
  %i.fd = icmp ugt i64 %i.ez, 16
  %or.cond246 = and i1 %i.fd, %i.fc
  br i1 %or.cond246, label %bb.ag, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread237

_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread237: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.p
  %i.fe = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools14FileIsFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread237
  br i1 %i.fe, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ff = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.fg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile25GetCurrentSourceDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2952) %i.ff)
          to label %bb.s unwind label %bb.ab      ; 2 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !284
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30, !noalias !284
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !32, !noalias !284
  store i64 %i.fj, ptr %2, align 8, !tbaa !28, !alias.scope !285, !noalias !284
  store ptr %i.fh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !64, !alias.scope !285, !noalias !284
  store ptr null, ptr %i.da, align 8, !tbaa !66, !alias.scope !285, !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !284
  store i64 0, ptr %3, align 8, !noalias !284
  store i8 47, ptr %i.dd, align 8, !tbaa !31, !noalias !284
  store i64 1, ptr %i.dc, align 8, !tbaa !28, !noalias !284
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !64, !noalias !284
  store i64 1, ptr %i.db, align 8, !tbaa !28, !alias.scope !286, !noalias !284
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !64, !alias.scope !286, !noalias !284
  store ptr null, ptr %i.de, align 8, !tbaa !66, !alias.scope !286, !noalias !284
  %i.fk = load ptr, ptr %.sroa.0225.0288, align 8, !tbaa !30, !noalias !284
  %i.fl = load i64, ptr %i.ea, align 8, !tbaa !32, !noalias !284
  store i64 %i.fl, ptr %i.df, align 8, !tbaa !28, !alias.scope !287, !noalias !284
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !64, !alias.scope !287, !noalias !284
  store ptr null, ptr %i.dg, align 8, !tbaa !66, !alias.scope !287, !noalias !284
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %2, i64 3)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !284
  %i.fm = load ptr, ptr %8, align 8, !tbaa !30    ; 6 uses
  %i.fn = icmp eq ptr %i.fm, %i.cy
  %i.fo = load ptr, ptr %9, align 8, !tbaa !30    ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %i.dh                ; 2 uses
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.t
  br i1 %i.fp, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t
  br i1 %i.fp, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fq = load i64, ptr %i.di, align 8, !tbaa !32 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 16
  call void @llvm.assume(i1 %i.fr)
  switch i64 %i.fq, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !31
  store i8 %i.fs, ptr %i.fm, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.ft = load i64, ptr %i.di, align 8, !tbaa !32 ; 2 uses
  store i64 %i.ft, ptr %i.cz, align 8, !tbaa !32
  %i.fu = load ptr, ptr %8, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fo, ptr %8, align 8, !tbaa !30
  %i.fw = load <2 x i64>, ptr %i.di, align 8, !tbaa !31
  store <2 x i64> %i.fw, ptr %i.cz, align 8, !tbaa !31
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fx = load i64, ptr %i.cy, align 8, !tbaa !31
  store ptr %i.fo, ptr %8, align 8, !tbaa !30
  %i.fy = load <2 x i64>, ptr %i.di, align 8, !tbaa !31
  store <2 x i64> %i.fy, ptr %i.cz, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fm, ptr %9, align 8, !tbaa !30
  store i64 %i.fx, ptr %i.dh, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dh, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.fz = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fm, %bb.x ], [ %i.dh, %bb.y ]
  store i64 0, ptr %i.di, align 8, !tbaa !32
  store i8 0, ptr %i.fz, align 1, !tbaa !31
  %i.ga = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dh
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gc = load i64, ptr %i.dh, align 8, !tbaa !31
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ac

bb.z:                                             ; preds = %.noexc.i136
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.aa:                                            ; preds = %bb.ac, %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread237
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ab:                                            ; preds = %bb.r, %bb.s
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.at

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.q
  %i.gh = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools15FileIsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.gh, label %.noexc.i144, label %bb.ag

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116HandleScriptModeERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(216) %i.ij) #25, !inline_history !0
  br label %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit165

_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit165: ; preds = %bb.ar, %_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i164
  %i.in = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i166 = icmp eq ptr %i.in, null
  br i1 %.not.i166, label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit168, label %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i167

_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i167: ; preds = %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit165
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !74
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(265) %i.in) #25, !inline_history !283
  br label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit168

_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit168: ; preds = %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i167, %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit165, %bb.aq
  %.pn88 = phi { ptr, i32 } [ %i.ih, %bb.aq ], [ %i.ii, %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit165 ], [ %i.ii, %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i167 ]
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit168, %bb.ap
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit168 ], [ %i.ig, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.ab, %bb.aa
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.as ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.gf, %bb.aa ], [ %i.gg, %bb.ab ] ; 2 uses
  %i.ir = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.cy
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.at
  %i.it = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.z
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.z ], [ %.pn88.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn88.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.loopexit.split-lp

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread235
  %i.iv = trunc nuw i8 %.056290 to i1
  br i1 %i.iv, label %bb.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread

bb.av:                                            ; preds = %bb.au
  %i.iw = load ptr, ptr %i.cw, align 8, !tbaa !63 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i8 1, ptr %i.k, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %16, ptr noundef nonnull align 8 dereferenceable(2952) %i.iw)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt11make_uniqueI24cmInstallScriptGeneratorJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRS6_RbSA_19cmListFileBacktraceEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.394") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0225.0288, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load ptr, ptr %15, align 8, !tbaa !68
  store ptr null, ptr %15, align 8, !tbaa !68
  store ptr %i.ix, ptr %14, align 8, !tbaa !71
  invoke void @_ZN10cmMakefile19AddInstallGeneratorESt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(2952) %i.iw, ptr noundef nonnull align 8 %14)
          to label %bb.ay unwind label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.iy = load ptr, ptr %14, align 8, !tbaa !72   ; 3 uses
  %.not.i172 = icmp eq ptr %i.iy, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit174, label %_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i173

_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i173: ; preds = %bb.ay
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !74
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(216) %i.iy) #25, !inline_history !0
  br label %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit174

_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit174: ; preds = %bb.ay, %_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i173
  %i.jc = load ptr, ptr %15, align 8, !tbaa !68   ; 3 uses
  %.not.i175 = icmp eq ptr %i.jc, null
  br i1 %.not.i175, label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit177, label %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i176

_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i176: ; preds = %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit174
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !74
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(265) %i.jc) #25, !inline_history !283
  br label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit177

_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit177: ; preds = %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit174, %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i176
  %i.jg = load ptr, ptr %i.cx, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i178 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i178, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182, label %bb.az

bb.az:                                            ; preds = %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit177
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.jh, align 8, !tbaa !79
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !80
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !74
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #25, !inline_history !1
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !74
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #25, !inline_history !1
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182

bb.bb:                                            ; preds = %bb.az
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i179 = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i179, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

bb.bd:                                            ; preds = %bb.bb
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i181 = phi i32 [ %i.jk, %bb.bc ], [ %i.ju, %bb.bd ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i181, 1
  br i1 %i.jv, label %bb.be, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182, !prof !82

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #25
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182: ; preds = %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit177, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread

bb.bf:                                            ; preds = %bb.av
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %bb.aw
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188

bb.bh:                                            ; preds = %bb.ax
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %14, align 8, !tbaa !72   ; 3 uses
  %.not.i183 = icmp eq ptr %i.jz, null
  br i1 %.not.i183, label %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185, label %_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i184

_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i184: ; preds = %bb.bh
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !74
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(216) %i.jz) #25, !inline_history !0
  br label %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185

_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185: ; preds = %bb.bh, %_ZNKSt14default_deleteI18cmInstallGeneratorEclEPS0_.exit.i184
  %i.kd = load ptr, ptr %15, align 8, !tbaa !68   ; 3 uses
  %.not.i186 = icmp eq ptr %i.kd, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188, label %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i187

_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i187: ; preds = %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !74
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(265) %i.kd) #25, !inline_history !283
  br label %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188

_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188: ; preds = %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i187, %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.jx, %bb.bg ], [ %i.jy, %_ZNSt10unique_ptrI18cmInstallGeneratorSt14default_deleteIS0_EED2Ev.exit185 ], [ %i.jy, %_ZNKSt14default_deleteI24cmInstallScriptGeneratorEclEPS0_.exit.i187 ]
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrI24cmInstallScriptGeneratorSt14default_deleteIS0_EED2Ev.exit188 ], [ %i.jw, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit.split-lp

.thread243:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182, %bb.au
  %.258.ph = phi i8 [ %.056290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132 ], [ 0, %bb.au ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134 ], [ 0, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit182 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0225.0288, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.kh, %.lcssa280366377
  br i1 %.not, label %bb.bl, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, %._crit_edge292
  %.056290.be = phi i8 [ %.258.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread ], [ 0, %._crit_edge292 ]
  %.060289.be = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread ], [ true, %._crit_edge292 ]
  %.sroa.0225.0288.be = phi ptr [ %i.kh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread ], [ %19, %._crit_edge292 ]
  br label %bb.l

._crit_edge292:                                   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0225.0288, i64 32 ; 2 uses
  %.not383 = icmp eq ptr %19, %.lcssa280366377
  br i1 %.not383, label %.noexc.i190, label %.backedge.backedge

.noexc.i190:                                      ; preds = %._crit_edge292
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ki, ptr %17, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 35, ptr %i.b, align 8, !tbaa !28
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc191 unwind label %bb.bj ; 3 uses

.noexc191:                                        ; preds = %.noexc.i190
  store ptr %i.kj, ptr %17, align 8, !tbaa !30
  %i.kk = load i64, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.kj, ptr noundef nonnull align 1 dereferenceable(35) @.str.43, i64 35, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kk
  store i8 0, ptr %i.km, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kn, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit194 unwind label %bb.bk

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit194: ; preds = %.noexc191
  %i.ko = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.ki
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit194
  %i.kq = load i64, ptr %i.ki, align 8, !tbaa !31
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.bp

bb.bj:                                            ; preds = %.noexc.i190
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.bk:                                            ; preds = %.noexc191
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ku = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ki
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.bk
  %i.kw = load i64, ptr %i.ki, align 8, !tbaa !31
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.bj
  %.pn96 = phi { ptr, i32 } [ %i.ks, %bb.bj ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.kt, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.loopexit.split-lp

bb.bl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread
  %i.ky = trunc nuw i8 %.258.ph to i1
  br i1 %i.ky, label %.noexc.i202, label %.thread381

.noexc.i202:                                      ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.kz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.kz, ptr %18, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 33, ptr %i.a, align 8, !tbaa !28
  %i.la = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc203 unwind label %bb.bm ; 3 uses

.noexc203:                                        ; preds = %.noexc.i202
  store ptr %i.la, ptr %18, align 8, !tbaa !30
  %i.lb = load i64, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.la, ptr noundef nonnull align 1 dereferenceable(33) @.str.44, i64 33, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  store i8 0, ptr %i.ld, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit206 unwind label %bb.bn

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit206: ; preds = %.noexc203
  %i.lf = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.kz
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit206
  %i.lh = load i64, ptr %i.kz, align 8, !tbaa !31
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bp

bb.bm:                                            ; preds = %.noexc.i202
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.bn:                                            ; preds = %.noexc203
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.kz
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.bn
  %i.ln = load i64, ptr %i.kz, align 8, !tbaa !31
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.bm
  %.pn94 = phi { ptr, i32 } [ %i.lj, %bb.bm ], [ %i.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.lk, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.loopexit.split-lp

.thread381:                                       ; preds = %.preheader, %bb.bl
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !63
  %i.lr = invoke noundef ptr @_ZNK10cmMakefile18GetGlobalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(2952) %i.lq)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %.thread381
  invoke void @_ZN17cmGlobalGenerator19AddInstallComponentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2202) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.bo, %.thread381
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bp:                                            ; preds = %.thread243, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.5 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ false, %.thread243 ], [ true, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.ls = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.m
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.bp
  %i.lu = load i64, ptr %i.m, align 8, !tbaa !31
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.lw = load ptr, ptr %i.l, align 8, !tbaa !30  ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZN12_GLOBAL__N_16HelperD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !31
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #27
  br label %_ZN12_GLOBAL__N_16HelperD2Ev.exit

_ZN12_GLOBAL__N_16HelperD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %.5

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn102 = phi { ptr, i32 } [ %.pn.pn, %bb.bi ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn88.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %lpad.loopexit.split-lp385, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.mb = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.m
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %.loopexit.split-lp
  %i.md = load i64, ptr %i.m, align 8, !tbaa !31
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.e
  %.pn102.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn102, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.mf = load ptr, ptr %i.l, align 8, !tbaa !30  ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZN12_GLOBAL__N_16HelperD2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !31
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #27
  br label %_ZN12_GLOBAL__N_16HelperD2Ev.exit221

_ZN12_GLOBAL__N_16HelperD2Ev.exit221:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn102.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_117HandleTargetsModeERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca [3 x %"struct.std::pair.403"], align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.ArgumentParser::Instance", align 8 ; 13 uses
  %4 = alloca %"class.std::function.5", align 8   ; 11 uses
  %5 = alloca %"class.std::function.5", align 8   ; 11 uses
  %6 = alloca %"class.std::function.5", align 8   ; 11 uses
  %7 = alloca %"class.std::function.5", align 8   ; 11 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.ArgumentParser::Instance", align 8 ; 13 uses
  %9 = alloca %"class.(anonymous namespace)::Helper", align 8 ; 25 uses
  %10 = alloca %"class.std::vector.32", align 8   ; 11 uses
  %11 = alloca %class.cmArgumentParser.407, align 8 ; 19 uses
  %12 = alloca %"class.std::vector.18", align 8   ; 11 uses
  %13 = alloca %struct.ArgVectors, align 8        ; 20 uses
  %14 = alloca %"struct.ArgumentParser::MaybeEmpty", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::optional.410", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::vector.18", align 8   ; 24 uses
  %19 = alloca %class.cmInstallCommandArguments, align 8 ; 24 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.ArgumentParser::ParseResult", align 8 ; 3 uses
  %22 = alloca %"struct.(anonymous namespace)::RuntimeDependenciesArgs", align 16 ; 24 uses
  %23 = alloca %class.cmInstallCommandArguments, align 8 ; 27 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %class.cmInstallCommandArguments, align 8 ; 24 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %class.cmInstallCommandArguments, align 8 ; 21 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %class.cmInstallCommandArguments, align 8 ; 16 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %class.cmInstallCommandArguments, align 8 ; 20 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %class.cmInstallCommandArguments, align 8 ; 16 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %class.cmInstallCommandArguments, align 8 ; 17 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %class.cmInstallCommandArguments, align 8 ; 17 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %class.cmInstallCommandArguments, align 8 ; 17 uses
end_hunk_1

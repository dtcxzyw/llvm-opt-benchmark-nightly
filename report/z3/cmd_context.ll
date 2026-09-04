Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/cmd_context?download=true
inline.NumInlined: 4635
inline.NumDeleted: 2326
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK11cmd_context14complete_modelER3refI5modelE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i ; 4 uses
  %.not1.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i.i.i, label %.loopexit284, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.y, %bb.m ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !666
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %.loopexit284, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not.i.i.i.i, label %.loopexit284, label %.lr.ph.i.i.i.i, !llvm.loop !55

.loopexit284:                                     ; preds = %.lr.ph.i.i.i.i, %bb.n, %bb.m
  %.sroa.0.1.i.i = phi ptr [ %i.y, %bb.m ], [ %i.ac, %bb.n ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %.not269297 = icmp eq ptr %.sroa.0.1.i.i, %i.ah
  br i1 %.not269297, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit284
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  br label %bb.v

.preheader:                                       ; preds = %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit, %.loopexit284
  %i.aj = load ptr, ptr %1, align 8, !tbaa !773   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !829 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.critedge, label %_ZNK10model_core17get_num_functionsEv.exit

bb.o:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.p:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.q:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13scoped_rlimitD2Ev.exit244

bb.r:                                             ; preds = %bb.j, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13scoped_rlimitD2Ev.exit244

bb.s:                                             ; preds = %_ZN13scoped_rlimitC2ER8reslimitj.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.t:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.u:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.v:                                             ; preds = %.lr.ph, %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit
  %.sroa.0254.0298 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph ], [ %.sroa.0254.2, %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0254.0298, i64 8
  %.sroa.0.0.copyload90 = load ptr, ptr %i.au, align 8, !tbaa !297 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0254.0298, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !830 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1144
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %bb.bi

bb.w:                                             ; preds = %bb.v
  %i.ay = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.az = icmp ugt i32 %i.ay, 11
  br i1 %i.az, label %bb.y, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139

bb.y:                                             ; preds = %bb.x
  %i.ba = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  br i1 %i.ba, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  invoke void @_Z12verbose_lockv()
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ac unwind label %bb.af     ; 5 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.75, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ac
  %i.bd = ptrtoint ptr %.sroa.0.0.copyload90 to i64 ; 2 uses
  %i.be = and i64 %i.bd, 7
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %.sroa.0.0.copyload90, null
  br i1 %.not.i, label %.invoke417, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ad
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload90) #27
  br label %.invoke417

.invoke417:                                       ; preds = %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bh = phi ptr [ %.sroa.0.0.copyload90, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.104, %bb.ad ]
  %i.bi = phi i64 [ %i.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.ad ]
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %i.bh, i64 noundef %i.bi)
          to label %_ZlsRSo6symbol.exit unwind label %bb.af ; 0 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.105, i64 noundef 2)
          to label %.noexc125 unwind label %bb.af ; 0 uses

.noexc125:                                        ; preds = %bb.ae
  %i.bl = lshr i64 %i.bd, 3
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %i.bm)
          to label %_ZlsRSo6symbol.exit unwind label %bb.af ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.invoke417, %.noexc125
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.76, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128: ; preds = %_ZlsRSo6symbol.exit
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.af

bb.af:                                            ; preds = %.invoke417, %.invoke, %_ZlsRSo6symbol.exit137, %.noexc135, %bb.aj, %bb.ah, %_ZlsRSo6symbol.exit, %.noexc125, %bb.ae, %bb.ac, %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128, %bb.ab, %bb.aa, %bb.y, %bb.w
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ag:                                            ; preds = %bb.z
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ah unwind label %bb.af     ; 5 uses

bb.ah:                                            ; preds = %bb.ag
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.75, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %bb.ah
  %i.bs = ptrtoint ptr %.sroa.0.0.copyload90 to i64 ; 2 uses
  %i.bt = and i64 %i.bs, 7
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %.not.i131 = icmp eq ptr %.sroa.0.0.copyload90, null
  br i1 %.not.i131, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i132

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i132: ; preds = %bb.ai
  %i.bv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload90) #27
  br label %.invoke

.invoke:                                          ; preds = %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i132
  %i.bw = phi ptr [ %.sroa.0.0.copyload90, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i132 ], [ @.str.104, %bb.ai ]
  %i.bx = phi i64 [ %i.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i132 ], [ 4, %bb.ai ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.bw, i64 noundef %i.bx)
          to label %_ZlsRSo6symbol.exit137 unwind label %bb.af ; 0 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.105, i64 noundef 2)
          to label %.noexc135 unwind label %bb.af ; 0 uses

.noexc135:                                        ; preds = %bb.aj
  %i.ca = lshr i64 %i.bs, 3
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef %i.cb)
          to label %_ZlsRSo6symbol.exit137 unwind label %bb.af ; 0 uses

_ZlsRSo6symbol.exit137:                           ; preds = %.invoke, %.noexc135
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.76, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139: ; preds = %_ZlsRSo6symbol.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1145 ; 4 uses
  %i.cg = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 816
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !728 ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !151
  %.not.not.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.not.i.i.i, label %_ZN10ptr_vectorI4sortEC2EjPS0_.exit, label %.preheader.i.i

bb.al:                                            ; preds = %.preheader.i.i
  %i.cj = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc247 unwind label %.loopexit283 ; 3 uses

.noexc247:                                        ; preds = %bb.al
  store i32 2, ptr %i.cj, align 4, !tbaa !195
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !195
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.cl, ptr %10, align 8, !tbaa !151
  br label %.preheader.i.i.backedge

thread-pre-split.i.i.i:                           ; preds = %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !195 ; 3 uses
  %i.co = mul i32 %i.cn, 3
  %i.cp = add i32 %i.co, 1
  %i.cq = lshr i32 %i.cp, 1                       ; 3 uses
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.cr, 8                        ; 2 uses
  %.not.i245 = icmp ugt i32 %i.cq, %i.cn
  br i1 %.not.i245, label %bb.am, label %bb.an

bb.am:                                            ; preds = %thread-pre-split.i.i.i
  %i.ct = shl i32 %i.cn, 3
  %i.cu = add i32 %i.ct, 8
  %.not27.i = icmp ugt i32 %i.cs, %i.cu
  br i1 %.not27.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am, %thread-pre-split.i.i.i
  %i.cv = call ptr @__cxa_allocate_exception(i64 40) #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cv, align 8, !tbaa !167
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !503
  %i.cy = load ptr, ptr %2, align 8, !tbaa !235   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !493 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ao
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !235
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !504
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !504
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i246 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !493
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ap
  %i.dg = phi i64 [ %i.dc, %bb.ap ], [ %.pre.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !493
  store ptr %i.cz, ptr %2, align 8, !tbaa !235
  store i64 0, ptr %i.dh, align 8, !tbaa !493
  store i8 0, ptr %i.cz, align 8, !tbaa !504
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %2, align 8, !tbaa !235   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cz
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aq
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !504
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.ar:                                            ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @__cxa_free_exception(ptr %i.cv) #27
  br label %.body

bb.as:                                            ; preds = %bb.am
  %i.dp = zext i32 %i.cs to i64
  %i.dq = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dp)
          to label %.noexc248 unwind label %.loopexit283 ; 2 uses

.noexc248:                                        ; preds = %bb.as
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  store ptr %i.dr, ptr %10, align 8, !tbaa !151
  store i32 %i.cq, ptr %i.dq, align 4, !tbaa !195
  br label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %.noexc248, %.noexc247
  %.be = phi ptr [ %i.cl, %.noexc247 ], [ %i.dr, %.noexc248 ]
  br label %.preheader.i.i

bb.at:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.preheader.i.i:                                   ; preds = %bb.ak, %.preheader.i.i.backedge
  %i.ds = phi ptr [ %.be, %.preheader.i.i.backedge ], [ null, %bb.ak ] ; 10 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.al, label %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i:   ; preds = %.preheader.i.i
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !195
  %i.dw = icmp ugt i32 %i.cf, %i.dv
  br i1 %i.dw, label %thread-pre-split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 -4
  store i32 %i.cf, ptr %i.dx, align 4, !tbaa !195
  %i.dy = zext i32 %i.cf to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = add nuw nsw i64 %i.dy, 2305843009213693951
  %i.eb = and i64 %i.ea, 2305843009213693951      ; 2 uses
  %12 = add nuw nsw i64 %i.eb, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.eb, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %12, 4611686018427387900       ; 3 uses
  %13 = shl i64 %n.vec, 3
  %14 = getelementptr i8, ptr %i.ds, i64 %13
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ci, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %15 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ds, i64 %15 ; 2 uses
  %16 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !126
  store <2 x ptr> %broadcast.splat, ptr %16, align 8, !tbaa !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !1137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %_ZN10ptr_vectorI4sortEC2EjPS0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.020.i.i.i.ph = phi ptr [ %i.ds, %.lr.ph.preheader.i.i.i ], [ %14, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.020.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.ci, ptr %.020.i.i.i, align 8, !tbaa !126
  %i.ed = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.ed, %i.dz
  br i1 %.not13.i.i.i, label %_ZN10ptr_vectorI4sortEC2EjPS0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1138

_ZN10ptr_vectorI4sortEC2EjPS0_.exit:              ; preds = %.lr.ph.i.i.i, %middle.block, %bb.ak
  %i.ee = phi ptr [ null, %bb.ak ], [ %i.ds, %middle.block ], [ %i.ds, %.lr.ph.i.i.i ] ; 3 uses
  %i.ef = load ptr, ptr %i.ai, align 8, !tbaa !480 ; 2 uses
  %.not.i141 = icmp eq ptr %i.ef, null
  br i1 %.not.i141, label %bb.au, label %_ZNK11cmd_context2pmEv.exit

bb.au:                                            ; preds = %_ZN10ptr_vectorI4sortEC2EjPS0_.exit
  invoke void @_ZN11cmd_context12init_managerEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %.noexc142 unwind label %bb.bc, !inline_history !27

.noexc142:                                        ; preds = %bb.au
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !480
  br label %_ZNK11cmd_context2pmEv.exit

_ZNK11cmd_context2pmEv.exit:                      ; preds = %.noexc142, %_ZN10ptr_vectorI4sortEC2EjPS0_.exit
  %i.eg = phi ptr [ %.pre.i, %.noexc142 ], [ %i.ef, %_ZN10ptr_vectorI4sortEC2EjPS0_.exit ]
  %i.eh = icmp eq ptr %i.ee, null
  br i1 %i.eh, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, label %bb.av

bb.av:                                            ; preds = %_ZNK11cmd_context2pmEv.exit
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !195
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %_ZNK11cmd_context2pmEv.exit, %bb.av
  %.0.i = phi i32 [ %i.ej, %bb.av ], [ 0, %_ZNK11cmd_context2pmEv.exit ]
  %i.ek = load ptr, ptr %.sroa.6.0.copyload, align 8, !tbaa !167
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.eg, i32 noundef %.0.i, ptr noundef %i.ee)
          to label %bb.aw unwind label %bb.bc     ; 3 uses

bb.aw:                                            ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.eo = load ptr, ptr %1, align 8, !tbaa !773
  %i.ep = invoke noundef zeroext i1 @_ZNK5model22has_uninterpreted_sortEP4sort(ptr noundef nonnull align 8 dereferenceable(160) %i.eo, ptr noundef %i.en)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ep, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.eq = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.er = invoke noundef ptr @_ZN11ast_manager14get_some_valueEP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.eq, ptr noundef %i.en)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  store ptr %i.er, ptr %i.a, align 8, !tbaa !215
  %i.es = load ptr, ptr %1, align 8, !tbaa !773
  invoke void @_ZN5model14register_usortEP4sortjPKP4expr(ptr noundef nonnull align 8 dereferenceable(160) %i.es, ptr noundef %i.en, i32 noundef 1, ptr noundef nonnull %i.a)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.be

.loopexit283:                                     ; preds = %bb.al, %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.au, %bb.aw, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bh

bb.be:                                            ; preds = %bb.bb, %bb.ax
  %i.ev = load ptr, ptr %10, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ew)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd, %bb.bc
  %.pn104 = phi { ptr, i32 } [ %i.eu, %bb.bd ], [ %i.et, %bb.bc ]
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #27
  br label %.body

.body:                                            ; preds = %.loopexit283, %.loopexit.split-lp, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.bh
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %bb.bh ], [ %i.do, %bb.ar ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.fi

bb.bi:                                            ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit, %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0254.0298, i64 24 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.ez, %i.ac
  br i1 %.not1.i.i, label %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bi, %bb.bj
  %.sroa.0254.1 = phi ptr [ %i.fd, %bb.bj ], [ %i.ez, %bb.bi ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0254.1, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !666
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0254.1, i64 24 ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.fd, %i.ac
  br i1 %.not.i.i143, label %_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !55

_ZN14core_hashtableI17default_map_entryI6symbolP10psort_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.bj, %bb.bi
  %.sroa.0254.2 = phi ptr [ %i.ez, %bb.bi ], [ %i.fd, %bb.bj ], [ %.sroa.0254.1, %.lr.ph.i.i ] ; 2 uses
  %.not269 = icmp eq ptr %.sroa.0254.2, %i.ah
  br i1 %.not269, label %.preheader, label %bb.v

_ZNK10model_core17get_num_functionsEv.exit:       ; preds = %.preheader, %bb.cj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cj ], [ 0, %.preheader ] ; 3 uses
  %i.fe = phi ptr [ %i.it, %bb.cj ], [ %i.al, %.preheader ] ; 2 uses
  %i.ff = phi ptr [ %i.ir, %bb.cj ], [ %i.aj, %.preheader ] ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !195
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv, %i.fi
  br i1 %i.fj, label %bb.bl, label %.critedge

.critedge:                                        ; preds = %_ZNK10model_core17get_num_functionsEv.exit, %bb.cj, %.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !302 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !301 ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %.idx.i.i144 = mul nuw nsw i64 %i.fo, 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i.i144 ; 4 uses
  %.not1.i.i.i.i145 = icmp eq i32 %i.fn, 0
  br i1 %.not1.i.i.i.i145, label %.loopexit280, label %.lr.ph.i.i.i.i146

.lr.ph.i.i.i.i146:                                ; preds = %.critedge, %bb.bk
  %.sroa.0.0.i.i147 = phi ptr [ %i.ft, %bb.bk ], [ %i.fl, %.critedge ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i147, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !306
  %i.fs = icmp eq i32 %i.fr, 2
  br i1 %i.fs, label %.loopexit280, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i146
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i147, i64 24 ; 2 uses
  %.not.i.i.i.i148 = icmp eq ptr %i.ft, %i.fp
  br i1 %.not.i.i.i.i148, label %.loopexit280, label %.lr.ph.i.i.i.i146, !llvm.loop !54

bb.bl:                                            ; preds = %_ZNK10model_core17get_num_functionsEv.exit
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !117 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !129 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !823 ; 3 uses
  %i.gb = add i32 %i.ga, -1
  %i.gc = and i32 %i.gb, %i.fy                    ; 3 uses
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !824 ; 3 uses
  %i.ge = zext i32 %i.gc to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ge, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx.i.i.i.i ; 3 uses
  %i.gg = zext i32 %i.ga to i64
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gg
  %.not34.i.i.i.i = icmp eq i32 %i.gc, %i.ga
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i152

.preheader.i.i.i.i:                               ; preds = %bb.bo, %bb.bl
  %.not2736.i.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not2736.i.i.i.i, label %_ZNK10model_core15get_func_interpEP9func_decl.exit, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i152:                                ; preds = %bb.bl, %bb.bo
  %.035.i.i.i.i = phi ptr [ %i.gp, %bb.bo ], [ %i.gf, %bb.bl ] ; 3 uses
  %i.gi = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !828 ; 4 uses
  %i.gj = icmp ult ptr %i.gi, inttoptr (i64 2 to ptr)
  br i1 %i.gj, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i152
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !129
  %i.gm = icmp eq i32 %i.gl, %i.fy
  %i.gn = icmp eq ptr %i.gi, %i.fv
  %or.cond.i.i.i.i = and i1 %i.gn, %i.gm
  br i1 %or.cond.i.i.i.i, label %.loopexit.i, label %bb.bo
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!937 = distinct !{!937, !116}
!938 = distinct !{!938, !116}
!939 = distinct !{!939, !116, !216, !217}
!940 = distinct !{!940, !218}
!941 = distinct !{!941, !116, !216}
!942 = distinct !{!942, !116}
!943 = !{!484, !138, i64 0}
!944 = distinct !{null}
!945 = !{!359, !101, i64 8}
!946 = !{!359, !101, i64 12}
!947 = !{!359, !101, i64 16}
!948 = !{!363, !101, i64 8}
!949 = !{!363, !101, i64 12}
!950 = !{!363, !101, i64 16}
!951 = !{!367, !101, i64 8}
!952 = !{!367, !101, i64 12}
!953 = !{!367, !101, i64 16}
!954 = !{!367, !366, i64 0}
!955 = !{!393, !393, i64 0}
!956 = distinct !{null}
!957 = distinct !{null}
!958 = distinct !{null, null, null}
!959 = distinct !{null, null, null}
!960 = distinct !{null, null, null}
!961 = distinct !{null}
!962 = distinct !{null, null, null, null, null}
!963 = distinct !{null}
!964 = distinct !{ptr @_ZN10scoped_ptrIN11cmd_context6pp_envEED2Ev, null}
!965 = distinct !{ptr @_ZN10scoped_ptrIN11cmd_context5dt_ehEED2Ev, null}
!966 = distinct !{ptr @_ZN3refI11opt_wrapperED2Ev, null, null, null}
!967 = distinct !{ptr @_ZN3refI16check_sat_resultED2Ev, null, null, null}
!968 = distinct !{ptr @_ZN3refI6solverED2Ev, null, null, null}
!969 = distinct !{ptr @_ZN10scoped_ptrI14solver_factoryED2Ev, null}
!970 = distinct !{ptr @_ZN15ref_vector_coreI23generic_model_converter21ref_unmanaged_wrapperIS0_EED2Ev, null, null, null, null, null}
!971 = distinct !{ptr @_ZN10scoped_ptrI10proof_cmdsED2Ev, null}
!972 = distinct !{null, null, null, null, null, null}
!973 = distinct !{!973, !116}
!974 = distinct !{!974, !116}
!975 = distinct !{!975, !218}
!976 = !{ptr @_ZN11cmd_context10reset_cmdsEv}
!977 = !{ptr @_ZN11cmd_context21init_external_managerEv}
!978 = !{!"p2 _ZTS5sexpr", !148, i64 0}
!979 = !{!"_ZTS6vectorIP5sexprLb0EjE", !978, i64 0}
!980 = !{!979, !978, i64 0}
!981 = !{ptr @_ZN11cmd_contextD0Ev}
!982 = distinct !{!982, !116}
!983 = !{!230, !130, i64 72}
!984 = distinct !{null, ptr @_ZNK11cmd_context1mEv, null, null, null}
!985 = !{ptr @_ZN11cmd_context21init_external_managerEv, ptr @_ZNK11cmd_context1mEv}
!986 = distinct !{!986, !116}
!987 = distinct !{null, ptr @_ZN11cmd_context14register_plistEv}
!988 = !{ptr @_ZN11cmd_context15register_pluginERK6symbolP11decl_pluginb}
!989 = !{!158, !101, i64 16}
!990 = !{!162, !105, i64 0}
!991 = !{!"p1 _ZTSN7obj_mapI9func_declPN6recfun8case_defEE13obj_map_entryE", !104, i64 0}
!992 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPN6recfun8case_defEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !991, i64 0, !101, i64 8, !101, i64 12, !101, i64 16}
!993 = !{!992, !101, i64 8}
!994 = !{!992, !101, i64 12}
!995 = !{!992, !101, i64 16}
!996 = !{!"_ZTSN7obj_mapI9func_declPN6recfun8case_defEE8key_dataE", !105, i64 0, !189, i64 8}
!997 = !{!996, !105, i64 0}
!998 = !{!992, !991, i64 0}
!999 = !{!"_ZTS7obj_mapI9func_declPN6recfun3defEE", !158, i64 0}
!1000 = !{!"_ZTS7obj_mapI9func_declPN6recfun8case_defEE", !992, i64 0}
!1001 = !{!"_ZTSN6recfun4decl6pluginE", !608, i64 0, !617, i64 24, !999, i64 32, !1000, i64 56, !130, i64 80}
!1002 = !{!1001, !130, i64 80}
!1003 = !{!248, !247, i64 0}
!1004 = !{!248, !101, i64 8}
!1005 = !{ptr @_ZN11cmd_context11load_pluginERK6symbolbR7svectorIijE}
!1006 = !{ptr @_ZN11cmd_context5dt_ehC2ERS_}
!1007 = !{!634, !627, i64 104}
!1008 = !{!608, !138, i64 8}
!1009 = !{!640, !101, i64 8}
!1010 = !{!640, !101, i64 12}
!1011 = !{!640, !101, i64 16}
!1012 = !{!643, !101, i64 8}
!1013 = !{!643, !101, i64 12}
!1014 = !{!643, !101, i64 16}
!1015 = !{!"_ZTS9table2mapI17default_map_entryI6symbolPN8datatype3defEE16symbol_hash_proc14symbol_eq_procE", !640, i64 0}
!1016 = !{!"_ZTS3mapI6symbolPN8datatype3defE16symbol_hash_proc14symbol_eq_procE", !1015, i64 0}
!1017 = !{!"_ZTS9table2mapI17default_map_entryI6symboljE16symbol_hash_proc14symbol_eq_procE", !643, i64 0}
!1018 = !{!"_ZTS3mapI6symbolj16symbol_hash_proc14symbol_eq_procE", !1017, i64 0}
!1019 = !{!"_ZTS7obj_mapI4sortP10ptr_vectorI9func_declEE", !646, i64 0}
!1020 = !{!"_ZTS7obj_mapI4sortP9func_declE", !648, i64 0}
!1021 = !{!"_ZTS7obj_mapI4sortSt4pairIP9func_decljEE", !650, i64 0}
!1022 = !{!"_ZTS7obj_mapI9func_declP10ptr_vectorIS0_EE", !652, i64 0}
!1023 = !{!"_ZTS7obj_mapI4sortbE", !654, i64 0}
!1024 = !{!"p1 _ZTS10ref_vectorI3ast11ast_managerE", !104, i64 0}
!1025 = !{!"p2 _ZTSN8datatype10param_size4sizeE", !148, i64 0}
!1026 = !{!"_ZTS6vectorIPN8datatype10param_size4sizeELb0EjE", !1025, i64 0}
!1027 = !{!"_ZTS10ptr_vectorIN8datatype10param_size4sizeEE", !1026, i64 0}
!1028 = !{!"_ZTS15ref_vector_coreIN8datatype10param_size4sizeE21ref_unmanaged_wrapperIS2_EE", !1027, i64 0}
!1029 = !{!"p2 _ZTS10ptr_vectorI9func_declE", !148, i64 0}
!1030 = !{!"_ZTS6vectorIP10ptr_vectorI9func_declELb0EjE", !1029, i64 0}
!1031 = !{!"_ZTS10ptr_vectorIS_I9func_declEE", !1030, i64 0}
!1032 = !{!"_ZTSN8datatype4decl6pluginE", !608, i64 0, !637, i64 24, !1016, i64 32, !1018, i64 56, !101, i64 80, !257, i64 88, !101, i64 96, !130, i64 100, !1019, i64 104, !1020, i64 128, !1021, i64 152, !1022, i64 176, !291, i64 200, !291, i64 224, !291, i64 248, !1023, i64 272, !1023, i64 296, !1023, i64 320, !1024, i64 344, !1028, i64 352, !1031, i64 360, !101, i64 368, !185, i64 376}
!1033 = !{!1032, !101, i64 80}
!1034 = !{!1032, !101, i64 96}
!1035 = !{!1032, !130, i64 100}
!1036 = !{!646, !101, i64 8}
!1037 = !{!646, !101, i64 12}
!1038 = !{!646, !101, i64 16}
!1039 = !{!"p1 _ZTS10ptr_vectorI9func_declE", !104, i64 0}
!1040 = !{!"_ZTSN7obj_mapI4sortP10ptr_vectorI9func_declEE8key_dataE", !122, i64 0, !1039, i64 8}
!1041 = !{!1040, !122, i64 0}
!1042 = !{!648, !101, i64 8}
!1043 = !{!648, !101, i64 12}
!1044 = !{!648, !101, i64 16}
!1045 = !{!"_ZTSN7obj_mapI4sortP9func_declE8key_dataE", !122, i64 0, !105, i64 8}
!1046 = !{!1045, !122, i64 0}
!1047 = !{!650, !101, i64 8}
!1048 = !{!650, !101, i64 12}
!1049 = !{!650, !101, i64 16}
!1050 = !{!652, !101, i64 8}
!1051 = !{!652, !101, i64 12}
!1052 = !{!652, !101, i64 16}
!1053 = !{!"_ZTSN7obj_mapI9func_declP10ptr_vectorIS0_EE8key_dataE", !105, i64 0, !1039, i64 8}
!1054 = !{!1053, !105, i64 0}
!1055 = !{!290, !101, i64 8}
!1056 = !{!290, !101, i64 12}
!1057 = !{!290, !101, i64 16}
!1058 = !{!"_ZTSN7obj_mapI9func_declPS0_E8key_dataE", !105, i64 0, !105, i64 8}
!1059 = !{!1058, !105, i64 0}
!1060 = !{!654, !101, i64 8}
!1061 = !{!654, !101, i64 12}
!1062 = !{!654, !101, i64 16}
!1063 = !{!"_ZTSN7obj_mapI4sortbE8key_dataE", !122, i64 0, !130, i64 8}
!1064 = !{!1063, !122, i64 0}
!1065 = !{!461, !130, i64 275}
!1066 = !{!"_ZTS23generic_model_converter", !686, i64 0, !138, i64 32, !229, i64 40, !690, i64 72}
!1067 = !{!1066, !138, i64 32}
!1068 = distinct !{!1068, !"_ZNK6recfun4decl6plugin15get_promise_defEP9func_decl"}
!1069 = distinct !{!1069, !1068, !"_ZNK6recfun4decl6plugin15get_promise_defEP9func_decl: argument 0"}
!1070 = !{!1069}
!1071 = !{!197, !196, i64 0}
!1072 = distinct !{!1072, !116}
!1073 = distinct !{!1073, !116, !711}
!1074 = distinct !{!1074, !116}
!1075 = distinct !{!1075, !116}
!1076 = distinct !{!1076, !116}
!1077 = !{!715, !138, i64 8}
!1078 = !{!714, !101, i64 0}
!1079 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!1080 = distinct !{!1080, !"_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE"}
!1081 = distinct !{!1081, !1080, !"_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE: argument 0"}
!1082 = !{!1081}
!1083 = distinct !{!1083, !116}
!1084 = !{!"p1 _ZTSN8datatype11constructorE", !104, i64 0}
!1085 = !{!1084, !1084, i64 0}
!1086 = !{!"p1 _ZTSN8datatype8accessorE", !104, i64 0}
!1087 = !{!1086, !1086, i64 0}
!1088 = !{!"_ZTS10ptr_vectorIN8datatype8accessorEE", !724, i64 0}
!1089 = !{!"p1 _ZTSN8datatype3defE", !104, i64 0}
!1090 = !{!"_ZTSN8datatype11constructorE", !119, i64 0, !119, i64 8, !1088, i64 16, !1089, i64 24}
!1091 = !{!1090, !1089, i64 24}
!1092 = distinct !{!1092, !116}
!1093 = distinct !{!1093, !116}
!1094 = distinct !{!1094, !116}
!1095 = distinct !{!1095, !116}
!1096 = distinct !{!1096, !218}
!1097 = distinct !{!1097, !116}
!1098 = distinct !{!1098, !116}
!1099 = distinct !{!1099, !218}
!1100 = distinct !{!1100, !116}
!1101 = distinct !{!1101, !218}
!1102 = distinct !{!1102, !116}
!1103 = distinct !{!1103, !116}
!1104 = distinct !{!1104, !218}
!1105 = distinct !{!1105, !116}
!1106 = !{!747, !101, i64 8}
!1107 = !{!747, !101, i64 12}
!1108 = !{!747, !101, i64 16}
!1109 = !{!"_ZTSN7obj_mapI3astPS0_E8key_dataE", !487, i64 0, !487, i64 8}
!1110 = !{!1109, !487, i64 0}
!1111 = distinct !{!1111, !116}
!1112 = distinct !{!1112, !116}
!1113 = distinct !{!1113, !116}
!1114 = distinct !{!1114, !116}
!1115 = distinct !{!1115, !116}
!1116 = !{!461, !130, i64 273}
!1117 = !{!230, !130, i64 79}
!1118 = !{!293, !288, i64 888}
!1119 = distinct !{null}
!1120 = distinct !{!1120, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1121 = distinct !{!1121, !1120, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1122 = distinct !{!1122, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1123 = distinct !{!1123, !1122, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1124 = !{!501, !172, i64 16}
!1125 = !{!1121}
!1126 = !{!1123}
!1127 = !{!1123, !1121}
!1128 = !{!"_ZTS7escaped", !118, i64 0, !130, i64 8, !101, i64 12}
!1129 = !{!1128, !118, i64 0}
!1130 = !{!1128, !130, i64 8}
!1131 = !{!1128, !101, i64 12}
!1132 = distinct !{null, null, null}
!1133 = distinct !{!1133, !218}
!1134 = distinct !{!1134, !1135}
!1135 = !{!"llvm.loop.unswitch.partial.disable"}
!1136 = !{!813, !813, i64 0}
!1137 = distinct !{!1137, !116, !216, !217}
!1138 = distinct !{!1138, !116, !217, !216}
!1139 = distinct !{!1139, !116}
!1140 = distinct !{!1140, !116}
!1141 = !{!"_ZTS15psort_decl_kind", !100, i64 0}
!1142 = !{!"p1 _ZTS16psort_inst_cache", !104, i64 0}
!1143 = !{!"_ZTS10psort_decl", !583, i64 0, !119, i64 24, !1141, i64 32, !1142, i64 40}
!1144 = !{!1143, !1141, i64 32}
!1145 = !{!583, !101, i64 12}
!1146 = !{!826, !825, i64 8}
!1147 = !{!"p2 _ZTS10func_entry", !148, i64 0}
!1148 = !{!"_ZTS6vectorIP10func_entryLb0EjE", !1147, i64 0}
!1149 = !{!"_ZTS10ptr_vectorI10func_entryE", !1148, i64 0}
!1150 = !{!"p1 _ZTS13ptr_hashtableI10func_entry15func_entry_hash13func_entry_eqE", !104, i64 0}
!1151 = !{!"p1 _ZTS10func_entry", !104, i64 0}
!1152 = !{!"_ZTS11func_interp", !138, i64 0, !101, i64 8, !1149, i64 16, !181, i64 24, !130, i64 32, !181, i64 40, !181, i64 48, !1150, i64 56, !1151, i64 64}
!1153 = !{!1152, !181, i64 24}
!1154 = distinct !{!1154, !116}
!1155 = distinct !{!1155, !116}
!1156 = distinct !{null, null}
!1157 = distinct !{!1157, !116}
!1158 = distinct !{!1158, !116}
!1159 = distinct !{!1159, !116}
!1160 = distinct !{!1160, !711}
!1161 = !{!436, !436, i64 0}
!1162 = !{!873, !101, i64 0}
!1163 = distinct !{!1163, !116}
!1164 = distinct !{!1164, !116}
!1165 = distinct !{!1165, !116}
!1166 = !{!"_ZTS19ref_manager_wrapperI3ast11ast_managerE", !138, i64 0}
!1167 = !{!1166, !138, i64 0}
!1168 = distinct !{null}
!1169 = !{!"_ZTS15new_datatype_eh"}
!1170 = !{!"_ZTSN11cmd_context5dt_ehE", !1169, i64 0, !618, i64 8, !832, i64 16}
!1171 = !{!1170, !618, i64 8}
!1172 = distinct !{!1172, !116}
!1173 = distinct !{!1173, !116}
!1174 = distinct !{!1174, !116}
!1175 = !{!"_ZTSN6recfun7replaceE"}
!1176 = !{!"_ZTSSt13unordered_mapIP4exprS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE", !177, i64 0}
!1177 = !{!"_ZTS17expr_safe_replace", !138, i64 0, !332, i64 8, !332, i64 24, !280, i64 40, !330, i64 48, !330, i64 56, !332, i64 64, !1176, i64 80}
!1178 = !{!"_ZTS14recfun_replace", !1175, i64 0, !138, i64 8, !1177, i64 16}
!1179 = !{!1178, !138, i64 8}
!1180 = distinct !{!1180, !116}
!1181 = !{!177, !173, i64 16}
!1182 = !{!174, !173, i64 0}
!1183 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1184 = !{!617, !196, i64 0}
!1185 = distinct !{!1185, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1186 = distinct !{!1186, !1185, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1187 = distinct !{!1187, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1188 = distinct !{!1188, !1187, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1189 = !{!1186}
!1190 = !{!1188}
!1191 = !{!1188, !1186}
!1192 = !{!"_ZTSSi", !172, i64 8}
!1193 = !{!1192, !172, i64 8}
!1194 = distinct !{!1194, !116}
!1195 = distinct !{!1195, !116}
!1196 = !{!750, !749, i64 0}
!1197 = distinct !{!1197, !218}
!1198 = distinct !{!1198, !116}
!1199 = distinct !{!1199, !218}
!1200 = distinct !{!1200, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!1201 = distinct !{!1201, !1200, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1202 = distinct !{!1202, !1200, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1203 = distinct !{!1203, !116}
!1204 = !{!1201}
!1205 = !{!1202}
!1206 = !{!1201, !1202}
!1207 = distinct !{null, null, null, null, null}
!1208 = distinct !{!1208, !116}
!1209 = distinct !{!1209, !116}
!1210 = distinct !{null, null}
!1211 = !{!810, !138, i64 0}
!1212 = !{!"p1 _ZTSN15user_propagator8callbackE", !104, i64 0}
!1213 = !{!1212, !1212, i64 0}
!1214 = !{!"_ZTS11value_trailIjE", !883, i64 0, !251, i64 8, !101, i64 16}
!1215 = !{!1214, !101, i64 16}
!1216 = !{!1214, !251, i64 8}
!1217 = !{i64 4}
!1218 = !{!"_ZTS16push_back_vectorI10ref_vectorI4expr11ast_managerEE", !883, i64 0, !813, i64 8}
!1219 = !{!1218, !813, i64 8}
!1220 = !{!891, !890, i64 0}
!1221 = !{!893, !892, i64 0}
!1222 = distinct !{ptr @_ZNK11cmd_context6try_ppEP4sort, null}
!1223 = distinct !{ptr @_ZNK11cmd_context6try_ppEP4sort, ptr @_ZNK11cmd_context10get_pp_envEv, null, null}
!1224 = !{ptr @_ZNK11cmd_context6try_ppEP4sort, ptr @_ZNK11cmd_context10get_pp_envEv}
!1225 = !{ptr @_ZNK11cmd_context6try_ppEP4sort}
!1226 = distinct !{!1226, !116}
!1227 = distinct !{!1227, !116}
!1228 = distinct !{!1228, !218}
!1229 = distinct !{!1229, !116}
!1230 = distinct !{!1230, !116}
!1231 = distinct !{!1231, !116}
!1232 = !{i64 0, i64 8, !297, i64 8, i64 8, !317}
!1233 = distinct !{!1233, !116}
!1234 = distinct !{!1234, !116}
!1235 = distinct !{!1235, !116}
!1236 = distinct !{!1236, !116}
!1237 = distinct !{!1237, !116}
!1238 = distinct !{!1238, !116}
!1239 = !{i64 0, i64 8, !297, i64 8, i64 4, !195, i64 12, i64 4, !195, i64 16, i64 8, !570}
!1240 = distinct !{!1240, !218}
!1241 = distinct !{!1241, !116}
!1242 = distinct !{!1242, !116}
!1243 = distinct !{!1243, !116}
!1244 = distinct !{!1244, !116}
!1245 = distinct !{!1245, !116}
!1246 = !{i64 0, i64 8, !297, i64 8, i64 8, !117}
!1247 = distinct !{!1247, !116}
!1248 = distinct !{!1248, !116}
!1249 = distinct !{!1249, !218}
!1250 = distinct !{!1250, !116}
!1251 = distinct !{!1251, !116}
!1252 = distinct !{!1252, !116}
!1253 = !{i64 0, i64 8, !297, i64 8, i64 8, !830}
!1254 = distinct !{!1254, !218}
!1255 = distinct !{!1255, !116}
!1256 = distinct !{!1256, !116}
!1257 = !{!587, !587, i64 0}
!1258 = !{i64 0, i64 8, !297, i64 8, i64 8, !1257}
!1259 = distinct !{!1259, !218}
!1260 = distinct !{!1260, !116}
!1261 = distinct !{!1261, !116}
!1262 = !{!673, !673, i64 0}
!1263 = !{i64 0, i64 8, !297, i64 8, i64 8, !1262}
!1264 = distinct !{!1264, !218}
!1265 = distinct !{!1265, !116}
!1266 = distinct !{!1266, !116}
!1267 = !{!679, !679, i64 0}
!1268 = !{i64 0, i64 8, !297, i64 8, i64 8, !1267}
!1269 = distinct !{!1269, !218}
!1270 = distinct !{!1270, !116}
!1271 = !{!"p1 _ZTS7zstring", !104, i64 0}
!1272 = !{!1271, !1271, i64 0}
!1273 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP7zstringLb1EEE", !1271, i64 0}
!1274 = !{!1273, !1271, i64 0}
!1275 = !{!"p1 _ZTS8mpz_cell", !104, i64 0}
!1276 = !{!"_ZTS3mpz", !101, i64 0, !101, i64 4, !101, i64 4, !1275, i64 8}
!1277 = !{!1276, !101, i64 0}
!1278 = !{!1276, !1275, i64 8}
!1279 = !{!1275, !1275, i64 0}
!1280 = !{!470, !470, i64 0}
!1281 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIdLb1EEE", !470, i64 0}
!1282 = !{!1281, !470, i64 0}
!1283 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIjLb1EEE", !101, i64 0}
!1284 = !{!1283, !101, i64 0}
!1285 = distinct !{!1285, !116}
!1286 = distinct !{!1286, !116}
!1287 = distinct !{!1287, !116}
!1288 = distinct !{!1288, !116}
!1289 = distinct !{!1289, !116}
!1290 = distinct !{!1290, !116}
!1291 = distinct !{!1291, !218}
!1292 = distinct !{!1292, !116}
!1293 = distinct !{!1293, !116}
!1294 = distinct !{!1294, !218}
!1295 = distinct !{!1295, !116}
!1296 = distinct !{!1296, !116}
!1297 = distinct !{!1297, !218}
!1298 = distinct !{!1298, !116}
!1299 = distinct !{!1299, !116}
!1300 = distinct !{!1300, !218}
!1301 = distinct !{!1301, !116}
!1302 = distinct !{!1302, !218}
!1303 = distinct !{!1303, !218}
!1304 = distinct !{!1304, !116}
!1305 = distinct !{!1305, !116}
!1306 = distinct !{!1306, !116}
!1307 = distinct !{!1307, !116}
!1308 = !{!911, !101, i64 12}
!1309 = !{!911, !101, i64 8}
!1310 = !{!"_ZTSSt4pairIP4exprjE", !181, i64 0, !101, i64 8}
!1311 = !{!1310, !181, i64 0}
!1312 = !{!1310, !101, i64 8}
!1313 = !{!"_ZTS15quantifier_kind", !100, i64 0}
!1314 = !{!"_ZTS10quantifier", !862, i64 0, !1313, i64 16, !101, i64 20, !181, i64 24, !122, i64 32, !101, i64 40, !101, i64 44, !130, i64 48, !130, i64 49, !119, i64 56, !119, i64 64, !101, i64 72, !101, i64 76, !100, i64 80}
!1315 = !{!1314, !101, i64 72}
!1316 = !{!1314, !101, i64 76}
!1317 = !{!1314, !101, i64 20}
!1318 = !{!484, !483, i64 8}
!1319 = distinct !{!1319, !218}
!1320 = distinct !{!1320, !116}
end_hunk_1

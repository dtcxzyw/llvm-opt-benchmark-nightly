Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5015
inline.NumDeleted: 1348
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6opencc12_GLOBAL__N_114ConfigInternal9ParseDictERKN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEb:bb.a
          cleanup                                 ; 4 uses
  %i.db = load ptr, ptr %16, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %bb.ad
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !60, !noalias !673
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #35, !noalias !673
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i
  %i.dg = load ptr, ptr %17, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread.i: ; preds = %bb.aa
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %17, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread.i
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !60, !noalias !673
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #35, !noalias !673
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
  %i.dp = load i64, ptr %i.dh, align 8, !tbaa !60, !noalias !673
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dq) #35, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !673
  br i1 %.010.i, label %bb.af, label %bb.bu

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !673
  br i1 %.010.i, label %bb.af, label %bb.bu

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.thread.i, %.thread20.i
  %.pn42.pn.pn19.ph.i = phi { ptr, i32 } [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.thread.i ], [ %i.cz, %.thread20.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !673
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i
  %.pn42.pn.pn19.i = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i ], [ %i.da, %bb.ae ], [ %.pn42.pn.pn19.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.cq) #33, !noalias !673
  br label %bb.bu

bb.ag:                                            ; preds = %bb.y
  %i.dr = load ptr, ptr %13, align 8, !tbaa !675, !noalias !673 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33, !noalias !673
  %i.ds = load i16, ptr %i.bm, align 2, !tbaa !60, !noalias !673
  %i.dt = and i16 %i.ds, 4096
  %.not.i.i64.i = icmp eq i16 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.089.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !673
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 281474976710655
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = select i1 %.not.i.i64.i, ptr %i.dy, ptr %.sroa.03.089.i ; 4 uses
  store ptr %i.bh, ptr %19, align 8, !tbaa !55, !noalias !673
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #32
          to label %.noexc.i59 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673

.noexc.i59:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dz) #33, !noalias !673 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !673
  store i64 %i.eb, ptr %i.d, align 8, !tbaa !57, !noalias !673
  %i.ec = icmp ugt i64 %i.eb, 15
  br i1 %i.ec, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ai
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673 ; 2 uses

.noexc65.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ed, ptr %19, align 8, !tbaa !59, !noalias !673
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !57, !noalias !673
  store i64 %i.ee, ptr %i.bh, align 8, !tbaa !60, !noalias !673
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc65.i, %bb.ai
  %i.ef = phi ptr [ %i.ed, %.noexc65.i ], [ %i.bh, %bb.ai ] ; 2 uses
  switch i64 %i.eb, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.eg = load i8, ptr %i.dz, align 1, !tbaa !60, !noalias !673
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !60, !noalias !673
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr nonnull align 1 %i.dz, i64 %i.eb, i1 false), !noalias !673
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i
  %i.eh = load i64, ptr %i.d, align 8, !tbaa !57, !noalias !673 ; 2 uses
  store i64 %i.eh, ptr %i.bi, align 8, !tbaa !61, !noalias !673
  %i.ei = load ptr, ptr %19, align 8, !tbaa !59, !noalias !673
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store i8 0, ptr %i.ej, align 1, !tbaa !60, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33, !noalias !673
  %i.ek = load i16, ptr %i.cf, align 2, !tbaa !60, !noalias !673
  %i.el = and i16 %i.ek, 4096
  %.not.i.i66.i = icmp eq i16 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.089.i, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !noalias !673
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = and i64 %i.eo, 281474976710655
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = select i1 %.not.i.i66.i, ptr %i.eq, ptr %i.ce ; 4 uses
  store ptr %i.bj, ptr %20, align 8, !tbaa !55, !noalias !673
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #32
          to label %.noexc69.i unwind label %.loopexit.split-lp39.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673

.noexc69.i:                                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.et = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #33, !noalias !673 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !673
  store i64 %i.et, ptr %i.c, align 8, !tbaa !57, !noalias !673
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc.i68.i, label %._crit_edge.i.i67.i

.noexc.i68.i:                                     ; preds = %bb.an
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc70.i unwind label %.loopexit.split-lp39.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673 ; 2 uses

.noexc70.i:                                       ; preds = %.noexc.i68.i
  store ptr %i.ev, ptr %20, align 8, !tbaa !59, !noalias !673
  %i.ew = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !673
  store i64 %i.ew, ptr %i.bj, align 8, !tbaa !60, !noalias !673
  br label %._crit_edge.i.i67.i

._crit_edge.i.i67.i:                              ; preds = %.noexc70.i, %bb.an
  %i.ex = phi ptr [ %i.ev, %.noexc70.i ], [ %i.bj, %bb.an ] ; 2 uses
  switch i64 %i.et, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i67.i
  %i.ey = load i8, ptr %i.er, align 1, !tbaa !60, !noalias !673
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !60, !noalias !673
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i67.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull align 1 %i.er, i64 %i.et, i1 false), !noalias !673
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i67.i
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !673 ; 2 uses
  store i64 %i.ez, ptr %i.bk, align 8, !tbaa !61, !noalias !673
  %i.fa = load ptr, ptr %20, align 8, !tbaa !59, !noalias !673
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store i8 0, ptr %i.fb, align 1, !tbaa !60, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !673
  %i.fc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34
          to label %.noexc72.i unwind label %.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673 ; 4 uses

.noexc72.i:                                       ; preds = %bb.aq
  invoke void @_ZN6opencc23StrSingleValueDictEntryC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZN6opencc16DictEntryFactory3NewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i unwind label %bb.ar, !noalias !673

bb.ar:                                            ; preds = %.noexc72.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 72) #35, !noalias !673
  br label %.body.i

_ZN6opencc16DictEntryFactory3NewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i: ; preds = %.noexc72.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !230, !noalias !673 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !231, !noalias !673 ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i73.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN6opencc16DictEntryFactory3NewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !233, !noalias !673
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fi, ptr %i.fe, align 8, !tbaa !230, !noalias !673
  br label %_ZN6opencc7Lexicon3AddEPNS_9DictEntryE.exit.i

bb.at:                                            ; preds = %_ZN6opencc16DictEntryFactory3NewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i
  %i.fj = load ptr, ptr %i.dr, align 8, !tbaa !234, !noalias !673 ; 10 uses
  %i.fk = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.au, label %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #32
          to label %.noexc74.i unwind label %.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673

.noexc74.i:                                       ; preds = %bb.au
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.at
  %i.fo = ashr exact i64 %i.fm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975)
  %i.fs = select i1 %i.fq, i64 1152921504606846975, i64 %i.fr ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #34
          to label %.noexc75.i unwind label %.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !673 ; 10 uses

.noexc75.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  store ptr %i.fc, ptr %i.fv, align 8, !tbaa !233, !noalias !673
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fj, %i.ff
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc75.i
  %i.fw = add i64 %i.fk, -8
  %i.fx = sub i64 %i.fw, %i.fl                    ; 3 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fx, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ga = and i64 %i.fx, -8
  %i.gb = add i64 %i.ga, 8                        ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fu, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.fj, i64 %i.gb
  %bound0 = icmp ult ptr %i.fu, %i.gd
  %bound1 = icmp ult ptr %i.fj, %i.gc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fz, 4611686018427387900     ; 3 uses
  %i.ge = shl i64 %n.vec, 3                       ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fu, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fj, i64 %i.ge
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fu, i64 %i.gh ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.fj, i64 %i.gh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.gi = getelementptr i8, ptr %next.gep315, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep315, align 8, !tbaa !233, !alias.scope !678, !noalias !673
  %wide.load316 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !233, !alias.scope !678, !noalias !673
  %i.gj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !233, !alias.scope !679, !noalias !680
  store <2 x i64> %wide.load316, ptr %i.gj, align 8, !tbaa !233, !alias.scope !679, !noalias !680
  store <2 x ptr> splat (ptr null), ptr %next.gep315, align 8, !tbaa !233, !alias.scope !678, !noalias !673
  store <2 x ptr> splat (ptr null), ptr %i.gi, align 8, !tbaa !233, !alias.scope !678, !noalias !673
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader318

.lr.ph.i.i.i.i.i.i.i.preheader318:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fu, %vector.memcheck ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fj, %vector.memcheck ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader318, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader318 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader318 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.gl = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !677, !noalias !673
  store i64 %i.gl, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !676, !noalias !673
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !233, !alias.scope !677, !noalias !673
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gm, %i.ff
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !665

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc75.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fu, %.noexc75.i ], [ %i.gf, %middle.block ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %29 = ptrtoint ptr %i.fh to i64
  %30 = sub i64 %29, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %30) #35, !noalias !673
  br label %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.av, %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.fu, ptr %i.dr, align 8, !tbaa !234, !noalias !673
  store ptr %i.go, ptr %i.fe, align 8, !tbaa !230, !noalias !673
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  store ptr %i.gp, ptr %i.fg, align 8, !tbaa !231, !noalias !673
  br label %_ZN6opencc7Lexicon3AddEPNS_9DictEntryE.exit.i

_ZN6opencc7Lexicon3AddEPNS_9DictEntryE.exit.i:    ; preds = %_ZNSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.as
  %i.gq = load ptr, ptr %20, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.bj
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i: ; preds = %_ZN6opencc7Lexicon3AddEPNS_9DictEntryE.exit.i
  %i.gs = load i64, ptr %i.bj, align 8, !tbaa !60, !noalias !673
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #35, !noalias !673
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i: ; preds = %_ZN6opencc7Lexicon3AddEPNS_9DictEntryE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33, !noalias !673
  %i.gu = load ptr, ptr %19, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.bh
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i
  %i.gw = load i64, ptr %i.bh, align 8, !tbaa !60, !noalias !673
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #35, !noalias !673
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33, !noalias !673
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.03.089.i, i64 32 ; 2 uses
  %i.gz = load ptr, ptr %i.bb, align 8, !tbaa !60, !noalias !673
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = and i64 %i.ha, 281474976710655
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load i32, ptr %i.ao, align 8, !tbaa !60, !noalias !673
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %i.he
  %.not.i = icmp eq ptr %i.gy, %i.hf
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.r, !llvm.loop !666

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.ah
  %lpad.loopexit.split-lp319 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

.loopexit.split-lp39.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i68.i, %bb.am
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6opencc9DictEntryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.aq, %bb.au
  %lpad.loopexit.split-lp324 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fd, %bb.ar ], [ %lpad.loopexit.split-lp324, %.loopexit.split-lp44.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hg = load ptr, ptr %20, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.bj
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %.body.i
  %i.hi = load i64, ptr %i.bj, align 8, !tbaa !60, !noalias !673
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #35, !noalias !673
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %.body.i, %.loopexit.split-lp39.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
  %.pn37.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp39.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33, !noalias !673
  %i.hk = load ptr, ptr %19, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.bh
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i
  %i.hm = load i64, ptr %i.bh, align 8, !tbaa !60, !noalias !673
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #35, !noalias !673
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  %.pn37.pn.pn.pn.i = phi { ptr, i32 } [ %.pn37.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i ], [ %lpad.loopexit.split-lp319, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn37.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33, !noalias !673
  br label %bb.bu

bb.aw:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33, !noalias !673
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ho, ptr %21, align 8, !tbaa !55, !noalias !673
  %i.hp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.hp, align 8, !tbaa !61, !noalias !673
  store i8 0, ptr %i.ho, align 8, !tbaa !60, !noalias !673
  %i.hq = load ptr, ptr %13, align 8, !tbaa !675, !noalias !673
  %i.hr = invoke noundef zeroext i1 @_ZN6opencc7Lexicon8IsUniqueEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull %21)
          to label %bb.ax unwind label %bb.bc, !noalias !673

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.hr, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = call ptr @__cxa_allocate_exception(i64 40) #33, !noalias !673 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33, !noalias !673
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.az unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i, !noalias !673

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ba unwind label %bb.bd, !noalias !673

bb.ba:                                            ; preds = %bb.az
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTIN6opencc13InvalidFormatE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #32
          to label %bb.bv unwind label %bb.bd, !noalias !673

bb.bb:                                            ; preds = %._crit_edge.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bc:                                            ; preds = %bb.bf, %bb.aw
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i: ; preds = %bb.ay
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33, !noalias !673
  br label %bb.be

bb.bd:                                            ; preds = %bb.ba, %bb.az
  %.0.i = phi i1 [ false, %bb.ba ], [ true, %bb.az ] ; 2 uses
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hx = load ptr, ptr %22, align 8, !tbaa !59, !noalias !673 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i: ; preds = %bb.bd
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !60, !noalias !673
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #35, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33, !noalias !673
  br i1 %.0.i, label %bb.be, label %.body91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33, !noalias !673
  br i1 %.0.i, label %bb.be, label %.body91.i

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i
  %.pn34.i = phi { ptr, i32 } [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i ]
  call void @__cxa_free_exception(ptr %i.hs) #33, !noalias !673
  br label %.body91.i

bb.bf:                                            ; preds = %bb.ax
  %i.ic = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.bg unwind label %bb.bc, !noalias !673 ; 6 uses

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6opencc8TextDictC1ERKSt10shared_ptrINS_7LexiconEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.bh unwind label %bb.bt, !noalias !673

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.ic, ptr %0, align 8, !tbaa !219, !alias.scope !673
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.id, align 8, !tbaa !71, !alias.scope !673
  %i.ie = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.bm unwind label %bb.bi, !noalias !673 ; 5 uses

bb.bi:                                            ; preds = %bb.bh
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  %i.ih = call ptr @__cxa_begin_catch(ptr %i.ig) #33, !noalias !673 ; 0 uses
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !63, !noalias !673
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !673
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(40) %i.ic) #33, !noalias !673, !inline_history !667
  invoke void @__cxa_rethrow() #32
          to label %bb.bl unwind label %bb.bj, !noalias !673

bb.bj:                                            ; preds = %bb.bi
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i unwind label %bb.bk, !noalias !673

bb.bk:                                            ; preds = %bb.bj
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #36, !noalias !673
  unreachable

bb.bl:                                            ; preds = %bb.bi
end_hunk_0

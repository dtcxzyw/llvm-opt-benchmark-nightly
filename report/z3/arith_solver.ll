Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/arith_solver?download=true
inline.NumInlined: 3206
inline.NumDeleted: 1361
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arith6solver5cloneERN3euf6solverE:bb.a

bb.cf:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i123
  %i.os = landingpad { ptr, i32 }
          cleanup
  %i.ot = load ptr, ptr %2, align 8, !tbaa !328   ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.oi
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i124: ; preds = %bb.cf
  %i.ov = load i64, ptr %i.oi, align 8, !tbaa !330
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i125: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

bb.cg:                                            ; preds = %bb.cc
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @__cxa_free_exception(ptr %i.oe) #24
  br label %.body

bb.ch:                                            ; preds = %bb.cb
  %i.oy = zext i32 %i.ob to i64
  %i.oz = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.nr, i64 noundef %i.oy)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc131:                                        ; preds = %bb.ch
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 2 uses
  store ptr %i.pa, ptr %i.df, align 8, !tbaa !292
  store i32 %i.nz, ptr %i.oz, align 4, !tbaa !268
  br label %.noexc78

bb.ci:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i123
  unreachable

.noexc78:                                         ; preds = %.noexc131, %.noexc128
  %.pre.i75 = phi ptr [ %i.pa, %.noexc131 ], [ %i.nw, %.noexc128 ] ; 2 uses
  %.phi.trans.insert.i76 = getelementptr inbounds i8, ptr %.pre.i75, i64 -4
  %.pre2.i77 = load i32, ptr %.phi.trans.insert.i76, align 4, !tbaa !268
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc78, %bb.by
  %i.pb = phi i32 [ %.pre2.i77, %.noexc78 ], [ %i.nq, %bb.by ] ; 2 uses
  %i.pc = phi ptr [ %.pre.i75, %.noexc78 ], [ %i.nn, %bb.by ] ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 -4
  %i.pe = zext i32 %i.pb to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pe
  store ptr %i.ec, ptr %i.pf, align 8, !tbaa !305
  %i.pg = add i32 %i.pb, 1
  store i32 %i.pg, ptr %i.pd, align 4, !tbaa !268
  %i.ph = getelementptr inbounds nuw i8, ptr %.0229, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ph, %i.dv
  br i1 %.not, label %._crit_edge, label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorI10ptr_vectorIN6lp_api5boundIN3sat7literalEEEELb1EjE8capacityEv.exit.thread.i, %.noexc138, %._crit_edge.i.i136, %bb.t, %bb.as, %bb.w, %bb.ae, %bb.ai, %bb.aq, %bb.au, %bb.bb, %bb.bz, %bb.ch, %bb.bi, %bb.be, %.noexc116, %._crit_edge.i, %bb.g, %bb.h, %bb.k, %bb.e
  %lpad.loopexit.split-lp411 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i125, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i91, %bb.ap
  %.pn46 = phi { ptr, i32 } [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i91 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i105 ], [ %i.jl, %bb.ba ], [ %i.ox, %bb.cg ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i125 ], [ %i.hj, %bb.ap ], [ %i.fp, %bb.ad ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp411, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  resume { ptr, i32 } %.pn46
}

declare noundef i32 @_ZN5arith6solver7mk_evarEP4expr(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3euf6solver4copyERS0_PNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(8528), ptr noundef nonnull align 8 dereferenceable(8528), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5arith6solver12mk_var_boundEN3sat7literalEiN6lp_api10bound_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(1000), i32, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver22updt_unassigned_boundsEii(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311, !nonnull !209, !align !210 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2184 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2200
  %i.j = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef 24) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18vector_value_trailIjLb0EE, i64 16), ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.c, ptr %i.k, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %1, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.g, ptr %.sroa.7.8..sroa_idx, align 4
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !333  ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc5, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !268  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !268
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %.noexc5, label %bb.b

.noexc5:                                          ; preds = %bb.a, %.noexc
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !333 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !268
  br label %bb.b

bb.b:                                             ; preds = %.noexc5, %bb.a
  %i.s = phi i32 [ %.pre2.i.i.i, %.noexc5 ], [ %i.o, %bb.a ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i.i, %.noexc5 ], [ %i.l, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %i.j, ptr %i.w, align 8, !tbaa !335
  %i.x = add i32 %i.s, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !268
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.e ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !268
  %i.ab = add i32 %i.aa, %2
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !268
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5arith6solver14unit_propagateEv(ptr noundef nonnull align 8 dereferenceable(1000) initializes((952, 953)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.svector.9, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i8 0, ptr %i.a, align 8, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214
  %i.d = tail call noundef zeroext i1 @_ZNK2lp10lar_solver19has_changed_columnsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.c)
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !186, !range !250, !noundef !209
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !292  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !268
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread, label %bb.e

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread: ; preds = %bb.c, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load i32, ptr %i.n, align 8, !tbaa !337
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !285  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ 0, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread ]
  %i.u = icmp eq i32 %i.o, %.0.i
  br i1 %i.u, label %bb.u, label %bb.e

bb.e:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.v, align 8, !tbaa !186
  tail call void @_ZN5arith6solver18flush_bound_axiomsEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !293  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN5arith6solver13propagate_nlaEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3nla6solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  tail call void @_ZN5arith6solver10add_lemmasEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !214
  tail call void @_ZN2lp10lar_solver36collect_more_rows_for_lp_propagationEv(ptr noundef nonnull align 8 dereferenceable(152) %i.y)
  br label %_ZN5arith6solver13propagate_nlaEv.exit

_ZN5arith6solver13propagate_nlaEv.exit:           ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !337 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !285 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4.lr.ph: ; preds = %_ZN5arith6solver13propagate_nlaEv.exit
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4.lr.ph, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  %i.ah = phi i32 [ %i.aa, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4.lr.ph ], [ %i.ce, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread ]
  %i.ai = phi ptr [ %i.ac, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4.lr.ph ], [ %i.cc, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = icmp ult i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4
  %i.am = load ptr, ptr %2, align 8, !tbaa !215
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3168
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !458, !range !250, !noundef !209
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !208, !nonnull !209, !align !210
  %i.ar = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.aq)
  br i1 %i.ar, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.z, align 8, !tbaa !337 ; 5 uses
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !285 ; 5 uses
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !268 ; 2 uses
  %i.ax = lshr i32 %i.aw, 1                       ; 5 uses
  %i.ay = load i32, ptr %i.ag, align 8, !tbaa !188 ; 3 uses
  %i.az = add i32 %i.ay, 2147483647
  %i.ba = and i32 %i.az, %i.ax                    ; 3 uses
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !197 ; 3 uses
  %i.bc = zext nneg i32 %i.ba to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.bc, 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i ; 2 uses
  %i.be = zext i32 %i.ay to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.be
  %.not30.i.i.i = icmp eq i32 %i.ba, %i.ay
  br i1 %.not30.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %bb.i
  %.not2732.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not2732.i.i.i, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, label %.lr.ph34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.l
  %.031.i.i.i = phi ptr [ %i.bn, %bb.l ], [ %i.bd, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !196
  switch i32 %i.bh, label %bb.l [
    i32 2, label %bb.j
    i32 0, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = load i32, ptr %.031.i.i.i, align 8, !tbaa !195
  %i.bj = icmp eq i32 %i.bi, %i.ax
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !306
  %i.bm = icmp eq i32 %i.bl, %i.ax
  br i1 %i.bm, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bf
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !20

.lr.ph34.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.o
  %.133.i.i.i = phi ptr [ %i.bv, %bb.o ], [ %i.bb, %.preheader.i.i.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !196
  switch i32 %i.bp, label %bb.o [
    i32 2, label %bb.m
    i32 0, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  ]

bb.m:                                             ; preds = %.lr.ph34.i.i.i
  %i.bq = load i32, ptr %.133.i.i.i, align 8, !tbaa !195
  %i.br = icmp eq i32 %i.bq, %i.ax
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !306
  %i.bu = icmp eq i32 %i.bt, %i.ax
  br i1 %i.bu, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph34.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.bv, %i.bd
  br i1 %.not27.i.i.i, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, label %.lr.ph34.i.i.i, !llvm.loop !21

.loopexit:                                        ; preds = %bb.k, %bb.n
  %.026.i.i.i = phi ptr [ %.133.i.i.i, %bb.n ], [ %.031.i.i.i, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !307 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.by, align 8, !tbaa !268
  %i.bz = xor i32 %.sroa.0.0.copyload.i, %i.aw
  %i.ca = trunc i32 %i.bz to i1
  %i.cb = xor i1 %i.ca, true
  tail call void @_ZN5arith6solver12assert_boundEbRN6lp_api5boundIN3sat7literalEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext %i.cb, ptr noundef nonnull align 8 dereferenceable(104) %i.bx)
  %.pre = load i32, ptr %i.z, align 8, !tbaa !337
  %.pre23 = load ptr, ptr %i.ab, align 8, !tbaa !285
  br label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread

_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread: ; preds = %.lr.ph.i.i.i, %.lr.ph34.i.i.i, %bb.o, %.preheader.i.i.i, %.loopexit
  %i.cc = phi ptr [ %i.at, %.lr.ph34.i.i.i ], [ %.pre23, %.loopexit ], [ %i.at, %.preheader.i.i.i ], [ %i.at, %bb.o ], [ %i.at, %.lr.ph.i.i.i ] ; 2 uses
  %i.cd = phi i32 [ %i.as, %.lr.ph34.i.i.i ], [ %.pre, %.loopexit ], [ %i.as, %.preheader.i.i.i ], [ %i.as, %bb.o ], [ %i.as, %.lr.ph.i.i.i ]
  %i.ce = add i32 %i.cd, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.z, align 8, !tbaa !337
  %i.cf = icmp eq ptr %i.cc, null
  br i1 %i.cf, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4, !llvm.loop !651

.critedge:                                        ; preds = %bb.h, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit4, %bb.g, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, %_ZN5arith6solver13propagate_nlaEv.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %3, align 8, !tbaa !215
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3168
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !458, !range !250, !noundef !209
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !214
  %i.cl = tail call noundef i32 @_ZN2lp10lar_solver22find_feasible_solutionEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ck)
  %switch.tableidx = add i32 %i.cl, -1            ; 2 uses
  %i.cm = icmp ult i32 %switch.tableidx, 11
  br i1 %i.cm, label %switch.lookup, label %_ZN5arith6solver13make_feasibleEv.exit

switch.lookup:                                    ; preds = %bb.p
  %i.cn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arith6solver13make_feasibleEv, i64 %i.cn
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN5arith6solver13make_feasibleEv.exit

_ZN5arith6solver13make_feasibleEv.exit:           ; preds = %bb.p, %switch.lookup
  %.0.i5 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.p ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !208, !nonnull !209, !align !210
  %i.cq = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.cp)
  br i1 %i.cq, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5arith6solver13make_feasibleEv.exit
  switch i32 %.0.i5, label %bb.u [
    i32 -1, label %bb.r
    i32 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  tail call void @_ZN2lp11explanation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !214
  tail call void @_ZNK2lp10lar_solver29get_infeasibility_explanationERNS_11explanationE(ptr noundef nonnull align 8 dereferenceable(152) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr null, ptr %1, align 8, !tbaa !285
  invoke void @_ZN5arith6solver21set_conflict_or_lemmaENS_9hint_typeERK7svectorIN3sat7literalEjEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
          to label %_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ct

_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN5arith6solver22propagate_basic_boundsEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %i.aa)
  tail call void @_ZN5arith6solver31propagate_bounds_with_lp_solverEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.q, %_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit, %bb.t, %_ZN5arith6solver13make_feasibleEv.exit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.2 = phi i1 [ false, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ true, %.critedge ], [ true, %bb.q ], [ true, %_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit ], [ true, %bb.t ], [ false, %_ZN5arith6solver13make_feasibleEv.exit ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK2lp10lar_solver19has_changed_columnsEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver18flush_bound_axiomsEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %class.ptr_vector.30, align 8       ; 13 uses
  %4 = alloca %class.ptr_vector.30, align 8       ; 7 uses
  %5 = alloca %class.ptr_addr_hashtable, align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit: ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.lr.ph, %_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjED2Ev.exit155
  %i.h = phi ptr [ %i.b, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.lr.ph ], [ %i.gm, %_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjED2Ev.exit155 ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !268
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !292
  %i.l = load i32, ptr %i.i, align 4, !tbaa !268
  invoke void @_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader: ; preds = %bb.b
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !292 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 3 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !268 ; 2 uses
  %i.p = zext i32 %.pre2.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.p
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !305
  store ptr %i.r, ptr %i.q, align 8, !tbaa !305
  %i.s = add i32 %.pre2.i, 1
  store i32 %i.s, ptr %.phi.trans.insert.i, align 4, !tbaa !268
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !292  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !268
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !268
  %i.x = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !268
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !305
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !459 ; 2 uses
  br label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit: ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader, %bb.t
  %i.ae = phi ptr [ %i.dl, %bb.t ], [ %i.t, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader ] ; 4 uses
  %i.af = phi ptr [ %i.dm, %bb.t ], [ %.pre.i, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader ] ; 5 uses
  %.079356 = phi i32 [ %i.dn, %bb.t ], [ 0, %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !268
  %i.ai = icmp ult i32 %.079356, %i.ah
  br i1 %i.ai, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !295
  %i.ak = zext i32 %i.ad to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !292
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !292 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN10ptr_vectorIN6lp_api5boundIN3sat7literalEEEEC2ERKS5_.exit, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE8capacityEv.exit.i.i.i: ; preds = %.critedge
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !268
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !268
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.as)
          to label %.noexc123 unwind label %bb.af ; 2 uses

.noexc123:                                        ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE8capacityEv.exit.i.i.i
  store <2 x i32> %i.ao, ptr %i.at, align 4, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 7 uses
  store ptr %i.au, ptr %4, align 8, !tbaa !292
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !292 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN10ptr_vectorIN6lp_api5boundIN3sat7literalEEEEC2ERKS5_.exit, label %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE3endEv.exit.i.i.i

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE3endEv.exit.i.i.i: ; preds = %.noexc123
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !268 ; 3 uses
  %i.az = icmp ugt i32 %i.ay, 1
  br i1 %i.az, label %bb.c, label %bb.d, !prof !664

bb.c:                                             ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE3endEv.exit.i.i.i
  %i.ba = zext i32 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.av, i64 %i.bb, i1 false)
  br label %_ZN10ptr_vectorIN6lp_api5boundIN3sat7literalEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE3endEv.exit.i.i.i
  %i.bc = icmp eq i32 %i.ay, 1
  br i1 %i.bc, label %bb.e, label %_ZN10ptr_vectorIN6lp_api5boundIN3sat7literalEEEEC2ERKS5_.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !305
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !305
  br label %_ZN10ptr_vectorIN6lp_api5boundIN3sat7literalEEEEC2ERKS5_.exit

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.i, %bb.b
  %lpad.loopexit.split-lp575 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE4sizeEv.exit
  %i.be = zext i32 %.079356 to i64                ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !305 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !459
  %i.bj = icmp eq i32 %i.bi, %i.ad
  br i1 %i.bj, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp eq ptr %i.af, null
  br i1 %i.bk, label %bb.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN5arith6solver18flush_bound_axiomsEv:bb.a
bb.dh:                                            ; preds = %bb.dg, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.dg ], [ %i.go, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.p, %bb.dh
  %.pn115.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.dh ], [ %i.ct, %bb.p ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp575, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn115.pn

_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjE5emptyEv.exit, %_ZN6vectorIPN6lp_api5boundIN3sat7literalEEELb0EjED2Ev.exit155, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver13propagate_nlaEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3nla6solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  tail call void @_ZN5arith6solver10add_lemmasEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  tail call void @_ZN2lp10lar_solver36collect_more_rows_for_lp_propagationEv(ptr noundef nonnull align 8 dereferenceable(152) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver12assert_boundEbRN6lp_api5boundIN3sat7literalEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.inf_rational, align 8        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.b = zext i1 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !268  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214
  tail call void @_ZN2lp10lar_solver8activateEj(ptr noundef nonnull align 8 dereferenceable(152) %i.f, i32 noundef %i.d)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !214
  %i.h = tail call noundef i32 @_ZNK2lp10lar_solver10get_statusEv(ptr noundef nonnull align 8 dereferenceable(152) %i.g)
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !464, !range !250, !noundef !209
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !326
  %i.o = tail call noundef i32 @_ZN5arith6solver21bound2constraint_kindEbN6lp_api10bound_kindEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i1 noundef zeroext %i.l, i32 noundef %i.n, i1 noundef zeroext %1) ; 2 uses
  %or.cond = icmp ugt i32 %i.o, -3
  %. = select i1 %or.cond, i64 396, i64 400
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !268
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK6lp_api5boundIN3sat7literalEE9get_valueEb(ptr dead_on_unwind nonnull writable sret(%class.inf_rational) align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext %1)
  %i.s = invoke noundef nonnull align 8 dereferenceable(816) ptr @_ZNK3euf13th_euf_solver10get_configEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.u = load i8, ptr %i.t, align 8, !tbaa !465, !range !250, !noundef !209
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZNK5arith6solver13propagate_eqsEv.exit.thread

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.x = load i32, ptr %i.w, align 8, !tbaa !241
  %i.y = invoke noundef nonnull align 8 dereferenceable(816) ptr @_ZNK3euf13th_euf_solver10get_configEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %_ZNK5arith6solver13propagate_eqsEv.exit unwind label %bb.e

_ZNK5arith6solver13propagate_eqsEv.exit:          ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 380
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !247
  %i.ab = icmp ult i32 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond20 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond20, label %bb.d, label %_ZNK5arith6solver13propagate_eqsEv.exit.thread

bb.d:                                             ; preds = %_ZNK5arith6solver13propagate_eqsEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !671
  invoke void @_ZN5arith6solver13propagate_eqsEjjN2lp16lconstraint_kindERN6lp_api5boundIN3sat7literalEEERK8rational(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %i.ag, i32 noundef %i.d, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK5arith6solver13propagate_eqsEv.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ah

_ZNK5arith6solver13propagate_eqsEv.exit.thread:   ; preds = %.noexc, %bb.d, %_ZNK5arith6solver13propagate_eqsEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !270 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %_ZNK5arith6solver13propagate_eqsEv.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i, %_ZNK5arith6solver13propagate_eqsEv.exit.thread
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #25
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.an = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !270 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc.i1.i unwind label %bb.g

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN12inf_rationalD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN5arith6solver13make_feasibleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1000) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = tail call noundef i32 @_ZN2lp10lar_solver22find_feasible_solutionEv(ptr noundef nonnull align 8 dereferenceable(152) %i.b)
  %switch.tableidx = add i32 %i.c, -1             ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 11
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arith6solver13make_feasibleEv, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.svector.9, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  tail call void @_ZN2lp11explanation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214
  tail call void @_ZNK2lp10lar_solver29get_infeasibility_explanationERNS_11explanationE(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr null, ptr %1, align 8, !tbaa !285
  invoke void @_ZN5arith6solver21set_conflict_or_lemmaENS_9hint_typeERK7svectorIN3sat7literalEjEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
          to label %_ZN5arith6solver12set_conflictENS_9hint_typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.d

_ZN5arith6solver12set_conflictENS_9hint_typeE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver22propagate_basic_boundsEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !337  ; 2 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.g = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread ] ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3168
  %i.k = load i8, ptr %i.j, align 8, !tbaa !458, !range !250, !noundef !209
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !268  ; 2 uses
  %i.p = lshr i32 %i.o, 1                         ; 5 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !188  ; 3 uses
  %i.r = add i32 %i.q, 2147483647
  %i.s = and i32 %i.r, %i.p                       ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !197  ; 3 uses
  %i.u = zext nneg i32 %i.s to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i ; 2 uses
  %i.w = zext i32 %i.q to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %.not30.i.i.i = icmp eq i32 %i.s, %i.q
  br i1 %.not30.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %bb.c
  %.not2732.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not2732.i.i.i, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, label %.lr.ph34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.f
  %.031.i.i.i = phi ptr [ %i.af, %bb.f ], [ %i.v, %bb.c ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !196
  switch i32 %i.z, label %bb.f [
    i32 2, label %bb.d
    i32 0, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  ]

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = load i32, ptr %.031.i.i.i, align 8, !tbaa !195
  %i.ab = icmp eq i32 %i.aa, %i.p
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !306
  %i.ae = icmp eq i32 %i.ad, %i.p
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.x
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !20

.lr.ph34.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.i
  %.133.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.t, %.preheader.i.i.i ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !196
  switch i32 %i.ah, label %bb.i [
    i32 2, label %bb.g
    i32 0, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread
  ]

bb.g:                                             ; preds = %.lr.ph34.i.i.i
  %i.ai = load i32, ptr %.133.i.i.i, align 8, !tbaa !195
  %i.aj = icmp eq i32 %i.ai, %i.p
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !306
  %i.am = icmp eq i32 %i.al, %i.p
  br i1 %i.am, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph34.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.an, %i.v
  br i1 %.not27.i.i.i, label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, label %.lr.ph34.i.i.i, !llvm.loop !21

.loopexit:                                        ; preds = %bb.e, %bb.h
  %.026.i.i.i = phi ptr [ %.133.i.i.i, %bb.h ], [ %.031.i.i.i, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !307
  tail call void @_ZN5arith6solver15propagate_boundEN3sat7literalERN6lp_api5boundIS2_EE(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.ap)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !337
  br label %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread

_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread: ; preds = %.lr.ph.i.i.i, %.lr.ph34.i.i.i, %bb.i, %.preheader.i.i.i, %.loopexit
  %i.aq = phi i32 [ %i.h, %.lr.ph34.i.i.i ], [ %.pre, %.loopexit ], [ %i.h, %.preheader.i.i.i ], [ %i.h, %bb.i ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %.critedge, !llvm.loop !672

.critedge:                                        ; preds = %bb.b, %_ZNK9table2mapI17default_map_entryIjPN6lp_api5boundIN3sat7literalEEEE6u_hash4u_eqE4findERKjRS6_.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5arith6solver31propagate_bounds_with_lp_solverEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.svector.9, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i32, ptr %i.a, align 8, !tbaa !241
  %i.c = tail call noundef nonnull align 8 dereferenceable(816) ptr @_ZNK3euf13th_euf_solver10get_configEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.e = load i32, ptr %i.d, align 4, !tbaa !247
  %i.f = icmp ult i32 %i.b, %i.e
  br i1 %i.f, label %_ZNK5arith6solver16should_propagateEv.exit, label %_ZNK5arith6solver16should_propagateEv.exit.thread

_ZNK5arith6solver16should_propagateEv.exit:       ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(816) ptr @_ZNK3euf13th_euf_solver10get_configEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  %i.i = load i32, ptr %i.h, align 4, !tbaa !248
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZNK5arith6solver16should_propagateEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5arith6solver16should_propagateEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  tail call void @_ZN2lp19lp_bound_propagatorIN5arith6solverEE4initEv(ptr noundef nonnull align 8 dereferenceable(152) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214
  tail call void @_ZN2lp10lar_solver33propagate_bounds_for_touched_rowsIN5arith6solverEEEvRNS_19lp_bound_propagatorIT_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208, !nonnull !209, !align !210
  %i.o = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.n)
  br i1 %i.o, label %bb.c, label %_ZNK5arith6solver16should_propagateEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !214
  %i.q = tail call noundef i32 @_ZNK2lp10lar_solver10get_statusEv(ptr noundef nonnull align 8 dereferenceable(152) %i.p)
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  tail call void @_ZN2lp11explanation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !214
  tail call void @_ZNK2lp10lar_solver29get_infeasibility_explanationERNS_11explanationE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr null, ptr %1, align 8, !tbaa !285
  invoke void @_ZN5arith6solver21set_conflict_or_lemmaENS_9hint_typeERK7svectorIN3sat7literalEjEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
          to label %_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.u

_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZNK5arith6solver16should_propagateEv.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !466, !nonnull !209, !align !210 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !673  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !673  ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNK5arith6solver16should_propagateEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.04.07 = phi ptr [ %i.x, %.lr.ph ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !208, !nonnull !209, !align !210
  %i.ad = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.ac)
  br i1 %i.ad, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !215
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3168
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !458, !range !250, !noundef !209
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5arith6solver25propagate_lp_solver_boundERKN2lp13implied_boundE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.04.07)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 72 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZNK5arith6solver16should_propagateEv.exit.thread, label %bb.g

_ZNK5arith6solver16should_propagateEv.exit.thread: ; preds = %bb.j, %bb.f, %bb.a, %bb.b, %_ZNK5arith6solver16should_propagateEv.exit, %_ZN5arith6solver46get_infeasibility_explanation_and_set_conflictEv.exit
  ret void
}
end_hunk_1

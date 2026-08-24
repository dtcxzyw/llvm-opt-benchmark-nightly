Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lar_solver?download=true
inline.NumInlined: 6282
inline.NumDeleted: 2310
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2lp10lar_solver36clean_inf_heap_of_r_solver_after_popEv:bb.a
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jr)
          to label %_ZN6vectorIjLb1EjED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #29
  unreachable

_ZN6vectorIjLb1EjED2Ev.exit:                      ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

.lr.ph116:                                        ; preds = %_ZN6vectorIjLb1EjE3endEv.exit79, %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92
  %.0115 = phi ptr [ %i.kg, %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92 ], [ %i.ii, %_ZN6vectorIjLb1EjE3endEv.exit79 ] ; 2 uses
  %i.ju = load i32, ptr %.0115, align 4, !tbaa !214 ; 3 uses
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 992
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1000
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !389 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i87, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph116
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !214
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i87

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i87:            ; preds = %bb.aq, %.lr.ph116
  %.0.i.i.i88 = phi i32 [ %i.kb, %bb.aq ], [ 0, %.lr.ph116 ]
  %i.kc = icmp slt i32 %i.ju, %.0.i.i.i88
  br i1 %i.kc, label %_ZNK4heapIN2lp8lpvar_ltEE8containsEi.exit.i89, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92

_ZNK4heapIN2lp8lpvar_ltEE8containsEi.exit.i89:    ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i87
  %i.kd = zext i32 %i.ju to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !214
  %.not.i90 = icmp eq i32 %i.kf, 0
  br i1 %.not.i90, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4heapIN2lp8lpvar_ltEE8containsEi.exit.i89
  invoke void @_ZN4heapIN2lp8lpvar_ltEE5eraseEi(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i32 noundef %i.ju)
          to label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92 unwind label %bb.as

_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE27remove_column_from_inf_heapEj.exit92: ; preds = %_ZNK4heapIN2lp8lpvar_ltEE8containsEi.exit.i89, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i87, %bb.ar
  %i.kg = getelementptr inbounds nuw i8, ptr %.0115, i64 4 ; 2 uses
  %.not53 = icmp eq ptr %i.kg, %i.io
  br i1 %.not53, label %._crit_edge117, label %.lr.ph116

bb.as:                                            ; preds = %bb.ar
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.al, %bb.ag, %bb.ah, %bb.i, %bb.as, %bb.n
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %i.cs, %bb.n ], [ %i.hv, %bb.ag ], [ %i.hw, %bb.ah ], [ %i.kh, %bb.as ], [ %i.jg, %bb.al ]
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.e
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn, %bb.at ], [ %i.aw, %bb.e ]
  call void @_ZN6vectorIjLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn58.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp14constraint_set3popEj(ptr noundef nonnull align 8 dereferenceable(105) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not1.i = icmp eq i32 %1, 0                    ; 3 uses
  br i1 %.not1.i, label %_ZN13stacked_valueIjE3popEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  br i1 %i.d, label %_ZN13stacked_valueIjE3popEj.exit, label %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i

_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i:     ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !214
  br label %_ZNK6vectorIjLb1EjE5emptyEv.exit.i

_ZNK6vectorIjLb1EjE5emptyEv.exit.i:               ; preds = %_ZN6vectorIjLb1EjE4backEv.exit.i, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i
  %i.f = phi i32 [ %i.n, %_ZN6vectorIjLb1EjE4backEv.exit.i ], [ %.pre.i, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i ] ; 2 uses
  %.in.i = phi i32 [ %i.h, %_ZN6vectorIjLb1EjE4backEv.exit.i ], [ %1, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i ]
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN13stacked_valueIjE3popEj.exit, label %_ZN6vectorIjLb1EjE4backEv.exit.i

_ZN6vectorIjLb1EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb1EjE5emptyEv.exit.i
  %i.h = add i32 %.in.i, -1                       ; 2 uses
  %i.i = add i32 %i.f, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214
  store i32 %i.l, ptr %i.a, align 8, !tbaa !197
  %i.m = load i32, ptr %i.e, align 4, !tbaa !214
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.e, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN13stacked_valueIjE3popEj.exit, label %_ZNK6vectorIjLb1EjE5emptyEv.exit.i, !llvm.loop !430

_ZN13stacked_valueIjE3popEj.exit:                 ; preds = %_ZNK6vectorIjLb1EjE5emptyEv.exit.i, %_ZN6vectorIjLb1EjE4backEv.exit.i, %bb.a, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !360  ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN6vectorIjLb0EjE6shrinkEj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %_ZN13stacked_valueIjE3popEj.exit
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !214  ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.u = icmp ugt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !196  ; 5 uses
  %i.x = zext i32 %i.s to i64                     ; 4 uses
  %i.y = zext i32 %i.t to i64                     ; 3 uses
  %i.z = sub nsw i64 %i.x, %i.y
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.aa, %.prol.preheader ], [ %i.x, %.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.aa = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !214
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !294
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i8 0, ptr %i.ag, align 8, !tbaa !431
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !432

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.x, %.lr.ph ], [ %i.aa, %.prol.preheader ]
  %i.ah = sub nsw i64 %i.y, %i.x
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit, label %.lr.ph.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %i.t, ptr %i.aj, align 4, !tbaa !214
  br label %_ZN6vectorIjLb0EjE6shrinkEj.exit

_ZN6vectorIjLb0EjE6shrinkEj.exit:                 ; preds = %_ZN13stacked_valueIjE3popEj.exit, %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %.not1.i, label %_ZN13stacked_valueIjE3popEj.exit17, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN6vectorIjLb0EjE6shrinkEj.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !198 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 3 uses
  br i1 %i.an, label %_ZN13stacked_valueIjE3popEj.exit17, label %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i11

_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i11:   ; preds = %.lr.ph.i10
  %.pre.i12 = load i32, ptr %i.ao, align 4, !tbaa !214
  br label %_ZNK6vectorIjLb1EjE5emptyEv.exit.i13

_ZNK6vectorIjLb1EjE5emptyEv.exit.i13:             ; preds = %_ZN6vectorIjLb1EjE4backEv.exit.i15, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i11
  %i.ap = phi i32 [ %i.ax, %_ZN6vectorIjLb1EjE4backEv.exit.i15 ], [ %.pre.i12, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i11 ] ; 2 uses
  %.in.i14 = phi i32 [ %i.ar, %_ZN6vectorIjLb1EjE4backEv.exit.i15 ], [ %1, %_ZNK6vectorIjLb1EjE5emptyEv.exit.preheader.i11 ]
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN13stacked_valueIjE3popEj.exit17, label %_ZN6vectorIjLb1EjE4backEv.exit.i15

_ZN6vectorIjLb1EjE4backEv.exit.i15:               ; preds = %_ZNK6vectorIjLb1EjE5emptyEv.exit.i13
  %i.ar = add i32 %.in.i14, -1                    ; 2 uses
  %i.as = add i32 %i.ap, -1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !214
  store i32 %i.av, ptr %i.ak, align 8, !tbaa !197
  %i.aw = load i32, ptr %i.ao, align 4, !tbaa !214
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !214
  %.not.i16 = icmp eq i32 %i.ar, 0
  br i1 %.not.i16, label %_ZN13stacked_valueIjE3popEj.exit17, label %_ZNK6vectorIjLb1EjE5emptyEv.exit.i13, !llvm.loop !430

_ZN13stacked_valueIjE3popEj.exit17:               ; preds = %_ZNK6vectorIjLb1EjE5emptyEv.exit.i13, %_ZN6vectorIjLb1EjE4backEv.exit.i15, %_ZN6vectorIjLb0EjE6shrinkEj.exit, %.lr.ph.i10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !196 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit, label %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit

_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit: ; preds = %_ZN13stacked_valueIjE3popEj.exit17
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !214 ; 2 uses
  %i.bd = load i32, ptr %i.ak, align 8, !tbaa !214 ; 2 uses
  %i.be = icmp ugt i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph25.preheader, label %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE3endEv.exit.i

.lr.ph25.preheader:                               ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit
  %2 = zext i32 %i.bc to i64
  br label %.lr.ph25

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ca, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !214
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !294
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store i8 0, ptr %i.bl, align 8, !tbaa !431
  %i.bm = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !214
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !294
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i8 0, ptr %i.bs, align 8, !tbaa !431
  %i.bt = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 -12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !214
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !294
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store i8 0, ptr %i.bz, align 8, !tbaa !431
  %i.ca = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !214
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !294
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  store i8 0, ptr %i.cg, align 8, !tbaa !431
  %.wide.3 = icmp ugt i64 %i.ca, %i.y
  br i1 %.wide.3, label %.lr.ph.new, label %.loopexit, !llvm.loop !434

._crit_edge26:                                    ; preds = %.lr.ph25
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !196 ; 2 uses
  %.not.i19 = icmp eq ptr %.pre, null
  br i1 %.not.i19, label %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit, label %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE3endEv.exit.i

_ZN6vectorIPN2lp19lar_base_constraintELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit, %._crit_edge26
  %.lcssa50 = phi i32 [ %i.cq, %._crit_edge26 ], [ %i.bd, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit ]
  %i.ch = phi ptr [ %.pre, %._crit_edge26 ], [ %i.az, %_ZNK6vectorIPN2lp19lar_base_constraintELb1EjE4sizeEv.exit ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  store i32 %.lcssa50, ptr %i.ci, align 4, !tbaa !214
  br label %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit

_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit: ; preds = %_ZN13stacked_valueIjE3popEj.exit17, %._crit_edge26, %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE3endEv.exit.i
  br i1 %.not1.i, label %_ZN6region9pop_scopeEj.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit, %.lr.ph.i21
  %.03.i = phi i32 [ %i.cj, %.lr.ph.i21 ], [ 0, %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit ]
  tail call void @_ZN6region9pop_scopeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.cj = add nuw i32 %.03.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %1
  br i1 %exitcond.not.i, label %_ZN6region9pop_scopeEj.exit, label %.lr.ph.i21, !llvm.loop !394

_ZN6region9pop_scopeEj.exit:                      ; preds = %.lr.ph.i21, %_ZN6vectorIPN2lp19lar_base_constraintELb1EjE6shrinkEj.exit
  ret void

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.lr.ph25
  %indvars.iv30 = phi i64 [ %2, %.lr.ph25.preheader ], [ %3, %.lr.ph25 ]
  %3 = add i64 %indvars.iv30, -1                  ; 3 uses
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !196
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %3
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !294 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cm) #28
  %i.cq = load i32, ptr %i.ak, align 8, !tbaa !214 ; 2 uses
  %4 = zext i32 %i.cq to i64
  %i.cr = icmp ugt i64 %3, %4
  br i1 %i.cr, label %.lr.ph25, label %._crit_edge26, !llvm.loop !435
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp14stacked_vectorIjE3popEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !360    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !214
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = sub i32 %.0.i, %1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !214  ; 7 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb1EjE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %.not.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb1EjE6resizeEj.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !214  ; 2 uses
  %.not15.i = icmp ugt i32 %i.i, %i.m
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %_ZN6vectorIjLb1EjE3endEv.exit.i.i

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i
  %.ph89 = phi ptr [ %i.j, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.m, %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

_ZN6vectorIjLb1EjE3endEv.exit.i.i:                ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.thread.i
  store i32 %i.i, ptr %i.l, align 4, !tbaa !214
  br label %_ZN6vectorIjLb1EjE6resizeEj.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i
  %i.n = phi ptr [ %.pr.pre.i, %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i ], [ %.ph89, %thread-pre-split.i.preheader ] ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.i

_ZNK6vectorIjLb1EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !214
  %i.r = icmp ugt i32 %i.i, %i.q
  br i1 %i.r, label %_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i, label %bb.c

_ZNK6vectorIjLb1EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i = load ptr, ptr %i.a, align 8, !tbaa !198
  br label %thread-pre-split.i, !llvm.loop !436

bb.c:                                             ; preds = %_ZNK6vectorIjLb1EjE8capacityEv.exit.i
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 %i.i, ptr %i.s, align 4, !tbaa !214
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %i.i
  br i1 %.not1218.i, label %_ZN6vectorIjLb1EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = zext i32 %i.i to i64
  %i.u = zext i32 %.0.i16.i.ph to i64             ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.n, i64 %i.u
  %i.w = sub nsw i64 %i.t, %i.u
  %i.x = shl nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.x, i1 false), !tbaa !214
  br label %_ZN6vectorIjLb1EjE6resizeEj.exit

_ZN6vectorIjLb1EjE6resizeEj.exit:                 ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i, %_ZN6vectorIjLb1EjE3endEv.exit.i.i, %bb.c, %.lr.ph.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !360    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorIjLb0EjE4sizeEv.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIjLb1EjE6resizeEj.exit
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !214
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit18

_ZNK6vectorIjLb0EjE4sizeEv.exit18:                ; preds = %_ZN6vectorIjLb1EjE6resizeEj.exit, %bb.d
  %.0.i17 = phi i32 [ %i.ac, %bb.d ], [ 0, %_ZN6vectorIjLb1EjE6resizeEj.exit ]
  %i.ad = sub i32 %.0.i17, %1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !214 ; 7 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !360 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit18
  %.not.not.i27 = icmp eq i32 %i.ag, 0
  br i1 %.not.not.i27, label %_ZN6vectorIjLb0EjE6resizeEj.exit, label %thread-pre-split.i20.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit18
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !214 ; 2 uses
  %.not15.i19 = icmp ugt i32 %i.ag, %i.ak
  br i1 %.not15.i19, label %thread-pre-split.i20.preheader, label %bb.e

thread-pre-split.i20.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph87 = phi ptr [ %i.ah, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i16.i23.ph = phi i32 [ %i.ak, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i20

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !214
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit

thread-pre-split.i20:                             ; preds = %thread-pre-split.i20.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.al = phi ptr [ %.pr.pre.i26, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i ], [ %.ph87, %thread-pre-split.i20.preheader ] ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i20
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !214
  %i.ap = icmp ugt i32 %i.ag, %i.ao
  br i1 %i.ap, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %bb.f

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %thread-pre-split.i20
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %.pr.pre.i26 = load ptr, ptr %i.y, align 8, !tbaa !360
  br label %thread-pre-split.i20, !llvm.loop !437

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.ag, ptr %i.aq, align 4, !tbaa !214
  %.not1218.i24 = icmp eq i32 %.0.i16.i23.ph, %i.ag
  br i1 %.not1218.i24, label %_ZN6vectorIjLb0EjE6resizeEj.exit, label %.lr.ph.preheader.i25

.lr.ph.preheader.i25:                             ; preds = %bb.f
  %i.ar = zext i32 %i.ag to i64
  %i.as = zext i32 %.0.i16.i23.ph to i64          ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.al, i64 %i.as
  %i.au = sub nsw i64 %i.ar, %i.as
  %i.av = shl nsw i64 %i.au, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.av, i1 false), !tbaa !214
  br label %_ZN6vectorIjLb0EjE6resizeEj.exit

_ZN6vectorIjLb0EjE6resizeEj.exit:                 ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.e, %bb.f, %.lr.ph.preheader.i25
  %i.aw = load ptr, ptr %0, align 8, !tbaa !360   ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit
  %i.ay = sub i32 0, %1
  %.not.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.not.i.i, label %_ZN2lp14stacked_vectorIjE8pop_tailIjEEvR7svectorIT_jEj.exit, label %thread-pre-split.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZN6vectorIjLb0EjE6resizeEj.exit
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !214 ; 3 uses
  %i.bb = sub i32 %i.ba, %1                       ; 2 uses
  %.not15.i.i = icmp ugt i32 %1, %i.ba
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.g

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %.ph84 = phi i32 [ %i.bb, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ %i.ay, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.ph85 = phi ptr [ %i.aw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.ba, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !214
  br label %_ZN2lp14stacked_vectorIjE8pop_tailIjEEvR7svectorIT_jEj.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.bc = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph85, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !214
  %i.bg = icmp ugt i32 %.ph84, %i.bf
  br i1 %i.bg, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.h

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre.i.i = load ptr, ptr %0, align 8, !tbaa !360
  br label %thread-pre-split.i.i, !llvm.loop !437

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %.ph84, ptr %i.bh, align 4, !tbaa !214
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph84
  br i1 %.not1218.i.i, label %_ZN2lp14stacked_vectorIjE8pop_tailIjEEvR7svectorIT_jEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.bi = zext i32 %.ph84 to i64
  %i.bj = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.bc, i64 %i.bj
end_hunk_0

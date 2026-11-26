Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/desugarer?download=true
inline.NumInlined: 3682
inline.NumDeleted: 1237
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit61.i.i.i: ; preds = %.noexc9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i
  %i.eu = phi ptr [ %.pre.i59.i.i.i, %.noexc9.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.cz
  store i8 %i.ep, ptr %i.ev, align 1, !tbaa !44
  store i64 %i.da, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292
  %i.ew = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.da
  store i8 0, ptr %i.ex, align 1, !tbaa !44
  %i.ey = lshr i64 %i.en, 16
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = load i64, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292 ; 4 uses
  %i.fb = add i64 %i.fa, 1                        ; 3 uses
  %i.fc = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aa
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit61.i.i.i
  %i.fe = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit61.i.i.i
  %i.ff = load i64, ptr %i.aa, align 8, !tbaa !44, !alias.scope !292
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65.i.i.i
  %i.fg = phi i64 [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65.i.i.i ]
  %i.fh = icmp ugt i64 %i.fb, %i.fg
  br i1 %i.fh, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.fa, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i unwind label %bb.aa

.noexc10.i:                                       ; preds = %bb.x
  %.pre.i64.i.i.i = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i: ; preds = %.noexc10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i
  %i.fi = phi ptr [ %.pre.i64.i.i.i, %.noexc10.i ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  store i8 %i.ez, ptr %i.fj, align 1, !tbaa !44
  store i64 %i.fb, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292
  %i.fk = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fb
  store i8 0, ptr %i.fl, align 1, !tbaa !44
  %i.fm = lshr i64 %i.en, 8
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = load i64, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292 ; 4 uses
  %i.fp = add i64 %i.fo, 1                        ; 3 uses
  %i.fq = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.aa
  br i1 %i.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i
  %i.fs = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i
  %i.ft = load i64, ptr %i.aa, align 8, !tbaa !44, !alias.scope !292
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i
  %i.fu = phi i64 [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i ]
  %i.fv = icmp ugt i64 %i.fp, %i.fu
  br i1 %i.fv, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.fo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc11.i unwind label %bb.aa

.noexc11.i:                                       ; preds = %bb.y
  %.pre.i69.i.i.i = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i: ; preds = %.noexc11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i
  %i.fw = phi ptr [ %.pre.i69.i.i.i, %.noexc11.i ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  store i8 %i.fn, ptr %i.fx, align 1, !tbaa !44
  store i64 %i.fp, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292
  %i.fy = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store i8 0, ptr %i.fz, align 1, !tbaa !44
  %i.ga = trunc i64 %i.en to i8
  %i.gb = load i64, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292 ; 4 uses
  %i.gc = add i64 %i.gb, 1                        ; 2 uses
  %i.gd = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.aa
  br i1 %i.ge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i75.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i75.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i
  %i.gf = icmp ult i64 %i.gb, 16
  call void @llvm.assume(i1 %i.gf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i
  %i.gg = load i64, ptr %i.aa, align 8, !tbaa !44, !alias.scope !292
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i75.i.i.i
  %i.gh = phi i64 [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i75.i.i.i ]
  %i.gi = icmp ugt i64 %i.gc, %i.gh
  br i1 %i.gi, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.gb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc12.i unwind label %bb.aa

.noexc12.i:                                       ; preds = %bb.z
  %.pre.i74.i.i.i = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i: ; preds = %.noexc12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i
  %i.gj = phi ptr [ %.pre.i74.i.i.i, %.noexc12.i ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gb
  store i8 %i.ga, ptr %i.gk, align 1, !tbaa !44
  br label %_ZN7jsonnet8internalL11encode_utf8EDiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZN7jsonnet8internalL11encode_utf8EDiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit56.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit41.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i
  %.sink.i.i = phi i64 [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit41.i.i.i ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit56.i.i.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292
  %i.gl = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sink.i.i
  store i8 0, ptr %i.gm, align 1, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gn, %i.ax
  br i1 %.not.i.i, label %_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.l
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.aa
  br i1 %i.gq, label %.body, label %.body.sink.split

_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %_ZN7jsonnet8internalL11encode_utf8EDiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 4)
          to label %.noexc68 unwind label %bb.al, !noalias !293 ; 6 uses

.noexc68:                                         ; preds = %_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  store ptr %i.ac, ptr %5, align 8, !tbaa !66, !alias.scope !293
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 5 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.ab:                                            ; preds = %.noexc68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !67 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.gx)
  %i.gy = add nuw nsw i64 %i.gw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.gy, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.noexc68
  store ptr %i.gs, ptr %5, align 8, !tbaa !43, !alias.scope !293
  %i.gz = load i64, ptr %i.gt, align 8, !tbaa !44
  store i64 %i.gz, ptr %i.ac, align 8, !tbaa !44, !alias.scope !293
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ab
  %i.ha = phi i64 [ %i.gw, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.ha, ptr %i.ad, align 8, !tbaa !67, !alias.scope !293
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !43
  store i64 0, ptr %i.hb, align 8, !tbaa !67
  store i8 0, ptr %i.gt, align 8, !tbaa !44
  %i.hc = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.aa
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ac
  %i.he = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.hg = load ptr, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !76
  store ptr %4, ptr %i.ae, align 8, !tbaa !294
  %i.hh = invoke noundef ptr @_ZN7jsonnet8internal9Allocator15makeBuiltinBodyIZNS0_9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlvE_EEPKNS0_19BuiltinFunctionBodyERKNS0_13LocationRangeERKS9_OT_(ptr noundef nonnull align 8 dereferenceable(120) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ad unwind label %bb.am

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.hj = load ptr, ptr %i.af, align 8, !tbaa !78
  invoke void @_ZN7jsonnet8internal11BuiltinDeclC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.ae unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.hk = invoke ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal15DesugaredObject5FieldESt6vectorIS5_SaIS5_EEEEZNS3_9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKS5_E_ET_SL_SL_T0_(ptr %i.hi, ptr %i.hj, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.af unwind label %bb.an     ; 6 uses

bb.af:                                            ; preds = %bb.ae
  %i.hl = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 3 uses
  %i.hm = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ht, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i ], [ %i.hl, %bb.af ] ; 3 uses
  %i.hn = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !44
  %i.hr = shl i64 %i.hq, 2
  %i.hs = add i64 %i.hr, 4
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hs) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ht, %i.hm
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.af
  %i.hu = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.hl, %bb.af ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.hv = load ptr, ptr %i.ai, align 8, !tbaa !59
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hy) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.ag, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.hz = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.aj
  br i1 %i.ia, label %_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i
  %i.ib = load i64, ptr %i.aj, align 8, !tbaa !44
  %i.ic = shl i64 %i.ib, 2
  %i.id = add i64 %i.ic, 4
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #26
  br label %_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev.exit

_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i
  %i.ie = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.if = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc72 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc72:                                         ; preds = %_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev.exit
  invoke void @_ZN7jsonnet8internal15BuiltinFunctionC2ERKNS0_13LocationRangeEPKNS0_19BuiltinFunctionBodyE(ptr noundef nonnull align 8 dereferenceable(136) %i.if, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef %i.hh)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc72
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef 136) #26
  br label %.body73

_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i: ; preds = %.noexc72
  %i.ih = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ai unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ai:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store ptr %i.if, ptr %i.ij, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(24) %i.ii) #28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 112 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !84
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !84
  %i.in = load ptr, ptr %i.af, align 8, !tbaa !78 ; 5 uses
  %.not = icmp eq ptr %i.hk, %i.in
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.if, ptr %i.io, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.thread, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.al:                                            ; preds = %_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.aa
  br i1 %i.is, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.al, %bb.aa
  %.sink = phi ptr [ %i.gp, %bb.aa ], [ %i.ir, %bb.al ]
  %.pn41.ph = phi { ptr, i32 } [ %i.go, %bb.aa ], [ %i.iq, %bb.al ]
  %i.it = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.iu) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.al, %bb.aa
  %.pn41 = phi { ptr, i32 } [ %i.go, %bb.aa ], [ %i.iq, %bb.al ], [ %.pn41.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body73

bb.an:                                            ; preds = %bb.ae
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #28
  br label %.body73

bb.ao:                                            ; preds = %bb.ai
  %i.ix = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.hk, %i.ix
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.in, align 8, !tbaa !90
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.aw, ptr %i.iy, align 8, !tbaa !91
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store ptr %i.if, ptr %i.iz, align 8, !tbaa !87
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store ptr %i.ja, ptr %i.af, align 8, !tbaa !92
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.jb = load ptr, ptr %i.y, align 8, !tbaa !93  ; 5 uses
  %i.jc = ptrtoint ptr %i.hk to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd                    ; 4 uses
  %i.jf = icmp eq i64 %i.je, 9223372036854775800
  br i1 %i.jf, label %bb.ar, label %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc81 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.jg = sdiv exact i64 %i.je, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jg, i64 1)
  %i.jh = add nsw i64 %.sroa.speculated.i.i.i, %i.jg ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.jg
  %i.jj = call i64 @llvm.umin.i64(i64 %i.jh, i64 384307168202282325)
  %i.jk = select i1 %i.ji, i64 384307168202282325, i64 %i.jj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jk, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.jl = mul nuw nsw i64 %i.jk, 24
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #27
          to label %.noexc82 unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.je ; 3 uses
  store i32 0, ptr %i.jn, align 8, !tbaa !90
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.aw, ptr %i.jo, align 8, !tbaa !91
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.if, ptr %i.jp, align 8, !tbaa !87
  %.not10.i.i.i.i.i = icmp eq ptr %i.jb, %i.hk
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i, label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %.noexc82, %.lr.ph.i.i.i.i.i79
  %.012.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i79 ], [ %i.jm, %.noexc82 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jq, %.lr.ph.i.i.i.i.i79 ], [ %i.jb, %.noexc82 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95, !alias.scope !295
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.jq, %i.hk
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i, label %.lr.ph.i.i.i.i.i79, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i79, %.noexc82
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.jm, %.noexc82 ], [ %i.jr, %.lr.ph.i.i.i.i.i79 ]
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.je) #26
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  store ptr %i.jm, ptr %i.y, align 8, !tbaa !93
  store ptr %i.js, ptr %i.af, align 8, !tbaa !92
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %i.jk
  store ptr %i.jt, ptr %i.ak, align 8, !tbaa !89
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit

.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev.exit, %_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i, %bb.ad, %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit: ; preds = %bb.ap, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aj
  %i.ju = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.ac
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit
  %i.jw = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.jy = load ptr, ptr %i.al, align 8, !tbaa !58 ; 3 uses
  %i.jz = load ptr, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jy, %i.jz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 3 uses
  %i.ka = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !44
  %i.ke = shl i64 %i.kd, 2
  %i.kf = add i64 %i.ke, 4
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kf) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kg, %i.jz
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.al, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.kh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ki = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kl) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i: ; preds = %bb.at, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.km = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ao
  br i1 %i.kn, label %_ZN7jsonnet8internal11BuiltinDeclD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i
  %i.ko = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.kp = shl i64 %i.ko, 2
  %i.kq = add i64 %i.kp, 4
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #26
  br label %_ZN7jsonnet8internal11BuiltinDeclD2Ev.exit

_ZN7jsonnet8internal11BuiltinDeclD2Ev.exit:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.kr = add nuw nsw i64 %.033166, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.kr, 42
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, label %bb.h, !llvm.loop !288

.body73:                                          ; preds = %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp, %bb.an, %bb.ah, %bb.am
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.am ], [ %i.ig, %bb.ah ], [ %i.iw, %bb.an ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ks = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.ac
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %.body73
  %i.ku = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %.body73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %.body
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn41, %.body ], [ %.pn43.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn43.pn.pn, %.body73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.ak
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.ip, %bb.ak ]
  call void @_ZN7jsonnet8internal11BuiltinDeclD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %.noexc64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke fastcc void @_ZN7jsonnet8internalL11decode_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 5, ptr %i.a, align 4, !tbaa !72
  %i.kw = load ptr, ptr %0, align 8, !tbaa !64
  %i.kx = invoke noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_13LiteralStringEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEENS3_9TokenKindERA1_KcSO_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.kw, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @.str.113, ptr noundef nonnull align 1 dereferenceable(1) @.str.113)
          to label %bb.ax unwind label %bb.bf     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ky = load ptr, ptr %i.af, align 8, !tbaa !92 ; 8 uses
  %i.kz = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.not.i93 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not.i93, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.ky, align 8, !tbaa !90
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.au, ptr %i.la, align 8, !tbaa !91
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr %i.kx, ptr %i.lb, align 8, !tbaa !87
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store ptr %i.lc, ptr %i.af, align 8, !tbaa !92
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEERS3_DpOT_.exit

bb.az:                                            ; preds = %bb.ax
  %i.ld = load ptr, ptr %i.y, align 8, !tbaa !93  ; 5 uses
  %i.le = ptrtoint ptr %i.ky to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 4 uses
  %i.lh = icmp eq i64 %i.lg, 9223372036854775800
  br i1 %i.lh, label %bb.ba, label %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i94

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc105 unwind label %bb.bf

.noexc105:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i94: ; preds = %bb.az
  %i.li = sdiv exact i64 %i.lg, 24                ; 3 uses
  %.sroa.speculated.i.i.i95 = call i64 @llvm.umax.i64(i64 %i.li, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i.i95, %i.li ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.li
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 384307168202282325)
  %i.lm = select i1 %i.lk, i64 384307168202282325, i64 %i.ll ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.lm, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.ln = mul nuw nsw i64 %i.lm, 24
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #27
          to label %.noexc106 unwind label %bb.bf ; 5 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i94
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lg ; 3 uses
  store i32 0, ptr %i.lp, align 8, !tbaa !90
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.au, ptr %i.lq, align 8, !tbaa !91
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store ptr %i.kx, ptr %i.lr, align 8, !tbaa !87
  %.not10.i.i.i.i.i97 = icmp eq ptr %i.ld, %i.ky
  br i1 %.not10.i.i.i.i.i97, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i102, label %.lr.ph.i.i.i.i.i98

.lr.ph.i.i.i.i.i98:                               ; preds = %.noexc106, %.lr.ph.i.i.i.i.i98
  %.012.i.i.i.i.i99 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i98 ], [ %i.lo, %.noexc106 ] ; 2 uses
  %.0911.i.i.i.i.i100 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i98 ], [ %i.ld, %.noexc106 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i99, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i100, i64 24, i1 false), !tbaa.struct !95, !alias.scope !296
  %i.ls = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 24 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 24 ; 2 uses
  %.not.i.i.i.i.i101 = icmp eq ptr %i.ls, %i.ky
  br i1 %.not.i.i.i.i.i101, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i102, label %.lr.ph.i.i.i.i.i98, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i102: ; preds = %.lr.ph.i.i.i.i.i98, %.noexc106
  %.0.lcssa.i.i.i.i.i103 = phi ptr [ %i.lo, %.noexc106 ], [ %i.lt, %.lr.ph.i.i.i.i.i98 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i103, i64 24
  %.not.i35.i.i104 = icmp eq ptr %i.ld, null
  br i1 %.not.i35.i.i104, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i102
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lg) #26
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bb, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i102
  store ptr %i.lo, ptr %i.y, align 8, !tbaa !93
  store ptr %i.lu, ptr %i.af, align 8, !tbaa !92
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %i.lm
  store ptr %i.lv, ptr %i.ak, align 8, !tbaa !89
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEERS3_DpOT_.exit

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ay
  %i.lw = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEERS3_DpOT_.exit
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !44
  %i.ma = shl i64 %i.lz, 2
  %i.mb = add i64 %i.ma, 4
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.mb) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideEPNS1_13LiteralStringESA_EEERS3_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.mc = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ap
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.me = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.mf = shl i64 %i.me, 2
  %i.mg = add i64 %i.mf, 4
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.mh = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.mh, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109, %.lr.ph.i.i110
  %.09.i.i = phi ptr [ %i.mi, %.lr.ph.i.i110 ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109 ] ; 3 uses
  %i.mi = load ptr, ptr %.09.i.i, align 8, !tbaa !96 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  call void @_ZN7jsonnet8internal5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.mj) #28
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 208) #26
  %.not.i.i111 = icmp eq ptr %i.mi, %2
  br i1 %.not.i.i111, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i110, !llvm.loop !5

_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i110, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %i.u

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117

bb.bd:                                            ; preds = %.noexc64
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %bb.av
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114

bb.bf:                                            ; preds = %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i94, %bb.ba, %bb.aw
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bf
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !44
  %i.ms = shl i64 %i.mr, 2
  %i.mt = add i64 %i.ms, 4
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mt) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i112, %bb.be
  %.pn37 = phi { ptr, i32 } [ %i.mm, %bb.be ], [ %i.mn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i112 ], [ %i.mn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114, %bb.bd
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit114 ], [ %i.ml, %bb.bd ] ; 2 uses
  %i.mu = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.ap
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bg
  %i.mw = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.mx = shl i64 %i.mw, 2
  %i.my = add i64 %i.mx, 4
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i115, %bb.bc
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.mk, %bb.bc ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i115 ], [ %.pn37.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117
  %.pn51.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit117 ], [ %.pn43.pn.pn.pn.pn, %bb.au ], [ %lpad.loopexit.split-lp242, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.loopexit.split-lp ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn51.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet8internal15jsonnet_desugarEPNS0_9AllocatorERPNS0_3ASTEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISC_ESaISt4pairIKSC_SD_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.jsonnet::internal::Desugarer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !65
  call void @_ZN7jsonnet8internal9Desugarer11desugarFileERPNS0_3ASTEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISB_ESaISt4pairIKSB_SC_EEE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal9Desugarer11desugarFileERPNS0_3ASTEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISB_ESaISt4pairIKSB_SC_EEE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::vector.109", align 8   ; 8 uses
  %7 = alloca %"class.std::vector", align 8       ; 13 uses
  %8 = alloca [1 x %"struct.jsonnet::internal::FodderElement"], align 8 ; 15 uses
  %9 = alloca %"class.std::vector", align 8       ; 16 uses
  %10 = alloca [1 x %"struct.jsonnet::internal::FodderElement"], align 8 ; 15 uses
  %11 = alloca %"struct.jsonnet::internal::LocationRange", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.83", align 8   ; 13 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %14 = alloca %"class.std::__cxx11::list", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %19 = alloca %"class.std::vector.102", align 8  ; 10 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %21 = alloca %"class.std::vector.102", align 8  ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %23 = alloca %"class.std::vector.102", align 8  ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  tail call void @_ZN7jsonnet8internal9Desugarer7desugarERPNS0_3ASTEj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  %i.i = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !66
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.n, ptr %i.e, align 8, !tbaa !68
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !43
  %i.q = load i64, ptr %i.e, align 8, !tbaa !68
  store i64 %i.q, ptr %i.k, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !44
  store i8 %i.s, ptr %i.r, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEaSEOS4_:bb.a
  store ptr %i.e, ptr %1, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit, %bb.f, %bb.g, %bb.b
  %i.y = phi ptr [ %.pre31, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !52
  store i32 0, ptr %i.y, align 4, !tbaa !54
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7jsonnet8internal9Desugarer10makeObjectEPNS0_6ObjectEj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.83", align 8    ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %6 = alloca %"struct.jsonnet::internal::ObjectField", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.142", align 8   ; 12 uses
  %8 = alloca %"class.std::vector.66", align 8    ; 13 uses
  %9 = alloca %"class.std::__cxx11::list.61", align 8 ; 16 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.std::vector.102", align 8  ; 12 uses
  %11 = alloca %"struct.jsonnet::internal::Local::Bind", align 8 ; 7 uses
  %12 = alloca %"struct.jsonnet::internal::Local::Bind", align 8 ; 7 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %._crit_edge.i.i, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @_ZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.142") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %2)
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !55
  store i32 36, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !54
  %i.g = load ptr, ptr %0, align 8, !tbaa !64
  %i.h = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.c

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.k = load i64, ptr %i.d, align 8, !tbaa !44
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.n = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.o = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27 ; 5 uses
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 28, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit99, %bb.d, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit58, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn50, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EED2Ev.exit99 ], [ %i.ae, %bb.d ], [ %i.y, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit58 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 128) #26
  br label %common.resume

_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal4SelfE, i64 16), ptr %i.o, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.r = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.o, ptr %i.s, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #28
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !84
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN7jsonnet8internal11ObjectField5LocalERKSt6vectorINS0_13FodderElementESaIS3_EES7_PKNS0_10IdentifierES7_PNS0_3ASTES7_(ptr dead_on_unwind nonnull writable sret(%"struct.jsonnet::internal::ObjectField") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
  %i.x = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(288) %6)
          to label %.split37 unwind label %bb.d   ; 0 uses

.split37:                                         ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit
  call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.142") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef 0)
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i56: ; preds = %bb.c
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ac = shl i64 %i.ab, 2
  %i.ad = add i64 %i.ac, 4
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit58: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

bb.d:                                             ; preds = %_ZN7jsonnet8internal9Desugarer4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7jsonnet8internal11ObjectFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

bb.e:                                             ; preds = %.split, %.split37
  %i.af = phi ptr [ %i.c, %.split ], [ %i.w, %.split37 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %9, ptr %i.ag, align 8, !tbaa !210
  store ptr %9, ptr %9, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !211
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !213 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !213 ; 2 uses
  %.not114119 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not114119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %.noexc59 unwind label %bb.v   ; 5 uses

.noexc59:                                         ; preds = %._crit_edge
  invoke void @_ZN7jsonnet8internal15DesugaredObjectC2ERKNS0_13LocationRangeERKNSt7__cxx114listIPNS0_3ASTESaIS8_EEERKSt6vectorINS1_5FieldESaISE_EE(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_15DesugaredObjectEJRNS0_13LocationRangeERNSt7__cxx114listIPNS0_3ASTESaIS9_EEERSt6vectorINS3_5FieldESaISE_EEEEEPT_DpOT0_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc59
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 176) #26
  br label %.body

_ZN7jsonnet8internal9Allocator4makeINS0_15DesugaredObjectEJRNS0_13LocationRangeERNSt7__cxx114listIPNS0_3ASTESaIS9_EEERSt6vectorINS3_5FieldESaISE_EEEEEPT_DpOT0_.exit.i: ; preds = %.noexc59
  %i.ar = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit
  %.sroa.0110.0120 = phi ptr [ %i.ai, %.lr.ph ], [ %i.cz, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit ] ; 7 uses
  %i.as = load i32, ptr %.sroa.0110.0120, align 8, !tbaa !216
  switch i32 %i.as, label %bb.n [
    i32 0, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE9push_backERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0110.0120, i64 248
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !70
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %9) #28
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !84
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.ah, align 8, !tbaa !84
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc104, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc102, %bb.r, %bb.n, %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.p, %bb.l
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0110.0120, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0110.0120, i64 112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0110.0120, i64 248 ; 2 uses
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !92 ; 8 uses
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.az, align 8, !tbaa !94
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !70
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !92
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %8, align 8, !tbaa !93    ; 5 uses
  %i.bl = ptrtoint ptr %i.bc to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.l, label %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bp = sdiv exact i64 %i.bn, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 384307168202282325)
  %i.bt = select i1 %i.br, i64 384307168202282325, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 24
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #27
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 3 uses
  %i.bx = load i32, ptr %i.az, align 8, !tbaa !94
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !70
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !91
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !87
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc63, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.noexc63 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc63 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !95, !alias.scope !380
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc63
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %.noexc63 ], [ %i.cd, %.lr.ph.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #26
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  store ptr %i.bv, ptr %8, align 8, !tbaa !93
  store ptr %i.ce, ptr %i.al, align 8, !tbaa !92
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cf, ptr %i.am, align 8, !tbaa !89
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.g
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.117, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.ch = load i32, ptr %.sroa.0110.0120, align 8, !tbaa !216
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.ch)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !107
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !393 ; 6 uses
  %.not.i.i.i100 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i100, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.p
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !398
  %.not.i1.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 67
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !44
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.co)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.r
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !107
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !375

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc102, %bb.q
  %.0.i.i.i = phi i8 [ %i.cs, %bb.q ], [ %i.cw, %.noexc102 ]
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i8 noundef signext %.0.i.i.i)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEERS3_DpOT_.exit: ; preds = %.noexc104, %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE17_M_realloc_insertIJRKNS1_11ObjectField4HideERKPNS1_3ASTESE_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZNSt7__cxx114listIPN7jsonnet8internal3ASTESaIS4_EE9push_backERKS4_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0110.0120, i64 288 ; 2 uses
  %.not114 = icmp eq ptr %i.cz, %i.ak
  br i1 %.not114, label %._crit_edge, label %bb.g

bb.s:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_15DesugaredObjectEJRNS0_13LocationRangeERNSt7__cxx114listIPNS0_3ASTESaIS9_EEERSt6vectorINS3_5FieldESaISE_EEEEEPT_DpOT0_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ap, ptr %i.db, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.da) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 112 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !84
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !84
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !222 ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !223   ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.dh
  br i1 %.not, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

bb.u:                                             ; preds = %bb.am
  %i.dm = load ptr, ptr %0, align 8, !tbaa !64
  %i.dn = invoke noundef ptr @_ZN7jsonnet8internal9Allocator4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7jsonnet8internal9Desugarer4makeINS0_5LocalEJRNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS7_EERS6_INS3_4BindESaISC_EERPNS0_3ASTEEEEPT_DpOT0_.exit unwind label %bb.ao

bb.v:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_15DesugaredObjectEJRNS0_13LocationRangeERNSt7__cxx114listIPNS0_3ASTESaIS9_EEERSt6vectorINS3_5FieldESaISE_EEEEEPT_DpOT0_.exit.i, %._crit_edge
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.t, %bb.am
  %.sroa.0106.0121 = phi ptr [ %i.dh, %bb.t ], [ %i.fb, %bb.am ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0106.0121, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !225
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ds = load ptr, ptr %.sroa.0106.0121, align 8, !tbaa !226
  %i.dt = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.du = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
          to label %.noexc67 unwind label %bb.ae  ; 5 uses

.noexc67:                                         ; preds = %bb.x
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.du, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, i32 noundef 28, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit.i unwind label %bb.y

bb.y:                                             ; preds = %.noexc67
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 128) #26
  br label %.body68

_ZN7jsonnet8internal9Allocator4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit.i: ; preds = %.noexc67
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal4SelfE, i64 16), ptr %i.du, align 8, !tbaa !107
  %i.dw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.z unwind label %bb.ae      ; 2 uses

bb.z:                                             ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.du, ptr %i.dy, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 112 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !84
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !399
  invoke void @_ZN7jsonnet8internal5Local4BindC2ERKSt6vectorINS0_13FodderElementESaIS4_EEPKNS0_10IdentifierES8_PNS0_3ASTEbS8_RKS3_INS0_8ArgParamESaISE_EEbS8_S8_(ptr noundef nonnull align 8 dereferenceable(176) %11, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull %i.du, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7jsonnet8internalL2EFE)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ec = load ptr, ptr %4, align 8, !tbaa !130, !noalias !399 ; 3 uses
  %i.ed = load ptr, ptr %i.dk, align 8, !tbaa !104, !noalias !399 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i ], [ %i.ec, %bb.aa ] ; 2 uses
  call void @_ZN7jsonnet8internal8ArgParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i.i) #28
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !130, !noalias !399
  br label %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.aa
  %i.ef = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ec, %bb.aa ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.eg = load ptr, ptr %i.dl, align 8, !tbaa !105, !noalias !399
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !399
  br label %.body68

bb.ad:                                            ; preds = %bb.ab, %_ZSt8_DestroyIPN7jsonnet8internal8ArgParamES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !399
  %i.el = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(176) %11)
          to label %_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE9push_backEOS3_.exit unwind label %bb.af ; 0 uses

_ZNSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ad
  call void @_ZN7jsonnet8internal5Local4BindD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.am

bb.ae:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_4SelfEJRKNS0_13LocationRangeERKSt6vectorINS0_13FodderElementESaIS8_EEEEEPT_DpOT0_.exit.i, %bb.x
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body68
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN7jsonnet8internal11ObjectFieldESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #25
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare noundef ptr @_ZN7jsonnet8internal9clone_astERNS0_9AllocatorEPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass13fodderElementERNS0_13FodderElementE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass6fodderERSt6vectorINS0_13FodderElementESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5specsERSt6vectorINS0_17ComprehensionSpecESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass6paramsERSt6vectorINS0_13FodderElementESaIS3_EERS2_INS0_8ArgParamESaIS7_EES6_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass11fieldParamsERNS0_11ObjectFieldE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass6fieldsERSt6vectorINS0_11ObjectFieldESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5ApplyE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_10ApplyBraceE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5ArrayE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_18ArrayComprehensionE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6AssertE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6BinaryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_15BuiltinFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_19BuiltinFunctionBodyE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_11ConditionalE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6DollarE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5ErrorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_8FunctionE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6ImportE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_9ImportstrE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_9ImportbinE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_7InSuperE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5IndexE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5LocalE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_14LiteralBooleanE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_13LiteralNumberE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_13LiteralStringE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_11LiteralNullE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6ObjectE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_15DesugaredObjectE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_19ObjectComprehensionE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_25ObjectComprehensionSimpleE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_6ParensE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_4SelfE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_10SuperIndexE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

declare void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_5UnaryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal12CompilerPass5visitEPNS0_3VarE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEjEN19SubstituteSelfSuper9visitExprERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 9 uses
  %3 = alloca %"class.jsonnet::internal::UStringStream", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %5 = alloca %"class.jsonnet::internal::UStringStream", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string.17", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread163, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal4SelfE, i64 0) #28
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc42 unwind label %bb.h   ; 3 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  store ptr %i.k, ptr %2, align 8, !tbaa !51
  store i64 11, ptr %i.j, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.k, ptr noundef nonnull align 4 dereferenceable(44) @.str.121, i64 44, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.l, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !54
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.o = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %bb.i

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %.noexc42
  store ptr %i.o, ptr %i.e, align 8, !tbaa !271
  %i.p = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.r = load i64, ptr %i.j, align 8, !tbaa !44
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !476, !nonnull !99, !align !273 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227
  %.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !101
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !226
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !222
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !223 ; 5 uses
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775792
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
  unreachable

_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 576460752303423487)
  %i.am = select i1 %i.ak, i64 576460752303423487, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #27 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !101
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !226
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !225
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !477
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !465

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %.lr.ph.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_DnEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_DnEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_DnEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !223
  store ptr %i.au, ptr %i.w, align 8, !tbaa !222
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.av, ptr %i.y, align 8, !tbaa !227
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46

bb.i:                                             ; preds = %.noexc42
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.j
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i44: ; preds = %bb.i
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !44
  %i.bb = shl i64 %i.ba, 2
  %i.bc = add i64 %i.bb, 4
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i44, %bb.h
  %.pn39 = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i44 ], [ %i.ax, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_DnEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.d, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !478, !nonnull !99, !align !273 ; 2 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bi = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27 ; 6 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !101
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_3VarEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit unwind label %bb.j

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit131, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit79, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46 ], [ %.pn35.pn, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit79 ], [ %.pn30.pn, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit131 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 136) #26
  br label %common.resume

_ZN7jsonnet8internal9Allocator4makeINS0_3VarEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_DnEEERS8_DpOT_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.bi, align 8, !tbaa !107
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !122
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bn = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !84
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !84
  store ptr %i.bi, ptr %1, align 8, !tbaa !70
  br label %.thread163

bb.k:                                             ; preds = %bb.b
  %i.bs = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal10SuperIndexE, i64 0) #28 ; 3 uses
  %.not27 = icmp eq ptr %i.bs, null
  br i1 %.not27, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bt, ptr %3, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !52
  store i32 0, ptr %i.bt, align 8, !tbaa !54
  %i.bv = invoke noalias noundef nonnull dereferenceable(76) ptr @_Znwm(i64 noundef 76) #27
          to label %.noexc49 unwind label %bb.z   ; 3 uses

.noexc49:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.bv, ptr noundef nonnull align 4 dereferenceable(72) @.str.122, i64 72, i1 false)
  store ptr %i.bv, ptr %3, align 8, !tbaa !51
  store i64 18, ptr %i.bt, align 8, !tbaa !44
  store i64 18, ptr %i.bu, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store i32 0, ptr %i.bw, align 4, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !479, !nonnull !99, !align !480 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !265 ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !265
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7jsonnet8internal13UStringStreamlsIjEERS1_T_(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bz)
          to label %bb.l unwind label %bb.z       ; 0 uses

bb.l:                                             ; preds = %.noexc49
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ce, ptr %4, align 8, !tbaa !55, !alias.scope !481
  %i.cf = load ptr, ptr %3, align 8, !tbaa !51, !noalias !481 ; 2 uses
  %i.cg = load i64, ptr %i.bu, align 8, !tbaa !52, !noalias !481 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.cg, 2            ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, 3
  br i1 %i.ch, label %bb.m, label %._crit_edge.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ci = icmp ugt i64 %i.cg, 1152921504606846975
  br i1 %i.ci, label %.noexc.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
          to label %.noexc50 unwind label %bb.x

.noexc50:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i: ; preds = %bb.m
  %i.cj = add nuw nsw i64 %.idx.i.i, 4
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #27
          to label %.noexc51 unwind label %bb.x   ; 2 uses

.noexc51:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i
  store ptr %i.ck, ptr %4, align 8, !tbaa !51, !alias.scope !481
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !44, !alias.scope !481
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc51, %bb.l
  %.pre8.i.i.i = phi ptr [ %i.ck, %.noexc51 ], [ %i.ce, %bb.l ] ; 3 uses
  switch i64 %i.cg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !54
  store i32 %i.cl, ptr %.pre8.i.i.i, align 4, !tbaa !54
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i, ptr align 4 %i.cf, i64 %.idx.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cg, ptr %i.cm, align 8, !tbaa !52, !alias.scope !481
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i, i64 %.idx.i.i
  store i32 0, ptr %i.cn, align 4, !tbaa !54
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cp = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit53 unwind label %bb.y ; 3 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit53: ; preds = %bb.p
  %i.cq = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i54: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit53
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.ct = shl i64 %i.cs, 2
  %i.cu = add i64 %i.ct, 4
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit56: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit53, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !476, !nonnull !99, !align !273 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !222 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !227
  %.not.i57 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit56
  store ptr %i.cp, ptr %i.cy, align 8, !tbaa !226
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.bs, ptr %i.db, align 8, !tbaa !225
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !222
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_10SuperIndexEEEERS8_DpOT_.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit56
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !223 ; 5 uses
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775792
  br i1 %i.dh, label %bb.s, label %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i58

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc69 unwind label %bb.z

.noexc69:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i58: ; preds = %bb.r
  %i.di = ashr exact i64 %i.dg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i59, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 576460752303423487)
  %i.dm = select i1 %i.dk, i64 576460752303423487, i64 %i.dl ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i60)
  %i.dn = shl nuw nsw i64 %i.dm, 4
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #27
          to label %.noexc70 unwind label %bb.z   ; 5 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i58
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg ; 2 uses
  store ptr %i.cp, ptr %i.dp, align 8, !tbaa !226
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.bs, ptr %i.dq, align 8, !tbaa !225
  %.not10.i.i.i.i.i61 = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i61, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i66, label %.lr.ph.i.i.i.i.i62

.lr.ph.i.i.i.i.i62:                               ; preds = %.noexc70, %.lr.ph.i.i.i.i.i62
  %.012.i.i.i.i.i63 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i62 ], [ %i.do, %.noexc70 ] ; 2 uses
  %.0911.i.i.i.i.i64 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i62 ], [ %i.dd, %.noexc70 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i63, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i64, i64 16, i1 false), !alias.scope !482
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 16 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.dr, %i.cy
  br i1 %.not.i.i.i.i.i65, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i66, label %.lr.ph.i.i.i.i.i62, !llvm.loop !465

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i66: ; preds = %.lr.ph.i.i.i.i.i62, %.noexc70
  %.0.lcssa.i.i.i.i.i67 = phi ptr [ %i.do, %.noexc70 ], [ %i.ds, %.lr.ph.i.i.i.i.i62 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i67, i64 16
  %.not.i34.i.i68 = icmp eq ptr %i.dd, null
  br i1 %.not.i34.i.i68, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_10SuperIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dg) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_10SuperIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_10SuperIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i66
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !223
  store ptr %i.dt, ptr %i.cx, align 8, !tbaa !222
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.du, ptr %i.cz, align 8, !tbaa !227
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_10SuperIndexEEEERS8_DpOT_.exit

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_10SuperIndexEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_10SuperIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !478, !nonnull !99, !align !273 ; 2 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.dy = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc71 unwind label %bb.z   ; 6 uses

.noexc71:                                         ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_10SuperIndexEEEERS8_DpOT_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.dy, ptr noundef nonnull align 8 dereferenceable(64) %i.ea, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc71
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.dy, align 8, !tbaa !107
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  store ptr %i.cp, ptr %i.eb, align 8, !tbaa !122
  %i.ec = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.w unwind label %bb.z       ; 2 uses

bb.v:                                             ; preds = %.noexc71
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 136) #26
  br label %.body

bb.w:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.dy, ptr %i.ef, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 112 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !84
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !84
  store ptr %i.dy, ptr %1, align 8, !tbaa !70
  %i.ej = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.bt
  br i1 %i.ek, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.el = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.em = shl i64 %i.el, 2
  %i.en = add i64 %i.em, 4
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit

_ZN7jsonnet8internal13UStringStreamD2Ev.exit:     ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.thread163

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i, %.noexc.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76

bb.y:                                             ; preds = %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ce
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74: ; preds = %bb.y
  %i.es = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.et = shl i64 %i.es, 2
  %i.eu = add i64 %i.et, 4
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74, %bb.x
  %.pn33 = phi { ptr, i32 } [ %i.eo, %bb.x ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i74 ], [ %i.ep, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body

bb.z:                                             ; preds = %.noexc49, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i, %bb.u, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_10SuperIndexEEEERS8_DpOT_.exit, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i58, %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76, %bb.v, %bb.z
  %.pn35.pn = phi { ptr, i32 } [ %i.ed, %bb.v ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit76 ], [ %i.ev, %bb.z ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bt
  br i1 %i.ex, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i77: ; preds = %.body
  %i.ey = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.ez = shl i64 %i.ey, 2
  %i.fa = add i64 %i.ez, 4
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit79

_ZN7jsonnet8internal13UStringStreamD2Ev.exit79:   ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.aa:                                            ; preds = %bb.k
  %i.fb = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal7InSuperE, i64 0) #28 ; 3 uses
  %.not28 = icmp eq ptr %i.fb, null
  br i1 %.not28, label %.thread163, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i83: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.fd, align 8, !tbaa !52
  store i32 0, ptr %i.fc, align 8, !tbaa !54
  %i.fe = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %.noexc89 unwind label %bb.ap  ; 3 uses

.noexc89:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.fe, ptr noundef nonnull align 4 dereferenceable(60) @.str.123, i64 60, i1 false)
  store ptr %i.fe, ptr %5, align 8, !tbaa !51
  store i64 15, ptr %i.fc, align 8, !tbaa !44
  store i64 15, ptr %i.fd, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 60
  store i32 0, ptr %i.ff, align 4, !tbaa !54
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !479, !nonnull !99, !align !480 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !265 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !265
  %i.fk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7jsonnet8internal13UStringStreamlsIjEERS1_T_(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.fi)
          to label %bb.ab unwind label %bb.ap     ; 0 uses

bb.ab:                                            ; preds = %.noexc89
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.fn, ptr %6, align 8, !tbaa !55, !alias.scope !483
  %i.fo = load ptr, ptr %5, align 8, !tbaa !51, !noalias !483 ; 2 uses
  %i.fp = load i64, ptr %i.fd, align 8, !tbaa !52, !noalias !483 ; 6 uses
  %.idx.i.i91 = shl nuw nsw i64 %i.fp, 2          ; 3 uses
  %i.fq = icmp ugt i64 %i.fp, 3
  br i1 %i.fq, label %bb.ac, label %._crit_edge.i.i.i92

bb.ac:                                            ; preds = %bb.ab
  %i.fr = icmp ugt i64 %i.fp, 1152921504606846975
  br i1 %i.fr, label %.noexc.i.i95, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i94

.noexc.i.i95:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
          to label %.noexc96 unwind label %bb.an

.noexc96:                                         ; preds = %.noexc.i.i95
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i94: ; preds = %bb.ac
  %i.fs = add nuw nsw i64 %.idx.i.i91, 4
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #27
          to label %.noexc97 unwind label %bb.an  ; 2 uses

.noexc97:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i94
  store ptr %i.ft, ptr %6, align 8, !tbaa !51, !alias.scope !483
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !44, !alias.scope !483
  br label %._crit_edge.i.i.i92

._crit_edge.i.i.i92:                              ; preds = %.noexc97, %bb.ab
  %.pre8.i.i.i93 = phi ptr [ %i.ft, %.noexc97 ], [ %i.fn, %bb.ab ] ; 3 uses
  switch i64 %i.fp, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i92
  %i.fu = load i32, ptr %i.fo, align 4, !tbaa !54
  store i32 %i.fu, ptr %.pre8.i.i.i93, align 4, !tbaa !54
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i93, ptr align 4 %i.fo, i64 %.idx.i.i91, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i92
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.fp, ptr %i.fv, align 8, !tbaa !52, !alias.scope !483
  %i.fw = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i93, i64 %.idx.i.i91
  store i32 0, ptr %i.fw, align 4, !tbaa !54
  %i.fx = load ptr, ptr %i.fm, align 8, !tbaa !64
  %i.fy = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit100 unwind label %bb.ao ; 3 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit100: ; preds = %bb.af
  %i.fz = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fn
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i101: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit100
  %i.gb = load i64, ptr %i.fn, align 8, !tbaa !44
  %i.gc = shl i64 %i.gb, 2
  %i.gd = add i64 %i.gc, 4
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit103: ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit100, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !476, !nonnull !99, !align !273 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !222 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !227
  %.not.i104 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not.i104, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit103
  store ptr %i.fy, ptr %i.gh, align 8, !tbaa !226
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.fb, ptr %i.gk, align 8, !tbaa !225
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !222
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_7InSuperEEEERS8_DpOT_.exit

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit103
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !223 ; 5 uses
  %i.gn = ptrtoint ptr %i.gh to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775792
  br i1 %i.gq, label %bb.ai, label %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i105

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc116 unwind label %bb.ap

.noexc116:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i105: ; preds = %bb.ah
  %i.gr = ashr exact i64 %i.gp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i106, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gs, i64 576460752303423487)
  %i.gv = select i1 %i.gt, i64 576460752303423487, i64 %i.gu ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.gw = shl nuw nsw i64 %i.gv, 4
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #27
          to label %.noexc117 unwind label %bb.ap ; 5 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i105
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp ; 2 uses
  store ptr %i.fy, ptr %i.gy, align 8, !tbaa !226
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.fb, ptr %i.gz, align 8, !tbaa !225
  %.not10.i.i.i.i.i108 = icmp eq ptr %i.gm, %i.gh
  br i1 %.not10.i.i.i.i.i108, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i113, label %.lr.ph.i.i.i.i.i109

.lr.ph.i.i.i.i.i109:                              ; preds = %.noexc117, %.lr.ph.i.i.i.i.i109
  %.012.i.i.i.i.i110 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i109 ], [ %i.gx, %.noexc117 ] ; 2 uses
  %.0911.i.i.i.i.i111 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i109 ], [ %i.gm, %.noexc117 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i110, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i111, i64 16, i1 false), !alias.scope !484
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i111, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i110, i64 16 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq ptr %i.ha, %i.gh
  br i1 %.not.i.i.i.i.i112, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i113, label %.lr.ph.i.i.i.i.i109, !llvm.loop !465

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i113: ; preds = %.lr.ph.i.i.i.i.i109, %.noexc117
  %.0.lcssa.i.i.i.i.i114 = phi ptr [ %i.gx, %.noexc117 ], [ %i.hb, %.lr.ph.i.i.i.i.i109 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i114, i64 16
  %.not.i34.i.i115 = icmp eq ptr %i.gm, null
  br i1 %.not.i34.i.i115, label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_7InSuperEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gp) #26
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_7InSuperEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_7InSuperEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit33.i.i113
  store ptr %i.gx, ptr %i.gf, align 8, !tbaa !223
  store ptr %i.hc, ptr %i.gg, align 8, !tbaa !222
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.gv
  store ptr %i.hd, ptr %i.gi, align 8, !tbaa !227
  br label %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_7InSuperEEEERS8_DpOT_.exit

_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_7InSuperEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_M_realloc_insertIJRS5_RPNS2_7InSuperEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.ag
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !478, !nonnull !99, !align !273 ; 2 uses
  %i.hg = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.hh = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #27
          to label %.noexc118 unwind label %bb.ap ; 6 uses

.noexc118:                                        ; preds = %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_7InSuperEEEERS8_DpOT_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.hh, ptr noundef nonnull align 8 dereferenceable(64) %i.hj, i32 noundef 31, ptr noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc118
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3VarE, i64 16), ptr %i.hh, align 8, !tbaa !107
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  store ptr %i.fy, ptr %i.hk, align 8, !tbaa !122
  %i.hl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.al:                                            ; preds = %.noexc118
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 136) #26
  br label %.body120

bb.am:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store ptr %i.hh, ptr %i.ho, align 8, !tbaa !70
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.hn) #28
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 112 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !84
  %i.hr = add i64 %i.hq, 1
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !84
  store ptr %i.hh, ptr %1, align 8, !tbaa !70
  %i.hs = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.fc
  br i1 %i.ht, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i123: ; preds = %bb.am
  %i.hu = load i64, ptr %i.fc, align 8, !tbaa !44
  %i.hv = shl i64 %i.hu, 2
  %i.hw = add i64 %i.hv, 4
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit125

_ZN7jsonnet8internal13UStringStreamD2Ev.exit125:  ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.thread163

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i94, %.noexc.i.i95
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128

bb.ao:                                            ; preds = %bb.af
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.fn
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ao
  %i.ib = load i64, ptr %i.fn, align 8, !tbaa !44
  %i.ic = shl i64 %i.ib, 2
  %i.id = add i64 %i.ic, 4
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #26
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i126, %bb.an
  %.pn = phi { ptr, i32 } [ %i.hx, %bb.an ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i126 ], [ %i.hy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body120

bb.ap:                                            ; preds = %.noexc89, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i83, %bb.ak, %_ZNSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12emplace_backIJRS5_RPNS2_7InSuperEEEERS8_DpOT_.exit, %_ZNKSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE12_M_check_lenEmPKc.exit.i.i105, %bb.ai
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body120

.body120:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128, %bb.al, %bb.ap
  %.pn30.pn = phi { ptr, i32 } [ %i.hm, %bb.al ], [ %.pn, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit128 ], [ %i.ie, %bb.ap ]
  %i.if = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.fc
  br i1 %i.ig, label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i129

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i129: ; preds = %.body120
  %i.ih = load i64, ptr %i.fc, align 8, !tbaa !44
  %i.ii = shl i64 %i.ih, 2
  %i.ij = add i64 %i.ii, 4
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #26
  br label %_ZN7jsonnet8internal13UStringStreamD2Ev.exit131

_ZN7jsonnet8internal13UStringStreamD2Ev.exit131:  ; preds = %.body120, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

.thread163:                                       ; preds = %bb.a, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit, %_ZN7jsonnet8internal13UStringStreamD2Ev.exit125, %bb.aa, %_ZN7jsonnet8internal9Allocator4makeINS0_3VarEJRNS0_13LocationRangeERSt6vectorINS0_13FodderElementESaIS7_EERPKNS0_10IdentifierEEEEPT_DpOT0_.exit
  call void @_ZN7jsonnet8internal12CompilerPass9visitExprERPNS0_3ASTE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

declare void @_ZN7jsonnet8internal12CompilerPass4fileERPNS0_3ASTERSt6vectorINS0_13FodderElementESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN7jsonnet8internal13UStringStreamlsIjEERS1_T_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = zext i32 %1 to i64
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !66, !alias.scope !491
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !67, !alias.scope !491
  store i8 0, ptr %i.d, align 8, !tbaa !44, !alias.scope !491
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237, !noalias !491 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !491 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238, !noalias !491 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !43, !alias.scope !491 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !44, !alias.scope !491
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %.not16 = icmp samesign eq i64 %i.x, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.z, align 8, !tbaa !52
  %.pre18 = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = phi ptr [ %.pre19, %._crit_edge.loopexit ], [ %i.w, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN7jsonnet8internal17ComprehensionSpecD2Ev:bb.a
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !44
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i29
  %.pr.i.i.i.i.i.i32 = load ptr, ptr %i.bg, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31, %.lr.ph.i.i.i23
  %i.bq = phi ptr [ %.pr.i.i.i.i.i.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i31 ], [ %i.bh, %.lr.ph.i.i.i23 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i.i.i.i34, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i33
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bw, %i.bf
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, label %.lr.ph.i.i.i23, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i35
  %.pr.i38 = load ptr, ptr %i.bc, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21
  %i.bx = phi ptr [ %.pr.i38, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i37 ], [ %i.bd, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit21 ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit42: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i39, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal25ObjectComprehensionSimpleC2ERKNS0_13LocationRangeEPNS0_3ASTES6_PKNS0_10IdentifierES6_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 26, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.a, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal25ObjectComprehensionSimpleE, i64 16), ptr %0, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %2, ptr %i.aa, align 8, !tbaa !524
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %3, ptr %i.ab, align 8, !tbaa !525
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %4, ptr %i.ac, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %5, ptr %i.ad, align 8, !tbaa !527
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal25ObjectComprehensionSimpleD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !528, !nonnull !99, !align !273 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %.not13 = icmp eq ptr %i.e, %i.g
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ag, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.af, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit ] ; 10 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.n = invoke noundef ptr @_ZN7jsonnet8internal9Allocator14makeIdentifierERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.014)
          to label %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit unwind label %.loopexit ; 2 uses

_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  store ptr %i.n, ptr %i.k, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !276
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %_ZN7jsonnet8internal9Desugarer2idERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !101
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.r) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !276
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !189
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.ae = phi ptr [ %i.ad, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ]
  %i.af = phi ptr [ %i.ac, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.o, %bb.c ]
  %i.ag = phi ptr [ %i.z, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.j to i64
  %i.aj = ptrtoint ptr %i.l to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal19BuiltinFunctionBodyC2ERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS0_10IdentifierESaISG_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal19BuiltinFunctionBodyE, i64 16), ptr %0, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !66
  %i.ad = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.af, ptr %i.a, align 8, !tbaa !68
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !43
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !44
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.aj = phi ptr [ %i.ah, %.noexc ], [ %i.ac, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 2 uses
  switch i64 %i.af, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !44
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !44
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.al, ptr %i.am, align 8, !tbaa !67
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !276 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp ugt i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i, !prof !190

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPKN7jsonnet8internal10IdentifierEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #27
end_hunk_3

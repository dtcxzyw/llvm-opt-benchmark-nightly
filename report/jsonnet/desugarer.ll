Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/desugarer?download=true
inline.NumInlined: 3682
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.ec = trunc i64 %i.dd to i8
  %i.ed = load i64, ptr %i.ab, align 8, !tbaa !67, !alias.scope !292 ; 4 uses
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.aa
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit51.i.i.i
  %i.eh = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.eh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit51.i.i.i
  %i.ei = load i64, ptr %i.aa, align 8, !tbaa !44, !alias.scope !292
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i
  %i.ej = phi i64 [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i ]
  %i.ek = icmp ugt i64 %i.ee, %i.ej
  br i1 %i.ek, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit56.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.z

.noexc8.i:                                        ; preds = %bb.t
  %.pre.i54.i.i.i = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit56.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit56.i.i.i: ; preds = %.noexc8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i
  %i.el = phi ptr [ %.pre.i54.i.i.i, %.noexc8.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i53.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 %i.ec, ptr %i.em, align 1, !tbaa !44
  br label %_ZN7jsonnet8internalL11encode_utf8EDiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

bb.u:                                             ; preds = %bb.p
  %i.en = or disjoint i64 %i.bk, 4034953344       ; 4 uses
  %i.eo = lshr i64 %i.en, 24
  %i.ep = trunc nuw i64 %i.eo to i8
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60.i.i.i: ; preds = %bb.u
  %i.eq = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i: ; preds = %bb.u
  %i.er = load i64, ptr %i.aa, align 8, !tbaa !44, !alias.scope !292
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60.i.i.i
  %i.es = phi i64 [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60.i.i.i ]
  %i.et = icmp ugt i64 %i.da, %i.es
  br i1 %i.et, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit61.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i58.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc9.i unwind label %bb.z

.noexc9.i:                                        ; preds = %bb.v
  %.pre.i59.i.i.i = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit61.i.i.i

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
  br i1 %i.fh, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit66.i.i.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.fa, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i unwind label %bb.z

.noexc10.i:                                       ; preds = %bb.w
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
  br i1 %i.fv, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71.i.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i68.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.fo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc11.i unwind label %bb.z

.noexc11.i:                                       ; preds = %bb.x
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
  br i1 %i.gi, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit76.i.i.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i73.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.gb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc12.i unwind label %bb.z

.noexc12.i:                                       ; preds = %bb.y
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

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.k
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !292 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.aa
  br i1 %i.gq, label %.body, label %.body.sink.split

_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit: ; preds = %_ZN7jsonnet8internalL11encode_utf8EDiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %bb.i
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 4)
          to label %.noexc68 unwind label %bb.ak  ; 6 uses

.noexc68:                                         ; preds = %_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  store ptr %i.ac, ptr %5, align 8, !tbaa !66, !alias.scope !293
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 5 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.aa:                                            ; preds = %.noexc68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !67 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.gx)
  %i.gy = add nuw nsw i64 %i.gw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.gy, i1 false)
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.noexc68
  store ptr %i.gs, ptr %5, align 8, !tbaa !43, !alias.scope !293
  %i.gz = load i64, ptr %i.gt, align 8, !tbaa !44
  store i64 %i.gz, ptr %i.ac, align 8, !tbaa !44, !alias.scope !293
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.aa
  %i.ha = phi i64 [ %i.gw, %bb.aa ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.ha, ptr %i.ad, align 8, !tbaa !67, !alias.scope !293
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !43
  store i64 0, ptr %i.hb, align 8, !tbaa !67
  store i8 0, ptr %i.gt, align 8, !tbaa !44
  %i.hc = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.aa
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ab
  %i.he = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.hg = load ptr, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !76
  store ptr %4, ptr %i.ae, align 8, !tbaa !294
  %i.hh = invoke noundef ptr @_ZN7jsonnet8internal9Allocator15makeBuiltinBodyIZNS0_9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlvE_EEPKNS0_19BuiltinFunctionBodyERKNS0_13LocationRangeERKS9_OT_(ptr noundef nonnull align 8 dereferenceable(120) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) @_ZN7jsonnet8internalL1EE, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.hj = load ptr, ptr %i.af, align 8, !tbaa !78
  invoke void @_ZN7jsonnet8internal11BuiltinDeclC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.ad unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.hk = invoke ptr @_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal15DesugaredObject5FieldESt6vectorIS5_SaIS5_EEEEZNS3_9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKS5_E_ET_SL_SL_T0_(ptr %i.hi, ptr %i.hj, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.ae unwind label %bb.am     ; 6 uses

bb.ae:                                            ; preds = %bb.ad
  %i.hl = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 3 uses
  %i.hm = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ht, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEvPT_.exit.i.i.i.i.i ], [ %i.hl, %bb.ae ] ; 3 uses
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

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.ae
  %i.hu = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.hl, %bb.ae ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.hv = load ptr, ptr %i.ai, align 8, !tbaa !59
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hy) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
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
          to label %_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc72
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef 136) #26
  br label %.body73

_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i: ; preds = %.noexc72
  %i.ih = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ah unwind label %.loopexit.split-lp135.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ah:                                            ; preds = %_ZN7jsonnet8internal9Allocator4makeINS0_15BuiltinFunctionEJRKNS0_13LocationRangeERPKNS0_19BuiltinFunctionBodyEEEEPT_DpOT0_.exit.i
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
  br i1 %.not, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.if, ptr %i.io, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7jsonnet8internal15DesugaredObject5FieldESaIS3_EE12emplace_backIJNS1_11ObjectField4HideERPNS1_13LiteralStringERPNS1_15BuiltinFunctionEEEERS3_DpOT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.thread, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.h
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.aa
  br i1 %i.is, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.z
  %.sink = phi ptr [ %i.gp, %bb.z ], [ %i.ir, %bb.ak ]
  %.pn41.ph = phi { ptr, i32 } [ %i.go, %bb.z ], [ %i.iq, %bb.ak ]
  %i.it = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.iu) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.z
  %.pn41 = phi { ptr, i32 } [ %i.go, %bb.z ], [ %i.iq, %bb.ak ], [ %.pn41.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body73

bb.am:                                            ; preds = %bb.ad
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN7jsonnet8internal9Desugarer9stdlibASTENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENUlRKNS0_15DesugaredObject5FieldEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #28
  br label %.body73

bb.an:                                            ; preds = %bb.ah
  %i.ix = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.hk, %i.ix
  br i1 %.not.i, label %bb.ap, label %bb.ao

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!175 = !{!"_ZTSSt12_Vector_baseIN7jsonnet8internal8ArgParamESaIS2_EE", !174, i64 0}
!176 = !{!"_ZTSSt6vectorIN7jsonnet8internal8ArgParamESaIS2_EE", !175, i64 0}
!177 = !{!"_ZTSN7jsonnet8internal5Local4BindE", !113, i64 0, !100, i64 24, !113, i64 32, !69, i64 56, !62, i64 64, !113, i64 72, !176, i64 96, !62, i64 120, !113, i64 128, !113, i64 152}
!178 = !{!177, !62, i64 64}
!179 = !{!177, !69, i64 56}
!180 = !{!"_ZTSN7jsonnet8internal13LiteralStringE", !120, i64 0, !50, i64 128, !71, i64 160, !42, i64 168, !42, i64 200}
!181 = !{!180, !71, i64 160}
!182 = !{!"_ZTSN7jsonnet8internal10SuperIndexE", !120, i64 0, !113, i64 128, !69, i64 152, !113, i64 160, !100, i64 184}
!183 = !{!182, !100, i64 184}
!184 = !{!182, !69, i64 152}
!185 = !{!"p1 _ZTSN7jsonnet8internal19BuiltinFunctionBodyE", !26, i64 0}
!186 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyEE", !42, i64 0, !185, i64 32}
!187 = !{!186, !185, i64 32}
!188 = !{!116, !115, i64 0}
!189 = !{!116, !115, i64 16}
!190 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!191 = !{!56, !56, i64 0}
!192 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!193 = !{!192, !150, i64 8}
!194 = !{!192, !150, i64 0}
!195 = !{!"_ZTSN7jsonnet8internal17ComprehensionSpec4KindE", !21, i64 0}
!196 = !{!"_ZTSN7jsonnet8internal17ComprehensionSpecE", !195, i64 0, !113, i64 8, !113, i64 32, !100, i64 56, !113, i64 64, !69, i64 88}
!197 = !{!196, !195, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE12_Vector_implE", !192, i64 0}
!199 = !{!"_ZTSSt12_Vector_baseIN7jsonnet8internal17ComprehensionSpecESaIS2_EE", !198, i64 0}
!200 = !{!"_ZTSSt6vectorIN7jsonnet8internal17ComprehensionSpecESaIS2_EE", !199, i64 0}
!201 = !{!"_ZTSN7jsonnet8internal18ArrayComprehensionE", !120, i64 0, !69, i64 128, !113, i64 136, !62, i64 160, !200, i64 168, !113, i64 192}
!202 = !{!201, !69, i64 128}
!203 = !{!196, !69, i64 88}
!204 = !{!196, !100, i64 56}
!205 = !{!"_ZTSN7jsonnet8internal5ErrorE", !120, i64 0, !69, i64 128}
!206 = !{!205, !69, i64 128}
!207 = !{!"_ZTSN7jsonnet8internal8ArgParamE", !113, i64 0, !100, i64 24, !113, i64 32, !69, i64 56, !113, i64 64}
!208 = !{!207, !69, i64 56}
!209 = !{!32, !32, i64 0}
!210 = !{!80, !79, i64 8}
!211 = !{!81, !29, i64 16}
!212 = !{!"p1 _ZTSN7jsonnet8internal11ObjectFieldE", !26, i64 0}
!213 = !{!212, !212, i64 0}
!214 = !{!"_ZTSN7jsonnet8internal11ObjectField4KindE", !21, i64 0}
!215 = !{!"_ZTSN7jsonnet8internal11ObjectFieldE", !214, i64 0, !113, i64 8, !113, i64 32, !113, i64 56, !113, i64 80, !85, i64 104, !62, i64 108, !62, i64 109, !69, i64 112, !100, i64 120, !109, i64 128, !176, i64 192, !62, i64 216, !113, i64 224, !69, i64 248, !69, i64 256, !113, i64 264}
!216 = !{!215, !214, i64 0}
!217 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!218 = !{!"_ZTSSt6locale", !217, i64 0}
!219 = !{!"p1 int", !26, i64 0}
!220 = !{!"p1 _ZTSSt4pairIPKN7jsonnet8internal10IdentifierEPNS1_3ASTEE", !26, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE17_Vector_impl_dataE", !220, i64 0, !220, i64 8, !220, i64 16}
!222 = !{!221, !220, i64 8}
!223 = !{!221, !220, i64 0}
!224 = !{!"_ZTSSt4pairIPKN7jsonnet8internal10IdentifierEPNS1_3ASTEE", !100, i64 0, !69, i64 8}
!225 = !{!224, !69, i64 8}
!226 = !{!224, !100, i64 0}
!227 = !{!221, !220, i64 16}
!228 = !{!215, !69, i64 112}
!229 = !{!215, !69, i64 248}
!230 = !{!"_ZTSN7jsonnet8internal5Array7ElementE", !69, i64 0, !113, i64 8}
!231 = !{!230, !69, i64 0}
!232 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!233 = !{!232, !148, i64 0}
!234 = !{!232, !148, i64 16}
!235 = !{!232, !148, i64 8}
!236 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !218, i64 56}
!237 = !{!236, !40, i64 40}
!238 = !{!236, !40, i64 32}
!239 = !{!"double", !21, i64 0}
!240 = !{!"_ZTSN7jsonnet8internal13LiteralNumberE", !120, i64 0, !239, i64 128, !42, i64 136}
!241 = !{!240, !239, i64 128}
!242 = !{!"_ZTSSi", !29, i64 8}
!243 = !{!242, !29, i64 8}
!244 = !{!207, !100, i64 24}
!245 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE12_Vector_implE", !126, i64 0}
!246 = !{!"_ZTSSt12_Vector_baseIN7jsonnet8internal5Local4BindESaIS3_EE", !245, i64 0}
!247 = !{!"_ZTSSt6vectorIN7jsonnet8internal5Local4BindESaIS3_EE", !246, i64 0}
!248 = !{!"_ZTSN7jsonnet8internal5LocalE", !120, i64 0, !247, i64 128, !69, i64 152}
!249 = !{!248, !69, i64 152}
!250 = !{!177, !100, i64 24}
!251 = !{!177, !62, i64 120}
!252 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierEE", !50, i64 0, !100, i64 32}
!253 = !{!252, !100, i64 32}
!254 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !26, i64 0}
!255 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEPKN7jsonnet8internal10IdentifierEEE", !26, i64 0}
!256 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeE", !254, i64 0, !255, i64 8}
!257 = !{!256, !255, i64 8}
!258 = !{!215, !69, i64 256}
!259 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal11ObjectFieldESaIS2_EE17_Vector_impl_dataE", !212, i64 0, !212, i64 8, !212, i64 16}
!260 = !{!259, !212, i64 0}
!261 = !{!259, !212, i64 8}
!262 = !{!215, !62, i64 109}
!263 = !{!215, !100, i64 120}
!264 = !{!259, !212, i64 16}
!265 = !{!22, !22, i64 0}
!266 = !{!215, !62, i64 108}
!267 = !{!"_ZTSN7jsonnet8internal12CompilerPassE", !61, i64 8}
!268 = !{!"p1 _ZTSSt6vectorISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEESaIS8_EE", !26, i64 0}
!269 = !{!"_ZTSZN7jsonnet8internal9Desugarer13desugarFieldsEPNS0_3ASTERSt6vectorINS0_11ObjectFieldESaIS5_EEjE19SubstituteSelfSuper", !267, i64 0, !73, i64 16, !268, i64 24, !219, i64 32, !100, i64 40}
!270 = !{!269, !73, i64 16}
!271 = !{!269, !100, i64 40}
!272 = !{!215, !62, i64 216}
!273 = !{i64 8}
!274 = !{!26, !26, i64 0}
!275 = !{!192, !150, i64 16}
!276 = !{!116, !115, i64 8}
!277 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN7jsonnet8internal19BuiltinFunctionBodyEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE", !26, i64 0}
!278 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN7jsonnet8internal19BuiltinFunctionBodyEEE", !26, i64 0}
!279 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN7jsonnet8internal19BuiltinFunctionBodyEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeE", !277, i64 0, !278, i64 8}
!280 = !{!279, !278, i64 8}
!281 = distinct !{!281, i1 true, !"_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE"}
!282 = distinct !{!282, !281, !"_ZN7jsonnet8internalL11encode_utf8ERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE: argument 0"}
!283 = distinct !{!283, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!284 = distinct !{!284, !283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!285 = distinct !{!285, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_"}
!286 = distinct !{!286, !285, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!287 = distinct !{!287, !285, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!288 = distinct !{!288, !45}
!289 = distinct !{!289, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_"}
!290 = distinct !{!290, !289, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!291 = distinct !{!291, !289, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!292 = !{!282}
!293 = !{!284}
!294 = !{!74, !74, i64 0}
!295 = !{!287, !286}
!296 = !{!291, !290}
!297 = distinct !{!297, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!298 = distinct !{!298, !297, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!299 = distinct !{!299, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!300 = distinct !{!300, !299, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!301 = !{!"_ZTSN7jsonnet8internal13FodderElement4KindE", !21, i64 0}
!302 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !37, i64 0}
!303 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !302, i64 0}
!304 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !303, i64 0}
!305 = !{!"_ZTSN7jsonnet8internal13FodderElementE", !301, i64 0, !22, i64 4, !22, i64 8, !304, i64 16}
!306 = !{!305, !301, i64 0}
!307 = !{!305, !22, i64 4}
!308 = !{!305, !22, i64 8}
!309 = !{!"_ZTSN7jsonnet8internal5VmExtE", !42, i64 0, !62, i64 32}
!310 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal5VmExtEE", !42, i64 0, !309, i64 32}
!311 = !{!310, !62, i64 64}
!312 = !{!298}
!313 = !{!300, !298}
!314 = distinct !{!314, !45}
!315 = !{!"_ZTSSt4pairIKN7jsonnet8internal8BinaryOpEiE", !131, i64 0, !22, i64 4}
!316 = !{!315, !131, i64 0}
!317 = !{!315, !22, i64 4}
!318 = distinct !{!318, !45}
!319 = distinct !{!319, !45}
!320 = distinct !{!320, !45}
!321 = distinct !{!321, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!322 = distinct !{!322, !321, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!323 = !{!322}
!324 = !{!138, !138, i64 0}
!325 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal7UnaryOpEE", !42, i64 0, !139, i64 32}
!326 = !{!325, !139, i64 32}
!327 = distinct !{!327, !45}
!328 = distinct !{!328, !45}
!329 = distinct !{!329, !45}
!330 = distinct !{!330, i1 true, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!331 = distinct !{!331, !330, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!332 = !{!331}
!333 = !{!143, !143, i64 0}
!334 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7jsonnet8internal8BinaryOpEE", !42, i64 0, !131, i64 32}
!335 = !{!334, !131, i64 32}
!336 = distinct !{!336, !45}
!337 = distinct !{!337, !45}
!338 = !{!"_ZTSN7jsonnet8internal6AssertE", !120, i64 0, !69, i64 128, !113, i64 136, !69, i64 160, !113, i64 168, !69, i64 192}
!339 = !{!338, !69, i64 160}
!340 = !{!"std::nullptr_t", !21, i64 0}
!341 = !{!340, !340, i64 0}
!342 = !{!"_ZTSN7jsonnet8internal6ImportE", !120, i64 0, !157, i64 128}
!343 = !{!342, !157, i64 128}
!344 = !{!"_ZTSN7jsonnet8internal9ImportstrE", !120, i64 0, !157, i64 128}
!345 = !{!344, !157, i64 128}
!346 = !{!"_ZTSN7jsonnet8internal9ImportbinE", !120, i64 0, !157, i64 128}
!347 = !{!346, !157, i64 128}
!348 = !{!"_ZTSN7jsonnet8internal6ParensE", !120, i64 0, !69, i64 128, !113, i64 136}
!349 = !{!348, !69, i64 128}
!350 = !{!185, !185, i64 0}
!351 = distinct !{!351, !45}
!352 = distinct !{!352, i1 true, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev"}
!353 = distinct !{!353, !352, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev: argument 0"}
!354 = distinct !{!354, !45}
!355 = distinct !{!355, i1 true, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev"}
!356 = distinct !{!356, !355, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev: argument 0"}
!357 = distinct !{!357, !45}
!358 = distinct !{!358, !45}
!359 = distinct !{!359, !45}
!360 = distinct !{!360, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!361 = distinct !{!361, !360, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!362 = distinct !{!362, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!363 = distinct !{!363, !362, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!364 = distinct !{!364, !45}
!365 = !{!353}
!366 = !{!356}
!367 = !{!361}
!368 = !{!363}
!369 = !{!"_ZTSN7jsonnet8internal5UnaryE", !120, i64 0, !139, i64 128, !69, i64 136}
!370 = !{!369, !139, i64 128}
!371 = !{!369, !69, i64 136}
!372 = distinct !{!372, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_"}
!373 = distinct !{!373, !372, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!374 = distinct !{!374, !372, !"_ZSt19__relocate_object_aIN7jsonnet8internal15DesugaredObject5FieldES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!375 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!376 = distinct !{!376, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!377 = distinct !{!377, !376, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!378 = distinct !{!378, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!379 = distinct !{!379, !378, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!380 = !{!374, !373}
!381 = !{!"_ZTSSt13_Ios_Fmtflags", !21, i64 0}
!382 = !{!"_ZTSSt12_Ios_Iostate", !21, i64 0}
!383 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!384 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !29, i64 8}
!385 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!386 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !381, i64 24, !382, i64 28, !382, i64 32, !383, i64 40, !384, i64 48, !21, i64 64, !22, i64 192, !385, i64 200, !218, i64 208}
!387 = !{!"p1 _ZTSSo", !26, i64 0}
!388 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!389 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!390 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!391 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!392 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !386, i64 0, !387, i64 216, !21, i64 224, !62, i64 225, !388, i64 232, !389, i64 240, !390, i64 248, !391, i64 256}
!393 = !{!392, !389, i64 240}
!394 = !{!"_ZTSNSt6locale5facetE", !22, i64 8}
!395 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!396 = !{!"p1 short", !26, i64 0}
!397 = !{!"_ZTSSt5ctypeIcE", !394, i64 0, !395, i64 16, !62, i64 24, !219, i64 32, !219, i64 40, !396, i64 48, !21, i64 56, !21, i64 57, !21, i64 313, !21, i64 569}
!398 = !{!397, !21, i64 56}
!399 = !{!377}
!400 = !{!379}
!401 = distinct !{!401, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!402 = distinct !{!402, !401, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!403 = distinct !{!403, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!404 = distinct !{!404, !403, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!405 = distinct !{!405, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!406 = distinct !{!406, !405, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!407 = !{!402}
!408 = !{!404}
!409 = !{!404, !402}
!410 = !{!406}
!411 = !{!120, !110, i64 72}
!412 = !{ptr @_ZN7jsonnet8internal6BinaryD2Ev}
!413 = distinct !{!413, !45}
!414 = distinct !{!414, !45}
!415 = distinct !{!415, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!416 = distinct !{!416, !415, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!417 = distinct !{!417, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!418 = distinct !{!418, !417, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!419 = !{!416}
!420 = !{!418}
!421 = !{!418, !416}
!422 = distinct !{!422, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!423 = distinct !{!423, !422, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!424 = !{!423}
!425 = !{ptr @_ZN7jsonnet8internal13LiteralNumberD2Ev}
!426 = !{!"_ZTSN7jsonnet8internal5ApplyE", !120, i64 0, !69, i64 128, !113, i64 136, !176, i64 160, !62, i64 184, !113, i64 192, !113, i64 216, !62, i64 240}
!427 = !{!426, !69, i64 128}
!428 = !{!426, !62, i64 184}
!429 = !{!426, !62, i64 240}
!430 = distinct !{!430, !45}
!431 = !{!"_ZTSNSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE12_Vector_implE", !232, i64 0}
!432 = !{!"_ZTSSt12_Vector_baseIN7jsonnet8internal5Array7ElementESaIS3_EE", !431, i64 0}
!433 = !{!"_ZTSSt6vectorIN7jsonnet8internal5Array7ElementESaIS3_EE", !432, i64 0}
!434 = !{!"_ZTSN7jsonnet8internal5ArrayE", !120, i64 0, !433, i64 128, !62, i64 152, !113, i64 160}
!435 = !{!434, !62, i64 152}
!436 = !{ptr @_ZN7jsonnet8internal5ArrayD2Ev}
!437 = distinct !{!437, !45}
!438 = distinct !{!438, !45}
!439 = !{!162, !69, i64 128}
!440 = !{!162, !69, i64 160}
!441 = distinct !{!441, !45}
!442 = !{ptr @_ZN7jsonnet8internal5LocalD2Ev}
!443 = !{!"_ZTSN7jsonnet8internal8FunctionE", !120, i64 0, !113, i64 128, !176, i64 152, !62, i64 176, !113, i64 184, !69, i64 208}
!444 = !{!443, !62, i64 176}
!445 = !{!443, !69, i64 208}
!446 = distinct !{!446, !45}
!447 = !{ptr @_ZN7jsonnet8internal13LiteralStringD2Ev}
!448 = distinct !{!448, !45}
!449 = !{!254, !254, i64 0}
!450 = distinct !{!450, !45}
!451 = distinct !{!451, i1 true, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE"}
!452 = distinct !{!452, !451, !"_ZN7jsonnet8internal9Desugarer4bindEPKNS0_10IdentifierEPNS0_3ASTE: argument 0"}
!453 = !{ptr @_ZN7jsonnet8internal9Desugarer13desugarParamsERSt6vectorINS0_8ArgParamESaIS3_EEj}
!454 = !{!"_ZTSN7jsonnet8internal14LiteralBooleanE", !120, i64 0, !62, i64 128}
!455 = !{!454, !62, i64 128}
!456 = !{!452}
!457 = !{!61, !61, i64 0}
!458 = !{!268, !268, i64 0}
!459 = !{!219, !219, i64 0}
!460 = !{!215, !85, i64 104}
!461 = distinct !{!461, !45}
!462 = distinct !{!462, i1 true, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_"}
!463 = distinct !{!463, !462, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!464 = distinct !{!464, !462, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!465 = distinct !{!465, !45}
!466 = distinct !{!466, i1 true, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev"}
!467 = distinct !{!467, !466, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev: argument 0"}
!468 = distinct !{!468, i1 true, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_"}
!469 = distinct !{!469, !468, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!470 = distinct !{!470, !468, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!471 = distinct !{!471, i1 true, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev"}
!472 = distinct !{!472, !471, !"_ZN7jsonnet8internal13UStringStream3strB5cxx11Ev: argument 0"}
!473 = distinct !{!473, i1 true, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_"}
!474 = distinct !{!474, !473, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!475 = distinct !{!475, !473, !"_ZSt19__relocate_object_aISt4pairIPKN7jsonnet8internal10IdentifierEPNS2_3ASTEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!476 = !{!269, !268, i64 24}
!477 = !{!464, !463}
!478 = !{!267, !61, i64 8}
!479 = !{!269, !219, i64 32}
!480 = !{i64 4}
!481 = !{!467}
!482 = !{!470, !469}
!483 = !{!472}
!484 = !{!475, !474}
!485 = distinct !{!485, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!486 = distinct !{!486, !485, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!487 = distinct !{!487, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!488 = distinct !{!488, !487, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!489 = !{!486}
!490 = !{!488}
!491 = !{!488, !486}
!492 = !{!"_ZTSN7jsonnet8internal7InSuperE", !120, i64 0, !69, i64 128, !113, i64 136, !113, i64 160}
!493 = !{!492, !69, i64 128}
!494 = distinct !{!494, !45}
!495 = distinct !{!495, !45}
!496 = !{ptr @_ZN7jsonnet8internal15DesugaredObjectD2Ev}
!497 = distinct !{!497, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_"}
!498 = distinct !{!498, !497, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!499 = distinct !{!499, !497, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!500 = distinct !{!500, !45}
!501 = distinct !{!501, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_"}
!502 = distinct !{!502, !501, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!503 = distinct !{!503, !501, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Local4BindES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!504 = !{!498}
!505 = !{!499}
!506 = !{!498, !499}
!507 = !{!502}
!508 = !{!503}
!509 = !{!502, !503}
!510 = distinct !{!510, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_"}
!511 = distinct !{!511, !510, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!512 = distinct !{!512, !510, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!513 = distinct !{!513, !45}
!514 = distinct !{!514, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_"}
!515 = distinct !{!515, !514, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!516 = distinct !{!516, !514, !"_ZSt19__relocate_object_aIN7jsonnet8internal5Array7ElementES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!517 = !{!511}
!518 = !{!512}
!519 = !{!515}
!520 = !{!516}
!521 = !{!201, !62, i64 160}
!522 = distinct !{!522, !45}
!523 = !{!"_ZTSN7jsonnet8internal25ObjectComprehensionSimpleE", !120, i64 0, !69, i64 128, !69, i64 136, !100, i64 144, !69, i64 152}
!524 = !{!523, !69, i64 128}
!525 = !{!523, !69, i64 136}
!526 = !{!523, !100, i64 144}
!527 = !{!523, !69, i64 152}
!528 = !{!75, !74, i64 8}
!529 = !{!115, !115, i64 0}
!530 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!531 = !{ptr @_ZN7jsonnet8internal19BuiltinFunctionBodyD2Ev}
!532 = !{!277, !277, i64 0}
!533 = distinct !{!533, !45}
!534 = distinct !{!534, !45}
!535 = distinct !{!535, !45}
!536 = !{!"_ZTSN7jsonnet8internal15BuiltinFunctionE", !120, i64 0, !185, i64 128}
!537 = !{!536, !185, i64 128}
!538 = distinct !{!538, !45}
!539 = distinct !{!539, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_"}
!540 = distinct !{!540, !539, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!541 = distinct !{!541, !539, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!542 = distinct !{!542, !45}
!543 = distinct !{!543, i1 true, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_"}
!544 = distinct !{!544, !543, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!545 = distinct !{!545, !543, !"_ZSt19__relocate_object_aIN7jsonnet8internal8ArgParamES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!546 = !{!540}
!547 = !{!541}
!548 = !{!544}
!549 = !{!545}
!550 = distinct !{!550, !45}
!551 = !{!30, !25, i64 0}
!552 = !{!30, !27, i64 24}
end_hunk_1

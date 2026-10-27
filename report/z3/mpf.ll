Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpf?download=true
inline.NumInlined: 1714
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11mpf_manager16to_string_binaryB5cxx11ERK3mpfjj:bb.a
          to label %.noexc390 unwind label %bb.cv

.noexc390:                                        ; preds = %.noexc.i389
  unreachable

.thread7.i.i387:                                  ; preds = %bb.bn
  %i.md = add nuw nsw i64 %i.lz, 1
  %i.me = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #26
          to label %.noexc392 unwind label %bb.cv ; 2 uses

.noexc392:                                        ; preds = %.thread7.i.i387
  store ptr %i.me, ptr %32, align 8, !tbaa !64
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !58
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  switch i32 %i.ly, label %bb.bq [
    i32 0, label %bb.br
    i32 1, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  store i8 48, ptr %i.ma, align 8, !tbaa !58
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %.noexc392
  %i.mf = phi ptr [ %i.me, %.noexc392 ], [ %i.ma, %bb.bo ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mf, i8 48, i64 %i.lz, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.mg = phi ptr [ %i.ma, %bb.bo ], [ %i.mf, %bb.bq ], [ %i.ma, %bb.bp ]
  %i.mh = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.lz, ptr %i.mh, align 8, !tbaa !65
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.lz
  store i8 0, ptr %i.mi, align 1, !tbaa !58
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bs unwind label %bb.cw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.mj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 7 uses
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !65, !noalias !207 ; 5 uses
  %i.ml = and i64 %i.mk, -2
  %i.mm = icmp eq i64 %i.ml, 9223372036854775806
  br i1 %i.mm, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i394

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc404 unwind label %bb.cx

.noexc404:                                        ; preds = %bb.bt
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i394: ; preds = %bb.bs
  %i.mn = add nsw i64 %i.mk, 2                    ; 3 uses
  %i.mo = load ptr, ptr %22, align 8, !tbaa !64, !noalias !207 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 10 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i403: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i394
  %i.mr = icmp ult i64 %i.mk, 16
  call void @llvm.assume(i1 %i.mr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i395: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i394
  %i.ms = load i64, ptr %i.mp, align 8, !tbaa !58, !noalias !207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i396: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i395, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i403
  %i.mt = phi i64 [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i395 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i403 ]
  %.not.i.i.i397 = icmp ugt i64 %i.mn, %i.mt
  br i1 %.not.i.i.i397, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i396
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mk
  store i16 8241, ptr %i.mu, align 1, !noalias !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i400

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i396
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.mk, i64 noundef 0, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i400 unwind label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i400: ; preds = %bb.bv, %bb.bu
  store i64 %i.mn, ptr %i.mj, align 8, !tbaa !65, !noalias !207
  %i.mv = load ptr, ptr %22, align 8, !tbaa !64, !noalias !207
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mn
  store i8 0, ptr %i.mw, align 1, !tbaa !58, !noalias !207
  %i.mx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 14 uses
  store ptr %i.mx, ptr %21, align 8, !tbaa !61, !alias.scope !207
  %i.my = load ptr, ptr %22, align 8, !tbaa !64, !noalias !207 ; 5 uses
  %i.mz = icmp eq ptr %i.my, %i.mp
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread, label %bb.bw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i400
  %i.na = load i64, ptr %i.mj, align 8, !tbaa !65, !noalias !207 ; 5 uses
  %i.nb = icmp samesign ult i64 %i.na, 16
  call void @llvm.assume(i1 %i.nb)
  %i.nc = add nuw nsw i64 %i.na, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mx, ptr noundef nonnull align 8 dereferenceable(1) %i.mp, i64 %i.nc, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.na, ptr %i.nd, align 8, !tbaa !65, !alias.scope !207
  store ptr %i.mp, ptr %22, align 8, !tbaa !64, !noalias !207
  store i64 0, ptr %i.mj, align 8, !tbaa !65, !noalias !207
  store i8 0, ptr %i.mp, align 8, !tbaa !58, !noalias !207
  %i.ne = add nuw nsw i64 %i.na, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i400
  store ptr %i.my, ptr %21, align 8, !tbaa !64, !alias.scope !207
  %i.nf = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ng = load <2 x i64>, ptr %i.mj, align 8, !tbaa !58, !noalias !207
  %.pre.i402 = load i64, ptr %i.mj, align 8, !tbaa !65, !noalias !207 ; 4 uses
  store <2 x i64> %i.ng, ptr %i.nf, align 8, !tbaa !58, !alias.scope !207
  store ptr %i.mp, ptr %22, align 8, !tbaa !64, !noalias !207
  store i64 0, ptr %i.mj, align 8, !tbaa !65, !noalias !207
  store i8 0, ptr %i.mp, align 8, !tbaa !58, !noalias !207
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.nh = icmp eq i64 %.pre.i402, 9223372036854775807
  br i1 %i.nh, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc417 unwind label %bb.cy

.noexc417:                                        ; preds = %bb.bx
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407: ; preds = %bb.bw
  %i.ni = add nsw i64 %.pre.i402, 1               ; 2 uses
  %i.nj = icmp eq ptr %i.my, %i.mx
  br i1 %i.nj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407
  %i.nk = phi i64 [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407 ]
  %i.nl = phi ptr [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407 ]
  %i.nm = phi i64 [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread ], [ %.pre.i402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407 ] ; 2 uses
  %i.nn = phi ptr [ %i.nd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407.thread ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407 ]
  %i.no = icmp ult i64 %i.nm, 16
  call void @llvm.assume(i1 %i.no)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i407
  %i.np = load i64, ptr %i.mx, align 8, !tbaa !58, !noalias !208
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i409: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416
  %i.nq = phi i64 [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408 ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416 ] ; 3 uses
  %i.nr = phi ptr [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408 ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416 ]
  %i.ns = phi i64 [ %.pre.i402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408 ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416 ] ; 2 uses
  %i.nt = phi ptr [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408 ], [ %i.nn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416 ] ; 4 uses
  %i.nu = phi i64 [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i408 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i416 ]
  %.not.i.i.i410 = icmp ugt i64 %i.nq, %i.nu
  br i1 %.not.i.i.i410, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i409
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ns
  store i8 40, ptr %i.nv, align 1, !tbaa !58, !noalias !208
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i413

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i409
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.ns, i64 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i413 unwind label %bb.cy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i413: ; preds = %bb.bz, %bb.by
  store i64 %i.nq, ptr %i.nt, align 8, !tbaa !65, !noalias !208
  %i.nw = load ptr, ptr %21, align 8, !tbaa !64, !noalias !208
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nq
  store i8 0, ptr %i.nx, align 1, !tbaa !58, !noalias !208
  %i.ny = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 16 uses
  store ptr %i.ny, ptr %20, align 8, !tbaa !61, !alias.scope !208
  %i.nz = load ptr, ptr %21, align 8, !tbaa !64, !noalias !208 ; 3 uses
  %i.oa = icmp eq ptr %i.nz, %i.mx
  br i1 %i.oa, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i413
  %i.ob = load i64, ptr %i.nt, align 8, !tbaa !65, !noalias !208 ; 3 uses
  %i.oc = icmp ult i64 %i.ob, 16
  call void @llvm.assume(i1 %i.oc)
  %i.od = add nuw nsw i64 %i.ob, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ny, ptr noundef nonnull align 8 dereferenceable(1) %i.mx, i64 %i.od, i1 false)
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i413
  store ptr %i.nz, ptr %20, align 8, !tbaa !64, !alias.scope !208
  %i.oe = load i64, ptr %i.mx, align 8, !tbaa !58, !noalias !208
  store i64 %i.oe, ptr %i.ny, align 8, !tbaa !58, !alias.scope !208
  %.pre.i415 = load i64, ptr %i.nt, align 8, !tbaa !65, !noalias !208
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414, %bb.ca
  %i.of = phi ptr [ %i.ny, %bb.ca ], [ %i.nz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414 ] ; 2 uses
  %i.og = phi i64 [ %i.ob, %bb.ca ], [ %.pre.i415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414 ] ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 7 uses
  store i64 %i.og, ptr %i.oh, align 8, !tbaa !65, !alias.scope !208
  store ptr %i.mx, ptr %21, align 8, !tbaa !64, !noalias !208
  store i64 0, ptr %i.nt, align 8, !tbaa !65, !noalias !208
  store i8 0, ptr %i.mx, align 8, !tbaa !58, !noalias !208
  %i.oi = load i32, ptr %2, align 8
  %i.oj = icmp slt i32 %i.oi, 0                   ; 2 uses
  %i.ok = select i1 %i.oj, ptr @.str.9, ptr @.str.14
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.ol = icmp eq i64 %i.og, 9223372036854775807
  br i1 %i.ol, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i420

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc430 unwind label %bb.cz

.noexc430:                                        ; preds = %bb.cc
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i420: ; preds = %bb.cb
  %i.om = add nsw i64 %i.og, 1                    ; 3 uses
  %i.on = icmp eq ptr %i.of, %i.ny
  br i1 %i.on, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i429: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i420
  %i.oo = icmp ult i64 %i.og, 16
  call void @llvm.assume(i1 %i.oo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i420
  %i.op = load i64, ptr %i.ny, align 8, !tbaa !58, !noalias !209
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i422: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i429
  %i.oq = phi i64 [ %i.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i421 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i429 ]
  %.not.i.i.i423 = icmp ugt i64 %i.om, %i.oq
  br i1 %.not.i.i.i423, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i422
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  %59 = select i1 %i.oj, i8 45, i8 43
  store i8 %59, ptr %i.or, align 1, !tbaa !58, !noalias !209
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i426

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i422
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.og, i64 noundef 0, ptr noundef nonnull %i.ok, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i426 unwind label %bb.cz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i426: ; preds = %bb.ce, %bb.cd
  store i64 %i.om, ptr %i.oh, align 8, !tbaa !65, !noalias !209
  %i.os = load ptr, ptr %20, align 8, !tbaa !64, !noalias !209
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.om
  store i8 0, ptr %i.ot, align 1, !tbaa !58, !noalias !209
  %i.ou = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 14 uses
  store ptr %i.ou, ptr %19, align 8, !tbaa !61, !alias.scope !209
  %i.ov = load ptr, ptr %20, align 8, !tbaa !64, !noalias !209 ; 5 uses
  %i.ow = icmp eq ptr %i.ov, %i.ny
  br i1 %i.ow, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread, label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i426
  %i.ox = load i64, ptr %i.oh, align 8, !tbaa !65, !noalias !209 ; 5 uses
  %i.oy = icmp samesign ult i64 %i.ox, 16
  call void @llvm.assume(i1 %i.oy)
  %i.oz = add nuw nsw i64 %i.ox, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ou, ptr noundef nonnull align 8 dereferenceable(1) %i.ny, i64 %i.oz, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.ox, ptr %i.pa, align 8, !tbaa !65, !alias.scope !209
  store ptr %i.ny, ptr %20, align 8, !tbaa !64, !noalias !209
  store i64 0, ptr %i.oh, align 8, !tbaa !65, !noalias !209
  store i8 0, ptr %i.ny, align 8, !tbaa !58, !noalias !209
  %i.pb = add nuw nsw i64 %i.ox, 3
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i426
  store ptr %i.ov, ptr %19, align 8, !tbaa !64, !alias.scope !209
  %i.pc = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.pd = load <2 x i64>, ptr %i.oh, align 8, !tbaa !58, !noalias !209
  %.pre.i428 = load i64, ptr %i.oh, align 8, !tbaa !65, !noalias !209 ; 4 uses
  store <2 x i64> %i.pd, ptr %i.pc, align 8, !tbaa !58, !alias.scope !209
  store ptr %i.ny, ptr %20, align 8, !tbaa !64, !noalias !209
  store i64 0, ptr %i.oh, align 8, !tbaa !65, !noalias !209
  store i8 0, ptr %i.ny, align 8, !tbaa !58, !noalias !209
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.pe = icmp sgt i64 %.pre.i428, 9223372036854775804
  br i1 %i.pe, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc443 unwind label %bb.da

.noexc443:                                        ; preds = %bb.cg
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433: ; preds = %bb.cf
  %i.pf = add nsw i64 %.pre.i428, 3               ; 2 uses
  %i.pg = icmp eq ptr %i.ov, %i.ou
  br i1 %i.pg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433
  %i.ph = phi i64 [ %i.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433 ]
  %i.pi = phi ptr [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433 ]
  %i.pj = phi i64 [ %i.ox, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread ], [ %.pre.i428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433 ] ; 2 uses
  %i.pk = phi ptr [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433.thread ], [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433 ]
  %i.pl = icmp ult i64 %i.pj, 16
  call void @llvm.assume(i1 %i.pl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i433
  %i.pm = load i64, ptr %i.ou, align 8, !tbaa !58, !noalias !210
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i435: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442
  %i.pn = phi i64 [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434 ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442 ] ; 3 uses
  %i.po = phi ptr [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434 ], [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442 ]
  %i.pp = phi i64 [ %.pre.i428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434 ], [ %i.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442 ] ; 2 uses
  %i.pq = phi ptr [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434 ], [ %i.pk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442 ] ; 4 uses
  %i.pr = phi i64 [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i434 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i442 ]
  %.not.i.i.i436 = icmp ugt i64 %i.pn, %i.pr
  br i1 %.not.i.i.i436, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i435
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ps, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false), !noalias !210
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i439

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i435
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.pp, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i439 unwind label %bb.da

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i439: ; preds = %bb.ci, %bb.ch
  store i64 %i.pn, ptr %i.pq, align 8, !tbaa !65, !noalias !210
  %i.pt = load ptr, ptr %19, align 8, !tbaa !64, !noalias !210
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pn
  store i8 0, ptr %i.pu, align 1, !tbaa !58, !noalias !210
  %i.pv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 12 uses
  store ptr %i.pv, ptr %18, align 8, !tbaa !61, !alias.scope !210
  %i.pw = load ptr, ptr %19, align 8, !tbaa !64, !noalias !210 ; 3 uses
  %i.px = icmp eq ptr %i.pw, %i.ou
  br i1 %i.px, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i439
  %i.py = load i64, ptr %i.pq, align 8, !tbaa !65, !noalias !210 ; 3 uses
  %i.pz = icmp ult i64 %i.py, 16
  call void @llvm.assume(i1 %i.pz)
  %i.qa = add nuw nsw i64 %i.py, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pv, ptr noundef nonnull align 8 dereferenceable(1) %i.ou, i64 %i.qa, i1 false)
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i439
  store ptr %i.pw, ptr %18, align 8, !tbaa !64, !alias.scope !210
  %i.qb = load i64, ptr %i.ou, align 8, !tbaa !58, !noalias !210
  store i64 %i.qb, ptr %i.pv, align 8, !tbaa !58, !alias.scope !210
  %.pre.i441 = load i64, ptr %i.pq, align 8, !tbaa !65, !noalias !210
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440, %bb.cj
  %i.qc = phi ptr [ %i.pv, %bb.cj ], [ %i.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ] ; 6 uses
  %i.qd = phi i64 [ %i.py, %bb.cj ], [ %.pre.i441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ] ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i64 %i.qd, ptr %i.qe, align 8, !tbaa !65, !alias.scope !210
  store ptr %i.ou, ptr %19, align 8, !tbaa !64, !noalias !210
  store i64 0, ptr %i.pq, align 8, !tbaa !65, !noalias !210
  store i8 0, ptr %i.ou, align 8, !tbaa !58, !noalias !210
  %i.qf = load ptr, ptr %0, align 8, !tbaa !64    ; 6 uses
  %i.qg = icmp eq ptr %i.qf, %i.a
  %i.qh = icmp eq ptr %i.qc, %i.pv                ; 2 uses
  br i1 %i.qg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452: ; preds = %bb.ck
  br i1 %i.qh, label %bb.cl, label %.thread.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446: ; preds = %bb.ck
  br i1 %i.qh, label %bb.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452
  %i.qi = icmp ult i64 %i.qd, 16
  call void @llvm.assume(i1 %i.qi)
  %.not21.i449 = icmp eq ptr %18, %0
  br i1 %.not21.i449, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454, label %bb.cm, !prof !62

bb.cm:                                            ; preds = %bb.cl
  switch i64 %i.qd, label %bb.co [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450
    i64 1, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.qj = load i8, ptr %i.qc, align 1, !tbaa !58
  store i8 %i.qj, ptr %i.qf, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450

bb.co:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 1 %i.qc, i64 %i.qd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450: ; preds = %bb.co, %bb.cn, %bb.cm
  %i.qk = load i64, ptr %i.qe, align 8, !tbaa !65 ; 2 uses
  store i64 %i.qk, ptr %i.b, align 8, !tbaa !65
  %i.ql = load ptr, ptr %0, align 8, !tbaa !64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qk
  store i8 0, ptr %i.qm, align 1, !tbaa !58
  %.pre.i451 = load ptr, ptr %18, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

.thread.i453:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i452
  store ptr %i.qc, ptr %0, align 8, !tbaa !64
  store i64 %i.qd, ptr %i.b, align 8, !tbaa !65
  %i.qn = load i64, ptr %i.pv, align 8, !tbaa !58
  store i64 %i.qn, ptr %i.a, align 8, !tbaa !58
  br label %bb.cq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446
  %i.qo = load i64, ptr %i.a, align 8, !tbaa !58
  store ptr %i.qc, ptr %0, align 8, !tbaa !64
  store i64 %i.qd, ptr %i.b, align 8, !tbaa !65
  %i.qp = load i64, ptr %i.pv, align 8, !tbaa !58
  store i64 %i.qp, ptr %i.a, align 8, !tbaa !58
  %.not.i448 = icmp eq ptr %i.qf, null
  br i1 %.not.i448, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447
  store ptr %i.qf, ptr %18, align 8, !tbaa !64
  store i64 %i.qo, ptr %i.pv, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447, %.thread.i453
  store ptr %i.pv, ptr %18, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454: ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450, %bb.cp, %bb.cq
  %i.qq = phi ptr [ %.pre.i451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i450 ], [ %i.qf, %bb.cp ], [ %i.pv, %bb.cq ], [ %i.qc, %bb.cl ]
  store i64 0, ptr %i.qe, align 8, !tbaa !65
  store i8 0, ptr %i.qq, align 1, !tbaa !58
  %i.qr = load ptr, ptr %18, align 8, !tbaa !64   ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.pv
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit454
  %i.qt = load i64, ptr %i.pv, align 8, !tbaa !58
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #27
end_hunk_0
begin_hunk_1_@_ZN11mpf_manager16to_string_binaryB5cxx11ERK3mpfjj:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #25
          to label %.noexc638 unwind label %bb.fa

.noexc638:                                        ; preds = %.noexc.i637
  unreachable

.thread7.i.i635:                                  ; preds = %bb.ds
  %i.zd = add nuw nsw i64 %i.yz, 1
  %i.ze = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zd) #26
          to label %.noexc640 unwind label %bb.fa ; 2 uses

.noexc640:                                        ; preds = %.thread7.i.i635
  store ptr %i.ze, ptr %47, align 8, !tbaa !64
  store i64 %i.yz, ptr %i.za, align 8, !tbaa !58
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dr
  switch i32 %i.yy, label %bb.dv [
    i32 0, label %bb.dw
    i32 1, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt
  store i8 48, ptr %i.za, align 8, !tbaa !58
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt, %.noexc640
  %i.zf = phi ptr [ %i.ze, %.noexc640 ], [ %i.za, %bb.dt ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.zf, i8 48, i64 %i.yz, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.zg = phi ptr [ %i.za, %bb.dt ], [ %i.zf, %bb.dv ], [ %i.za, %bb.du ]
  %i.zh = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %i.yz, ptr %i.zh, align 8, !tbaa !65
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yz
  store i8 0, ptr %i.zi, align 1, !tbaa !58
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.dx unwind label %bb.fb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.zj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 7 uses
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !65, !noalias !217 ; 5 uses
  %i.zl = icmp eq i64 %i.zk, 9223372036854775807
  br i1 %i.zl, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i642

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc652 unwind label %bb.fc

.noexc652:                                        ; preds = %bb.dy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i642: ; preds = %bb.dx
  %i.zm = add nsw i64 %i.zk, 1                    ; 3 uses
  %i.zn = load ptr, ptr %37, align 8, !tbaa !64, !noalias !217 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 10 uses
  %i.zp = icmp eq ptr %i.zn, %i.zo
  br i1 %i.zp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i643

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i651: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i642
  %i.zq = icmp ult i64 %i.zk, 16
  call void @llvm.assume(i1 %i.zq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i643: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i642
  %i.zr = load i64, ptr %i.zo, align 8, !tbaa !58, !noalias !217
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i644: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i643, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i651
  %i.zs = phi i64 [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i643 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i651 ]
  %.not.i.i.i645 = icmp ugt i64 %i.zm, %i.zs
  br i1 %.not.i.i.i645, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i644
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zk
  store i8 32, ptr %i.zt, align 1, !tbaa !58, !noalias !217
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i648

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i644
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, i64 noundef %i.zk, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i648 unwind label %bb.fc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i648: ; preds = %bb.ea, %bb.dz
  store i64 %i.zm, ptr %i.zj, align 8, !tbaa !65, !noalias !217
  %i.zu = load ptr, ptr %37, align 8, !tbaa !64, !noalias !217
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zm
  store i8 0, ptr %i.zv, align 1, !tbaa !58, !noalias !217
  %i.zw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 14 uses
  store ptr %i.zw, ptr %36, align 8, !tbaa !61, !alias.scope !217
  %i.zx = load ptr, ptr %37, align 8, !tbaa !64, !noalias !217 ; 5 uses
  %i.zy = icmp eq ptr %i.zx, %i.zo
  br i1 %i.zy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread, label %bb.eb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i648
  %i.zz = load i64, ptr %i.zj, align 8, !tbaa !65, !noalias !217 ; 5 uses
  %i.aaa = icmp samesign ult i64 %i.zz, 16
  call void @llvm.assume(i1 %i.aaa)
  %i.aab = add nuw nsw i64 %i.zz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zw, ptr noundef nonnull align 8 dereferenceable(1) %i.zo, i64 %i.aab, i1 false)
  %i.aac = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.zz, ptr %i.aac, align 8, !tbaa !65, !alias.scope !217
  store ptr %i.zo, ptr %37, align 8, !tbaa !64, !noalias !217
  store i64 0, ptr %i.zj, align 8, !tbaa !65, !noalias !217
  store i8 0, ptr %i.zo, align 8, !tbaa !58, !noalias !217
  %i.aad = add nuw nsw i64 %i.zz, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i648
  store ptr %i.zx, ptr %36, align 8, !tbaa !64, !alias.scope !217
  %i.aae = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.aaf = load <2 x i64>, ptr %i.zj, align 8, !tbaa !58, !noalias !217
  %.pre.i650 = load i64, ptr %i.zj, align 8, !tbaa !65, !noalias !217 ; 4 uses
  store <2 x i64> %i.aaf, ptr %i.aae, align 8, !tbaa !58, !alias.scope !217
  store ptr %i.zo, ptr %37, align 8, !tbaa !64, !noalias !217
  store i64 0, ptr %i.zj, align 8, !tbaa !65, !noalias !217
  store i8 0, ptr %i.zo, align 8, !tbaa !58, !noalias !217
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.aag = icmp eq i64 %.pre.i650, 9223372036854775807
  br i1 %i.aag, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc665 unwind label %bb.fd

.noexc665:                                        ; preds = %bb.ec
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655: ; preds = %bb.eb
  %i.aah = add nsw i64 %.pre.i650, 1              ; 2 uses
  %i.aai = icmp eq ptr %i.zx, %i.zw
  br i1 %i.aai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655
  %i.aaj = phi i64 [ %i.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread ], [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655 ]
  %i.aak = phi ptr [ %i.zw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread ], [ %i.zx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655 ]
  %i.aal = phi i64 [ %i.zz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread ], [ %.pre.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655 ] ; 2 uses
  %i.aam = phi ptr [ %i.aac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655.thread ], [ %i.aae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655 ]
  %i.aan = icmp ult i64 %i.aal, 16
  call void @llvm.assume(i1 %i.aan)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i657

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i655
  %i.aao = load i64, ptr %i.zw, align 8, !tbaa !58, !noalias !218
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i657

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i657: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664
  %i.aap = phi i64 [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656 ], [ %i.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664 ] ; 3 uses
  %i.aaq = phi ptr [ %i.zx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656 ], [ %i.aak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664 ]
  %i.aar = phi i64 [ %.pre.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656 ], [ %i.aal, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664 ] ; 2 uses
  %i.aas = phi ptr [ %i.aae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656 ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664 ] ; 4 uses
  %i.aat = phi i64 [ %i.aao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i656 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i664 ]
  %.not.i.i.i658 = icmp ugt i64 %i.aap, %i.aat
  br i1 %.not.i.i.i658, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i657
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aar
  store i8 40, ptr %i.aau, align 1, !tbaa !58, !noalias !218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i661

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i657
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.aar, i64 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i661 unwind label %bb.fd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i661: ; preds = %bb.ee, %bb.ed
  store i64 %i.aap, ptr %i.aas, align 8, !tbaa !65, !noalias !218
  %i.aav = load ptr, ptr %36, align 8, !tbaa !64, !noalias !218
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aap
  store i8 0, ptr %i.aaw, align 1, !tbaa !58, !noalias !218
  %i.aax = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 16 uses
  store ptr %i.aax, ptr %35, align 8, !tbaa !61, !alias.scope !218
  %i.aay = load ptr, ptr %36, align 8, !tbaa !64, !noalias !218 ; 3 uses
  %i.aaz = icmp eq ptr %i.aay, %i.zw
  br i1 %i.aaz, label %bb.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i661
  %i.aba = load i64, ptr %i.aas, align 8, !tbaa !65, !noalias !218 ; 3 uses
  %i.abb = icmp ult i64 %i.aba, 16
  call void @llvm.assume(i1 %i.abb)
  %i.abc = add nuw nsw i64 %i.aba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aax, ptr noundef nonnull align 8 dereferenceable(1) %i.zw, i64 %i.abc, i1 false)
  br label %bb.eg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i661
  store ptr %i.aay, ptr %35, align 8, !tbaa !64, !alias.scope !218
  %i.abd = load i64, ptr %i.zw, align 8, !tbaa !58, !noalias !218
  store i64 %i.abd, ptr %i.aax, align 8, !tbaa !58, !alias.scope !218
  %.pre.i663 = load i64, ptr %i.aas, align 8, !tbaa !65, !noalias !218
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662, %bb.ef
  %i.abe = phi ptr [ %i.aax, %bb.ef ], [ %i.aay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662 ] ; 2 uses
  %i.abf = phi i64 [ %i.aba, %bb.ef ], [ %.pre.i663, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662 ] ; 6 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 7 uses
  store i64 %i.abf, ptr %i.abg, align 8, !tbaa !65, !alias.scope !218
  store ptr %i.zw, ptr %36, align 8, !tbaa !64, !noalias !218
  store i64 0, ptr %i.aas, align 8, !tbaa !65, !noalias !218
  store i8 0, ptr %i.zw, align 8, !tbaa !58, !noalias !218
  %i.abh = load i32, ptr %2, align 8
  %i.abi = icmp slt i32 %i.abh, 0                 ; 2 uses
  %i.abj = select i1 %i.abi, ptr @.str.9, ptr @.str.14
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.abk = icmp eq i64 %i.abf, 9223372036854775807
  br i1 %i.abk, label %bb.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i668

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc678 unwind label %bb.fe

.noexc678:                                        ; preds = %bb.eh
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i668: ; preds = %bb.eg
  %i.abl = add nsw i64 %i.abf, 1                  ; 3 uses
  %i.abm = icmp eq ptr %i.abe, %i.aax
  br i1 %i.abm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i677: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i668
  %i.abn = icmp ult i64 %i.abf, 16
  call void @llvm.assume(i1 %i.abn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i669: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i668
  %i.abo = load i64, ptr %i.aax, align 8, !tbaa !58, !noalias !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i670

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i670: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i677
  %i.abp = phi i64 [ %i.abo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i669 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i677 ]
  %.not.i.i.i671 = icmp ugt i64 %i.abl, %i.abp
  br i1 %.not.i.i.i671, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i670
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abf
  %60 = select i1 %i.abi, i8 45, i8 43
  store i8 %60, ptr %i.abq, align 1, !tbaa !58, !noalias !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i674

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i670
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.abf, i64 noundef 0, ptr noundef nonnull %i.abj, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i674 unwind label %bb.fe

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i674: ; preds = %bb.ej, %bb.ei
  store i64 %i.abl, ptr %i.abg, align 8, !tbaa !65, !noalias !219
  %i.abr = load ptr, ptr %35, align 8, !tbaa !64, !noalias !219
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abl
  store i8 0, ptr %i.abs, align 1, !tbaa !58, !noalias !219
  %i.abt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 14 uses
  store ptr %i.abt, ptr %34, align 8, !tbaa !61, !alias.scope !219
  %i.abu = load ptr, ptr %35, align 8, !tbaa !64, !noalias !219 ; 5 uses
  %i.abv = icmp eq ptr %i.abu, %i.aax
  br i1 %i.abv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread, label %bb.ek

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i674
  %i.abw = load i64, ptr %i.abg, align 8, !tbaa !65, !noalias !219 ; 5 uses
  %i.abx = icmp samesign ult i64 %i.abw, 16
  call void @llvm.assume(i1 %i.abx)
  %i.aby = add nuw nsw i64 %i.abw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abt, ptr noundef nonnull align 8 dereferenceable(1) %i.aax, i64 %i.aby, i1 false)
  %i.abz = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i64 %i.abw, ptr %i.abz, align 8, !tbaa !65, !alias.scope !219
  store ptr %i.aax, ptr %35, align 8, !tbaa !64, !noalias !219
  store i64 0, ptr %i.abg, align 8, !tbaa !65, !noalias !219
  store i8 0, ptr %i.aax, align 8, !tbaa !58, !noalias !219
  %i.aca = add nuw nsw i64 %i.abw, 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i674
  store ptr %i.abu, ptr %34, align 8, !tbaa !64, !alias.scope !219
  %i.acb = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.acc = load <2 x i64>, ptr %i.abg, align 8, !tbaa !58, !noalias !219
  %.pre.i676 = load i64, ptr %i.abg, align 8, !tbaa !65, !noalias !219 ; 4 uses
  store <2 x i64> %i.acc, ptr %i.acb, align 8, !tbaa !58, !alias.scope !219
  store ptr %i.aax, ptr %35, align 8, !tbaa !64, !noalias !219
  store i64 0, ptr %i.abg, align 8, !tbaa !65, !noalias !219
  store i8 0, ptr %i.aax, align 8, !tbaa !58, !noalias !219
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.acd = icmp sgt i64 %.pre.i676, 9223372036854775802
  br i1 %i.acd, label %bb.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc691 unwind label %bb.ff

.noexc691:                                        ; preds = %bb.el
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681: ; preds = %bb.ek
  %i.ace = add nsw i64 %.pre.i676, 5              ; 2 uses
  %i.acf = icmp eq ptr %i.abu, %i.abt
  br i1 %i.acf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681
  %i.acg = phi i64 [ %i.aca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread ], [ %i.ace, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681 ]
  %i.ach = phi ptr [ %i.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread ], [ %i.abu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681 ]
  %i.aci = phi i64 [ %i.abw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread ], [ %.pre.i676, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681 ] ; 2 uses
  %i.acj = phi ptr [ %i.abz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681.thread ], [ %i.acb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681 ]
  %i.ack = icmp ult i64 %i.aci, 16
  call void @llvm.assume(i1 %i.ack)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i683

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i681
  %i.acl = load i64, ptr %i.abt, align 8, !tbaa !58, !noalias !220
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i683

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i683: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690
  %i.acm = phi i64 [ %i.ace, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682 ], [ %i.acg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690 ] ; 3 uses
  %i.acn = phi ptr [ %i.abu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682 ], [ %i.ach, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690 ]
  %i.aco = phi i64 [ %.pre.i676, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682 ], [ %i.aci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690 ] ; 2 uses
  %i.acp = phi ptr [ %i.acb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682 ], [ %i.acj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690 ] ; 4 uses
  %i.acq = phi i64 [ %i.acl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i682 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i690 ]
  %.not.i.i.i684 = icmp ugt i64 %i.acm, %i.acq
  br i1 %.not.i.i.i684, label %bb.en, label %bb.em

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i683
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.aco
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.acr, ptr noundef nonnull align 1 dereferenceable(5) @.str.25, i64 5, i1 false), !noalias !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i687

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i683
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef %i.aco, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i687 unwind label %bb.ff

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i687: ; preds = %bb.en, %bb.em
  store i64 %i.acm, ptr %i.acp, align 8, !tbaa !65, !noalias !220
  %i.acs = load ptr, ptr %34, align 8, !tbaa !64, !noalias !220
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acm
  store i8 0, ptr %i.act, align 1, !tbaa !58, !noalias !220
  %i.acu = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 12 uses
  store ptr %i.acu, ptr %33, align 8, !tbaa !61, !alias.scope !220
  %i.acv = load ptr, ptr %34, align 8, !tbaa !64, !noalias !220 ; 3 uses
  %i.acw = icmp eq ptr %i.acv, %i.abt
  br i1 %i.acw, label %bb.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i687
  %i.acx = load i64, ptr %i.acp, align 8, !tbaa !65, !noalias !220 ; 3 uses
  %i.acy = icmp ult i64 %i.acx, 16
  call void @llvm.assume(i1 %i.acy)
  %i.acz = add nuw nsw i64 %i.acx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acu, ptr noundef nonnull align 8 dereferenceable(1) %i.abt, i64 %i.acz, i1 false)
  br label %bb.ep

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i687
  store ptr %i.acv, ptr %33, align 8, !tbaa !64, !alias.scope !220
  %i.ada = load i64, ptr %i.abt, align 8, !tbaa !58, !noalias !220
  store i64 %i.ada, ptr %i.acu, align 8, !tbaa !58, !alias.scope !220
  %.pre.i689 = load i64, ptr %i.acp, align 8, !tbaa !65, !noalias !220
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688, %bb.eo
  %i.adb = phi ptr [ %i.acu, %bb.eo ], [ %i.acv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688 ] ; 6 uses
  %i.adc = phi i64 [ %i.acx, %bb.eo ], [ %.pre.i689, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688 ] ; 6 uses
  %i.add = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store i64 %i.adc, ptr %i.add, align 8, !tbaa !65, !alias.scope !220
  store ptr %i.abt, ptr %34, align 8, !tbaa !64, !noalias !220
  store i64 0, ptr %i.acp, align 8, !tbaa !65, !noalias !220
  store i8 0, ptr %i.abt, align 8, !tbaa !58, !noalias !220
  %i.ade = load ptr, ptr %0, align 8, !tbaa !64   ; 6 uses
  %i.adf = icmp eq ptr %i.ade, %i.a
  %i.adg = icmp eq ptr %i.adb, %i.acu             ; 2 uses
  br i1 %i.adf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i700: ; preds = %bb.ep
  br i1 %i.adg, label %bb.eq, label %.thread.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i694: ; preds = %bb.ep
  br i1 %i.adg, label %bb.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i695

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i694, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i700
  %i.adh = icmp ult i64 %i.adc, 16
  call void @llvm.assume(i1 %i.adh)
  %.not21.i697 = icmp eq ptr %33, %0
  br i1 %.not21.i697, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702, label %bb.er, !prof !62

bb.er:                                            ; preds = %bb.eq
  switch i64 %i.adc, label %bb.et [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698
    i64 1, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er
  %i.adi = load i8, ptr %i.adb, align 1, !tbaa !58
  store i8 %i.adi, ptr %i.ade, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ade, ptr align 1 %i.adb, i64 %i.adc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698: ; preds = %bb.et, %bb.es, %bb.er
  %i.adj = load i64, ptr %i.add, align 8, !tbaa !65 ; 2 uses
  store i64 %i.adj, ptr %i.b, align 8, !tbaa !65
  %i.adk = load ptr, ptr %0, align 8, !tbaa !64
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adj
  store i8 0, ptr %i.adl, align 1, !tbaa !58
  %.pre.i699 = load ptr, ptr %33, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702

.thread.i701:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i700
  store ptr %i.adb, ptr %0, align 8, !tbaa !64
  store i64 %i.adc, ptr %i.b, align 8, !tbaa !65
  %i.adm = load i64, ptr %i.acu, align 8, !tbaa !58
  store i64 %i.adm, ptr %i.a, align 8, !tbaa !58
  br label %bb.ev

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i695: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i694
  %i.adn = load i64, ptr %i.a, align 8, !tbaa !58
  store ptr %i.adb, ptr %0, align 8, !tbaa !64
  store i64 %i.adc, ptr %i.b, align 8, !tbaa !65
  %i.ado = load i64, ptr %i.acu, align 8, !tbaa !58
  store i64 %i.ado, ptr %i.a, align 8, !tbaa !58
  %.not.i696 = icmp eq ptr %i.ade, null
  br i1 %.not.i696, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i695
  store ptr %i.ade, ptr %33, align 8, !tbaa !64
  store i64 %i.adn, ptr %i.acu, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i695, %.thread.i701
  store ptr %i.acu, ptr %33, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702: ; preds = %bb.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698, %bb.eu, %bb.ev
  %i.adp = phi ptr [ %.pre.i699, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i698 ], [ %i.ade, %bb.eu ], [ %i.acu, %bb.ev ], [ %i.adb, %bb.eq ]
  store i64 0, ptr %i.add, align 8, !tbaa !65
  store i8 0, ptr %i.adp, align 1, !tbaa !58
  %i.adq = load ptr, ptr %33, align 8, !tbaa !64  ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.acu
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit702
  %i.ads = load i64, ptr %i.acu, align 8, !tbaa !58
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #27
end_hunk_1
begin_hunk_2_@_ZN11mpf_manager16to_string_binaryB5cxx11ERK3mpfjj:bb.a
  br i1 %i.ajq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848
  %i.ajr = load i64, ptr %i.aiy, align 8, !tbaa !58
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %i.ajp, i64 noundef %i.ajs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849
  %i.ajt = load ptr, ptr %50, align 8, !tbaa !64  ; 2 uses
  %i.aju = icmp eq ptr %i.ajt, %i.air
  br i1 %i.aju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.ajv = load i64, ptr %i.air, align 8, !tbaa !58
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852
  %i.ajx = load ptr, ptr %51, align 8, !tbaa !64  ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %i.aio
  br i1 %i.ajy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854
  %i.ajz = load i64, ptr %i.aio, align 8, !tbaa !58
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.aka) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.akb = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  store ptr %i.akb, ptr %52, align 8, !tbaa !23
  %i.akc = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 14 uses
  store i32 0, ptr %i.akc, align 8, !tbaa !14
  %i.akd = getelementptr inbounds nuw i8, ptr %52, i64 12 ; 8 uses
  %i.ake = load i8, ptr %i.akd, align 4
  %i.akf = and i8 %i.ake, -4
  store i8 %i.akf, ptr %i.akd, align 4
  %i.akg = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  store ptr null, ptr %i.akg, align 8, !tbaa !18
  %i.akh = load i64, ptr %i.c, align 8, !tbaa !21
  %i.aki = load i32, ptr %2, align 8
  %i.akj = and i32 %i.aki, 32767
  %i.akk = add nsw i32 %i.akj, -1
  %i.akl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.akk, i1 noundef zeroext true)
          to label %.noexc858 unwind label %bb.fj

.noexc858:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857
  %i.akm = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.akb, ptr noundef nonnull align 8 dereferenceable(16) %i.akl)
          to label %.noexc859 unwind label %bb.fj

.noexc859:                                        ; preds = %.noexc858
  %i.akn = icmp eq i64 %i.akh, %i.akm
  br i1 %i.akn, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i

_ZN11mpf_manager7is_zeroERK3mpf.exit.i:           ; preds = %.noexc859
  %i.ako = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !14
  %i.akq = icmp eq i32 %i.akp, 0
  br i1 %i.akq, label %_ZN11mpf_manager11is_denormalERK3mpf.exit.thread, label %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i

_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i:    ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, %.noexc859
  %i.akr = load i64, ptr %i.c, align 8, !tbaa !21
  %i.aks = load i32, ptr %2, align 8
  %i.akt = and i32 %i.aks, 32767
  %i.aku = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.akv = add nsw i32 %i.akt, -1
  %i.akw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.akv, i1 noundef zeroext true)
          to label %.noexc860 unwind label %bb.fj

.noexc860:                                        ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i
  %i.akx = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aku, ptr noundef nonnull align 8 dereferenceable(16) %i.akw)
          to label %_ZN11mpf_manager11is_denormalERK3mpf.exit unwind label %bb.fj

_ZN11mpf_manager11is_denormalERK3mpf.exit:        ; preds = %.noexc860
  %i.aky = icmp eq i64 %i.akr, %i.akx
  br i1 %i.aky, label %bb.fg, label %_ZN11mpf_manager11is_denormalERK3mpf.exit.thread

bb.fg:                                            ; preds = %_ZN11mpf_manager11is_denormalERK3mpf.exit
  %i.akz = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  %i.ala = load i32, ptr %2, align 8
  %i.alb = and i32 %i.ala, 32767
  %i.alc = add nsw i32 %i.alb, -1                 ; 2 uses
  %i.ald = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.alc, i1 noundef zeroext true)
          to label %.noexc862 unwind label %bb.fj

.noexc862:                                        ; preds = %bb.fg
  %i.ale = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.akz, ptr noundef nonnull align 8 dereferenceable(16) %i.ald)
          to label %bb.fh unwind label %bb.fj

bb.fh:                                            ; preds = %.noexc862
  %i.alf = add nsw i64 %i.ale, 1
  %i.alg = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.alh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.alc, i1 noundef zeroext false)
          to label %.noexc864 unwind label %bb.fj

.noexc864:                                        ; preds = %bb.fh
  %i.ali = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.alg, ptr noundef nonnull align 8 dereferenceable(16) %i.alh)
          to label %bb.fi unwind label %bb.fj

bb.fi:                                            ; preds = %.noexc864
  %i.alj = add nsw i64 %i.alf, %i.ali             ; 3 uses
  %i.alk = add i64 %i.alj, 2147483648
  %or.cond.i.i = icmp ult i64 %i.alk, 4294967296
  br i1 %or.cond.i.i, label %_ZN11mpz_managerILb0EE3setER3mpzl.exit.sink.split, label %.invoke

bb.fj:                                            ; preds = %.invoke, %.noexc876, %_ZN11mpf_manager11is_denormalERK3mpf.exit.thread, %.noexc864, %bb.fh, %.noexc862, %bb.fg, %.noexc860, %_ZN11mpf_manager7is_zeroERK3mpf.exit.thread.i, %.noexc858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

_ZN11mpf_manager11is_denormalERK3mpf.exit.thread: ; preds = %_ZN11mpf_manager7is_zeroERK3mpf.exit.i, %_ZN11mpf_manager11is_denormalERK3mpf.exit
  %i.alm = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  %i.aln = load i32, ptr %2, align 8
  %i.alo = and i32 %i.aln, 32767
  %i.alp = load i64, ptr %i.c, align 8, !tbaa !21
  %i.alq = add nsw i32 %i.alo, -1
  %i.alr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i32 noundef %i.alq, i1 noundef zeroext false)
          to label %.noexc876 unwind label %bb.fj

.noexc876:                                        ; preds = %_ZN11mpf_manager11is_denormalERK3mpf.exit.thread
  %i.als = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.alm, ptr noundef nonnull align 8 dereferenceable(16) %i.alr)
          to label %bb.fk unwind label %bb.fj

bb.fk:                                            ; preds = %.noexc876
  %i.alt = add nsw i64 %i.als, %i.alp             ; 3 uses
  %i.alu = add i64 %i.alt, 2147483648
  %or.cond.i.i879 = icmp ult i64 %i.alu, 4294967296
  br i1 %or.cond.i.i879, label %_ZN11mpz_managerILb0EE3setER3mpzl.exit.sink.split, label %.invoke

.invoke:                                          ; preds = %bb.fi, %bb.fk
  %i.alv = phi ptr [ %i.alm, %bb.fk ], [ %i.akz, %bb.fi ]
  %i.alw = phi i64 [ %i.alt, %bb.fk ], [ %i.alj, %bb.fi ]
  invoke void @_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(600) %i.alv, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, i64 noundef %i.alw)
          to label %_ZN11mpz_managerILb0EE3setER3mpzl.exit unwind label %bb.fj

_ZN11mpz_managerILb0EE3setER3mpzl.exit.sink.split: ; preds = %bb.fk, %bb.fi
  %.sink1366 = phi i64 [ %i.alj, %bb.fi ], [ %i.alt, %bb.fk ]
  %i.alx = trunc nsw i64 %.sink1366 to i32
  store i32 %i.alx, ptr %i.akc, align 8, !tbaa !14
  %i.aly = load i8, ptr %i.akd, align 4
  %i.alz = and i8 %i.aly, -2
  store i8 %i.alz, ptr %i.akd, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit

_ZN11mpz_managerILb0EE3setER3mpzl.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit.sink.split, %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.ama = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 17 uses
  store ptr %i.ama, ptr %53, align 8, !tbaa !61
  %i.amb = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 16 uses
  store i64 0, ptr %i.amb, align 8, !tbaa !65
  store i8 0, ptr %i.ama, align 8, !tbaa !58
  %i.amc = load i32, ptr %2, align 8
  %i.amd = and i32 %i.amc, 32767
  %.not1036 = icmp eq i32 %i.amd, 0
  br i1 %.not1036, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit
  %i.ame = getelementptr inbounds nuw i8, ptr %54, i64 4 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %bb.fl

._crit_edge:                                      ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit
  %.pre = load ptr, ptr %53, align 8, !tbaa !64   ; 3 uses
  %.pre1040 = load i64, ptr %i.amb, align 8, !tbaa !65 ; 3 uses
  %.not11.i.i = icmp sgt i64 %.pre1040, 1
  br i1 %.not11.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.amg = getelementptr i8, ptr %.pre, i64 %.pre1040
  %.sroa.0.010.i.i = getelementptr i8, ptr %i.amg, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.amj, %.lr.ph.i.i ], [ %.pre, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.amh = load i8, ptr %.sroa.07.012.i.i, align 1, !tbaa !58
  %i.ami = load i8, ptr %.sroa.0.013.i.i, align 1, !tbaa !58
  store i8 %i.ami, ptr %.sroa.07.012.i.i, align 1, !tbaa !58
  store i8 %i.amh, ptr %.sroa.0.013.i.i, align 1, !tbaa !58
  %i.amj = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.amj, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, !llvm.loop !186

bb.fl:                                            ; preds = %.lr.ph, %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit
  %.0951031 = phi i32 [ 0, %.lr.ph ], [ %i.and, %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit ]
  %i.amk = load i8, ptr %i.akd, align 4
  %i.aml = and i8 %i.amk, 1
  %i.amm = icmp eq i8 %i.aml, 0
  %i.amn = load ptr, ptr %i.akg, align 8
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %.0.in.in.in.i.i = select i1 %i.amm, ptr %i.akc, ptr %i.amo
  %.0.in.in.i.i = load i32, ptr %.0.in.in.in.i.i, align 4, !tbaa !19
  %.0.i.i = trunc i32 %.0.in.in.i.i to i1         ; 2 uses
  %.str.22..str = select i1 %.0.i.i, ptr @.str.22, ptr @.str
  %i.amp = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.amq = icmp eq i64 %i.amp, 9223372036854775807
  br i1 %i.amq, label %.invoke1367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i891

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i891: ; preds = %bb.fl
  %i.amr = add nsw i64 %i.amp, 1                  ; 3 uses
  %i.ams = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.ama
  br i1 %i.amt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i892

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i898: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i891
  %i.amu = icmp ult i64 %i.amp, 16
  call void @llvm.assume(i1 %i.amu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i892: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i891
  %i.amv = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i892, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i898
  %i.amw = phi i64 [ %i.amv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i892 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i898 ]
  %.not.i.i.i894 = icmp ugt i64 %i.amr, %i.amw
  br i1 %.not.i.i.i894, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amp
  %61 = select i1 %.0.i.i, i8 49, i8 48
  store i8 %61, ptr %i.amx, align 1, !tbaa !58
  br label %bb.fo

bb.fn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.amp, i64 noundef 0, ptr noundef nonnull %.str.22..str, i64 noundef 1)
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  store i64 %i.amr, ptr %i.amb, align 8, !tbaa !65
  %i.amy = load ptr, ptr %53, align 8, !tbaa !64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 %i.amr
  store i8 0, ptr %i.amz, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  store i32 2, ptr %54, align 8, !tbaa !14
  %i.ana = load i8, ptr %i.ame, align 4
  %i.anb = and i8 %i.ana, -4
  store i8 %i.anb, ptr %i.ame, align 4
  store ptr null, ptr %i.amf, align 8, !tbaa !18
  %i.anc = load ptr, ptr %52, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.anc, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %i.akc)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit unwind label %bb.fp

_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit: ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  %i.and = add nuw nsw i32 %.0951031, 1           ; 2 uses
  %i.ane = load i32, ptr %2, align 8
  %i.anf = and i32 %i.ane, 32767
  %i.ang = icmp samesign ult i32 %i.and, %i.anf
  br i1 %i.ang, label %bb.fl, label %._crit_edge, !llvm.loop !187

bb.fp:                                            ; preds = %bb.fo
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %.loopexit.split-lp.loopexit.split-lp

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre1041 = load ptr, ptr %53, align 8, !tbaa !64, !noalias !224
  %.pre1042 = load i64, ptr %i.amb, align 8, !tbaa !65, !noalias !224
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, %._crit_edge
  %i.ani = phi i64 [ %.pre1042, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre1040, %._crit_edge ], [ 0, %_ZN11mpz_managerILb0EE3setER3mpzl.exit ]
  %i.anj = phi ptr [ %.pre1041, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.ama, %_ZN11mpz_managerILb0EE3setER3mpzl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !224
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull @.str.19, i64 noundef 2, ptr noundef %i.anj, i64 noundef %i.ani, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.fq unwind label %bb.gf

bb.fq:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ank = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 5 uses
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225 ; 5 uses
  %i.anm = icmp eq i64 %i.anl, 9223372036854775807
  br i1 %i.anm, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc913 unwind label %bb.gg

.noexc913:                                        ; preds = %bb.fr
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903: ; preds = %bb.fq
  %i.ann = add nsw i64 %i.anl, 1                  ; 3 uses
  %i.ano = load ptr, ptr %56, align 8, !tbaa !64, !noalias !225 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 9 uses
  %i.anq = icmp eq ptr %i.ano, %i.anp
  br i1 %i.anq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i912, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i904

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i912: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903
  %i.anr = icmp ult i64 %i.anl, 16
  call void @llvm.assume(i1 %i.anr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i904: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903
  %i.ans = load i64, ptr %i.anp, align 8, !tbaa !58, !noalias !225
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i904, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i912
  %i.ant = phi i64 [ %i.ans, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i904 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i912 ]
  %.not.i.i.i906 = icmp ugt i64 %i.ann, %i.ant
  br i1 %.not.i.i.i906, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anl
  store i8 32, ptr %i.anu, align 1, !tbaa !58, !noalias !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, i64 noundef %i.anl, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909 unwind label %bb.gg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909: ; preds = %bb.ft, %bb.fs
  store i64 %i.ann, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  %i.anv = load ptr, ptr %56, align 8, !tbaa !64, !noalias !225
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.ann
  store i8 0, ptr %i.anw, align 1, !tbaa !58, !noalias !225
  %i.anx = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 8 uses
  store ptr %i.anx, ptr %55, align 8, !tbaa !61, !alias.scope !225
  %i.any = load ptr, ptr %56, align 8, !tbaa !64, !noalias !225 ; 3 uses
  %i.anz = icmp eq ptr %i.any, %i.anp
  br i1 %i.anz, label %bb.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909
  %i.aoa = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225 ; 3 uses
  %i.aob = icmp ult i64 %i.aoa, 16
  call void @llvm.assume(i1 %i.aob)
  %i.aoc = add nuw nsw i64 %i.aoa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.anx, ptr noundef nonnull align 8 dereferenceable(1) %i.anp, i64 %i.aoc, i1 false)
  br label %bb.fv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909
  store ptr %i.any, ptr %55, align 8, !tbaa !64, !alias.scope !225
  %i.aod = load i64, ptr %i.anp, align 8, !tbaa !58, !noalias !225
  store i64 %i.aod, ptr %i.anx, align 8, !tbaa !58, !alias.scope !225
  %.pre.i911 = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  br label %bb.fv

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910, %bb.fu
  %i.aoe = phi ptr [ %i.anx, %bb.fu ], [ %i.any, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910 ] ; 3 uses
  %i.aof = phi i64 [ %i.aoa, %bb.fu ], [ %.pre.i911, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910 ] ; 7 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.aof, ptr %i.aog, align 8, !tbaa !65, !alias.scope !225
  store ptr %i.anp, ptr %56, align 8, !tbaa !64, !noalias !225
  store i64 0, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  store i8 0, ptr %i.anp, align 8, !tbaa !58, !noalias !225
  %i.aoh = load i64, ptr %i.b, align 8, !tbaa !65 ; 5 uses
  %i.aoi = sub i64 9223372036854775807, %i.aoh
  %i.aoj = icmp ult i64 %i.aoi, %i.aof
  br i1 %i.aoj, label %bb.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc916 unwind label %bb.gh

.noexc916:                                        ; preds = %bb.fw
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.fv
  %i.aok = add i64 %i.aoh, %i.aof                 ; 3 uses
  %i.aol = load ptr, ptr %0, align 8, !tbaa !64   ; 2 uses
  %i.aom = icmp eq ptr %i.aol, %i.a
  br i1 %i.aom, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aon = icmp ult i64 %i.aoh, 16
  call void @llvm.assume(i1 %i.aon)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aoo = load i64, ptr %i.a, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.aop = phi i64 [ %i.aoo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.aok, %i.aop
  br i1 %.not.i.i.i.i, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.aof, 0
  br i1 %.not8.i.i.i.i, label %bb.gc, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aol, i64 %i.aoh ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.aof, 1
  br i1 %cond.i.i.i.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aor = load i8, ptr %i.aoe, align 1, !tbaa !58
  store i8 %i.aor, ptr %i.aoq, align 1, !tbaa !58
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoq, ptr align 1 %i.aoe, i64 %i.aof, i1 false)
  br label %bb.gc

bb.gb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aoh, i64 noundef 0, ptr noundef %i.aoe, i64 noundef %i.aof)
          to label %bb.gc unwind label %bb.gh

bb.gc:                                            ; preds = %bb.ga, %bb.fz, %bb.fx, %bb.gb
  store i64 %i.aok, ptr %i.b, align 8, !tbaa !65
  %i.aos = load ptr, ptr %0, align 8, !tbaa !64
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aok
  store i8 0, ptr %i.aot, align 1, !tbaa !58
  %i.aou = load ptr, ptr %55, align 8, !tbaa !64  ; 2 uses
  %i.aov = icmp eq ptr %i.aou, %i.anx
  br i1 %i.aov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918: ; preds = %bb.gc
  %i.aow = load i64, ptr %i.anx, align 8, !tbaa !58
  %i.aox = add i64 %i.aow, 1
  call void @_ZdlPvm(ptr noundef %i.aou, i64 noundef %i.aox) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918
  %i.aoy = load ptr, ptr %56, align 8, !tbaa !64  ; 2 uses
  %i.aoz = icmp eq ptr %i.aoy, %i.anp
  br i1 %i.aoz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920
  %i.apa = load i64, ptr %i.anp, align 8, !tbaa !58
  %i.apb = add i64 %i.apa, 1
  call void @_ZdlPvm(ptr noundef %i.aoy, i64 noundef %i.apb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.apc = load i64, ptr %i.amb, align 8, !tbaa !65
  %i.apd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef 0, i64 noundef %i.apc, ptr noundef nonnull @.str.10, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923
  %i.ape = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.apg = load i8, ptr %i.apf, align 4
  %i.aph = and i8 %i.apg, 1
  %i.api = icmp eq i8 %i.aph, 0
  br i1 %i.api, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.apj = load i32, ptr %i.ape, align 8, !tbaa !14 ; 2 uses
  store i32 %i.apj, ptr %i.akc, align 8, !tbaa !14
  %i.apk = load i8, ptr %i.akd, align 4
  %i.apl = and i8 %i.apk, -2
  store i8 %i.apl, ptr %i.akd, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.apm = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.apm, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, ptr noundef nonnull align 8 dereferenceable(16) %i.ape)
          to label %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge: ; preds = %bb.ge
  %.pre1043 = load i32, ptr %i.akc, align 8
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge, %bb.gd
  %i.apn = phi i32 [ %.pre1043, %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge ], [ %i.apj, %bb.gd ]
  %i.apo = load i32, ptr %2, align 8
  %i.app = lshr i32 %i.apo, 15
  %i.apq = and i32 %i.app, 65535
  %i.apr = add i32 %4, %3
  %i.aps = add i32 %i.apr, %i.apq                 ; 3 uses
  %i.apt = icmp eq i32 %i.aps, 0
  %i.apu = icmp eq i32 %i.apn, 0
  %or.cond1032 = select i1 %i.apt, i1 %i.apu, i1 false
  br i1 %or.cond1032, label %._crit_edge1035, label %.lr.ph1034

.lr.ph1034:                                       ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.apv = getelementptr inbounds nuw i8, ptr %57, i64 4 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.apx = add i32 %4, -1
  %i.apy = add i32 %4, -2
  %i.apz = add i32 %i.aps, -1
  br label %bb.gi

._crit_edge1035:                                  ; preds = %bb.gy, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.aqa = load ptr, ptr %53, align 8, !tbaa !64  ; 3 uses
  %i.aqb = load i64, ptr %i.amb, align 8, !tbaa !65 ; 3 uses
  %.not11.i.i927 = icmp sgt i64 %i.aqb, 1
  br i1 %.not11.i.i927, label %.lr.ph.i.i929.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934

.lr.ph.i.i929.preheader:                          ; preds = %._crit_edge1035
  %i.aqc = getelementptr i8, ptr %i.aqa, i64 %i.aqb
  %.sroa.0.010.i.i926 = getelementptr i8, ptr %i.aqc, i64 -1
  br label %.lr.ph.i.i929

.lr.ph.i.i929:                                    ; preds = %.lr.ph.i.i929.preheader, %.lr.ph.i.i929
  %.sroa.0.013.i.i930 = phi ptr [ %.sroa.0.0.i.i932, %.lr.ph.i.i929 ], [ %.sroa.0.010.i.i926, %.lr.ph.i.i929.preheader ] ; 3 uses
  %.sroa.07.012.i.i931 = phi ptr [ %i.aqf, %.lr.ph.i.i929 ], [ %i.aqa, %.lr.ph.i.i929.preheader ] ; 3 uses
  %i.aqd = load i8, ptr %.sroa.07.012.i.i931, align 1, !tbaa !58
  %i.aqe = load i8, ptr %.sroa.0.013.i.i930, align 1, !tbaa !58
  store i8 %i.aqe, ptr %.sroa.07.012.i.i931, align 1, !tbaa !58
  store i8 %i.aqd, ptr %.sroa.0.013.i.i930, align 1, !tbaa !58
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i931, i64 1 ; 2 uses
  %.sroa.0.0.i.i932 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i930, i64 -1 ; 2 uses
  %.not.i.i933 = icmp ult ptr %i.aqf, %.sroa.0.0.i.i932
  br i1 %.not.i.i933, label %.lr.ph.i.i929, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit, !llvm.loop !186

bb.gf:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940

bb.gg:                                            ; preds = %bb.ft, %bb.fr
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937

bb.gh:                                            ; preds = %bb.gb, %bb.fw
  %i.aqi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqj = load ptr, ptr %55, align 8, !tbaa !64  ; 2 uses
  %i.aqk = icmp eq ptr %i.aqj, %i.anx
  br i1 %i.aqk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935: ; preds = %bb.gh
  %i.aql = load i64, ptr %i.anx, align 8, !tbaa !58
  %i.aqm = add i64 %i.aql, 1
  call void @_ZdlPvm(ptr noundef %i.aqj, i64 noundef %i.aqm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935, %bb.gg
  %.pn99 = phi { ptr, i32 } [ %i.aqh, %bb.gg ], [ %i.aqi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935 ], [ %i.aqi, %bb.gh ] ; 2 uses
  %i.aqn = load ptr, ptr %56, align 8, !tbaa !64  ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.aqp = icmp eq ptr %i.aqn, %i.aqo
  br i1 %i.aqp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937
  %i.aqq = load i64, ptr %i.aqo, align 8, !tbaa !58
  %i.aqr = add i64 %i.aqq, 1
  call void @_ZdlPvm(ptr noundef %i.aqn, i64 noundef %i.aqr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938, %bb.gf
  %.pn99.pn = phi { ptr, i32 } [ %i.aqg, %bb.gf ], [ %.pn99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gx, %bb.gt, %bb.go, %bb.gk, %bb.fn, %.invoke1367, %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923
  %lpad.loopexit.split-lp1374 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.gi:                                            ; preds = %.lr.ph1034, %bb.gy
  %.0431033 = phi i32 [ 0, %.lr.ph1034 ], [ %i.ata, %bb.gy ] ; 4 uses
  %i.aqs = load i8, ptr %i.akd, align 4
  %i.aqt = and i8 %i.aqs, 1
  %i.aqu = icmp eq i8 %i.aqt, 0
  %i.aqv = load ptr, ptr %i.akg, align 8
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %.0.in.in.in.i.i941 = select i1 %i.aqu, ptr %i.akc, ptr %i.aqw
  %.0.in.in.i.i942 = load i32, ptr %.0.in.in.in.i.i941, align 4, !tbaa !19
  %.0.i.i943 = trunc i32 %.0.in.in.i.i942 to i1   ; 2 uses
  %.str.22..str1 = select i1 %.0.i.i943, ptr @.str.22, ptr @.str
  %i.aqx = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.aqy = icmp eq i64 %i.aqx, 9223372036854775807
  br i1 %i.aqy, label %.invoke1367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944: ; preds = %bb.gi
  %i.aqz = add nsw i64 %i.aqx, 1                  ; 3 uses
  %i.ara = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.arb = icmp eq ptr %i.ara, %i.ama
  br i1 %i.arb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944
  %i.arc = icmp ult i64 %i.aqx, 16
  call void @llvm.assume(i1 %i.arc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944
  %i.ard = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951
  %i.are = phi i64 [ %i.ard, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951 ]
  %.not.i.i.i947 = icmp ugt i64 %i.aqz, %i.are
  br i1 %.not.i.i.i947, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqx
  %62 = select i1 %.0.i.i943, i8 49, i8 48
  store i8 %62, ptr %i.arf, align 1, !tbaa !58
  br label %bb.gl

bb.gk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.aqx, i64 noundef 0, ptr noundef nonnull %.str.22..str1, i64 noundef 1)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  store i64 %i.aqz, ptr %i.amb, align 8, !tbaa !65
  %i.arg = load ptr, ptr %53, align 8, !tbaa !64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.aqz
  store i8 0, ptr %i.arh, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  store i32 2, ptr %57, align 8, !tbaa !14
  %i.ari = load i8, ptr %i.apv, align 4
  %i.arj = and i8 %i.ari, -4
  store i8 %i.arj, ptr %i.apv, align 4
  store ptr null, ptr %i.apw, align 8, !tbaa !18
  %i.ark = load ptr, ptr %52, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ark, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %i.akc)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956 unwind label %bb.gp

_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956: ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  %i.arl = icmp eq i32 %.0431033, %i.apx
  br i1 %i.arl, label %bb.gm, label %bb.gq

bb.gm:                                            ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956
  %i.arm = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.arn = icmp eq i64 %i.arm, 9223372036854775807
  br i1 %i.arn, label %.invoke1367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957: ; preds = %bb.gm
  %i.aro = add nsw i64 %i.arm, 1                  ; 3 uses
  %i.arp = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.arq = icmp eq ptr %i.arp, %i.ama
  br i1 %i.arq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957
  %i.arr = icmp ult i64 %i.arm, 16
  call void @llvm.assume(i1 %i.arr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957
  %i.ars = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964
  %i.art = phi i64 [ %i.ars, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964 ]
  %.not.i.i.i960 = icmp ugt i64 %i.aro, %i.art
  br i1 %.not.i.i.i960, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.arm
  store i8 44, ptr %i.aru, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967

bb.go:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.arm, i64 noundef 0, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967: ; preds = %bb.go, %bb.gn
  store i64 %i.aro, ptr %i.amb, align 8, !tbaa !65
  %i.arv = load ptr, ptr %53, align 8, !tbaa !64
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.aro
  store i8 0, ptr %i.arw, align 1, !tbaa !58
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gl
  %i.arx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  br label %.loopexit.split-lp.loopexit.split-lp

bb.gq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967, %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956
  %i.ary = load i32, ptr %2, align 8
  %i.arz = lshr i32 %i.ary, 15
  %i.asa = and i32 %i.arz, 65535
  %i.asb = add i32 %i.apy, %i.asa
  %i.asc = icmp eq i32 %.0431033, %i.asb
  br i1 %i.asc, label %bb.gr, label %bb.gy

bb.gr:                                            ; preds = %bb.gq
  %i.asd = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.ase = icmp eq i64 %i.asd, 9223372036854775807
  br i1 %i.ase, label %.invoke1367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968: ; preds = %bb.gr
  %i.asf = add nsw i64 %i.asd, 1                  ; 3 uses
  %i.asg = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.ash = icmp eq ptr %i.asg, %i.ama
  br i1 %i.ash, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968
  %i.asi = icmp ult i64 %i.asd, 16
  call void @llvm.assume(i1 %i.asi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968
  %i.asj = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975
  %i.ask = phi i64 [ %i.asj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975 ]
  %.not.i.i.i971 = icmp ugt i64 %i.asf, %i.ask
  br i1 %.not.i.i.i971, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asg, i64 %i.asd
  store i8 46, ptr %i.asl, align 1, !tbaa !58
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.asd, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  store i64 %i.asf, ptr %i.amb, align 8, !tbaa !65
  %i.asm = load ptr, ptr %53, align 8, !tbaa !64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 %i.asf
  store i8 0, ptr %i.asn, align 1, !tbaa !58
  %i.aso = icmp eq i32 %.0431033, %i.apz
  br i1 %i.aso, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.asp = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.asq = icmp eq i64 %i.asp, 9223372036854775807
  br i1 %i.asq, label %.invoke1367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979

.invoke1367:                                      ; preds = %bb.fl, %bb.gv, %bb.gr, %bb.gm, %bb.gi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke1367
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979: ; preds = %bb.gv
  %i.asr = add nsw i64 %i.asp, 1                  ; 3 uses
  %i.ass = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.ast = icmp eq ptr %i.ass, %i.ama
  br i1 %i.ast, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979
  %i.asu = icmp ult i64 %i.asp, 16
  call void @llvm.assume(i1 %i.asu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979
  %i.asv = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986
  %i.asw = phi i64 [ %i.asv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986 ]
  %.not.i.i.i982 = icmp ugt i64 %i.asr, %i.asw
  br i1 %.not.i.i.i982, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ass, i64 %i.asp
  store i8 32, ptr %i.asx, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989

bb.gx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.asp, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989: ; preds = %bb.gx, %bb.gw
  store i64 %i.asr, ptr %i.amb, align 8, !tbaa !65
  %i.asy = load ptr, ptr %53, align 8, !tbaa !64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 %i.asr
  store i8 0, ptr %i.asz, align 1, !tbaa !58
  br label %bb.gy

bb.gy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989, %bb.gq, %bb.gu
  %i.ata = add i32 %.0431033, 1                   ; 2 uses
  %i.atb = icmp uge i32 %i.ata, %i.aps
  %i.atc = load i32, ptr %i.akc, align 8
  %i.atd = icmp eq i32 %i.atc, 0
  %or.cond = select i1 %i.atb, i1 %i.atd, i1 false
  br i1 %or.cond, label %._crit_edge1035, label %bb.gi, !llvm.loop !192

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit: ; preds = %.lr.ph.i.i929
  %.pre1044 = load ptr, ptr %53, align 8, !tbaa !64, !noalias !226
  %.pre1045 = load i64, ptr %i.amb, align 8, !tbaa !65, !noalias !226
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit, %._crit_edge1035
  %i.ate = phi i64 [ %.pre1045, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit ], [ %i.aqb, %._crit_edge1035 ]
  %i.atf = phi ptr [ %.pre1044, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit ], [ %i.aqa, %._crit_edge1035 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !226
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull @.str.19, i64 noundef 2, ptr noundef %i.atf, i64 noundef %i.ate, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.gz unwind label %bb.hi

bb.gz:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !226
  %i.atg = load ptr, ptr %58, align 8, !tbaa !64  ; 3 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !65 ; 6 uses
  %i.atj = load i64, ptr %i.b, align 8, !tbaa !65 ; 5 uses
  %i.atk = sub i64 9223372036854775807, %i.atj
end_hunk_2

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
  br label %bb.hn

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
  %.sink1365 = phi i64 [ %i.alj, %bb.fi ], [ %i.alt, %bb.fk ]
  %i.alx = trunc nsw i64 %.sink1365 to i32
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
  %.not1038 = icmp eq i32 %i.amd, 0
  br i1 %.not1038, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit
  %i.ame = getelementptr inbounds nuw i8, ptr %54, i64 4 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %bb.fl

._crit_edge:                                      ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit
  %.pre = load ptr, ptr %53, align 8, !tbaa !64   ; 3 uses
  %.pre1039 = load i64, ptr %i.amb, align 8, !tbaa !65 ; 3 uses
  %.not11.i.i = icmp sgt i64 %.pre1039, 1
  br i1 %.not11.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.amg = getelementptr i8, ptr %.pre, i64 %.pre1039
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
  %.0951033 = phi i32 [ 0, %.lr.ph ], [ %i.and, %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit ]
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
  br i1 %i.amq, label %bb.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i891

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc899 unwind label %.loopexit.split-lp1029

.noexc899:                                        ; preds = %bb.fm
  unreachable

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
  br i1 %.not.i.i.i894, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amp
  %61 = select i1 %.0.i.i, i8 49, i8 48
  store i8 %61, ptr %i.amx, align 1, !tbaa !58
  br label %bb.fp

bb.fo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i893
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.amp, i64 noundef 0, ptr noundef nonnull %.str.22..str, i64 noundef 1)
          to label %bb.fp unwind label %.loopexit1028

bb.fp:                                            ; preds = %bb.fn, %bb.fo
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
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit unwind label %bb.fq

_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  %i.and = add nuw nsw i32 %.0951033, 1           ; 2 uses
  %i.ane = load i32, ptr %2, align 8
  %i.anf = and i32 %i.ane, 32767
  %i.ang = icmp samesign ult i32 %i.and, %i.anf
  br i1 %i.ang, label %bb.fl, label %._crit_edge, !llvm.loop !187

.loopexit1028:                                    ; preds = %bb.fo
  %lpad.loopexit1030 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

.loopexit.split-lp1029:                           ; preds = %bb.fm
  %lpad.loopexit.split-lp1031 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.fq:                                            ; preds = %bb.fp
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %bb.hm

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre1040 = load ptr, ptr %53, align 8, !tbaa !64, !noalias !224
  %.pre1041 = load i64, ptr %i.amb, align 8, !tbaa !65, !noalias !224
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, %._crit_edge
  %i.ani = phi i64 [ %.pre1041, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre1039, %._crit_edge ], [ 0, %_ZN11mpz_managerILb0EE3setER3mpzl.exit ]
  %i.anj = phi ptr [ %.pre1040, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.ama, %_ZN11mpz_managerILb0EE3setER3mpzl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !224
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull @.str.19, i64 noundef 2, ptr noundef %i.anj, i64 noundef %i.ani, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.fr unwind label %bb.gh

bb.fr:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ank = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 5 uses
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225 ; 5 uses
  %i.anm = icmp eq i64 %i.anl, 9223372036854775807
  br i1 %i.anm, label %bb.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc913 unwind label %bb.gi

.noexc913:                                        ; preds = %bb.fs
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i903: ; preds = %bb.fr
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
  br i1 %.not.i.i.i906, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anl
  store i8 32, ptr %i.anu, align 1, !tbaa !58, !noalias !225
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909

bb.fu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i905
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, i64 noundef %i.anl, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909 unwind label %bb.gi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909: ; preds = %bb.fu, %bb.ft
  store i64 %i.ann, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  %i.anv = load ptr, ptr %56, align 8, !tbaa !64, !noalias !225
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.ann
  store i8 0, ptr %i.anw, align 1, !tbaa !58, !noalias !225
  %i.anx = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 8 uses
  store ptr %i.anx, ptr %55, align 8, !tbaa !61, !alias.scope !225
  %i.any = load ptr, ptr %56, align 8, !tbaa !64, !noalias !225 ; 3 uses
  %i.anz = icmp eq ptr %i.any, %i.anp
  br i1 %i.anz, label %bb.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909
  %i.aoa = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225 ; 3 uses
  %i.aob = icmp ult i64 %i.aoa, 16
  call void @llvm.assume(i1 %i.aob)
  %i.aoc = add nuw nsw i64 %i.aoa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.anx, ptr noundef nonnull align 8 dereferenceable(1) %i.anp, i64 %i.aoc, i1 false)
  br label %bb.fw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i909
  store ptr %i.any, ptr %55, align 8, !tbaa !64, !alias.scope !225
  %i.aod = load i64, ptr %i.anp, align 8, !tbaa !58, !noalias !225
  store i64 %i.aod, ptr %i.anx, align 8, !tbaa !58, !alias.scope !225
  %.pre.i911 = load i64, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  br label %bb.fw

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910, %bb.fv
  %i.aoe = phi ptr [ %i.anx, %bb.fv ], [ %i.any, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910 ] ; 3 uses
  %i.aof = phi i64 [ %i.aoa, %bb.fv ], [ %.pre.i911, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i910 ] ; 7 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.aof, ptr %i.aog, align 8, !tbaa !65, !alias.scope !225
  store ptr %i.anp, ptr %56, align 8, !tbaa !64, !noalias !225
  store i64 0, ptr %i.ank, align 8, !tbaa !65, !noalias !225
  store i8 0, ptr %i.anp, align 8, !tbaa !58, !noalias !225
  %i.aoh = load i64, ptr %i.b, align 8, !tbaa !65 ; 5 uses
  %i.aoi = sub i64 9223372036854775807, %i.aoh
  %i.aoj = icmp ult i64 %i.aoi, %i.aof
  br i1 %i.aoj, label %bb.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc916 unwind label %bb.gj

.noexc916:                                        ; preds = %bb.fx
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.fw
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
  br i1 %.not.i.i.i.i, label %bb.gc, label %bb.fy

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.aof, 0
  br i1 %.not8.i.i.i.i, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aol, i64 %i.aoh ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.aof, 1
  br i1 %cond.i.i.i.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.aor = load i8, ptr %i.aoe, align 1, !tbaa !58
  store i8 %i.aor, ptr %i.aoq, align 1, !tbaa !58
  br label %bb.gd

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoq, ptr align 1 %i.aoe, i64 %i.aof, i1 false)
  br label %bb.gd

bb.gc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aoh, i64 noundef 0, ptr noundef %i.aoe, i64 noundef %i.aof)
          to label %bb.gd unwind label %bb.gj

bb.gd:                                            ; preds = %bb.gb, %bb.ga, %bb.fy, %bb.gc
  store i64 %i.aok, ptr %i.b, align 8, !tbaa !65
  %i.aos = load ptr, ptr %0, align 8, !tbaa !64
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aok
  store i8 0, ptr %i.aot, align 1, !tbaa !58
  %i.aou = load ptr, ptr %55, align 8, !tbaa !64  ; 2 uses
  %i.aov = icmp eq ptr %i.aou, %i.anx
  br i1 %i.aov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918: ; preds = %bb.gd
  %i.aow = load i64, ptr %i.anx, align 8, !tbaa !58
  %i.aox = add i64 %i.aow, 1
  call void @_ZdlPvm(ptr noundef %i.aou, i64 noundef %i.aox) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i918
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
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.gg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923
  %i.ape = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.apg = load i8, ptr %i.apf, align 4
  %i.aph = and i8 %i.apg, 1
  %i.api = icmp eq i8 %i.aph, 0
  br i1 %i.api, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.apj = load i32, ptr %i.ape, align 8, !tbaa !14 ; 2 uses
  store i32 %i.apj, ptr %i.akc, align 8, !tbaa !14
  %i.apk = load i8, ptr %i.akd, align 4
  %i.apl = and i8 %i.apk, -2
  store i8 %i.apl, ptr %i.akd, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.apm = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.apm, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, ptr noundef nonnull align 8 dereferenceable(16) %i.ape)
          to label %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge unwind label %bb.gg

._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge: ; preds = %bb.gf
  %.pre1042 = load i32, ptr %i.akc, align 8
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge, %bb.ge
  %i.apn = phi i32 [ %.pre1042, %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit_crit_edge ], [ %i.apj, %bb.ge ]
  %i.apo = load i32, ptr %2, align 8
  %i.app = lshr i32 %i.apo, 15
  %i.apq = and i32 %i.app, 65535
  %i.apr = add i32 %4, %3
  %i.aps = add i32 %i.apr, %i.apq                 ; 3 uses
  %i.apt = icmp eq i32 %i.aps, 0
  %i.apu = icmp eq i32 %i.apn, 0
  %or.cond1034 = select i1 %i.apt, i1 %i.apu, i1 false
  br i1 %or.cond1034, label %._crit_edge1037, label %.lr.ph1036

.lr.ph1036:                                       ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.apv = getelementptr inbounds nuw i8, ptr %57, i64 4 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.apx = add i32 %4, -1
  %i.apy = add i32 %4, -2
  %i.apz = add i32 %i.aps, -1
  br label %bb.gk

._crit_edge1037:                                  ; preds = %bb.ha, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.aqa = load ptr, ptr %53, align 8, !tbaa !64  ; 3 uses
  %i.aqb = load i64, ptr %i.amb, align 8, !tbaa !65 ; 3 uses
  %.not11.i.i927 = icmp sgt i64 %i.aqb, 1
  br i1 %.not11.i.i927, label %.lr.ph.i.i929.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934

.lr.ph.i.i929.preheader:                          ; preds = %._crit_edge1037
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

bb.gg:                                            ; preds = %bb.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.gh:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940

bb.gi:                                            ; preds = %bb.fu, %bb.fs
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937

bb.gj:                                            ; preds = %bb.gc, %bb.fx
  %i.aqj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqk = load ptr, ptr %55, align 8, !tbaa !64  ; 2 uses
  %i.aql = icmp eq ptr %i.aqk, %i.anx
  br i1 %i.aql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935: ; preds = %bb.gj
  %i.aqm = load i64, ptr %i.anx, align 8, !tbaa !58
  %i.aqn = add i64 %i.aqm, 1
  call void @_ZdlPvm(ptr noundef %i.aqk, i64 noundef %i.aqn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935, %bb.gi
  %.pn99 = phi { ptr, i32 } [ %i.aqi, %bb.gi ], [ %i.aqj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i935 ], [ %i.aqj, %bb.gj ] ; 2 uses
  %i.aqo = load ptr, ptr %56, align 8, !tbaa !64  ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.aqq = icmp eq ptr %i.aqo, %i.aqp
  br i1 %i.aqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937
  %i.aqr = load i64, ptr %i.aqp, align 8, !tbaa !58
  %i.aqs = add i64 %i.aqr, 1
  call void @_ZdlPvm(ptr noundef %i.aqo, i64 noundef %i.aqs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938, %bb.gh
  %.pn99.pn = phi { ptr, i32 } [ %i.aqh, %bb.gh ], [ %.pn99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  br label %bb.hm

.loopexit:                                        ; preds = %bb.gm, %bb.gq, %bb.gv, %bb.gz
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

.loopexit.split-lp:                               ; preds = %.invoke1366
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.gk:                                            ; preds = %.lr.ph1036, %bb.ha
  %.0431035 = phi i32 [ 0, %.lr.ph1036 ], [ %i.atb, %bb.ha ] ; 4 uses
  %i.aqt = load i8, ptr %i.akd, align 4
  %i.aqu = and i8 %i.aqt, 1
  %i.aqv = icmp eq i8 %i.aqu, 0
  %i.aqw = load ptr, ptr %i.akg, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %.0.in.in.in.i.i941 = select i1 %i.aqv, ptr %i.akc, ptr %i.aqx
  %.0.in.in.i.i942 = load i32, ptr %.0.in.in.in.i.i941, align 4, !tbaa !19
  %.0.i.i943 = trunc i32 %.0.in.in.i.i942 to i1   ; 2 uses
  %.str.22..str1 = select i1 %.0.i.i943, ptr @.str.22, ptr @.str
  %i.aqy = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.aqz = icmp eq i64 %i.aqy, 9223372036854775807
  br i1 %i.aqz, label %.invoke1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944

.invoke1366:                                      ; preds = %bb.gx, %bb.gt, %bb.go, %bb.gk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke1366
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944: ; preds = %bb.gk
  %i.ara = add nsw i64 %i.aqy, 1                  ; 3 uses
  %i.arb = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.arc = icmp eq ptr %i.arb, %i.ama
  br i1 %i.arc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944
  %i.ard = icmp ult i64 %i.aqy, 16
  call void @llvm.assume(i1 %i.ard)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i944
  %i.are = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951
  %i.arf = phi i64 [ %i.are, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i945 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i951 ]
  %.not.i.i.i947 = icmp ugt i64 %i.ara, %i.arf
  br i1 %.not.i.i.i947, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.aqy
  %62 = select i1 %.0.i.i943, i8 49, i8 48
  store i8 %62, ptr %i.arg, align 1, !tbaa !58
  br label %bb.gn

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i946
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.aqy, i64 noundef 0, ptr noundef nonnull %.str.22..str1, i64 noundef 1)
          to label %bb.gn unwind label %.loopexit

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  store i64 %i.ara, ptr %i.amb, align 8, !tbaa !65
  %i.arh = load ptr, ptr %53, align 8, !tbaa !64
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.ara
  store i8 0, ptr %i.ari, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  store i32 2, ptr %57, align 8, !tbaa !14
  %i.arj = load i8, ptr %i.apv, align 4
  %i.ark = and i8 %i.arj, -4
  store i8 %i.ark, ptr %i.apv, align 4
  store ptr null, ptr %i.apw, align 8, !tbaa !18
  %i.arl = load ptr, ptr %52, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.arl, ptr noundef nonnull align 8 dereferenceable(16) %i.akc, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %i.akc)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956 unwind label %bb.gr

_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956: ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  %i.arm = icmp eq i32 %.0431035, %i.apx
  br i1 %i.arm, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956
  %i.arn = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.aro = icmp eq i64 %i.arn, 9223372036854775807
  br i1 %i.aro, label %.invoke1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957: ; preds = %bb.go
  %i.arp = add nsw i64 %i.arn, 1                  ; 3 uses
  %i.arq = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.arr = icmp eq ptr %i.arq, %i.ama
  br i1 %i.arr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957
  %i.ars = icmp ult i64 %i.arn, 16
  call void @llvm.assume(i1 %i.ars)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i957
  %i.art = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964
  %i.aru = phi i64 [ %i.art, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i958 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i964 ]
  %.not.i.i.i960 = icmp ugt i64 %i.arp, %i.aru
  br i1 %.not.i.i.i960, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.arn
  store i8 44, ptr %i.arv, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i959
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.arn, i64 noundef 0, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967: ; preds = %bb.gq, %bb.gp
  store i64 %i.arp, ptr %i.amb, align 8, !tbaa !65
  %i.arw = load ptr, ptr %53, align 8, !tbaa !64
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.arp
  store i8 0, ptr %i.arx, align 1, !tbaa !58
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gn
  %i.ary = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  br label %bb.hm

bb.gs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit967, %_ZN15_scoped_numeralI11mpz_managerILb0EEEdVERK3mpz.exit956
  %i.arz = load i32, ptr %2, align 8
  %i.asa = lshr i32 %i.arz, 15
  %i.asb = and i32 %i.asa, 65535
  %i.asc = add i32 %i.apy, %i.asb
  %i.asd = icmp eq i32 %.0431035, %i.asc
  br i1 %i.asd, label %bb.gt, label %bb.ha

bb.gt:                                            ; preds = %bb.gs
  %i.ase = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.asf = icmp eq i64 %i.ase, 9223372036854775807
  br i1 %i.asf, label %.invoke1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968: ; preds = %bb.gt
  %i.asg = add nsw i64 %i.ase, 1                  ; 3 uses
  %i.ash = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.asi = icmp eq ptr %i.ash, %i.ama
  br i1 %i.asi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968
  %i.asj = icmp ult i64 %i.ase, 16
  call void @llvm.assume(i1 %i.asj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i968
  %i.ask = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975
  %i.asl = phi i64 [ %i.ask, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i969 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i975 ]
  %.not.i.i.i971 = icmp ugt i64 %i.asg, %i.asl
  br i1 %.not.i.i.i971, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ash, i64 %i.ase
  store i8 46, ptr %i.asm, align 1, !tbaa !58
  br label %bb.gw

bb.gv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i970
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.ase, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %bb.gw unwind label %.loopexit

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  store i64 %i.asg, ptr %i.amb, align 8, !tbaa !65
  %i.asn = load ptr, ptr %53, align 8, !tbaa !64
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.asg
  store i8 0, ptr %i.aso, align 1, !tbaa !58
  %i.asp = icmp eq i32 %.0431035, %i.apz
  br i1 %i.asp, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.asq = load i64, ptr %i.amb, align 8, !tbaa !65 ; 5 uses
  %i.asr = icmp eq i64 %i.asq, 9223372036854775807
  br i1 %i.asr, label %.invoke1366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979: ; preds = %bb.gx
  %i.ass = add nsw i64 %i.asq, 1                  ; 3 uses
  %i.ast = load ptr, ptr %53, align 8, !tbaa !64  ; 2 uses
  %i.asu = icmp eq ptr %i.ast, %i.ama
  br i1 %i.asu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979
  %i.asv = icmp ult i64 %i.asq, 16
  call void @llvm.assume(i1 %i.asv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i979
  %i.asw = load i64, ptr %i.ama, align 8, !tbaa !58
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986
  %i.asx = phi i64 [ %i.asw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i980 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i986 ]
  %.not.i.i.i982 = icmp ugt i64 %i.ass, %i.asx
  br i1 %.not.i.i.i982, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ast, i64 %i.asq
  store i8 32, ptr %i.asy, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989

bb.gz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i981
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.asq, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989: ; preds = %bb.gz, %bb.gy
  store i64 %i.ass, ptr %i.amb, align 8, !tbaa !65
  %i.asz = load ptr, ptr %53, align 8, !tbaa !64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 %i.ass
  store i8 0, ptr %i.ata, align 1, !tbaa !58
  br label %bb.ha

bb.ha:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit989, %bb.gs, %bb.gw
  %i.atb = add i32 %.0431035, 1                   ; 2 uses
  %i.atc = icmp uge i32 %i.atb, %i.aps
  %i.atd = load i32, ptr %i.akc, align 8
  %i.ate = icmp eq i32 %i.atd, 0
  %or.cond = select i1 %i.atc, i1 %i.ate, i1 false
  br i1 %or.cond, label %._crit_edge1037, label %bb.gk, !llvm.loop !192

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit: ; preds = %.lr.ph.i.i929
  %.pre1043 = load ptr, ptr %53, align 8, !tbaa !64, !noalias !226
  %.pre1044 = load i64, ptr %i.amb, align 8, !tbaa !65, !noalias !226
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit, %._crit_edge1037
  %i.atf = phi i64 [ %.pre1044, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit ], [ %i.aqb, %._crit_edge1037 ]
  %i.atg = phi ptr [ %.pre1043, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934.loopexit ], [ %i.aqa, %._crit_edge1037 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !226
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull @.str.19, i64 noundef 2, ptr noundef %i.atg, i64 noundef %i.atf, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.hb unwind label %bb.hk

bb.hb:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit934
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !226
  %i.ath = load ptr, ptr %58, align 8, !tbaa !64  ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !65 ; 6 uses
  %i.atk = load i64, ptr %i.b, align 8, !tbaa !65 ; 5 uses
  %i.atl = sub i64 9223372036854775807, %i.atk
  %i.atm = icmp ult i64 %i.atl, %i.atj
  br i1 %i.atm, label %bb.hc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i992

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc999 unwind label %bb.hl

end_hunk_2

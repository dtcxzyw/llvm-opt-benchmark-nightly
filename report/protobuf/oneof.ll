Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/oneof?download=true
inline.NumInlined: 790
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6google8protobuf8compiler4rust22GenerateOneofAccessorsERNS2_7ContextERKNS0_15OneofDescriptorENS2_12AccessorCaseE:bb.a
  %i.n = icmp eq ptr %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.m, ptr %5, align 8, !tbaa !66
  %i.r = load i64, ptr %i.d, align 8, !tbaa !65
  store i64 %i.r, ptr %i.l, align 8, !tbaa !65
  %.pre = load i64, ptr %i.e, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.s = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !64
  store ptr %i.d, ptr %6, align 8, !tbaa !66
  store i64 0, ptr %i.e, align 8, !tbaa !64
  store i8 0, ptr %i.d, align 8, !tbaa !65
  %i.u = load ptr, ptr %7, align 8, !tbaa !66     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !64   ; 3 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  store ptr %i.v, ptr %7, align 8, !tbaa !66
  store i64 0, ptr %i.y, align 8, !tbaa !64
  %i.ab = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !65
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store ptr %i.v, ptr %7, align 8, !tbaa !66
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !65, !alias.scope !189
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ad = phi i64 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.v, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !64, !alias.scope !189
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !68, !alias.scope !189
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 0, ptr %i.aj, align 8, !tbaa !64
  store i8 0, ptr %i.ai, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i8 0, ptr %i.al, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.an, ptr %8, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.an, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 13, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 29
  store i8 0, ptr %i.ap, align 1, !tbaa !65
  %i.aq = invoke { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE(i32 noundef %2)
          to label %bb.e unwind label %bb.ak      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ar = extractvalue { i64, ptr } %i.aq, 0      ; 5 uses
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 5 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !61
  %i.au = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.an
  br i1 %i.av, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

bb.f:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !64 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.e
  store ptr %i.au, ptr %i.am, align 8, !tbaa !66
  %i.az = load i64, ptr %i.an, align 8, !tbaa !65
  store i64 %i.az, ptr %i.at, align 8, !tbaa !65
  %.pre288 = load i64, ptr %i.ao, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.f
  %i.ba = phi i64 [ %.pre288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.aw, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !64
  store ptr %i.an, ptr %8, align 8, !tbaa !66
  store i64 0, ptr %i.ao, align 8, !tbaa !64
  store i8 0, ptr %i.an, align 8, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !190
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !61, !noalias !190
  %i.be = icmp eq ptr %i.as, null
  %i.bf = icmp ne i64 %i.ar, 0
  %or.cond.i.i.i.i.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.g

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #20
          to label %.noexc257 unwind label %bb.l, !noalias !190

.noexc257:                                        ; preds = %.noexc.i.i
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !190
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !127, !noalias !190
  %i.bg = icmp ugt i64 %i.ar, 15
  br i1 %i.bg, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc258 unwind label %bb.l, !noalias !190 ; 2 uses

.noexc258:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.bh, ptr %4, align 8, !tbaa !66, !noalias !190
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !127, !noalias !190
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !65, !noalias !190
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc258, %bb.g
  %i.bj = phi ptr [ %i.bh, %.noexc258 ], [ %i.bd, %bb.g ] ; 2 uses
  switch i64 %i.ar, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.as, align 1, !tbaa !65, !noalias !190
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !65, !noalias !190
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.as, i64 %i.ar, i1 false), !noalias !190
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !127, !noalias !190 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !64, !noalias !190
  %i.bn = load ptr, ptr %4, align 8, !tbaa !66, !noalias !190
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !65, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !190
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 3 uses
  store ptr %i.bp, ptr %i.bc, align 8, !tbaa !61, !alias.scope !190
  %i.bq = load ptr, ptr %4, align 8, !tbaa !66, !noalias !190 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bd
  br i1 %i.br, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !64, !noalias !190 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bu, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr %i.bq, ptr %i.bc, align 8, !tbaa !66, !alias.scope !190
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !65, !noalias !190
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !65, !alias.scope !190
  %.pre.i.i256 = load i64, ptr %i.bm, align 8, !tbaa !64, !noalias !190
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %i.am, align 8, !tbaa !66 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bz = load i64, ptr %i.at, align 8, !tbaa !65
  %18 = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %18) #18
  br label %.body

bb.m:                                             ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.bs, %bb.k ], [ %.pre.i.i256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !64, !alias.scope !190
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 248
  store i8 0, ptr %i.cc, align 8, !tbaa !68, !alias.scope !190
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !190
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i64 0, ptr %i.cf, align 8, !tbaa !64
  store i8 0, ptr %i.ce, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 288
  store i8 0, ptr %i.cg, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 360
  store i8 0, ptr %i.ch, align 8, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 368 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.cj, ptr %9, align 8, !tbaa !61
  store i32 1718379891, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 4, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.cl, align 4, !tbaa !65
  %i.cm = invoke { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE(i32 noundef %2)
          to label %bb.n unwind label %bb.al      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.cn = extractvalue { i64, ptr } %i.cm, 0      ; 5 uses
  %i.co = extractvalue { i64, ptr } %i.cm, 1      ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 384 ; 5 uses
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !61
  %i.cq = load ptr, ptr %9, align 8, !tbaa !66    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cj
  br i1 %i.cr, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

bb.o:                                             ; preds = %bb.n
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !64 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw nsw i64 %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.n
  store ptr %i.cq, ptr %i.ci, align 8, !tbaa !66
  %i.cv = load i64, ptr %i.cj, align 8, !tbaa !65
  store i64 %i.cv, ptr %i.cp, align 8, !tbaa !65
  %.pre289 = load i64, ptr %i.ck, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.o
  %i.cw = phi i64 [ %.pre289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.cs, %bb.o ]
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 376
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !64
  store ptr %i.cj, ptr %9, align 8, !tbaa !66
  store i64 0, ptr %i.ck, align 8, !tbaa !64
  store i8 0, ptr %i.cj, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !191
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cz, ptr %3, align 8, !tbaa !61, !noalias !191
  %i.da = icmp eq ptr %i.co, null
  %i.db = icmp ne i64 %i.cn, 0
  %or.cond.i.i.i.i.i262 = and i1 %i.db, %i.da
  br i1 %or.cond.i.i.i.i.i262, label %.noexc.i.i267, label %bb.p

.noexc.i.i267:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i107
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #20
          to label %.noexc268 unwind label %bb.u, !noalias !191

.noexc268:                                        ; preds = %.noexc.i.i267
  unreachable

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !191
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !127, !noalias !191
  %i.dc = icmp ugt i64 %i.cn, 15
  br i1 %i.dc, label %.noexc.i.i.i.i.i266, label %._crit_edge.i.i.i.i.i.i263

.noexc.i.i.i.i.i266:                              ; preds = %bb.p
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc269 unwind label %bb.u, !noalias !191 ; 2 uses

.noexc269:                                        ; preds = %.noexc.i.i.i.i.i266
  store ptr %i.dd, ptr %3, align 8, !tbaa !66, !noalias !191
  %i.de = load i64, ptr %i.a, align 8, !tbaa !127, !noalias !191
  store i64 %i.de, ptr %i.cz, align 8, !tbaa !65, !noalias !191
  br label %._crit_edge.i.i.i.i.i.i263

._crit_edge.i.i.i.i.i.i263:                       ; preds = %.noexc269, %bb.p
  %i.df = phi ptr [ %i.dd, %.noexc269 ], [ %i.cz, %bb.p ] ; 2 uses
  switch i64 %i.cn, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i263
  %i.dg = load i8, ptr %i.co, align 1, !tbaa !65, !noalias !191
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !65, !noalias !191
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i263
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.co, i64 %i.cn, i1 false), !noalias !191
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i.i263
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !127, !noalias !191 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !64, !noalias !191
  %i.dj = load ptr, ptr %3, align 8, !tbaa !66, !noalias !191
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !65, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !191
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 416 ; 3 uses
  store ptr %i.dl, ptr %i.cy, align 8, !tbaa !61, !alias.scope !191
  %i.dm = load ptr, ptr %3, align 8, !tbaa !66, !noalias !191 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cz
  br i1 %i.dn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i264

bb.t:                                             ; preds = %bb.s
  %i.do = load i64, ptr %i.di, align 8, !tbaa !64, !noalias !191 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.dq, i1 false)
  br label %.noexc.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i264: ; preds = %bb.s
  store ptr %i.dm, ptr %i.cy, align 8, !tbaa !66, !alias.scope !191
  %i.dr = load i64, ptr %i.cz, align 8, !tbaa !65, !noalias !191
  store i64 %i.dr, ptr %i.dl, align 8, !tbaa !65, !alias.scope !191
  %.pre.i.i265 = load i64, ptr %i.di, align 8, !tbaa !64, !noalias !191
  br label %.noexc.i115

bb.u:                                             ; preds = %.noexc.i.i.i.i.i266, %.noexc.i.i267
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cp
  br i1 %i.du, label %.body111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %bb.u
  %i.dv = load i64, ptr %i.cp, align 8, !tbaa !65
  %19 = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %19) #18
  br label %.body111

.noexc.i115:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i264, %bb.t
  %i.dw = phi i64 [ %i.do, %bb.t ], [ %.pre.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i264 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 408
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !64, !alias.scope !191
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 432
  store i8 0, ptr %i.dy, align 8, !tbaa !68, !alias.scope !191
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !191
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 456 ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !61
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 448
  store i64 0, ptr %i.eb, align 8, !tbaa !64
  store i8 0, ptr %i.ea, align 8, !tbaa !65
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 472
  store i8 0, ptr %i.ec, align 8, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i8 0, ptr %i.ed, align 8, !tbaa !79
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 552 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  store ptr %i.ef, ptr %10, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 17, ptr %i.c, align 8, !tbaa !127
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.v unwind label %bb.am      ; 2 uses

bb.v:                                             ; preds = %.noexc.i115
  store ptr %i.eg, ptr %10, align 8, !tbaa !66
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !127 ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.eg, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, i64 17, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !64
  %i.ej = load ptr, ptr %10, align 8, !tbaa !66
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZN6google8protobuf8compiler4rust10RustModuleB5cxx11ERNS2_7ContextERKNS0_15OneofDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.w unwind label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 568 ; 3 uses
  store ptr %i.el, ptr %i.ee, align 8, !tbaa !61
  %i.em = load ptr, ptr %10, align 8, !tbaa !66   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ef
  br i1 %i.en, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

bb.x:                                             ; preds = %bb.w
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !64 ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.ef, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.w
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !66
  %i.er = load i64, ptr %i.ef, align 8, !tbaa !65
  store i64 %i.er, ptr %i.el, align 8, !tbaa !65
  %.pre290 = load i64, ptr %i.ei, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.x
  %i.es = phi i64 [ %.pre290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.eo, %bb.x ]
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 560
  store i64 %i.es, ptr %i.et, align 8, !tbaa !64
  store ptr %i.ef, ptr %10, align 8, !tbaa !66
  store i64 0, ptr %i.ei, align 8, !tbaa !64
  store i8 0, ptr %i.ef, align 8, !tbaa !65
  %i.eu = load ptr, ptr %11, align 8, !tbaa !66   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 600 ; 3 uses
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i125, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !64 ; 3 uses
  %i.fa = add nuw nsw i64 %i.ez, 1
  store ptr %i.ev, ptr %11, align 8, !tbaa !66
  store i64 0, ptr %i.ey, align 8, !tbaa !64
  %i.fb = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fa, i1 false)
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120
  %i.fc = load i64, ptr %i.ev, align 8, !tbaa !65
  %.phi.trans.insert.i.i122 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.pre.i.i123 = load i64, ptr %.phi.trans.insert.i.i122, align 8, !tbaa !64
  store ptr %i.ev, ptr %11, align 8, !tbaa !66
  store i64 0, ptr %.phi.trans.insert.i.i122, align 8, !tbaa !64
  store i64 %i.fc, ptr %i.ex, align 8, !tbaa !65, !alias.scope !192
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i125
  %.sink.i124 = phi ptr [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i125 ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i121 ]
  %i.fd = phi i64 [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i125 ], [ %.pre.i.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i121 ]
  store i8 0, ptr %i.ev, align 8, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 584
  store ptr %.sink.i124, ptr %i.fe, align 8, !tbaa !61
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 592
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !64, !alias.scope !192
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 616
  store i8 0, ptr %i.fg, align 8, !tbaa !68, !alias.scope !192
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 624
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 640 ; 2 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !61
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 632
  store i64 0, ptr %i.fj, align 8, !tbaa !64
  store i8 0, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 656
  store i8 0, ptr %i.fk, align 8, !tbaa !77
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 728
  store i8 0, ptr %i.fl, align 8, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 736 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 11 uses
  store ptr %i.fn, ptr %12, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.fn, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 14, ptr %i.fo, align 8, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 30
  store i8 0, ptr %i.fp, align 2, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZN6google8protobuf8compiler4rust19OneofViewEnumRsNameB5cxx11ERKNS0_15OneofDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 752 ; 3 uses
  store ptr %i.fq, ptr %i.fm, align 8, !tbaa !61
  %i.fr = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fn
  br i1 %i.fs, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

bb.aa:                                            ; preds = %bb.z
  %i.ft = load i64, ptr %i.fo, align 8, !tbaa !64 ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fu)
  %i.fv = add nuw nsw i64 %i.ft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i64 %i.fv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.z
  store ptr %i.fr, ptr %i.fm, align 8, !tbaa !66
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !65
  store i64 %i.fw, ptr %i.fq, align 8, !tbaa !65
  %.pre291 = load i64, ptr %i.fo, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i133: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.aa
  %i.fx = phi i64 [ %.pre291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.ft, %bb.aa ]
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 744
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !64
  store ptr %i.fn, ptr %12, align 8, !tbaa !66
  store i64 0, ptr %i.fo, align 8, !tbaa !64
  store i8 0, ptr %i.fn, align 8, !tbaa !65
  %i.fz = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 784 ; 3 uses
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i138, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i133
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !64 ; 3 uses
  %i.gf = add nuw nsw i64 %i.ge, 1
  store ptr %i.ga, ptr %13, align 8, !tbaa !66
  store i64 0, ptr %i.gd, align 8, !tbaa !64
  %i.gg = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.ga, i64 %i.gf, i1 false)
  br label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i133
  %i.gh = load i64, ptr %i.ga, align 8, !tbaa !65
  %.phi.trans.insert.i.i135 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.pre.i.i136 = load i64, ptr %.phi.trans.insert.i.i135, align 8, !tbaa !64
  store ptr %i.ga, ptr %13, align 8, !tbaa !66
  store i64 0, ptr %.phi.trans.insert.i.i135, align 8, !tbaa !64
  store i64 %i.gh, ptr %i.gc, align 8, !tbaa !65, !alias.scope !193
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i138
  %.sink.i137 = phi ptr [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i138 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i134 ]
  %i.gi = phi i64 [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i138 ], [ %.pre.i.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i134 ]
  store i8 0, ptr %i.ga, align 8, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 768
  store ptr %.sink.i137, ptr %i.gj, align 8, !tbaa !61
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 776
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !64, !alias.scope !193
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 800
  store i8 0, ptr %i.gl, align 8, !tbaa !68, !alias.scope !193
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 808
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 824 ; 2 uses
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !61
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 816
  store i64 0, ptr %i.go, align 8, !tbaa !64
  store i8 0, ptr %i.gn, align 8, !tbaa !65
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 840
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust22GenerateOneofAccessorsERNS2_7ContextERKNS0_15OneofDescriptorENS2_12AccessorCaseE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.lq = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.an
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.ls = load i64, ptr %i.an, align 8, !tbaa !65
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  %i.lu = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.v
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.lw = load i64, ptr %i.v, align 8, !tbaa !65
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ly = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.d
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ma = load i64, ptr %i.d, align 8, !tbaa !65
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.aj:                                            ; preds = %bb.a
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

bb.ak:                                            ; preds = %bb.d
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.m
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.am:                                            ; preds = %.noexc.i115
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.an:                                            ; preds = %bb.v
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

bb.ao:                                            ; preds = %bb.y
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

bb.ap:                                            ; preds = %bb.ab
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

.body183.loopexit:                                ; preds = %bb.ai
  %i.mj = landingpad { ptr, i32 }
          cleanup
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 1288
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mk) #16
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 1104
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ml) #16
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 920
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mm) #16
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 736
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mn) #16
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 552
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mo) #16
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 368
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mp) #16
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.mq) #16
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #16
  br label %.body183

.body183:                                         ; preds = %.body.i172, %.body183.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ], [ %i.mj, %.body183.loopexit ], [ %eh.lpad-body.i173, %.body.i172 ] ; 2 uses
  %i.mr = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i174 ], [ true, %.body183.loopexit ], [ false, %.body.i172 ] ; 2 uses
  %i.ms = load ptr, ptr %17, align 8, !tbaa !66   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.ix
  br i1 %i.mt, label %.body163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %.body183
  %i.mu = load i64, ptr %i.ix, align 8, !tbaa !65
  br label %.body163.sink.split

.body163.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %.sink388 = phi i64 [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.sink = phi ptr [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.018.ph = phi ptr [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %.2.ph = phi i1 [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159 ]
  %i.mv = add i64 %.sink388, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.mv) #18
  br label %.body163

.body163:                                         ; preds = %.body163.sink.split, %.body183, %.body.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body183 ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.pn.pn.ph, %.body163.sink.split ] ; 2 uses
  %.018 = phi ptr [ %i.iw, %.body183 ], [ %i.hw, %.body.i ], [ %.018.ph, %.body163.sink.split ] ; 2 uses
  %.2 = phi i1 [ %i.mr, %.body183 ], [ false, %.body.i ], [ %.2.ph, %.body163.sink.split ] ; 2 uses
  %i.mw = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.hx
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %.body163
  %i.my = load i64, ptr %i.hx, align 8, !tbaa !65
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %.body163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  %i.na = load ptr, ptr %15, align 8, !tbaa !66   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.hf
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.nc = load i64, ptr %i.hf, align 8, !tbaa !65
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.ap
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mi, %bb.ap ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ] ; 2 uses
  %.321 = phi ptr [ %i.gr, %bb.ap ], [ %.018, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ] ; 2 uses
  %.5 = phi i1 [ false, %bb.ap ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.ne = load ptr, ptr %14, align 8, !tbaa !66   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.gs
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.ng = load i64, ptr %i.gs, align 8, !tbaa !65
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  %i.ni = load ptr, ptr %13, align 8, !tbaa !66   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.ga
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.nk = load i64, ptr %i.ga, align 8, !tbaa !65
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mh, %bb.ao ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ] ; 2 uses
  %.624 = phi ptr [ %i.fm, %bb.ao ], [ %.321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232 ], [ %.321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ] ; 2 uses
  %.8 = phi i1 [ false, %bb.ao ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.nm = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.fn
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.no = load i64, ptr %i.fn, align 8, !tbaa !65
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  %i.nq = load ptr, ptr %11, align 8, !tbaa !66   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.ev
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.ns = load i64, ptr %i.ev, align 8, !tbaa !65
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %bb.an
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mg, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ] ; 2 uses
  %.927 = phi ptr [ %i.ee, %bb.an ], [ %.624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ] ; 2 uses
  %.11 = phi i1 [ false, %bb.an ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.nu = load ptr, ptr %10, align 8, !tbaa !66   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.ef
  br i1 %i.nv, label %.body111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %20 = load i64, ptr %i.ef, align 8, !tbaa !65
  %i.nw = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nw) #18
  br label %.body111

.body111:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.u, %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a ], [ %i.me, %bb.al ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108 ], [ %i.mf, %bb.am ], [ %i.ds, %bb.u ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ] ; 2 uses
  %.1129 = phi ptr [ %.927, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a ], [ %i.ci, %bb.al ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108 ], [ %i.ee, %bb.am ], [ %i.ci, %bb.u ], [ %.927, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ] ; 2 uses
  %.13 = phi i1 [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.a ], [ false, %bb.al ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108 ], [ false, %bb.am ], [ false, %bb.u ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ] ; 2 uses
  %i.nx = load ptr, ptr %9, align 8, !tbaa !66    ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.cj
  br i1 %i.ny, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a: ; preds = %.body111
  %21 = load i64, ptr %i.cj, align 8, !tbaa !65
  %i.nz = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.nz) #18
  br label %.body

.body:                                            ; preds = %.body111, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.l ], [ %i.md, %bb.ak ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body111 ] ; 2 uses
  %.1331 = phi ptr [ %i.am, %bb.l ], [ %i.am, %bb.ak ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.1129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a ], [ %.1129, %.body111 ] ; 2 uses
  %.15 = phi i1 [ false, %bb.l ], [ false, %bb.ak ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.a ], [ %.13, %.body111 ] ; 2 uses
  %i.oa = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.an
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %.body
  %i.oc = load i64, ptr %i.an, align 8, !tbaa !65
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  %i.oe = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.v
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %i.og = load i64, ptr %i.v, align 8, !tbaa !65
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.aj
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.aj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ]
  %.1634 = phi ptr [ %5, %bb.aj ], [ %.1331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.1331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ] ; 2 uses
  %.18 = phi i1 [ false, %bb.aj ], [ %.15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.oi = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.d
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.ok = load i64, ptr %i.d, align 8, !tbaa !65
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  %i.om = icmp eq ptr %5, %.1634
  %or.cond = select i1 %.18, i1 true, i1 %i.om
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %.preheader
  %i.on = phi ptr [ %i.oo, %.preheader ], [ %.1634, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ]
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.oo) #16
  %i.op = icmp eq ptr %i.oo, %5
  br i1 %i.op, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6google8protobuf8compiler4rust10RsSafeNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #2

declare { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE(i32 noundef) local_unnamed_addr #2

declare { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE(i32 noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler4rust10RustModuleB5cxx11ERNS2_7ContextERKNS0_15OneofDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4rust20GenerateOneofExternCERNS2_7ContextERKNS0_15OneofDescriptorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !203 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca [3 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 50 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.noexc.i, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.14, i32 noundef 282, ptr noundef nonnull @.str.15) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  unreachable

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 17, ptr %i.b, align 8, !tbaa !127
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !66
  %i.i = load i64, ptr %i.b, align 8, !tbaa !127  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !64
  %i.k = load ptr, ptr %4, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN6google8protobuf8compiler4rust10RustModuleB5cxx11ERNS2_7ContextERKNS0_15OneofDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !61
  %i.n = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.j, align 8, !tbaa !64   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.n, ptr %3, align 8, !tbaa !66
  %i.s = load i64, ptr %i.g, align 8, !tbaa !65
  store i64 %i.s, ptr %i.m, align 8, !tbaa !65
  %.pre = load i64, ptr %i.j, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.t = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !64
  store ptr %i.g, ptr %4, align 8, !tbaa !66
  store i64 0, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.g, align 8, !tbaa !65
  %i.v = load ptr, ptr %5, align 8, !tbaa !66     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64  ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  store ptr %i.w, ptr %5, align 8, !tbaa !66
  store i64 0, ptr %i.z, align 8, !tbaa !64
  %i.ac = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %.noexc.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !65
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store ptr %i.w, ptr %5, align 8, !tbaa !66
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !65, !alias.scope !204
  br label %.noexc.i52

.noexc.i52:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.sink.i = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ae = phi i64 [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.w, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !64, !alias.scope !204
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 0, ptr %i.ah, align 8, !tbaa !68, !alias.scope !204
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %i.ak, align 8, !tbaa !64
  store i8 0, ptr %i.aj, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 0, ptr %i.al, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.am, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 17, ptr %i.a, align 8, !tbaa !127
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %.noexc.i52
end_hunk_1

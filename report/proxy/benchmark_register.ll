Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt8__detail8_ScannerIcE17_M_eat_escape_awkEv:bb.a
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !271
  %i.ba = and i16 %i.az, 2048
  %i.bb = icmp eq i16 %i.ba, 0
  %i.bc = and i8 %i.au, -2
  %switch = icmp eq i8 %i.bc, 56
  %or.cond = or i1 %switch, %i.bb
  br i1 %or.cond, label %.critedge, label %bb.h

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.g, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2, ptr %i.bd, align 8, !tbaa !221
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !222
  %i.bf = load i8, ptr %i.ar, align 1, !tbaa !62
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !61 ; 4 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aq
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h
  %i.bk = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.bl = load i64, ptr %i.aq, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bm = phi i64 [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bn = icmp ugt i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %i.bg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.i
  %i.bo = phi ptr [ %.pre.i.i, %bb.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 %i.bf, ptr %i.bp, align 1, !tbaa !62
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !61
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 0, ptr %i.br, align 1, !tbaa !62
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !222 ; 4 uses
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !223
  %.not17.1 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not17.1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !263, !nonnull !104, !align !264
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !62  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !269
  %i.by = zext i8 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !271
  %i.cb = and i16 %i.ca, 2048
  %i.cc = icmp eq i16 %i.cb, 0
  %i.cd = and i8 %i.bv, -2
  %switch.1 = icmp eq i8 %i.cd, 56
  %or.cond.1 = or i1 %switch.1, %i.cc
  br i1 %or.cond.1, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !222
  %i.cf = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !61 ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aq
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %bb.k
  %i.ck = load i64, ptr %i.aq, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1: ; preds = %bb.k
  %i.cl = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.cl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.cm = phi i64 [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.1 = load ptr, ptr %i.al, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  %i.co = phi ptr [ %.pre.i.i.1, %bb.l ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cf, ptr %i.cp, align 1, !tbaa !62
  store i64 %i.ch, ptr %i.am, align 8, !tbaa !61
  %i.cq = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !62
  br label %.critedge

bb.m:                                             ; preds = %.loopexit
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 2) #35
  unreachable

bb.n:                                             ; preds = %bb.e, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !222
  %i.d = load i8, ptr %i.b, align 1, !tbaa !62    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263, !nonnull !104, !align !264 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 313
  %i.j = zext i8 %i.d to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !62    ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext %i.d, i8 noundef signext 32), !inline_history !9 ; 3 uses
  %.not11.i = icmp eq i8 %i.p, 32
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.p, ptr %i.k, align 1, !tbaa !62
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i8 [ %i.l, %bb.a ], [ %i.p, %bb.c ], [ 32, %bb.b ]
  %i.q = sext i8 %.0.i to i32
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef %i.q) #33
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.t, align 8, !tbaa !221
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !61
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, i64 noundef 1, i8 noundef signext %i.d) ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.y = icmp eq i8 %i.d, 92
  br i1 %i.y, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !222  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !223
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 2, ptr noundef nonnull @.str.20) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !236
  %i.af = and i32 %i.ae, 288
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !62
  switch i8 %i.ag, label %bb.j [
    i8 40, label %bb.n
    i8 41, label %bb.n
    i8 123, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.unpack = load i64, ptr %i.ah, align 8, !tbaa !237 ; 3 uses
  %.elt34 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.unpack35 = load i64, ptr %.elt34, align 8, !tbaa !237
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.unpack35 ; 2 uses
  %1 = trunc i64 %.unpack to i1
  br i1 %1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.unpack
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !104
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.an = inttoptr i64 %.unpack to ptr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = phi ptr [ %i.am, %bb.k ], [ %i.an, %bb.l ]
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(248) %i.ai)
  br label %.critedge

bb.n:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !222
  %i.aq = load i8, ptr %i.z, align 1, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.022 = phi i8 [ %i.aq, %bb.n ], [ %i.d, %bb.e ] ; 5 uses
  switch i8 %.022, label %bb.ak [
    i8 40, label %bb.p
    i8 41, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ag
    i8 0, label %bb.ah
  ], !prof !545

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !236 ; 2 uses
  %i.at = and i32 %i.as, 16
  %.not42 = icmp eq i32 %i.at, 0
  br i1 %.not42, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !222 ; 5 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %i.aw = icmp eq i8 %i.av, 63
  br i1 %i.aw, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !222
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !223
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #35
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !62
  switch i8 %i.bb, label %bb.x [
    i8 58, label %bb.u
    i8 61, label %bb.v
    i8 33, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !222
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 6, ptr %i.bd, align 8, !tbaa !221
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.be, ptr %i.a, align 8, !tbaa !222
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 7, ptr %i.bf, align 8, !tbaa !221
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !61
  %i.bj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef 0, i64 noundef %i.bi, i64 noundef 1, i8 noundef signext 112) ; 0 uses
  br label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !222
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 7, ptr %i.bl, align 8, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef 0, i64 noundef %i.bo, i64 noundef 1, i8 noundef signext 110) ; 0 uses
  br label %.critedge

bb.x:                                             ; preds = %bb.t
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 5, ptr noundef nonnull @.str.21) #35
  unreachable

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.bq = and i32 %i.as, 2
  %.not33 = icmp eq i32 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br i1 %.not33, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 6, ptr %i.br, align 8, !tbaa !221
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 5, ptr %i.br, align 8, !tbaa !221
  br label %.critedge

bb.ab:                                            ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 8, ptr %i.bs, align 8, !tbaa !221
  br label %.critedge

bb.ac:                                            ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 2, ptr %i.bt, align 8, !tbaa !224
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.bu, align 8, !tbaa !262
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !222 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !223
  %.not32 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not32, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !62
  %i.bz = icmp eq i8 %i.by, 94
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 10, ptr %i.ca, align 8, !tbaa !221
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !222
  br label %.critedge

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 9, ptr %i.cc, align 8, !tbaa !221
  br label %.critedge

bb.ag:                                            ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.cd, align 8, !tbaa !224
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 12, ptr %i.ce, align 8, !tbaa !221
  br label %.critedge

bb.ah:                                            ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !236
  %i.ch = and i32 %i.cg, 16
  %.not41 = icmp eq i32 %i.ch, 0
  br i1 %.not41, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 13) #35
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ci, align 8, !tbaa !221
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !61
  %i.cm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef 0, i64 noundef %i.cl, i64 noundef 1, i8 noundef signext 0) ; 0 uses
  br label %.critedge

bb.ak:                                            ; preds = %bb.o
  %i.cn = and i8 %.022, -33
  %or.cond.not = icmp eq i8 %i.cn, 93
  br i1 %or.cond.not, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !263, !nonnull !104, !align !264 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 313
  %i.cq = zext i8 %.022 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !62  ; 2 uses
  %.not.i37 = icmp eq i8 %i.cs, 0
  br i1 %.not.i37, label %bb.am, label %_ZNKSt5ctypeIcE6narrowEcc.exit40

bb.am:                                            ; preds = %bb.al
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext %.022, i8 noundef signext 0), !inline_history !9 ; 3 uses
  %.not11.i39 = icmp eq i8 %i.cw, 0
  br i1 %.not11.i39, label %_ZNKSt5ctypeIcE6narrowEcc.exit40, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !62
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit40

_ZNKSt5ctypeIcE6narrowEcc.exit40:                 ; preds = %bb.al, %bb.am, %bb.an
  %.0.i38 = phi i8 [ %i.cs, %bb.al ], [ %i.cw, %bb.an ], [ 0, %bb.am ]
  %i.cx = load i8, ptr %0, align 8, !tbaa !255    ; 2 uses
  %.not3144 = icmp eq i8 %i.cx, 0
  br i1 %.not3144, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit40, %bb.ap
  %i.cy = phi i8 [ %i.de, %bb.ap ], [ %i.cx, %_ZNKSt5ctypeIcE6narrowEcc.exit40 ]
  %.045 = phi ptr [ %i.dd, %bb.ap ], [ %0, %_ZNKSt5ctypeIcE6narrowEcc.exit40 ] ; 2 uses
  %i.cz = icmp eq i8 %i.cy, %.0.i38
  br i1 %i.cz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !256
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !221
  br label %.critedge

bb.ap:                                            ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %.045, i64 8 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !255 ; 2 uses
  %.not31 = icmp eq i8 %i.de, 0
  br i1 %.not31, label %.critedge, label %.lr.ph, !llvm.loop !544

bb.aq:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.df, align 8, !tbaa !221
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !61
  %i.dj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 noundef 0, i64 noundef %i.di, i64 noundef 1, i8 noundef signext %.022) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %_ZNKSt5ctypeIcE6narrowEcc.exit40, %bb.ao, %bb.z, %bb.aa, %bb.u, %bb.w, %bb.v, %bb.af, %bb.ae, %bb.aj, %bb.aq, %bb.ag, %bb.ab, %bb.m, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 4) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !222
  %i.g = load i8, ptr %i.b, align 1, !tbaa !62    ; 2 uses
  switch i8 %i.g, label %bb.s [
    i8 45, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.l
    i8 92, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 28, ptr %i.h, align 8, !tbaa !221
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %i.f, %i.d
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 4, ptr noundef nonnull @.str.22) #35
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.f, align 1, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  switch i8 %i.j, label %bb.k [
    i8 46, label %bb.h
    i8 58, label %bb.i
    i8 61, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 16, ptr %i.k, align 8, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.l, ptr %i.a, align 8, !tbaa !222
  %i.m = load i8, ptr %i.f, align 1, !tbaa !62
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.m)
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  store i32 15, ptr %i.k, align 8, !tbaa !221
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.n, ptr %i.a, align 8, !tbaa !222
  %i.o = load i8, ptr %i.f, align 1, !tbaa !62
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.o)
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  store i32 17, ptr %i.k, align 8, !tbaa !221
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.p, ptr %i.a, align 8, !tbaa !222
  %i.q = load i8, ptr %i.f, align 1, !tbaa !62
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.q)
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  store i32 1, ptr %i.k, align 8, !tbaa !221
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 0, i64 noundef %i.t, i64 noundef 1, i8 noundef signext 91) ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !236
  %i.x = and i32 %i.w, 16
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load i8, ptr %i.z, align 8, !range !103
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 11, ptr %i.ac, align 8, !tbaa !221
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ad, align 8, !tbaa !224
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !236
  %i.ag = and i32 %i.af, 144
  %or.cond14.not = icmp eq i32 %i.ag, 0
  br i1 %or.cond14.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.unpack = load i64, ptr %i.ah, align 8, !tbaa !237 ; 3 uses
  %.elt9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.unpack10 = load i64, ptr %.elt9, align 8, !tbaa !237
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.unpack10 ; 2 uses
  %1 = trunc i64 %.unpack to i1
  br i1 %1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.unpack
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load ptr, ptr %i.al, align 8, !nosanitize !104
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.an = inttoptr i64 %.unpack to ptr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = phi ptr [ %i.am, %bb.p ], [ %i.an, %bb.q ]
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(248) %i.ai)
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.l, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ap, align 8, !tbaa !221
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.at = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 0, i64 noundef %i.as, i64 noundef 1, i8 noundef signext %i.g) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h, %bb.r, %bb.s, %bb.m, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.au, align 8, !tbaa !262
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !222
  %i.g = load i8, ptr %i.b, align 1, !tbaa !62    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263, !nonnull !104, !align !264
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !271
  %i.o = and i16 %i.n, 2048
  %.not9 = icmp eq i16 %i.o, 0
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 26, ptr %i.p, align 8, !tbaa !221
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.s, i64 noundef 1, i8 noundef signext %i.g) ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !223
  %.not812 = icmp eq ptr %i.u, %i.v
  br i1 %.not812, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.x = phi ptr [ %i.u, %.lr.ph ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 3 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !263, !nonnull !104, !align !264
  %i.z = load i8, ptr %i.x, align 1, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !269
  %i.ac = zext i8 %i.z to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !271
  %i.af = and i16 %i.ae, 2048
  %.not11 = icmp eq i16 %i.af, 0
  br i1 %.not11, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !222
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !62
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !61  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !76  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.w, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.g
  %i.aq = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ah, ptr %i.ar, align 1, !tbaa !62
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !61
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !62
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !223
  %.not8 = icmp eq ptr %i.au, %i.av
  br i1 %.not8, label %.critedge, label %bb.e, !llvm.loop !546

bb.h:                                             ; preds = %bb.c
  %i.aw = icmp eq i8 %i.g, 44
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 25, ptr %i.ax, align 8, !tbaa !221
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !236
  %i.ba = and i32 %i.az, 288
  %.not10 = icmp eq i32 %i.ba, 0
  br i1 %.not10, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp ne i8 %i.g, 92
  %.not = icmp eq ptr %i.f, %i.d
  %or.cond = select i1 %i.bb, i1 true, i1 %.not
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.f, align 1, !tbaa !62
  %i.bd = icmp eq i8 %i.bc, 125
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.be, align 8, !tbaa !224
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bf, align 8, !tbaa !221
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !222
  br label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #35
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.bh = icmp eq i8 %i.g, 125
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.bi, align 8, !tbaa !224
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bj, align 8, !tbaa !221
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #35
  unreachable

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e, %bb.d, %bb.i, %bb.p, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !61
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !76
  store i8 0, ptr %i.c, align 1, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv:bb.a

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !76
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !221
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.aj, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !222
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !223
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !224
  switch i32 %i.cl, label %bb.ap [
    i32 0, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ap

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9: ; preds = %bb.ai
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #35
  unreachable

bb.ap:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %i.cm = icmp eq i8 %i.ce, 110
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !225, !noalias !588 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !226, !noalias !588 ; 2 uses
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.cs, align 8, !tbaa !248
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !135
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !135
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !227, !noalias !588
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !228, !noalias !589 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 480
  %.sroa.0.0.copyload12 = load ptr, ptr %i.cx, align 8, !tbaa !248
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.cw, i64 488
  %.sroa.5.0.copyload14 = load i64, ptr %.sroa.5.0..sroa_idx13, align 8, !tbaa !135
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.cw, i64 496
  %.sroa.6.0.copyload16 = load i64, ptr %.sroa.6.0..sroa_idx15, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef 504) #34, !noalias !589
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !229, !noalias !589
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !227, !noalias !589
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !228, !noalias !589 ; 3 uses
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !226, !noalias !589
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 504
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !230, !noalias !589
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.aq, %bb.ar
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload16, %bb.ar ], [ %.sroa.6.0.copyload, %bb.aq ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload14, %bb.ar ], [ %.sroa.5.0.copyload, %bb.aq ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload12, %bb.ar ], [ %.sroa.0.0.copyload, %bb.aq ]
  %storemerge.i.i.i = phi ptr [ %i.dd, %bb.ar ], [ %i.cs, %bb.aq ]
  store ptr %storemerge.i.i.i, ptr %i.cn, align 8, !tbaa !231, !noalias !589
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !199
  %i.dg = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !217
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %.sroa.6.0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.dg, ptr %i.dk, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !199 ; 2 uses
  %i.dm = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 noundef %.sroa.5.0, i1 noundef zeroext %i.cm) ; 2 uses
  store ptr %i.dl, ptr %4, align 8, !tbaa !248
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !250
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !251
  %i.dp = load ptr, ptr %i.cn, align 8, !tbaa !231 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !252
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.not.i.i.i10 = icmp eq ptr %i.dp, %i.ds
  br i1 %.not.i.i.i10, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !253
  %i.dt = load ptr, ptr %i.cn, align 8, !tbaa !231
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.du, ptr %i.cn, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11

bb.at:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit7, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit11 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit7 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.n = load i32, ptr %0, align 8, !tbaa !198    ; 3 uses
  %i.o = and i32 %i.n, 16
  %.not7 = icmp eq i32 %i.o, 0
  %4 = trunc i32 %i.n to i1                       ; 2 uses
  %i.p = and i32 %i.n, 8
  %.not9 = icmp eq i32 %i.p, 0                    ; 4 uses
  br i1 %.not7, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.m:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.p:                                             ; preds = %bb.h
  br i1 %4, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.t:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.v:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br i1 %i.q, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.r = load i32, ptr %0, align 8, !tbaa !198    ; 2 uses
  %5 = trunc i32 %i.r to i1
  %i.s = and i32 %i.r, 8
  %.not5 = icmp eq i32 %i.s, 0                    ; 2 uses
  br i1 %5, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.z:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.aa:                                            ; preds = %bb.w
  br i1 %.not5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ad:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.t = load i32, ptr %i.b, align 8, !tbaa !221
  switch i32 %i.t, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit18 [
    i32 4, label %bb.ae
    i32 14, label %bb.ar
    i32 6, label %bb.be
    i32 5, label %bb.bw
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !223
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !224
  switch i32 %i.ac, label %bb.ak [
    i32 0, label %bb.ah
    i32 2, label %bb.ai
    i32 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !76  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %.not12.i = icmp samesign eq i64 %i.ai, 0
  br i1 %.not12.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %i.at, %bb.ao ]
  %.sroa.08.013.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.au, %bb.ao ] ; 2 uses
  %i.al = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014.i, i32 10) ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.an = extractvalue { i32, i1 } %i.al, 0
  %i.ao = load i8, ptr %.sroa.08.013.i, align 1, !tbaa !62
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !274, !nonnull !104, !align !264
  %i.aq = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.ao, i32 noundef 10)
  %i.ar = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.an, i32 %i.aq) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.28) #35
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.at = extractvalue { i32, i1 } %i.ar, 0       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.aj
  br i1 %.not.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, label %bb.al

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit: ; preds = %bb.ao
  %i.av = sext i32 %i.at to i64
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, %bb.ak
  %.0.lcssa.i = phi i64 [ 0, %bb.ak ], [ %i.av, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit ]
  %i.aw = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 noundef %.0.lcssa.i) ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !248
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !250
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !251
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !231 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !252
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.aq:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.co

bb.ar:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !222
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !223
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !224
  switch i32 %i.bo, label %bb.ax [
    i32 0, label %bb.au
    i32 2, label %bb.av
    i32 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %i.bp = load i32, ptr %0, align 8, !tbaa !198   ; 2 uses
  %6 = trunc i32 %i.bp to i1
  %i.bq = and i32 %i.bp, 8
  %.not2 = icmp eq i32 %i.bq, 0                   ; 2 uses
  br i1 %6, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ba:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bb:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bd:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.be:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !222
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !223
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !224
  switch i32 %i.bz, label %bb.bk [
    i32 0, label %bb.bh
    i32 2, label %bb.bi
    i32 1, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !199 ; 3 uses
  %i.cc = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cb) ; 2 uses
  store ptr %i.cb, ptr %2, align 8, !tbaa !248
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !250
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !221
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.bl, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !222
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !223
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !224
  switch i32 %i.cl, label %bb.br [
    i32 0, label %bb.bo
    i32 2, label %bb.bp
    i32 1, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17: ; preds = %bb.bk
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #35
  unreachable

bb.br:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !225, !noalias !598 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !226, !noalias !598 ; 2 uses
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.cn, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !135
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !135
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !252
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.bt:                                            ; preds = %bb.br
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !227, !noalias !598
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !228, !noalias !599 ; 2 uses
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.cv, i64 488
  %.sroa.4.0.copyload23 = load i64, ptr %.sroa.4.0..sroa_idx22, align 8, !tbaa !135
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.cv, i64 496
  %.sroa.5.0.copyload25 = load i64, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef 504) #34, !noalias !599
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !229, !noalias !599
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 2 uses
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !227, !noalias !599
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !228, !noalias !599 ; 3 uses
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !226, !noalias !599
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 504 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !230, !noalias !599
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.bs, %bb.bt
  %i.dc = phi ptr [ %i.cz, %bb.bt ], [ %.pre, %bb.bs ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload25, %bb.bt ], [ %.sroa.5.0.copyload, %bb.bs ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload23, %bb.bt ], [ %.sroa.4.0.copyload, %bb.bs ]
  %storemerge.i.i.i = phi ptr [ %i.db, %bb.bt ], [ %i.cr, %bb.bs ] ; 3 uses
  store ptr %storemerge.i.i.i, ptr %i.cm, align 8, !tbaa !231, !noalias !599
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !217
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.de, i64 %i.cc
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.sroa.4.0, ptr %i.dg, align 8, !tbaa !220
  store i64 %.sroa.5.0, ptr %i.ce, align 8, !tbaa !251
  %i.dh = getelementptr inbounds i8, ptr %i.dc, i64 -24
  %.not.i.i = icmp eq ptr %storemerge.i.i.i, %i.dh
  br i1 %.not.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !253
  %i.di = load ptr, ptr %i.cm, align 8, !tbaa !231
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr %i.dj, ptr %i.cm, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.bv:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.co

bb.bw:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !222
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !223
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !224
  switch i32 %i.dt, label %bb.cc [
    i32 0, label %bb.bz
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !177
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 16, !tbaa !331
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !331
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !332
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !315
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !315
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !316
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.z, i64 64, i1 false)
  store ptr %i.af, ptr %3, align 8, !tbaa !346
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ah, align 8, !tbaa !247
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !124
  %i.bf = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.ad, ptr %2, align 8, !tbaa !248
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !250
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !251
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !231 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !252
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bj, %i.bm
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !253
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !231
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.h, %bb.i
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.i, %bb.f
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bv, null
  br i1 %.not.i8, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #37
  unreachable

.body:                                            ; preds = %bb.e, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.bu, %bb.n ], [ %i.bu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bt, %bb.l ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221  ; 2 uses
  %i.d = icmp eq i32 %i.c, 10                     ; 5 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !224
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !198    ; 2 uses
  %1 = trunc i32 %i.x to i1
  %i.y = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.y, 0                    ; 2 uses
  br i1 %1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.92", align 8  ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 11, ptr %3, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !243
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !247
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !125
  store ptr %i.f, ptr %i.k, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !243
  %i.q = load i32, ptr %4, align 8, !tbaa !232
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247
  store ptr %i.v, ptr %i.t, align 8, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !125
  store ptr %i.x, ptr %i.z, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !217
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48                ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 100000
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aj = load i32, ptr %4, align 8, !tbaa !232
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.ar = load i32, ptr %3, align 8, !tbaa !232
  %i.as = icmp eq i32 %i.ar, 11
  br i1 %i.as, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !124 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.at, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %i.ax = add nsw i64 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i64 %i.ax

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b:bb.a
.noexc29:                                         ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ae = phi ptr [ %.pre.i.i, %.noexc29 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %.0.i, ptr %i.af, align 1, !tbaa !62
  store i64 %i.x, ptr %i.h, align 8, !tbaa !61
  %i.ag = load ptr, ptr %4, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.02242, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ai, %2
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !682

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !76    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader
  %bcmp.i = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.31, i64 %i.j)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14
  %.019.ptr44.lcssa = phi ptr [ @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 32), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 48), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 64), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 80), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 96), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 112), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 128), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 144), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 160), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 176), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 192), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 208), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 224), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ] ; 2 uses
  br i1 %3, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %.019.ptr44.lcssa, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !309
  %i.ap = and i16 %i.ao, 768
  %.not39 = icmp eq i16 %i.ap, 0
  br i1 %.not39, label %.critedge, label %.critedge28

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.ptr44.lcssa, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  br label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i.1 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.32, i64 %i.j)
  %i.as = icmp eq i32 %bcmp.i.1, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1
  %bcmp.i.2 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.33, i64 %i.j)
  %i.at = icmp eq i32 %bcmp.i.2, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3: ; preds = %.preheader
  %bcmp.i.3 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.34, i64 %i.j)
  %i.au = icmp eq i32 %bcmp.i.3, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3
  %bcmp.i.4 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.35, i64 %i.j)
  %i.av = icmp eq i32 %bcmp.i.4, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4
  %bcmp.i.5 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.36, i64 %i.j)
  %i.aw = icmp eq i32 %bcmp.i.5, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5
  %bcmp.i.6 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.37, i64 %i.j)
  %i.ax = icmp eq i32 %bcmp.i.6, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6
  %bcmp.i.7 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.38, i64 %i.j)
  %i.ay = icmp eq i32 %bcmp.i.7, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7
  %bcmp.i.8 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.39, i64 %i.j)
  %i.az = icmp eq i32 %bcmp.i.8, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8
  %bcmp.i.9 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.40, i64 %i.j)
  %i.ba = icmp eq i32 %bcmp.i.9, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9
  %bcmp.i.10 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.41, i64 %i.j)
  %i.bb = icmp eq i32 %bcmp.i.10, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10
  %bcmp.i.11 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.42, i64 %i.j)
  %i.bc = icmp eq i32 %bcmp.i.11, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11
  %bcmp.i.12 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.43, i64 %i.j)
  %i.bd = icmp eq i32 %bcmp.i.12, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12
  %bcmp.i.13 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.44, i64 %i.j)
  %i.be = icmp eq i32 %bcmp.i.13, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14: ; preds = %.preheader
  %bcmp.i.14 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.45, i64 %i.j)
  %i.bf = icmp eq i32 %bcmp.i.14, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

.critedge28:                                      ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14, %bb.i, %.critedge
  %.sroa.6.4 = phi i32 [ 1024, %bb.i ], [ %i.ar, %.critedge ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ], [ 0, %.preheader ] ; 2 uses
  %i.bg = icmp eq ptr %.pre51, %i.g
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge28
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !62
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %.pre51, i64 noundef %i.bi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge28, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.6.477 = phi i32 [ %.sroa.6.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.6.4, %.critedge28 ], [ 0, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.sroa.6.477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.h
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !62
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.bk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.aq, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !683

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62    ; 2 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !62
  store i8 %i.j, ptr %i.h, align 1, !tbaa !62
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.r, align 1, !tbaa !62
  %i.v = load i8, ptr %i.t, align 1, !tbaa !62
  %i.w = icmp slt i8 %i.u, %i.v
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.s, i64 %i.q ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.035.i.i.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !62
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !18

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %4 = trunc i64 %i.l to i1
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nsw i64 %i.l, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ac
  br i1 %i.ad, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !62
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.af, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62  ; 2 uses
  %i.al = icmp slt i8 %i.ak, %i.i
  br i1 %i.al, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %0, i64 %.019.i.i.i.i.i
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !62
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.an = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.an, align 1, !tbaa !62
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !684

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.aq, %bb.b ], [ %2, %.lr.ph ]
  %i.ap = phi i64 [ %i.bo, %bb.b ], [ %i.c, %.lr.ph ]
  %i.aq = add nsw i64 %.01841, -1                 ; 3 uses
  %i.ar = lshr i64 %i.ap, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %storemerge1742, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.e, align 1, !tbaa !62   ; 5 uses
  %i.av = load i8, ptr %i.as, align 1, !tbaa !62  ; 5 uses
  %i.aw = icmp slt i8 %i.au, %i.av
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !62  ; 6 uses
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.ay = icmp slt i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr %0, align 1, !tbaa !62
  store i8 %i.av, ptr %0, align 1, !tbaa !62
  store i8 %i.az, ptr %i.as, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = icmp slt i8 %i.au, %i.ax
  %i.bb = load i8, ptr %0, align 1, !tbaa !62     ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ax, ptr %0, align 1, !tbaa !62
  store i8 %i.bb, ptr %i.at, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.au, ptr %0, align 1, !tbaa !62
  store i8 %i.bb, ptr %i.e, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i8 %i.au, %i.ax
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load i8, ptr %0, align 1, !tbaa !62
  store i8 %i.au, ptr %0, align 1, !tbaa !62
  store i8 %i.bd, ptr %i.e, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.be = icmp slt i8 %i.av, %i.ax
  %i.bf = load i8, ptr %0, align 1, !tbaa !62     ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.ax, ptr %0, align 1, !tbaa !62
  store i8 %i.bf, ptr %i.at, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.av, ptr %0, align 1, !tbaa !62
  store i8 %i.bf, ptr %i.as, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bj, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bg = load i8, ptr %0, align 1, !tbaa !62     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bj, %bb.p ] ; 8 uses
  %i.bh = load i8, ptr %.sroa.010.1.i.i, align 1, !tbaa !62 ; 2 uses
  %i.bi = icmp slt i8 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 1 ; 2 uses
  br i1 %i.bi, label %bb.p, label %.preheader.i.i, !llvm.loop !685

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -1 ; 5 uses
  %i.bk = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !62 ; 2 uses
  %i.bl = icmp slt i8 %i.bg, %i.bk
  br i1 %i.bl, label %.preheader.i.i, label %bb.q, !llvm.loop !686

bb.q:                                             ; preds = %.preheader.i.i
  %i.bm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bm, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bk, ptr %.sroa.010.1.i.i, align 1, !tbaa !62
  store i8 %i.bh, ptr %.sroa.0.1.i.i, align 1, !tbaa !62
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !687

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.aq)
  %i.bn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a                     ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 16
  br i1 %i.bp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !683

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !62 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !62      ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !134

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !62 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !62
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !62 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !688

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !62
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !689

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.p = sub i64 %i.a, %i.b
  %i.q = add i64 %i.a, -17
  %2 = trunc i64 %i.p to i1
  br i1 %2, label %.lr.ph.i6.prol, label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.r = load i8, ptr %i.o, align 1, !tbaa !62    ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.s = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !62 ; 2 uses
  %i.t = icmp slt i8 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i8.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i8.prol
  %i.u = phi i8 [ %i.v, %.lr.ph.i.i8.prol ], [ %i.s, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i9.prol = phi ptr [ %.sroa.0.0.i.i11.prol, %.lr.ph.i.i8.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i10.prol = phi ptr [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ], [ %i.o, %.lr.ph.i6.prol ]
  store i8 %i.u, ptr %.sroa.04.08.i.i10.prol, align 1, !tbaa !62
  %.sroa.0.0.i.i11.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.prol, i64 -1 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.0.i.i11.prol, align 1, !tbaa !62 ; 2 uses
  %i.w = icmp slt i8 %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !688

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i8.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.o, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ]
  store i8 %i.r, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.o, %.lr.ph.i6.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.y = icmp eq i64 %i.q, %i.b
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.05.i = phi ptr [ %i.am, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.z = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !62 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !62 ; 2 uses
  %i.ab = icmp slt i8 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.ac = phi i8 [ %i.ad, %.lr.ph.i.i8 ], [ %i.aa, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ac, ptr %.sroa.04.08.i.i10, align 1, !tbaa !62
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0.i.i11, align 1, !tbaa !62 ; 2 uses
  %i.ae = icmp slt i8 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !688

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i8 %i.z, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62  ; 3 uses
  %i.ah = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !62 ; 2 uses
  %i.ai = icmp slt i8 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i8.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.lr.ph.i.i8.1
  %i.aj = phi i8 [ %i.ak, %.lr.ph.i.i8.1 ], [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.09.i.i9.1 = phi ptr [ %.sroa.0.0.i.i11.1, %.lr.ph.i.i8.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ] ; 3 uses
  %.sroa.04.08.i.i10.1 = phi ptr [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ], [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  store i8 %i.aj, ptr %.sroa.04.08.i.i10.1, align 1, !tbaa !62
  %.sroa.0.0.i.i11.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.1, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.0.i.i11.1, align 1, !tbaa !62 ; 2 uses
  %i.al = icmp slt i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !688

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i8.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ]
  store i8 %i.ag, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i7.1 = icmp eq ptr %i.am, %1
  br i1 %.not.i7.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !690

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.g
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  br i1 %.not16.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %.preheader.i12 ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %.preheader.i12 ] ; 3 uses
  %i.ao = load i8, ptr %.sroa.0.018.i16, align 1, !tbaa !62 ; 4 uses
  %i.ap = load i8, ptr %0, align 1, !tbaa !62     ; 2 uses
  %i.aq = icmp slt i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.ar = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %bb.j, !prof !134

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 1
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn17.i17, align 1, !tbaa !62 ; 2 uses
  %i.ax = icmp slt i8 %i.ao, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.ay = phi i8 [ %i.az, %.lr.ph.i.i22 ], [ %i.aw, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i8 %i.ay, ptr %.sroa.04.08.i.i24, align 1, !tbaa !62
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.sroa.0.0.i.i25, align 1, !tbaa !62 ; 2 uses
  %i.ba = icmp slt i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !688

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ao, ptr %.sink.i19, align 1, !tbaa !62
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !689

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i12, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %3 = trunc i64 %.fr to i1
  %i.i = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %3, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.j = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ai, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62    ; 2 uses
  %i.o = icmp slt i64 %.08.us, %i.h
  br i1 %i.o, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.p = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.r, align 1, !tbaa !62
  %i.v = load i8, ptr %i.t, align 1, !tbaa !62
  %i.w = icmp slt i8 %i.u, %i.v
  %spec.select.i.us = select i1 %i.w, i64 %i.s, i64 %i.q ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.y, ptr %i.z, align 1, !tbaa !62
  %i.aa = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !18

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ab = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62  ; 2 uses
  %i.ae = icmp slt i8 %i.ad, %i.n
  br i1 %i.ae, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !62
  %i.ag = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !19

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.n, ptr %i.ah, align 1, !tbaa !62
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ai = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !691

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bh, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62  ; 2 uses
  %i.al = icmp slt i64 %.08, %i.h
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.am = shl i64 %.035.i, 1                      ; 2 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = or disjoint i64 %i.am, 1                ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !62
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.at = icmp slt i8 %i.ar, %i.as
  %spec.select.i = select i1 %i.at, i64 %i.ap, i64 %i.an ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !62
  %i.ax = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.i
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i8, ptr %i.k, align 1, !tbaa !62
  store i8 %i.az, ptr %i.l, align 1, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.j, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.1.i, %.08
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62  ; 2 uses
  %i.bd = icmp slt i8 %i.bc, %i.ak
  br i1 %i.bd, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !62
  %i.bf = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !19

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.ak, ptr %i.bg, align 1, !tbaa !62
  %.not = icmp eq i64 %.08, 0
  %i.bh = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !691

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !356    ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !311  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !357   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !62
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !20

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !62
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !313  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !313  ; 2 uses
  %.not5256 = icmp eq ptr %i.t, %i.v
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.w, %i.v
  br i1 %.not52, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.046.057 = phi ptr [ %i.w, %bb.b ], [ %i.t, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.x = load i8, ptr %.sroa.046.057, align 1, !tbaa !258
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !259
  %i.aa = icmp sle i8 %i.x, %i.f
  %i.ab = icmp sle i8 %i.f, %i.z
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !351, !nonnull !104, !align !264
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.09.0.copyload = load i32, ptr %i.af, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.not.i.i, label %bb.c, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i

bb.c:                                             ; preds = %.critedge
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i: ; preds = %.critedge
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.09.0.copyload to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !269
  %i.ao = zext i8 %i.f to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !271
  %i.ar = and i16 %i.aq, %.sroa.0.0.extract.trunc.i
  %.not4.i.a = icmp eq i16 %i.ar, 0
  br i1 %.not4.i.a, label %bb.d, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

bb.d:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
  %i.as = and i32 %.sroa.09.0.copyload, 65536
  %.not.i27 = icmp eq i32 %i.as, 0
  br i1 %.not.i27, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !358
  %.not.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 95), !inline_history !21
  br label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit

_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i8 [ %i.aw, %bb.f ], [ %i.ba, %bb.g ]
  %i.bb = icmp eq i8 %i.f, %.0.i.i
  br i1 %i.bb, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50

_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50: ; preds = %bb.d, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !351, !nonnull !104, !align !264
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @_ZNKSt7__cxx1112regex_traitsIcE17transform_primaryIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bh)
  %i.bi = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.bd, ptr %i.bf, ptr nonnull align 8 dereferenceable(32) %1)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit unwind label %bb.h

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit: ; preds = %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !88
  %.not53 = icmp eq ptr %i.bi, %i.bj
  %i.bk = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SE_SE_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.not53, label %bb.i, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

bb.h:                                             ; preds = %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread50
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.h
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !62
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.bp

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !315 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !315 ; 2 uses
  %.not5458 = icmp eq ptr %i.bw, %i.by
  br i1 %.not5458, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.i, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit39.thread
  %.sroa.040.059 = phi ptr [ %i.cx, %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit39.thread ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !351, !nonnull !104, !align !264
  %i.ca = load i8, ptr %i.e, align 8, !tbaa !357  ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.040.059, align 2 ; 2 uses
  %i.cb = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !201
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !205
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i31 = icmp eq ptr %i.cg, null
  br i1 %.not.not.i.i31, label %bb.j, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i32

bb.j:                                             ; preds = %.lr.ph60
  call void @_ZSt16__throw_bad_castv() #35
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE:bb.a

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !108
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !413
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE5clearEv.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE5clearEv.exit: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.cq = trunc nuw i8 %.3 to i1
  ret i1 %i.cq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !439, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %common.ret, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 8 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %i.n = phi ptr [ %i.c, %.lr.ph.lr.ph ], [ %.be, %.lr.ph.backedge ]
  %.tr3751 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.tr3751.be, %.lr.ph.backedge ] ; 5 uses
  store i8 1, ptr %i.n, align 1, !tbaa !439
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !430, !nonnull !104, !align !264 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.tr3751 ; 16 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !232
  switch i32 %i.s, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.w
    i32 12, label %bb.x
    i32 1, label %bb.ad
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !62, !range !103, !noundef !104
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !415
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.tr3751 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !420  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.x, align 8
  %.pre = load i64, ptr %i.g, align 8, !tbaa !311
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.ac
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.af = phi i64 [ %.pre, %._crit_edge ], [ %i.ae, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.ad, %bb.d ]
  store i64 %i.af, ptr %i.x, align 8, !tbaa !311
  store i32 1, ptr %i.y, align 8, !tbaa !420
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !853
  store i64 %.sroa.029.0.copyload, ptr %i.x, align 8, !tbaa !311
  br label %tailrecurse.backedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp slt i32 %i.z, 2
  br i1 %i.ai, label %bb.g, label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.z, 1
  store i32 %i.aj, ptr %i.y, align 8, !tbaa !420
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.al), !inline_history !853
  %i.am = load i32, ptr %i.y, align 8, !tbaa !420
  %i.an = add nsw i32 %i.am, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.an, %bb.g ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !420
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.o, %bb.f
  %.tr37.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr37.be = load i64, ptr %.tr37.be.in, align 8, !tbaa !220 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.tr37.be ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !439, !range !103, !noundef !104
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.ap, %tailrecurse.backedge ], [ %i.ee, %tailrecurse ]
  %.tr3751.be = phi i64 [ %.tr37.be, %tailrecurse.backedge ], [ %i.ec, %tailrecurse ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.as = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.av), !inline_history !854
  %i.aw = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751), !inline_history !854
  br label %common.ret

common.ret:                                       ; preds = %bb.v, %bb.w, %bb.h, %bb.i, %bb.j, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.a, %bb.s, %bb.p, %bb.n, %bb.q, %tailrecurse.backedge, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ae, %bb.af, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.ba = load ptr, ptr %0, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.az ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !311
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !311
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !311
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !855
  store ptr %.sroa.0.0.copyload.i, ptr %i.bb, align 8, !tbaa !311
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bh = load ptr, ptr %0, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !311
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !429
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !220
  %i.bm = load <2 x i64>, ptr %i.bi, align 8
  store i64 %i.bj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !311
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bl), !inline_history !856
  store <2 x i64> %i.bm, ptr %i.bi, align 8, !tbaa !311
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !429
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !311
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !408 ; 2 uses
  %3 = trunc i32 %i.bq to i1
  br i1 %3, label %common.ret, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = and i32 %i.bq, 128
  %.not3.i = icmp eq i32 %i.br, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !387
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !272
  %i.bx = and i32 %i.bw, 2064
  %i.by = icmp eq i32 %i.bx, 2064
  br i1 %i.by, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !387
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !272
  %i.ce = and i32 %i.cd, 2064
  %i.cf = icmp eq i32 %i.ce, 2064
  br i1 %i.cf, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.cg = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ch)
  br i1 %i.ci, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !311
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cm = load i32, ptr %i.j, align 8, !tbaa !408
  %i.cn = and i32 %i.cm, 2
  %.not.i28 = icmp eq i32 %i.cn, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !387
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !272
  %i.ct = and i32 %i.cs, 2064
  %i.cu = icmp eq i32 %i.ct, 2064
  br i1 %i.cu, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cv = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cw = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cv)
  br i1 %i.cw, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cx = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !857
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !62, !range !103, !noundef !104
  %i.da = zext i1 %i.cx to i8
  %.not.i = icmp eq i8 %i.cz, %i.da
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !62
  %i.dd = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.dc), !inline_history !858
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.df = load i8, ptr %i.de, align 8, !tbaa !62, !range !103, !noundef !104
  %i.dg = zext i1 %i.dd to i8
  %.not.i24 = icmp eq i8 %i.df, %i.dg
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !311 ; 2 uses
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !311
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = load i32, ptr %i.j, align 8, !tbaa !408
  %i.dl = and i32 %i.dk, 32
  %.not.i25 = icmp eq i32 %i.dl, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dm = icmp eq i8 %1, 1
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !311
  %i.do = icmp eq ptr %i.dh, %i.dn
  br i1 %i.do, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dp = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.m, align 4, !tbaa !438
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !435, !nonnull !104, !align !264
  %i.dt = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ad:                                            ; preds = %.lr.ph
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !272
  %i.dw = and i32 %i.dv, 16
  %.not.i88 = icmp eq i32 %i.dw, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dy), !inline_history !859
  %i.dz = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104 ; 2 uses
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !220 ; 2 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.ec ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !439, !range !103, !noundef !104
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %common.ret, label %.lr.ph.backedge

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 4, !tbaa !438
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ei), !inline_history !859
  %i.ej = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.ek = or i8 %i.ej, %i.dz
  store i8 %i.ek, ptr %i.m, align 4, !tbaa !438
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !412    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !135
  store i64 %i.r, ptr %i.q, align 8, !tbaa !437
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !433  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !107    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !130
end_hunk_4
begin_hunk_5_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !873
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !311
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !62  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !269
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !271
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !358
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !873
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.197", align 8   ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !130

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !426
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !426
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre22, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !108
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !311
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !311
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i32, ptr %i.v, align 8, !tbaa !408
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef %i.w)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.x, align 8, !tbaa !434
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !311
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !311
  %i.ab = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !874 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ab, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !433 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !107   ; 5 uses
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = sdiv exact i64 %i.ag, 24                ; 3 uses
  %i.ai = icmp eq i64 %i.ag, 24
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ah, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #33
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bi, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.021 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !429, !range !103, !noundef !104
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %0, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %.021 ; 3 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !311
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !311
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.as, align 8, !tbaa !311
  store i64 %i.au, ptr %i.at, align 8, !tbaa !311
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !429
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.aw = or disjoint i64 %.021, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !429, !range !103, !noundef !104
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bb = load ptr, ptr %0, align 8, !tbaa !107
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.aw ; 3 uses
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !311
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !311
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !311
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 1, ptr %i.bh, align 8, !tbaa !429
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bi = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !875

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %4 = trunc i64 %i.ah to i1
  br i1 %4, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bi, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.021.epil.init ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !429, !range !103, !noundef !104
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bn = load ptr, ptr %0, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.021.epil.init ; 3 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !311
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !311
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !311
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !311
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 1, ptr %i.bt, align 8, !tbaa !429
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !411 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !412 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !413 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.by, %bb.l ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !108
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ci, %i.ca
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !412
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.by, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !414
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !416
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cw = load ptr, ptr %3, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.dc = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %i.ab

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.dh = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !442, !range !103, !noundef !104
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !878, !nonnull !104, !align !264
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #33
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.l = load ptr, ptr %5, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !443, !nonnull !104, !align !264 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !232
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !62, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !415
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !420  ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !311
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ]
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !311
  store i32 1, ptr %i.t, align 8, !tbaa !420
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ac), !inline_history !882
  store i64 %.sroa.029.0.copyload, ptr %i.s, align 8, !tbaa !311
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp slt i32 %i.u, 2
  br i1 %i.ad, label %bb.g, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.u, 1
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !420
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ag), !inline_history !882
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !420
  %i.ai = add nsw i32 %i.ah, -1
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.u, %bb.e ], [ %i.ai, %bb.g ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !420
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split, %bb.f
  %i.aj = load i8, ptr %i.i, align 4, !tbaa !424, !range !103, !noundef !104
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.an, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %bb.r, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x
  %.tr37.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr37.be284 = load i64, ptr %.tr37.be284.in, align 8, !tbaa !220
  br label %tailrecurse

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !883
  %i.an = load i8, ptr %i.i, align 4, !tbaa !424, !range !103, !noundef !104
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !443, !nonnull !104, !align !264
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !217
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %.tr37 ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !415
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.tr37 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !420 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.au, align 8
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !311
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i107 = icmp eq ptr %i.ay, %i.az
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  br i1 %.not.i107, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bb, %bb.j ]
  %.sroa.0.0.copyload.i108 = phi i64 [ %.sroa.0.0.copyload.pre.i, %._crit_edge.i ], [ %i.ba, %bb.j ]
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !311
  store i32 1, ptr %i.av, align 8, !tbaa !420
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !882
  store i64 %.sroa.0.0.copyload.i108, ptr %i.au, align 8, !tbaa !311
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp slt i32 %i.aw, 2
  br i1 %i.bf, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.aw, 1
  store i32 %i.bg, ptr %i.av, align 8, !tbaa !420
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.bi), !inline_history !882
  %i.bj = load i32, ptr %i.av, align 8, !tbaa !420
  %i.bk = add nsw i32 %i.bj, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %.sink.i109 = phi i32 [ %i.bk, %bb.m ], [ %i.aw, %bb.k ]
  store i32 %.sink.i109, ptr %i.av, align 8, !tbaa !420
  br label %common.ret

common.ret:                                       ; preds = %bb.ab, %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i, %bb.y, %.sink.split.i, %bb.l, %bb.ac, %bb.h, %.thread.i, %bb.ah, %bb.aj, %bb.al, %.critedge.i, %tailrecurse, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x, %bb.t, %bb.q, %bb.s, %bb.v, %bb.an, %bb.ao, %bb.o, %bb.n
  ret void

bb.n:                                             ; preds = %tailrecurse
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.bn = load ptr, ptr %0, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bo, align 8, !tbaa !311
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !311
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !311
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.br), !inline_history !884
  store ptr %.sroa.0.0.copyload.i, ptr %i.bo, align 8, !tbaa !311
  br label %common.ret

bb.o:                                             ; preds = %tailrecurse
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !62
  %i.bu = load ptr, ptr %0, align 8, !tbaa !107
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bt ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !311
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !429
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !220
  %i.bz = load <2 x i64>, ptr %i.bv, align 8
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !311
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.by), !inline_history !885
  store <2 x i64> %i.bz, ptr %i.bv, align 8, !tbaa !311
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !429
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  %i.ca = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !311
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.f, align 8, !tbaa !432 ; 2 uses
  %3 = trunc i32 %i.cd to i1
  br i1 %3, label %common.ret, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = and i32 %i.cd, 128
  %.not3.i = icmp eq i32 %i.ce, 0
  br i1 %.not3.i, label %tailrecurse.backedge283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !387
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !272
  %i.ck = and i32 %i.cj, 2064
  %i.cl = icmp eq i32 %i.ck, 2064
  br i1 %i.cl, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

bb.t:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !387
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !272
  %i.cr = and i32 %i.cq, 2064
  %i.cs = icmp eq i32 %i.cr, 2064
  br i1 %i.cs, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit: ; preds = %bb.s, %bb.t
  %i.ct = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !62
  %i.cv = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.cu)
  br i1 %i.cv, label %tailrecurse.backedge283, label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.cw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !311
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !432
  %i.da = and i32 %i.cz, 2
  %.not.i28 = icmp eq i32 %i.da, 0
  br i1 %.not.i28, label %tailrecurse.backedge283, label %common.ret

bb.v:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !387
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !272
  %i.dg = and i32 %i.df, 2064
  %i.dh = icmp eq i32 %i.dg, 2064
  br i1 %i.dh, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit: ; preds = %bb.v
  %i.di = load i8, ptr %i.cw, align 1, !tbaa !62
  %i.dj = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef signext %i.di)
  br i1 %i.dj, label %tailrecurse.backedge283, label %common.ret

bb.w:                                             ; preds = %tailrecurse
  %i.dk = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0), !inline_history !886
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !62, !range !103, !noundef !104
  %i.dn = zext i1 %i.dk to i8
  %.not.i = icmp eq i8 %i.dm, %i.dn
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge283

bb.x:                                             ; preds = %tailrecurse
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !62
  %i.dq = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %i.dp), !inline_history !887
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !62, !range !103, !noundef !104
  %i.dt = zext i1 %i.dq to i8
  %.not.i24 = icmp eq i8 %i.ds, %i.dt
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge283

bb.y:                                             ; preds = %tailrecurse
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !311 ; 2 uses
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !311
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %common.ret, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.dx, ptr %i.a, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !124
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt25__throw_bad_function_callv() #35, !inline_history !888
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i:   ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !247
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ed, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit.i
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.ef, ptr %i.c, align 8, !tbaa !410
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !220
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.eh), !inline_history !888
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -1
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !410
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %.tr37)
  br label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  %i.ek = icmp eq i8 %1, 0
  %i.el = load ptr, ptr %i.c, align 8             ; 3 uses
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !311
  %i.en = icmp eq ptr %i.el, %i.em
  %i.eo = zext i1 %i.en to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink.i = phi i8 [ %i.eo, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %i.el to i64               ; 2 uses
  store i8 %.sink.i, ptr %i.i, align 4, !tbaa !424
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !311 ; 2 uses
  %i.er = icmp eq ptr %i.el, %i.eq
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.es = load i32, ptr %i.f, align 8, !tbaa !432
  %i.et = and i32 %i.es, 32
  %.not.i25 = icmp eq i32 %i.et, 0
  br i1 %.not.i25, label %bb.ah, label %.thread.i

.thread.i:                                        ; preds = %bb.ag
  store i8 0, ptr %i.i, align 4, !tbaa !424
  br label %common.ret

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eu = trunc nuw i8 %.sink.i to i1
  br i1 %i.eu, label %bb.ai, label %common.ret

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !272
  %i.ex = and i32 %i.ew, 16
  %.not4.i = icmp eq i32 %i.ex, 0
  br i1 %.not4.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !431, !nonnull !104, !align !264
  %i.fa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.ak:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !311 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sub i64 %i.ep, %i.ff
  %i.fi = icmp slt i64 %i.fg, %i.fh
  br i1 %i.fi, label %.critedge.i, label %common.ret

.critedge.i:                                      ; preds = %bb.al, %bb.ak
  store i64 %i.ep, ptr %i.fb, align 8, !tbaa !311
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !431, !nonnull !104, !align !264
  %i.fl = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(117) %0) ; 0 uses
  br label %common.ret

bb.am:                                            ; preds = %tailrecurse
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !272
  %i.fo = and i32 %i.fn, 16
  %.not.i111 = icmp eq i32 %i.fo, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.fq), !inline_history !890
  %i.fr = load i8, ptr %i.i, align 4, !tbaa !424, !range !103, !noundef !104 ; 2 uses
  br i1 %.not.i111, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = trunc nuw i8 %i.fr to i1
end_hunk_6
begin_hunk_7_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !426
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !426
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !108
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !311 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !432  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.w, align 8, !tbaa !311
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !131
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !387 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !248
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ad, align 8, !tbaa !418
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !244 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !217 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 48                ; 7 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  %i.ao = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.an, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ap = shl nuw nsw i64 %i.am, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #36
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.aq, ptr %i.ae, align 8, !tbaa !415
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !416
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aq, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !410
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !420
  %i.au = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !893

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.aq, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.noexc9.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.am, 8
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !410
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !420
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !410
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !420
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !410
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bb, align 8, !tbaa !420
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bc, align 8, !tbaa !410
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bd, align 8, !tbaa !420
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.be, align 8, !tbaa !410
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bf, align 8, !tbaa !420
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bg, align 8, !tbaa !410
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bh, align 8, !tbaa !420
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bi, align 8, !tbaa !410
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !420
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bk, align 8, !tbaa !410
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bl, align 8, !tbaa !420
  %i.bm = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !29

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !421
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bs = and i32 %i.v, 128
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %i.v, -6
  %spec.select = select i1 %.not.i, i32 %i.v, i32 %i.bt
  store i32 %spec.select, ptr %i.br, align 8, !tbaa !409
  store i64 %1, ptr %i.bp, align 8, !tbaa !425
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ao, ptr %i.bu, align 8, !tbaa !311
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !424
  store i64 0, ptr %i.bq, align 8, !tbaa !311
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !894 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !425
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.by)
          to label %bb.f unwind label %bb.g, !inline_history !894

bb.f:                                             ; preds = %.noexc
  %i.bz = load i8, ptr %i.bv, align 4, !tbaa !424, !range !103, !noundef !104
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !433 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !107   ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #33
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !429, !range !103, !noundef !104
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !107
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.024 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !311
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !311
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !311
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !311
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !429
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cu = or disjoint i64 %.024, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !429, !range !103, !noundef !104
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !107
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !311
  store i64 %i.db, ptr %i.da, align 8, !tbaa !311
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !311
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !311
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !429
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dg = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !895

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %4 = trunc i64 %i.cg to i1
  br i1 %4, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !429, !range !103, !noundef !104
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !107
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.024.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !311
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !311
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !311
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !311
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !429
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !416
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !108
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ee = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ej = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !62
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !62
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !62
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !62
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !62
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_7

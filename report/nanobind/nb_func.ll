Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_func?download=true
inline.NumInlined: 459
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE:bb.a
  %i.ku = getelementptr inbounds nuw [40 x i8], ptr %i.kt, i64 %indvars.iv
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  %.not345 = icmp eq ptr %i.kw, null
  br i1 %.not345, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond453.not, label %.critedge354, label %bb.dg, !llvm.loop !30

.critedge354:                                     ; preds = %bb.di, %bb.de, %.lr.ph443.split.us.split, %.preheader
  %i.kx = or i32 %i.kb, 268435456
  store i32 %i.kx, ptr %i.ka, align 4
  br label %.loopexit

bb.dj:                                            ; preds = %bb.db
  br i1 %.0288417, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jz, i64 976
  store ptr %i.cm, ptr %i.ky, align 8
  %i.kz = load i32, ptr %i.ka, align 4
  %i.la = or i32 %i.kz, 134217728
  store i32 %i.la, ptr %i.ka, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dh, %bb.dd, %.lr.ph443.split.us.split, %.lr.ph443.split.us, %bb.df, %bb.dk, %bb.dj, %.critedge354, %.loopexit432, %bb.da
  %i.lb = icmp ne ptr %.0287418, null             ; 2 uses
  %or.cond17 = select i1 %i.i, i1 %i.lb, i1 false
  br i1 %or.cond17, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.loopexit
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = invoke i32 @PyObject_SetAttr(ptr noundef %i.ld, ptr noundef nonnull %.0287418, ptr noundef nonnull %i.cm)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %.not347 = icmp eq i32 %i.le, 0
  br i1 %.not347, label %.thread423, label %bb.dn, !prof !5

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.do:                                            ; preds = %.loopexit
  br i1 %i.lb, label %.thread423, label %_ZL10Py_XDECREFP7_object.exit

.thread423:                                       ; preds = %bb.dm, %bb.do
  %i.lf = load i64, ptr %.0287418, align 8        ; 2 uses
  %i.lg = and i64 %i.lf, 2147483648
  %.not2.i = icmp eq i64 %i.lg, 0
  br i1 %.not2.i, label %bb.dp, label %_ZL10Py_XDECREFP7_object.exit

bb.dp:                                            ; preds = %.thread423
  %i.lh = add nsw i64 %i.lf, -1                   ; 2 uses
  store i64 %i.lh, ptr %.0287418, align 8
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %bb.dq, label %_ZL10Py_XDECREFP7_object.exit

bb.dq:                                            ; preds = %bb.dp
  invoke void @_Py_Dealloc(ptr noundef nonnull %.0287418)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.dp, %.thread423, %bb.do, %bb.dq
  %i.lj = extractelement <4 x i1> %i.u, i64 0
  br i1 %i.lj, label %bb.dr, label %_ZL9Py_DECREFP7_object.exit

bb.dr:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.lk = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.ll = and i64 %i.lk, 2147483648
  %.not430 = icmp eq i64 %i.ll, 0
  br i1 %.not430, label %bb.ds, label %_ZL9Py_DECREFP7_object.exit

bb.ds:                                            ; preds = %bb.dr
  %i.lm = add nsw i64 %i.lk, -1                   ; 2 uses
  store i64 %i.lm, ptr %i.cm, align 8
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.dt, label %_ZL9Py_DECREFP7_object.exit

bb.dt:                                            ; preds = %bb.ds
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cm)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.ds, %bb.dr, %bb.dt, %_ZL10Py_XDECREFP7_object.exit
  %.0280 = phi ptr [ %i.cm, %_ZL10Py_XDECREFP7_object.exit ], [ null, %bb.dt ], [ null, %bb.dr ], [ null, %bb.ds ]
  ret ptr %.0280

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.cr, %.invoke, %bb.dq, %bb.bh, %bb.ax, %bb.ar, %bb.av, %bb.dt, %bb.dl, %bb.ai, %.thread405, %bb.h, %bb.b
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %lpad.loopexit.split-lp505, 0
  call void @__clang_call_terminate(ptr %i.lo) #26
  unreachable
}

declare hidden noundef ptr @_ZN8nanobind6detail12extract_nameEPKcS2_S2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @_ZN8nanobind6detail17internals_inc_refEPNS0_12nb_internalsE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [0 x i8], align 16
  %4 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 22 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %2, 4611686018427387903          ; 9 uses
  %.not = icmp eq ptr %3, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val272 = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val272, %bb.b ], [ 0, %bb.a ] ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, 64
  %i.j = icmp ne i32 %i.i, 0
  %i.k = and i32 %i.h, 128                        ; 2 uses
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %i.m = icmp ne i64 %i.c, 0
  %or.cond = and i1 %i.m, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ]
  %i.p = icmp ugt i64 %i.e, 1024
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_TypeError, align 8
  invoke void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.18)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  store i32 1, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 5, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.w, align 8
  store ptr %i.o, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = alloca i8, i64 %i.aa, align 16          ; 5 uses
  %i.ac = alloca i8, i64 %i.e, align 16           ; 6 uses
  %.not409 = icmp eq i64 %i.e, 0                  ; 4 uses
  br i1 %.not409, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %5 = icmp slt i64 %i.e, 4
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 2044
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not, label %.loopexit346, label %bb.j, !prof !46

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %.0217364.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bm, %._crit_edge.thread.unr-lcssa ]
  %.0218363.epil.init = phi i1 [ true, %.lr.ph ], [ %i.bl, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod510 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod510)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0217364.epil = phi i64 [ %.0217364.epil.init, %.epil.preheader ], [ %i.ak, %bb.h ] ; 2 uses
  %.0218363.epil = phi i1 [ %.0218363.epil.init, %.epil.preheader ], [ %i.aj, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364.epil
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %.val273.epil = load i32, ptr %i.ag, align 8
  %i.ah = and i32 %.val273.epil, 3
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i1 %.0218363.epil, %i.ai            ; 2 uses
  %i.ak = add nuw nsw i64 %.0217364.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !34

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge.thread.unr-lcssa
  %.lcssa508 = phi i1 [ %i.bl, %._crit_edge.thread.unr-lcssa ], [ %i.aj, %bb.h ]
  br i1 %.lcssa508, label %bb.j, label %.lr.ph367, !prof !47

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.0217364 = phi i64 [ 0, %.lr.ph.new ], [ %i.bm, %bb.i ] ; 5 uses
  %.0218363 = phi i1 [ true, %.lr.ph.new ], [ %i.bl, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %.val273 = load i32, ptr %i.an, align 8
  %i.ao = and i32 %.val273, 3
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = and i1 %.0218363, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %.val273.1 = load i32, ptr %i.au, align 8
  %i.av = and i32 %.val273.1, 3
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = and i1 %i.aq, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %.val273.2 = load i32, ptr %i.bb, align 8
  %i.bc = and i32 %.val273.2, 3
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = and i1 %i.ax, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0217364
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val273.3 = load i32, ptr %i.bi, align 8
  %i.bj = and i32 %.val273.3, 3
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = and i1 %i.be, %i.bk                     ; 3 uses
  %i.bm = add nuw nsw i64 %.0217364, 4            ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.i, !llvm.loop !35

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.loopexit346

.lr.ph367:                                        ; preds = %._crit_edge.thread
  %i.bo = shl nuw nsw i64 %i.e, 3
  %i.bp = alloca i8, i64 %i.bo, align 16          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph367, %_ZL9Py_DECREFP7_object.exit
  %.0216365 = phi i64 [ 0, %.lr.ph367 ], [ %i.ck, %_ZL9Py_DECREFP7_object.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0216365
  %i.bs = load ptr, ptr %i.br, align 8            ; 7 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZL10_Py_NewRefP7_object.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bu, ptr %i.bs, align 8
  br label %_ZL10_Py_NewRefP7_object.exit

_ZL10_Py_NewRefP7_object.exit:                    ; preds = %bb.l, %bb.k
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.0216365 ; 3 uses
  store ptr %i.bs, ptr %i.bw, align 8
  invoke void @PyUnicode_InternInPlace(ptr noundef nonnull %i.bw)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZL10_Py_NewRefP7_object.exit
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq ptr %i.bs, %i.bx
  br i1 %i.by, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.ca = and i64 %i.bz, 2147483648
  %.not336 = icmp eq i64 %i.ca, 0
  br i1 %.not336, label %bb.o, label %_ZL9Py_DECREFP7_object.exit

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i64 %i.bz, -1                   ; 2 uses
  store i64 %i.cb, ptr %i.bs, align 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.p, label %_ZL9Py_DECREFP7_object.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bs)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %i.cd = load i32, ptr %4, align 8               ; 2 uses
  %i.ce = load i32, ptr %i.t, align 4
  %.not.i270 = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i270, label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZN8nanobind6detail12cleanup_list6expandEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  %.pre = load i32, ptr %4, align 8
  br label %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271

_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271: ; preds = %bb.q, %bb.r
  %i.cf = phi i32 [ %i.cd, %bb.q ], [ %.pre, %bb.r ] ; 2 uses
  %i.cg = load ptr, ptr %i.u, align 8
  %i.ch = add i32 %i.cf, 1
  store i32 %i.ch, ptr %4, align 8
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  store ptr %i.bx, ptr %i.cj, align 8
  br label %_ZL9Py_DECREFP7_object.exit

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.o, %bb.n, %bb.p, %_ZN8nanobind6detail12cleanup_list6appendEP7_object.exit271
  %i.ck = add nuw i64 %.0216365, 1                ; 2 uses
  %exitcond430.not = icmp eq i64 %i.ck, %i.e
  br i1 %exitcond430.not, label %.loopexit346, label %bb.k, !llvm.loop !36

.loopexit346:                                     ; preds = %_ZL9Py_DECREFP7_object.exit, %._crit_edge, %bb.j
  %.0219 = phi ptr [ %i.bn, %bb.j ], [ %i.a, %._crit_edge ], [ %i.bp, %_ZL9Py_DECREFP7_object.exit ] ; 2 uses
  %.not411 = icmp eq i64 %.val, 0
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.cm = and i64 %2, 4611686018427387904
  %.not334 = icmp eq i64 %i.cm, 0
  %i.cn = lshr exact i32 %i.k, 6                  ; 2 uses
  br i1 %.not411, label %.thread321, label %.preheader341.us.preheader

.preheader341.us.preheader:                       ; preds = %.loopexit346
  %i.co = icmp ne i64 %.val, 1
  %brmerge408.not.not = or i1 %.not, %.not409
  %min.iters.check = icmp ult i64 %i.e, 4
  %min.iters.check482 = icmp ult i64 %i.e, 32
  %i.cp = and i64 %i.e, 28
  %n.vec = and i64 %i.e, 2016                     ; 4 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec485 = and i64 %i.e, 2044                  ; 3 uses
  %cmp.n490 = icmp eq i64 %i.e, %n.vec485
  br label %.preheader341.us

.preheader341.us:                                 ; preds = %.preheader341.us.preheader, %._crit_edge392.us
  %.0215395.us = phi i1 [ false, %._crit_edge392.us ], [ %i.co, %.preheader341.us.preheader ] ; 2 uses
  %.0235394.us = phi ptr [ %.5240313.us, %._crit_edge392.us ], [ null, %.preheader341.us.preheader ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader341.us, %.thread309.us
  %.0214390.us = phi i64 [ 0, %.preheader341.us ], [ %i.ho, %.thread309.us ] ; 2 uses
  %.1236389.us = phi ptr [ %.0235394.us, %.preheader341.us ], [ %.5240313.us, %.thread309.us ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %.0214390.us ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8            ; 3 uses
  %i.ct = and i32 %i.cs, 8
  %i.cu = icmp ne i32 %i.ct, 0                    ; 2 uses
  %i.cv = and i32 %i.cs, 16
  %i.cw = icmp ne i32 %i.cv, 0                    ; 3 uses
  %i.cx = and i32 %i.cs, 32                       ; 2 uses
  %.not251.us = icmp eq i32 %i.cx, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 62
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i64                   ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  %i.dc = load i16, ptr %i.db, align 4
end_hunk_0
begin_hunk_1_@_ZN8nanobind6detailL26nb_bound_method_vectorcallEP7_objectPKS2_mS2_:bb.a

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN8nanobind6detail24nb_func_get_nb_signatureEP7_objectPv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanobind::detail::Buffer", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %.val, 4294967295
  %i.d = tail call ptr @PyTuple_New(i64 noundef %i.c) ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #27 ; 5 uses
  store ptr %i.e, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not.i109 = icmp eq ptr %i.e, null
  br i1 %.not.i109, label %bb.c, label %_ZN8nanobind6detail6BufferC2Em.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.32, i64 54, i64 1, ptr %i.g) #29 ; 0 uses
  tail call void @abort() #26
  unreachable

_ZN8nanobind6detail6BufferC2Em.exit:              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.i, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 1
  %i.j = and i64 %.val, 4294967295
  %.not178 = icmp eq i64 %i.j, 0
  br i1 %.not178, label %_ZL9Py_DECREFP7_object.exit, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZN8nanobind6detail6BufferC2Em.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %wide.trip.count = and i64 %.val, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph177, %.thread133
  %indvars.iv204 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next205, %.thread133 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv204 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 4
  %.not98 = icmp eq i32 %i.p, 0
  br i1 %.not98, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke ptr @PyUnicode_FromString(ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d, %bb.e
  %.186 = phi ptr [ %i.s, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 5 uses
  %i.t = load ptr, ptr %2, align 8                ; 3 uses
  store ptr %i.t, ptr %i.f, align 8
  %i.u = load ptr, ptr %i.h, align 8
  %.not.i110 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i110, label %_ZN8nanobind6detail6Buffer5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.t, align 1
  br label %_ZN8nanobind6detail6Buffer5clearEv.exit

_ZN8nanobind6detail6Buffer5clearEv.exit:          ; preds = %bb.f, %bb.g
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = call fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.v, ptr noundef nonnull %i.m, i1 noundef zeroext true) #25 ; 3 uses
  %i.x = invoke ptr @PyTuple_New(i64 noundef 3)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.h:                                             ; preds = %_ZN8nanobind6detail6Buffer5clearEv.exit
  %i.y = load ptr, ptr %2, align 8
  %i.z = invoke ptr @PyUnicode_FromString(ptr noundef %i.y)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %bb.h
  %.not99 = icmp eq i32 %i.w, 0                   ; 2 uses
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = zext i32 %i.w to i64
  %i.ab = invoke ptr @PyTuple_New(i64 noundef %i.aa)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i, %bb.j
  %.179 = phi ptr [ %i.ab, %bb.j ], [ @_Py_NoneStruct, %bb.i ] ; 6 uses
  %i.ac = icmp ne ptr %.186, null                 ; 2 uses
  %i.ad = icmp ne ptr %i.z, null                  ; 2 uses
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp ne ptr %i.x, null                  ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.ae, i1 false
  %i.af = icmp ne ptr %.179, null                 ; 2 uses
  %or.cond7 = select i1 %or.cond5, i1 %i.af, i1 false
  br i1 %or.cond7, label %bb.l, label %.loopexit152

bb.l:                                             ; preds = %bb.k
  br i1 %.not99, label %.thread133, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 60 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 4            ; 2 uses
  %.not179 = icmp eq i16 %i.ah, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.179, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %i.ak = phi i16 [ %i.ah, %.lr.ph ], [ %i.ay, %bb.s ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.067174 = phi i64 [ 0, %.lr.ph ], [ %.1.ph, %bb.s ] ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 5 uses
  %.not100 = icmp eq ptr %i.ao, null
  br i1 %.not100, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not101 = icmp eq ptr %i.aq, null
  br i1 %.not101, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = invoke ptr @PyUnicode_FromString(ptr noundef nonnull %i.aq)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not104 = icmp eq ptr %i.ar, null
  br i1 %.not104, label %.loopexit152, label %_ZL9Py_INCREFP7_object.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.e, %_ZN8nanobind6detail6Buffer5clearEv.exit, %bb.h, %bb.j, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.ah
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.as) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp307

bb.q:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.ao, align 8
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZL9Py_INCREFP7_object.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.au, ptr %i.ao, align 8
  br label %_ZL9Py_INCREFP7_object.exit

_ZL9Py_INCREFP7_object.exit:                      ; preds = %bb.r, %bb.q, %bb.p
  %.0 = phi ptr [ %i.ar, %bb.p ], [ %i.ao, %bb.q ], [ %i.ao, %bb.r ]
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.067174
  store ptr %.0, ptr %i.aw, align 8
  %i.ax = add i64 %.067174, 1
  %.pre = load i16, ptr %i.ag, align 4
  br label %bb.s

bb.s:                                             ; preds = %_ZL9Py_INCREFP7_object.exit, %bb.m
  %i.ay = phi i16 [ %i.ak, %bb.m ], [ %.pre, %_ZL9Py_INCREFP7_object.exit ] ; 2 uses
  %.1.ph = phi i64 [ %.067174, %bb.m ], [ %i.ax, %_ZL9Py_INCREFP7_object.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.m, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.067.lcssa = phi i64 [ 0, %.preheader ], [ %.1.ph, %bb.s ]
  %i.bb = zext i32 %i.w to i64
  %.not105 = icmp eq i64 %.067.lcssa, %i.bb
  br i1 %.not105, label %.thread133, label %bb.t, !prof !5

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

.thread133:                                       ; preds = %._crit_edge, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.z, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %.186, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.179, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv204
  store ptr %i.x, ptr %i.bf, align 8
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9Py_DECREFP7_object.exit, label %bb.d, !llvm.loop !54

.loopexit152:                                     ; preds = %bb.k, %bb.p
  %3 = phi i1 [ true, %bb.p ], [ %i.ac, %bb.k ]
  %4 = phi i1 [ true, %bb.p ], [ %i.ad, %bb.k ]
  %5 = phi i1 [ true, %bb.p ], [ %i.ae, %bb.k ]
  %6 = phi i1 [ true, %bb.p ], [ %i.af, %bb.k ]
  br i1 %3, label %bb.u, label %_ZL10Py_XDECREFP7_object.exit

bb.u:                                             ; preds = %.loopexit152
  %i.bg = load i64, ptr %.186, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2147483648
  %.not2.i = icmp eq i64 %i.bh, 0
  br i1 %.not2.i, label %bb.v, label %_ZL10Py_XDECREFP7_object.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = add nsw i64 %i.bg, -1                   ; 2 uses
  store i64 %i.bi, ptr %.186, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %_ZL10Py_XDECREFP7_object.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %.186)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.v, %bb.u, %.loopexit152, %bb.w
  br i1 %4, label %bb.x, label %_ZL10Py_XDECREFP7_object.exit116

bb.x:                                             ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.bk = load i64, ptr %i.z, align 8             ; 2 uses
  %i.bl = and i64 %i.bk, 2147483648
  %.not2.i114 = icmp eq i64 %i.bl, 0
  br i1 %.not2.i114, label %bb.y, label %_ZL10Py_XDECREFP7_object.exit116

bb.y:                                             ; preds = %bb.x
  %i.bm = add nsw i64 %i.bk, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.z, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.z, label %_ZL10Py_XDECREFP7_object.exit116

bb.z:                                             ; preds = %bb.y
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.z)
          to label %_ZL10Py_XDECREFP7_object.exit116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit116:                 ; preds = %bb.y, %bb.x, %_ZL10Py_XDECREFP7_object.exit, %bb.z
  br i1 %6, label %bb.aa, label %_ZL10Py_XDECREFP7_object.exit120

bb.aa:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit116
  %i.bo = load i64, ptr %.179, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2147483648
  %.not2.i118 = icmp eq i64 %i.bp, 0
  br i1 %.not2.i118, label %bb.ab, label %_ZL10Py_XDECREFP7_object.exit120

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add nsw i64 %i.bo, -1                   ; 2 uses
  store i64 %i.bq, ptr %.179, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ac, label %_ZL10Py_XDECREFP7_object.exit120

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Py_Dealloc(ptr noundef nonnull %.179)
          to label %_ZL10Py_XDECREFP7_object.exit120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit120:                 ; preds = %bb.ab, %bb.aa, %_ZL10Py_XDECREFP7_object.exit116, %bb.ac
  br i1 %5, label %bb.ad, label %_ZL10Py_XDECREFP7_object.exit124

bb.ad:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit120
  %i.bs = load i64, ptr %i.x, align 8             ; 2 uses
  %i.bt = and i64 %i.bs, 2147483648
  %.not2.i122 = icmp eq i64 %i.bt, 0
  br i1 %.not2.i122, label %bb.ae, label %_ZL10Py_XDECREFP7_object.exit124

bb.ae:                                            ; preds = %bb.ad
  %i.bu = add nsw i64 %i.bs, -1                   ; 2 uses
  store i64 %i.bu, ptr %i.x, align 8
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %_ZL10Py_XDECREFP7_object.exit124

bb.af:                                            ; preds = %bb.ae
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.x)
          to label %_ZL10Py_XDECREFP7_object.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit124:                 ; preds = %bb.ae, %bb.ad, %_ZL10Py_XDECREFP7_object.exit120, %bb.af
  %i.bw = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bx = and i64 %i.bw, 2147483648
  %.not151 = icmp eq i64 %i.bx, 0
  br i1 %.not151, label %bb.ag, label %_ZL9Py_DECREFP7_object.exit

bb.ag:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit124
  %i.by = add nsw i64 %i.bw, -1                   ; 2 uses
  store i64 %i.by, ptr %i.d, align 8
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.ah, label %_ZL9Py_DECREFP7_object.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.d)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %.thread133, %_ZN8nanobind6detail6BufferC2Em.exit, %bb.ag, %_ZL10Py_XDECREFP7_object.exit124, %bb.ah
  %.088 = phi ptr [ null, %bb.ag ], [ null, %bb.ah ], [ null, %_ZL10Py_XDECREFP7_object.exit124 ], [ %i.d, %_ZN8nanobind6detail6BufferC2Em.exit ], [ %i.d, %.thread133 ]
  %i.ca = load ptr, ptr %2, align 8
  call void @free(ptr noundef %i.ca) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ZL9Py_DECREFP7_object.exit
  %.189 = phi ptr [ %.088, %_ZL9Py_DECREFP7_object.exit ], [ null, %bb.a ]
  ret ptr %.189
}

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [10 x i8], align 1                ; 4 uses
  %i.d = alloca [10 x i8], align 1                ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = and i32 %i.g, 64                         ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %i.j = and i32 %i.g, 8
  %i.k = icmp ne i32 %i.j, 0                      ; 3 uses
  %i.l = and i32 %i.g, 16
  %.not = icmp eq i32 %i.l, 0
  %i.m = and i32 %i.g, 32
  %.not227 = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.g, 4096
  %.not228 = icmp eq i32 %i.n, 0
  br i1 %.not228, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  br i1 %3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 10) #28 ; 2 uses
  %.not254 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = select i1 %.not254, ptr %i.p, ptr %i.r   ; 2 uses
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(5) @.str.3, i64 noundef 4) #28
  %i.u = icmp eq i32 %i.t, 0
  %spec.select.idx = select i1 %i.u, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1208 = phi ptr [ %i.p, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1208) #28 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp ult ptr %i.y, %i.aa
  br i1 %.not.i.i, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.x to i64
  %.neg.i.i = add i64 %i.v, 1
  %i.ad = add i64 %.neg.i.i, %i.ac
  %i.ae = sub i64 %i.ad, %i.ab
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae)
  %.pre.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit:     ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %.pre.i.i, %bb.e ], [ %i.x, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %.1208, i64 %i.v, i1 false)
  %i.ag = load ptr, ptr %i.w, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.v ; 2 uses
  store ptr %i.ah, ptr %i.w, align 8
  store i8 0, ptr %i.ah, align 1
  br label %bb.eq

bb.f:                                             ; preds = %bb.a
  br i1 %3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i262 = icmp ult ptr %i.ak, %i.am
  br i1 %.not.i.i262, label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = add i64 %i.ao, 5
  %i.aq = sub i64 %i.ap, %i.an
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq)
  %.pre.i.i263 = load ptr, ptr %i.ai, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit

_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit: ; preds = %bb.g, %bb.h
  %i.ar = phi ptr [ %.pre.i.i263, %bb.h ], [ %i.aj, %bb.g ]
  store i32 543581540, ptr %i.ar, align 1
  %i.as = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.ai, align 8
  store i8 0, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN8nanobind6detail6Buffer3putILm5EEEvRAT__Kc.exit, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #28 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 120 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i264 = icmp ult ptr %i.bb, %i.bd
  br i1 %.not.i.i264, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.ba to i64
  %.neg.i.i265 = add i64 %i.ay, 1
  %i.bg = add i64 %.neg.i.i265, %i.bf
  %i.bh = sub i64 %i.bg, %i.be
  tail call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bh)
  %.pre.i.i266 = load ptr, ptr %i.az, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi ptr [ %.pre.i.i266, %bb.j ], [ %i.ba, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.ax, i64 %i.ay, i1 false)
  %i.bj = load ptr, ptr %i.az, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ay ; 2 uses
  store ptr %i.bk, ptr %i.az, align 8
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 62 ; 2 uses
  %.lobit = lshr exact i32 %i.h, 6                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.bs = add nuw nsw i32 %.lobit, 1
  %i.bt = lshr i32 %i.g, 6
  %.lobit498 = and i32 %i.bt, 1
  %i.bu = zext nneg i32 %.lobit498 to i64         ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge2, %bb.k
  %.0196 = phi ptr [ %i.av, %bb.k ], [ %.9205, %.critedge2 ] ; 17 uses
  %.0192 = phi i1 [ false, %bb.k ], [ %.3195, %.critedge2 ] ; 11 uses
  %.0188 = phi i32 [ 0, %bb.k ], [ %.3191, %.critedge2 ] ; 19 uses
  %.0183 = phi i32 [ 0, %bb.k ], [ %.4187, %.critedge2 ] ; 19 uses
  %.0181 = phi ptr [ %i.bm, %bb.k ], [ %i.sl, %.critedge2 ] ; 13 uses
  %i.bv = load i8, ptr %.0181, align 1            ; 2 uses
  switch i8 %i.bv, label %bb.en [
end_hunk_1
begin_hunk_2_@_ZN8nanobind6detailL24nb_func_render_signatureERNS0_6BufferEPNS0_12nb_internalsEPKNS0_9func_dataEb:bb.a
  %.not.i312 = icmp ult i32 %.07.i310, 10
  br i1 %.not.i312, label %bb.bv, label %bb.bu, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bu
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jx
  %i.kb = add i32 %.0183, 1
  %i.kc = sub i64 11, %.0.i311                    ; 3 uses
  %i.kd = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc
  %i.kf = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i313 = icmp ult ptr %i.ke, %i.kf
  br i1 %.not.i.i313, label %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = add i64 %i.kh, 12
  %i.kj = add i64 %.0.i311, %i.kg
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.kk)
  %.pre.i.i314 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315

_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315: ; preds = %bb.bv, %bb.bw
  %i.kl = phi ptr [ %.pre.i.i314, %bb.bw ], [ %i.kd, %bb.bv ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr nonnull align 1 %i.ka, i64 %i.kc, i1 false)
  %i.km = load ptr, ptr %i.az, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kc ; 2 uses
  store ptr %i.kn, ptr %i.az, align 8
  store i8 0, ptr %i.kn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.cp

bb.bx:                                            ; preds = %bb.bn
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %.not235 = icmp eq ptr %i.kp, null
  br i1 %.not235, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kq = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.ks = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i316 = icmp ult ptr %i.kr, %i.ks
  br i1 %.not.i.i316, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = add i64 %i.ku, 4
  %i.kw = sub i64 %i.kv, %i.kt
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.kw)
  %.pre.i.i317 = load ptr, ptr %i.az, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kx = phi ptr [ %.pre.i.i317, %bb.bz ], [ %i.kq, %bb.by ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.ky = load ptr, ptr %i.az, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 3 ; 2 uses
  store ptr %i.kz, ptr %i.az, align 8
  store i8 0, ptr %i.kz, align 1
  %i.la = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.lb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.la) #28 ; 4 uses
  %i.lc = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lb
  %i.le = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i319 = icmp ult ptr %i.ld, %i.le
  br i1 %.not.i.i319, label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %.neg.i.i320 = add i64 %i.lb, 1
  %i.lh = add i64 %.neg.i.i320, %i.lg
  %i.li = sub i64 %i.lh, %i.lf
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.li)
  %.pre.i.i321 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322

_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322:  ; preds = %bb.ca, %bb.cb
  %i.lj = phi ptr [ %.pre.i.i321, %bb.cb ], [ %i.lc, %bb.ca ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lj, ptr nonnull align 1 %i.la, i64 %i.lb, i1 false)
  %i.lk = load ptr, ptr %i.az, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lb ; 2 uses
  store ptr %i.ll, ptr %i.az, align 8
  store i8 0, ptr %i.ll, align 1
  br label %bb.cp

bb.cc:                                            ; preds = %bb.bx
  %i.lm = invoke ptr @PyObject_Repr(ptr noundef nonnull %i.ja)
          to label %bb.cd unwind label %bb.er     ; 5 uses

bb.cd:                                            ; preds = %bb.cc
  %.not236 = icmp eq ptr %i.lm, null
  br i1 %.not236, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 0, ptr %i.e, align 8
  %i.ln = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.e)
          to label %bb.cf unwind label %bb.er     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %.not237 = icmp eq ptr %i.ln, null
  br i1 %.not237, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  invoke void @PyErr_Clear()
          to label %bb.cl unwind label %bb.er

bb.ch:                                            ; preds = %bb.cf
  %i.lo = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.lq = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i323 = icmp ult ptr %i.lp, %i.lq
  br i1 %.not.i.i323, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = add i64 %i.ls, 4
  %i.lu = sub i64 %i.lt, %i.lr
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.lu)
  %.pre.i.i324 = load ptr, ptr %i.az, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.lv = phi ptr [ %.pre.i.i324, %bb.ci ], [ %i.lo, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lv, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.lw = load ptr, ptr %i.az, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 3 ; 2 uses
  store ptr %i.lx, ptr %i.az, align 8
  store i8 0, ptr %i.lx, align 1
  %i.ly = load i64, ptr %i.e, align 8             ; 4 uses
  %i.lz = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  %i.mb = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i326 = icmp ult ptr %i.ma, %i.mb
  br i1 %.not.i326, label %_ZN8nanobind6detail6Buffer3putEPKcm.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lz to i64
  %.neg.i = add i64 %i.ly, 1
  %i.me = add i64 %.neg.i, %i.md
  %i.mf = sub i64 %i.me, %i.mc
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.mf)
  %.pre.i327 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putEPKcm.exit

_ZN8nanobind6detail6Buffer3putEPKcm.exit:         ; preds = %bb.cj, %bb.ck
  %i.mg = phi ptr [ %.pre.i327, %bb.ck ], [ %i.lz, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr nonnull align 1 %i.ln, i64 %i.ly, i1 false)
  %i.mh = load ptr, ptr %i.az, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.ly ; 2 uses
  store ptr %i.mi, ptr %i.az, align 8
  store i8 0, ptr %i.mi, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEPKcm.exit, %bb.cg
  %i.mj = load i64, ptr %i.lm, align 8            ; 2 uses
  %i.mk = and i64 %i.mj, 2147483648
  %.not382 = icmp eq i64 %i.mk, 0
  br i1 %.not382, label %bb.cm, label %_ZL9Py_DECREFP7_object.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ml = add nsw i64 %i.mj, -1                   ; 2 uses
  store i64 %i.ml, ptr %i.lm, align 8
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.cn, label %_ZL9Py_DECREFP7_object.exit

bb.cn:                                            ; preds = %bb.cm
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.lm)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %bb.er

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.cm, %bb.cl, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.cp

bb.co:                                            ; preds = %bb.cd
  invoke void @PyErr_Clear()
          to label %bb.cp unwind label %bb.er

bb.cp:                                            ; preds = %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322, %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315, %bb.co, %_ZL9Py_DECREFP7_object.exit, %bb.bm, %bb.bi
  %.2185 = phi i32 [ %.0183, %bb.bi ], [ %.0183, %bb.bm ], [ %i.kb, %_ZN8nanobind6detail6Buffer10put_uint32Ej.exit315 ], [ %.0183, %_ZN8nanobind6detail6Buffer8put_dstrEPKc.exit322 ], [ %.0183, %bb.co ], [ %.0183, %_ZL9Py_DECREFP7_object.exit ] ; 3 uses
  %i.mn = add i32 %.0188, 1                       ; 6 uses
  %i.mo = load i16, ptr %i.bq, align 2
  %i.mp = zext i16 %i.mo to i32
  %i.mq = icmp eq i32 %i.mn, %i.mp
  br i1 %i.mq, label %bb.cq, label %.critedge2

bb.cq:                                            ; preds = %bb.cp
  %i.mr = icmp ult i32 %.lobit, %i.mn
  %i.ms = select i1 %i.k, i1 %i.mr, i1 false
  br i1 %i.ms, label %.lr.ph, label %.critedge437

.lr.ph:                                           ; preds = %bb.cq
  %i.mt = load ptr, ptr %i.bp, align 8            ; 5 uses
  %wide.trip.count = zext nneg i32 %i.mn to i64   ; 2 uses
  %i.mu = sub nuw nsw i64 %wide.trip.count, %i.bu ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.mu, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.mv = and i64 %i.mu, 3                        ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = select i1 %i.mw, i64 4, i64 %i.mv
  %n.vec = sub nuw nsw i64 %i.mu, %i.mx           ; 2 uses
  %i.my = add nuw nsw i64 %n.vec, %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ splat (i1 true), %vector.ph ], [ %i.nr, %vector.body ]
  %vec.phi552 = phi <2 x i1> [ splat (i1 true), %vector.ph ], [ %i.ns, %vector.body ]
  %i.mz = or disjoint i64 %index, %i.bu           ; 4 uses
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mz
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 80
  %i.nf = getelementptr [40 x i8], ptr %i.mt, i64 %i.mz
  %i.ng = getelementptr i8, ptr %i.nf, i64 120
  %i.nh = load ptr, ptr %i.na, align 8
  %i.ni = load ptr, ptr %i.nc, align 8
  %i.nj = insertelement <2 x ptr> poison, ptr %i.nh, i64 0
  %i.nk = insertelement <2 x ptr> %i.nj, ptr %i.ni, i64 1
  %i.nl = load ptr, ptr %i.ne, align 8
  %i.nm = load ptr, ptr %i.ng, align 8
  %i.nn = insertelement <2 x ptr> poison, ptr %i.nl, i64 0
  %i.no = insertelement <2 x ptr> %i.nn, ptr %i.nm, i64 1
  %i.np = icmp eq <2 x ptr> %i.nk, splat (ptr null)
  %i.nq = icmp eq <2 x ptr> %i.no, splat (ptr null)
  %i.nr = and <2 x i1> %vec.phi, %i.np            ; 2 uses
  %i.ns = and <2 x i1> %vec.phi552, %i.nq         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nt, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i1> %i.ns, %i.nr
  %i.nu = bitcast <2 x i1> %bin.rdx to i2
  %i.nv = icmp eq i2 %i.nu, -1
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bu, %.lr.ph ], [ %i.my, %middle.block ]
  %.0180435.ph = phi i1 [ true, %.lr.ph ], [ %i.nv, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph
  br i1 %i.nz, label %.critedge437, label %.critedge2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0180435 = phi i1 [ %i.nz, %scalar.ph ], [ %.0180435.ph, %scalar.ph.preheader ]
  %i.nw = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %indvars.iv
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = icmp eq ptr %i.nx, null
  %i.nz = and i1 %.0180435, %i.ny                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !63

.critedge437:                                     ; preds = %bb.cq, %._crit_edge
  %i.oa = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  %i.oc = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i328 = icmp ult ptr %i.ob, %i.oc
  br i1 %.not.i.i328, label %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330, label %bb.cr

bb.cr:                                            ; preds = %.critedge437
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = add i64 %i.oe, 4
  %i.og = sub i64 %i.of, %i.od
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.og)
  %.pre.i.i329 = load ptr, ptr %i.az, align 8
  br label %_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330

_ZN8nanobind6detail6Buffer3putILm4EEEvRAT__Kc.exit330: ; preds = %.critedge437, %bb.cr
  %i.oh = phi ptr [ %.pre.i.i329, %bb.cr ], [ %i.oa, %.critedge437 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.oh, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.oi = load ptr, ptr %i.az, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 3 ; 2 uses
  store ptr %i.oj, ptr %i.az, align 8
  store i8 0, ptr %i.oj, align 1
  br label %.critedge2

bb.cs:                                            ; preds = %bb.l
  %i.ok = load ptr, ptr %.0196, align 8           ; 2 uses
  %.not231 = icmp eq ptr %i.ok, null
  br i1 %.not231, label %bb.ct, label %bb.cu, !prof !6

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.ol = icmp eq i32 %.0188, 0
  %or.cond9 = select i1 %i.i, i1 %i.ol, i1 false
  br i1 %or.cond9, label %bb.ek, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.om = invoke noundef ptr @_ZN8nanobind6detail11nb_type_c2pEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %1, ptr noundef nonnull %i.ok)
          to label %bb.cw unwind label %bb.er     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %.not232 = icmp eq ptr %i.om, null
  br i1 %.not232, label %.critedge258, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.oo = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.op = load ptr, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.oq = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.oo, ptr noundef %i.op, ptr noundef nonnull %i.b)
          to label %bb.cy unwind label %bb.dc     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.os = load ptr, ptr %i.b, align 8
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.ot = icmp slt i32 %i.oq, 0
  br i1 %i.ot, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  invoke void @PyErr_Clear()
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cx
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #26
  unreachable

bb.dd:                                            ; preds = %bb.cz, %bb.db, %bb.da
  %.0.i331 = phi ptr [ %i.os, %bb.cz ], [ null, %bb.db ], [ null, %bb.da ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ow = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ox = invoke i32 @_PyObject_LookupAttr(ptr noundef %i.oo, ptr noundef %i.ow, ptr noundef nonnull %i.a)
          to label %bb.de unwind label %bb.di     ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.oy = icmp eq i32 %i.ox, 1
  br i1 %i.oy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.oz = load ptr, ptr %i.a, align 8
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  %i.pa = icmp slt i32 %i.ox, 0
  br i1 %i.pa, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @PyErr_Clear()
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dd
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #26
  unreachable

bb.dj:                                            ; preds = %bb.dg, %bb.dh, %bb.df
  %.0.i332 = phi ptr [ %i.oz, %bb.df ], [ null, %bb.dh ], [ null, %bb.dg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not380 = icmp eq ptr %.0.i331, null           ; 2 uses
  br i1 %.not380, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pd = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.0.i331, ptr noundef null)
          to label %bb.dl unwind label %bb.er

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.pe = phi ptr [ %i.pd, %bb.dk ], [ null, %bb.dj ] ; 3 uses
  %.not381 = icmp eq ptr %.0.i332, null           ; 2 uses
  br i1 %.not381, label %.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pf = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.0.i332, ptr noundef null)
          to label %bb.dn unwind label %bb.er     ; 3 uses

bb.dn:                                            ; preds = %bb.dm
  %i.pg = icmp ne ptr %i.pe, null
  %i.ph = icmp ne ptr %i.pf, null
  %or.cond11 = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond11, label %bb.do, label %.thread

bb.do:                                            ; preds = %bb.dn
  %i.pi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pe) #28 ; 4 uses
  %i.pj = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  %i.pl = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i334 = icmp ult ptr %i.pk, %i.pl
  br i1 %.not.i.i334, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
end_hunk_2
begin_hunk_3_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm:bb.a
  store <2 x float> %i.bj, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 8, !range !7, !noundef !8
  %i.bn = load i8, ptr %i.bl, align 8, !range !7, !noundef !8
  store i8 %i.bn, ptr %i.bk, align 8
  store i8 %i.bm, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !range !7, !noundef !8
  %i.br = load i8, ptr %i.bp, align 1, !range !7, !noundef !8
  store i8 %i.br, ptr %i.bo, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bs = ptrtoint ptr %i.ay to i64
  %i.bt = ptrtoint ptr %i.au to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bu) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.sroa.019.024 = phi ptr [ %i.dh, %bb.n ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 4
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = icmp eq i16 %i.bw, -1
  br i1 %i.bx, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = lshr i64 %i.ca, 33
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, -49064778989728563       ; 2 uses
  %i.ce = lshr i64 %i.cd, 33
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, -4265267296055464877     ; 2 uses
  %i.ch = lshr i64 %i.cg, 33
  %i.ci = xor i64 %i.ch, %i.cg                    ; 2 uses
  %i.cj = load i64, ptr %2, align 8               ; 2 uses
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = trunc i64 %i.ci to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 16 ; 2 uses
  %.pre17.i = load ptr, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.cn = phi i64 [ %i.cj, %bb.i ], [ %i.dc, %bb.m ]
  %i.co = phi ptr [ %.pre17.i, %bb.i ], [ %i.dd, %bb.m ] ; 2 uses
  %.013.i = phi i16 [ 0, %bb.i ], [ %i.de, %bb.m ] ; 4 uses
  %.012.i = phi i32 [ %i.cl, %bb.i ], [ %.1.i, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %i.ck, %bb.i ], [ %i.dg, %bb.m ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.0.i ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp sgt i16 %.013.i, %i.cr
  br i1 %i.cs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ct = icmp eq i16 %i.cr, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  br i1 %i.ct, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %i.by, align 8
  %i.cw = load ptr, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.by, align 8
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cm, align 8
  %i.cz = load ptr, ptr %i.cx, align 8
  store ptr %i.cz, ptr %i.cm, align 8
  store ptr %i.cy, ptr %i.cx, align 8
  %i.da = load i16, ptr %i.cq, align 4
  store i16 %.013.i, ptr %i.cq, align 4
  %i.db = load i32, ptr %i.cp, align 8
  store i32 %.012.i, ptr %i.cp, align 8
  %.pre.i = load ptr, ptr %i.l, align 8
  %.pre = load i64, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.dc = phi i64 [ %.pre, %bb.l ], [ %i.cn, %bb.j ] ; 2 uses
  %i.dd = phi ptr [ %.pre.i, %bb.l ], [ %i.co, %bb.j ]
  %.114.i = phi i16 [ %i.da, %bb.l ], [ %.013.i, %bb.j ]
  %.1.i = phi i32 [ %i.db, %bb.l ], [ %.012.i, %bb.j ]
  %i.de = add i16 %.114.i, 1
  %i.df = add i64 %.0.i, 1
  %i.dg = and i64 %i.dc, %i.df
  br label %bb.j, !llvm.loop !84

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  store i32 %.012.i, ptr %i.cp, align 8
  store i16 %.013.i, ptr %i.cq, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, %.lr.ph.split
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.45)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #25
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 9 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #30
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !85

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %7 = icmp slt i64 %.012.i.i, 4
  br i1 %7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ao, align 2
  %i.ap = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.as = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.g, label %.thread, !prof !87

bb.g:                                             ; preds = %bb.f
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  %.not.i10 = icmp eq i32 %i.au, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.ax, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.012.i.i, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bd, align 1
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -18
  store i8 1, ptr %i.bf, align 2
  %.pre = load i64, ptr %i.ba, align 8
  %i.bg = uitofp i64 %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %i.bh = phi float [ %i.bg, %.unr-lcssa ], [ 0.000000e+00, %.thread ]
  %i.bi = fcmp olt float %5, 0.000000e+00
  %i.bj = select i1 %i.bi, float 0.000000e+00, float %5 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bk, float 1.500000e-01, float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bl, align 8
  %i.bm = fcmp olt float %6, 2.000000e-01
  %i.bn = select i1 %i.bm, float 2.000000e-01, float %6 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bo, float f0x3F733333, float %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bp, align 4
  %i.bq = fmul float %.sroa.speculated.i11, %i.bh
  %i.br = fptoui float %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.br, ptr %i.bs, align 8
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_3

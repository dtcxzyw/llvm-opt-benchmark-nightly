Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context?download=true
inline.NumInlined: 9919
inline.NumDeleted: 2463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3smt7context4pushEv:bb.a
  br i1 %i.e, label %_ZN3smt7context15pop_to_base_lvlEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i32 %i.b, %i.d
  %i.g = tail call noundef i32 @_ZN3smt7context14pop_scope_coreEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %i.f) ; 0 uses
  tail call void @_ZN3smt7context22reset_cache_generationEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
  br label %_ZN3smt7context15pop_to_base_lvlEv.exit

_ZN3smt7context15pop_to_base_lvlEv.exit:          ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(10728) %0, i1 noundef zeroext false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9080 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !883
  %i.m = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2472 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !range !815
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 true, i1 %i.p
  invoke void @_ZN3smt7context22internalize_assertionsEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
          to label %bb.j unwind label %bb.c

bb.c:                                             ; preds = %_ZN3smt7context15pop_to_base_lvlEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3smt13oom_exceptionE    ; 3 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 1
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3smt13oom_exceptionE) #30
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.v = extractvalue { ptr, i32 } %i.r, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #30 ; 0 uses
  %i.x = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.x, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !818
  %i.aa = load ptr, ptr %1, align 8, !tbaa !819   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !820 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !819
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !742
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !742
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !820
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !820
  store ptr %i.ab, ptr %1, align 8, !tbaa !819
  store i64 0, ptr %i.aj, align 8, !tbaa !820
  store i8 0, ptr %i.ab, align 8, !tbaa !742
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #32
          to label %bb.ag unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %1, align 8, !tbaa !819   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.g
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !742
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @__cxa_free_exception(ptr %i.x) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aq, %bb.h ]
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.j:                                             ; preds = %_ZN3smt7context15pop_to_base_lvlEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.at = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.as)
  br i1 %i.at, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.au, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !818
  %i.ax = load ptr, ptr %3, align 8, !tbaa !819   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !820 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.l
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !819
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !742
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !742
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre36 = load i64, ptr %.phi.trans.insert35, align 8, !tbaa !820
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit24

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit24: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.bf = phi i64 [ %i.bb, %bb.m ], [ %.pre36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !820
  store ptr %i.ay, ptr %3, align 8, !tbaa !819
  store i64 0, ptr %i.bg, align 8, !tbaa !820
  store i8 0, ptr %i.ay, align 8, !tbaa !742
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #32
          to label %bb.ag unwind label %bb.n

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit24
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !819   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ay
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.n
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !742
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ae

bb.o:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @__cxa_free_exception(ptr %i.au) #30
  br label %bb.ae

bb.p:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !699, !nonnull !585, !align !586
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !814, !range !815, !noundef !585 ; 2 uses
  store i8 1, ptr %i.bp, align 4, !tbaa !814
  %i.br = invoke noundef zeroext i1 @_ZN3smt7context9propagateEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
          to label %bb.q unwind label %bb.ad      ; 0 uses

bb.q:                                             ; preds = %bb.p
  br i1 %i.q, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !883
  %5 = icmp eq ptr %i.bs, null
  %i.bt = load i8, ptr %i.n, align 8, !range !815
  %i.bu = trunc nuw i8 %i.bt to i1
  %brmerge = select i1 %5, i1 true, i1 %i.bu
  br i1 %brmerge, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %0, align 8, !tbaa !73
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(10728) %0)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  br i1 %i.bx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.12, i32 noundef 3137, ptr noundef nonnull @.str.27)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.r, %bb.t, %bb.v, %bb.q
  invoke void @_ZN3smt7context10push_scopeEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !766 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !644 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !644
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  invoke void @_ZN6vectorIN3smt7context10base_scopeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.z
  %.pre.i = load ptr, ptr %i.by, align 8, !tbaa !766 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !644
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.noexc
  %i.cg = phi i32 [ %.pre2.i, %.noexc ], [ %i.cc, %bb.y ]
  %i.ch = phi ptr [ %.pre.i, %.noexc ], [ %i.bz, %bb.y ]
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %i.ci
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i8 0, i64 12, i1 false)
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !766 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !644 ; 2 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !644
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !786 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !644
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i32 [ %i.cs, %bb.ab ], [ 0, %bb.aa ]
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %i.ct ; 3 uses
  store i32 %.0.i, ptr %i.cu, align 4, !tbaa !944
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !883
  %.not = icmp eq ptr %i.cv, null
  %i.cw = load i8, ptr %i.n, align 8, !range !815
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = select i1 %.not, i32 %i.cx, i32 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !947
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 9036
  %i.db = load i32, ptr %i.da, align 4, !tbaa !946
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !945
  %i.dd = load <2 x i32>, ptr %i.c, align 4, !tbaa !644
  %i.de = add <2 x i32> %i.dd, splat (i32 1)
  store <2 x i32> %i.de, ptr %i.c, align 4, !tbaa !644
  store i8 %i.bq, ptr %i.bp, align 4, !tbaa !814
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.p, %bb.s, %bb.u, %bb.v, %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bq, ptr %i.bp, align 4, !tbaa !814
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %bb.i, %bb.o, %bb.ad, %bb.c
  %.merged = phi { ptr, i32 } [ %i.df, %bb.ad ], [ %i.bn, %bb.o ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.r, %bb.c ], [ %.pn32, %bb.i ]
  resume { ptr, i32 } %.merged

bb.af:                                            ; preds = %bb.i
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #31
  unreachable

bb.ag:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit24, %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #18

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context3popEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !679  ; 3 uses
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.e = load i32, ptr %i.d, align 4, !tbaa !680  ; 2 uses
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %_ZN3smt7context15pop_to_base_lvlEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i32 %i.b, %i.e
  %i.h = tail call noundef i32 @_ZN3smt7context14pop_scope_coreEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %i.g) ; 0 uses
  tail call void @_ZN3smt7context22reset_cache_generationEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
  br label %_ZN3smt7context15pop_to_base_lvlEv.exit

_ZN3smt7context15pop_to_base_lvlEv.exit:          ; preds = %bb.b, %bb.c
  %i.i = tail call noundef i32 @_ZN3smt7context14pop_scope_coreEj(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1) ; 0 uses
  tail call void @_ZN3smt7context22reset_cache_generationEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN3smt7context15pop_to_base_lvlEv.exit
  ret void
}

declare void @_ZN3smt15model_generator5resetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context17reset_tmp_clausesEv(ptr noundef nonnull align 8 dereferenceable(10728) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !781  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE5resetEv.exit, label %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE3endEv.exit

_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !644  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !781 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE5resetEv.exit, label %_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i

_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i: ; preds = %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE3endEv.exit, %._crit_edge
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE3endEv.exit ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !644  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.r, %_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i ], [ %i.k, %_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNK6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !647  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZSt8_DestroyISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  %i.r = add i32 %.08.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorISt4pairIPN3smt6clauseE7svectorIN3sat7literalEjEELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

end_hunk_0

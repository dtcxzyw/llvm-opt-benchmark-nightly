Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/options_helper?download=true
inline.NumInlined: 4739
inline.NumDeleted: 2143
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7rocksdb11StringToMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt13unordered_mapIS5_S5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_S5_EEE:bb.a
          to label %.noexc105 unwind label %.loopexit.split-lp269

.noexc105:                                        ; preds = %.noexc10.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = add i64 %i.i, -1                         ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !34

.noexc11.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc106 unwind label %.loopexit.split-lp269

.noexc106:                                        ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30
          to label %._crit_edge.i.i.i.thread unwind label %.loopexit268 ; 2 uses

._crit_edge.i.i.i.thread:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.w, ptr %5, align 8, !tbaa !33, !alias.scope !606
  store i64 %i.q, ptr %i.d, align 8, !tbaa !27, !alias.scope !606
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %cond = icmp eq i64 %i.q, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.r, align 1, !tbaa !27
  store i8 %i.x, ptr %i.d, align 8, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.y = phi ptr [ %i.w, %._crit_edge.i.i.i.thread ], [ %i.d, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.r, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.y, %bb.g ], [ %i.d, %bb.f ]
  store i64 %i.q, ptr %i.e, align 8, !tbaa !28, !alias.scope !606
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store i8 0, ptr %i.aa, align 1, !tbaa !27
  invoke void @_ZN7rocksdb4trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %3, align 8, !tbaa !33    ; 6 uses
  %i.ac = icmp eq ptr %i.ab, %i.f
  %i.ad = load ptr, ptr %4, align 8, !tbaa !33    ; 5 uses
  %i.ae = icmp eq ptr %i.ad, %i.g                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.ae, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.ae, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = load i64, ptr %i.h, align 8, !tbaa !28  ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  switch i64 %i.af, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !27
  store i8 %i.ah, ptr %i.ab, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !28
  %i.aj = load ptr, ptr %3, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !33
  %i.al = load <2 x i64>, ptr %i.h, align 8, !tbaa !27
  store <2 x i64> %i.al, ptr %i.a, align 8, !tbaa !27
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.f, align 8, !tbaa !27
  store ptr %i.ad, ptr %3, align 8, !tbaa !33
  %i.an = load <2 x i64>, ptr %i.h, align 8, !tbaa !27
  store <2 x i64> %i.an, ptr %i.a, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %4, align 8, !tbaa !33
  store i64 %i.am, ptr %i.g, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %4, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.ao = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ab, %bb.m ], [ %i.g, %bb.n ]
  store i64 0, ptr %i.h, align 8, !tbaa !28
  store i8 0, ptr %i.ao, align 1, !tbaa !27
  %i.ap = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.g
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !27
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.at = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.d, align 8, !tbaa !27
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 2
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !609

.loopexit268:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.loopexit.split-lp269:                            ; preds = %.noexc10.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.o:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.o
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !27
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.o, %.loopexit268, %.loopexit.split-lp269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %.pn99 = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp269 ], [ %lpad.loopexit270, %.loopexit268 ], [ %i.az, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bz

.critedge:                                        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.b, %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 17 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not686 = icmp eq i64 %i.ca, 0
  br i1 %.not686, label %.loopexit615, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i225.jt0
  %i.cb = phi i64 [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i225.jt0 ], [ %i.ca, %.critedge ]
  %.070685 = phi i64 [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i225.jt0 ], [ 0, %.critedge ] ; 4 uses
  %i.cc = load ptr, ptr %3, align 8               ; 2 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.p
  %indvars.iv.in = phi i64 [ %.070685, %.lr.ph.i.i ], [ %indvars.iv, %bb.p ]
  %.0111420.i.i = phi i64 [ %.070685, %.lr.ph.i.i ], [ %i.ch, %bb.p ] ; 7 uses
  %indvars.iv = add i64 %indvars.iv.in, 1         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0111420.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27  ; 2 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %i.cf, i64 noundef 4) #27
  %.not13.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not13.not.i.i, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ch = add i64 %.0111420.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ch, %i.cb
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ci = icmp eq i64 %.0111420.i.i, -1
  br i1 %i.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit.thread, label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr @.str.168, ptr %6, align 8, !tbaa !601
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 39, ptr %i.cj, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr @.str.185, ptr %7, align 8, !tbaa !601
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !603
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.q

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.thread245

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit.thread
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bz

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcm.exit
  %.not = icmp eq i8 %i.ce, 61
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i117, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr @.str.169, ptr %8, align 8, !tbaa !601
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 22, ptr %i.cm, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr @.str.185, ptr %9, align 8, !tbaa !601
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !603
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit116 unwind label %bb.t

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit116: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread245

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i117: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.cp = sub nuw i64 %.0111420.i.i, %.070685     ; 8 uses
  store ptr %i.be, ptr %11, align 8, !tbaa !26, !alias.scope !610
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.070685 ; 2 uses
  %i.cr = icmp ugt i64 %i.cp, 15
  br i1 %i.cr, label %bb.u, label %._crit_edge.i.i.i119

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i117
  %i.cs = icmp slt i64 %i.cp, 0
  br i1 %i.cs, label %.noexc10.i.i122, label %bb.v

.noexc10.i.i122:                                  ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #29
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %.noexc10.i.i122
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.ct = add nuw i64 %i.cp, 1                    ; 2 uses
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %.noexc11.i.i121, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i120, !prof !34

.noexc11.i.i121:                                  ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc125 unwind label %.loopexit.split-lp

.noexc125:                                        ; preds = %.noexc11.i.i121
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i120: ; preds = %bb.v
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #30
          to label %.noexc126 unwind label %.loopexit ; 2 uses

.noexc126:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i120
  store ptr %i.cv, ptr %11, align 8, !tbaa !33, !alias.scope !610
  store i64 %i.cp, ptr %i.be, align 8, !tbaa !27, !alias.scope !610
  br label %._crit_edge.i.i.i119

._crit_edge.i.i.i119:                             ; preds = %.noexc126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i117
  %i.cw = phi ptr [ %i.cv, %.noexc126 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i117 ] ; 3 uses
  switch i64 %i.cp, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i119
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !27
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !27
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i119
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cq, i64 %i.cp, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i119
  store i64 %i.cp, ptr %i.bf, align 8, !tbaa !28, !alias.scope !610
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cp
  store i8 0, ptr %i.cy, align 1, !tbaa !27
  invoke void @_ZN7rocksdb4trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.be
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.z
  %i.db = load i64, ptr %i.be, align 8, !tbaa !27
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.dd = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.df = load i64, ptr %i.a, align 8, !tbaa !28  ; 10 uses
  %i.dg = load ptr, ptr %3, align 8               ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.df, i64 %indvars.iv)
  %.052677 = add nuw i64 %.0111420.i.i, 1         ; 2 uses
  %i.dh = icmp ult i64 %.052677, %i.df
  br i1 %i.dh, label %.lr.ph680, label %._crit_edge681

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr @.str.170, ptr %12, align 8, !tbaa !601
  store i64 15, ptr %i.bx, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr @.str.185, ptr %13, align 8, !tbaa !601
  store i64 0, ptr %i.by, align 8, !tbaa !603
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit132 unwind label %bb.ac

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit132: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.bw

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i120
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

.loopexit.split-lp:                               ; preds = %.noexc10.i.i122, %.noexc11.i.i121
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.ab:                                            ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.be
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ab
  %i.dl = load i64, ptr %i.be, align 8, !tbaa !27
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ab, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %.pn = phi { ptr, i32 } [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.di, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.ac:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.by

bb.ad:                                            ; preds = %.lr.ph680
  %.052 = add nuw i64 %.052679, 1                 ; 2 uses
  %i.do = icmp ult i64 %.052, %i.df
  br i1 %i.do, label %.lr.ph680, label %._crit_edge681, !llvm.loop !613

.lr.ph680:                                        ; preds = %.preheader, %bb.ad
  %.052679 = phi i64 [ %.052, %bb.ad ], [ %.052677, %.preheader ] ; 9 uses
  %.052.in678 = phi i64 [ %.052679, %bb.ad ], [ %.0111420.i.i, %.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.052679
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !27
  %i.dr = sext i8 %i.dq to i32
  %i.ds = call i32 @isspace(i32 noundef %i.dr) #31
  %.not81 = icmp eq i32 %i.ds, 0
  br i1 %.not81, label %bb.ae, label %bb.ad, !llvm.loop !613

bb.ae:                                            ; preds = %.lr.ph680
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.052679 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store ptr %i.bh, ptr %14, align 8, !tbaa !26
  store i64 0, ptr %i.bi, align 8, !tbaa !28
  store i8 0, ptr %i.bh, align 8, !tbaa !27
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !27
  %i.dv = icmp eq i8 %i.du, 123
  br i1 %i.dv, label %bb.af, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dw = add nuw i64 %.052.in678, 2              ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.df
  br i1 %i.dx, label %.lr.ph486, label %._crit_edge.thread

.lr.ph486:                                        ; preds = %bb.af, %.lr.ph486
  %.0485 = phi i64 [ %spec.select102, %.lr.ph486 ], [ %i.dw, %bb.af ] ; 2 uses
  %.050484 = phi i32 [ %.151, %.lr.ph486 ], [ 1, %bb.af ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0485
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27  ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 123
  %i.eb = icmp eq i8 %i.dz, 125
  %i.ec = sext i1 %i.eb to i32
  %.151.v = select i1 %i.ea, i32 1, i32 %i.ec
  %.151 = add nsw i32 %.151.v, %.050484           ; 3 uses
  %.not251 = icmp ne i32 %.151, 0                 ; 2 uses
  %i.ed = zext i1 %.not251 to i64
  %spec.select102 = add nuw i64 %.0485, %i.ed     ; 5 uses
  %i.ee = icmp ult i64 %spec.select102, %i.df
  %i.ef = and i1 %.not251, %i.ee
  br i1 %i.ef, label %.lr.ph486, label %._crit_edge, !llvm.loop !614

bb.ag:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit, %.critedge4.thread240
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

._crit_edge:                                      ; preds = %.lr.ph486
  %i.eh = icmp eq i32 %.151, 0
  br i1 %i.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i138, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.af, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr @.str.171, ptr %15, align 8, !tbaa !601
  store i64 42, ptr %i.br, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr @.str.185, ptr %16, align 8, !tbaa !601
  store i64 0, ptr %i.bs, align 8, !tbaa !603
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit137 unwind label %bb.ah

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit137: ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %.critedge4.jt1

bb.ah:                                            ; preds = %._crit_edge.thread
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i138: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.ej = sub i64 %spec.select102, %.052.in678
  store ptr %i.bt, ptr %17, align 8, !tbaa !26, !alias.scope !615
  %i.ek = sub nuw i64 %i.df, %.052679
  %spec.select.i.i.i139 = call noundef i64 @llvm.umin.i64(i64 %i.ej, i64 %i.ek) ; 8 uses
  %i.el = icmp ugt i64 %spec.select.i.i.i139, 15
  br i1 %i.el, label %bb.ai, label %._crit_edge.i.i.i140

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i138
  %i.em = icmp slt i64 %spec.select.i.i.i139, 0
  br i1 %i.em, label %.noexc10.i.i143, label %bb.aj

.noexc10.i.i143:                                  ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.200) #29
          to label %.noexc145 unwind label %.loopexit.split-lp264

.noexc145:                                        ; preds = %.noexc10.i.i143
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.en = add nuw i64 %spec.select.i.i.i139, 1    ; 2 uses
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %.noexc11.i.i142, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i141, !prof !34

.noexc11.i.i142:                                  ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc146 unwind label %.loopexit.split-lp264

.noexc146:                                        ; preds = %.noexc11.i.i142
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i141: ; preds = %bb.aj
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #30
          to label %.noexc147 unwind label %.loopexit263 ; 2 uses

.noexc147:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i141
  store ptr %i.ep, ptr %17, align 8, !tbaa !33, !alias.scope !615
  store i64 %spec.select.i.i.i139, ptr %i.bt, align 8, !tbaa !27, !alias.scope !615
  br label %._crit_edge.i.i.i140

._crit_edge.i.i.i140:                             ; preds = %.noexc147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i138
  %i.eq = phi ptr [ %i.ep, %.noexc147 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i138 ] ; 3 uses
end_hunk_0

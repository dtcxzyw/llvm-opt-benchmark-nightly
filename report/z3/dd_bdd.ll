Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dd_bdd?download=true
inline.NumInlined: 1516
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2dd11bdd_manager11mk_quot_remERKNS_4bddvES3_RS1_S4_:bb.a
_ZN2dd4bddvD2Ev.exit62:                           ; preds = %.noexc.i.i58, %_ZNK2dd4bddv6appendERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load <2 x ptr>, ptr %6, align 16, !tbaa !127
  store ptr null, ptr %6, align 16, !tbaa !116
  store <2 x ptr> %i.ab, ptr %4, align 8, !tbaa !127
  %i.ac = load ptr, ptr %7, align 8, !tbaa !116
  %.not.i.i.i63 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i63, label %_ZN2dd4bddvD2Ev.exit65, label %bb.i

bb.i:                                             ; preds = %_ZN2dd4bddvD2Ev.exit62
  invoke void @_ZN6vectorIN2dd3bddELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc.i.i64 unwind label %bb.j

.noexc.i.i64:                                     ; preds = %bb.i
  %i.ad = load ptr, ptr %7, align 8, !tbaa !116
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ae)
          to label %_ZN2dd4bddvD2Ev.exit65 unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i64, %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN2dd4bddvD2Ev.exit65:                           ; preds = %_ZN2dd4bddvD2Ev.exit62, %.noexc.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ah = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK2dd4bddv4sizeEv.exit67, label %bb.k

bb.k:                                             ; preds = %_ZN2dd4bddvD2Ev.exit65
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !62
  br label %_ZNK2dd4bddv4sizeEv.exit67

_ZNK2dd4bddv4sizeEv.exit67:                       ; preds = %_ZN2dd4bddvD2Ev.exit65, %bb.k
  %.0.i.i66 = phi i32 [ %i.ak, %bb.k ], [ 0, %_ZN2dd4bddvD2Ev.exit65 ]
  call void @_ZN2dd11bdd_manager7mk_zeroEj(ptr dead_on_unwind nonnull writable sret(%"class.dd::bddv") align 8 %9, ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %.0.i.i66)
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  store ptr null, ptr %8, align 8, !tbaa !116, !alias.scope !531
  %i.am = load ptr, ptr %9, align 8, !tbaa !116, !noalias !531 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i105, label %_ZN2dd4bddvC2ERKS0_.exit.i, label %_ZNK6vectorIN2dd3bddELb1EjE8capacityEv.exit.i.i.i.i

_ZNK6vectorIN2dd3bddELb1EjE8capacityEv.exit.i.i.i.i: ; preds = %_ZNK2dd4bddv4sizeEv.exit67
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !62, !noalias !531
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !62, !noalias !531
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = or disjoint i64 %i.ar, 8
  %i.at = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.as)
          to label %.noexc107 unwind label %bb.s  ; 2 uses

.noexc107:                                        ; preds = %_ZNK6vectorIN2dd3bddELb1EjE8capacityEv.exit.i.i.i.i
  store <2 x i32> %i.ao, ptr %i.at, align 4, !tbaa !62, !noalias !531
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !116, !alias.scope !531
  %i.av = load ptr, ptr %9, align 8, !tbaa !116, !noalias !531 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN6vectorIN2dd3bddELb1EjE9copy_coreERKS2_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc107
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !62, !noalias !531
  %i.az = zext i32 %i.ay to i64
  br label %_ZN6vectorIN2dd3bddELb1EjE9copy_coreERKS2_.exit.i.i.i

_ZN6vectorIN2dd3bddELb1EjE9copy_coreERKS2_.exit.i.i.i: ; preds = %bb.l, %.noexc107
  %.0.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ 0, %.noexc107 ]
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i.i.i.i.i.i
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2dd3bddEPS1_ET0_T_S6_S5_(ptr noundef %i.av, ptr noundef %i.ba, ptr noundef nonnull %i.au)
          to label %_ZN2dd4bddvC2ERKS0_.exit.i unwind label %bb.s ; 0 uses

_ZN2dd4bddvC2ERKS0_.exit.i:                       ; preds = %_ZN6vectorIN2dd3bddELb1EjE9copy_coreERKS2_.exit.i.i.i, %_ZNK2dd4bddv4sizeEv.exit67
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !120, !noalias !531
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !120, !alias.scope !531
  %i.be = load ptr, ptr %2, align 8, !tbaa !116, !noalias !531 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK2dd4bddv6appendERKS0_.exit68, label %_ZNK6vectorIN2dd3bddELb1EjE4sizeEv.exit.i.i

_ZNK6vectorIN2dd3bddELb1EjE4sizeEv.exit.i.i:      ; preds = %_ZN2dd4bddvC2ERKS0_.exit.i, %.noexc.i106
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.noexc.i106 ], [ 0, %_ZN2dd4bddvC2ERKS0_.exit.i ] ; 3 uses
  %i.bg = phi ptr [ %i.bn, %.noexc.i106 ], [ %i.be, %_ZN2dd4bddvC2ERKS0_.exit.i ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !62
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.i.i, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZNK2dd4bddv6appendERKS0_.exit68

bb.m:                                             ; preds = %_ZNK6vectorIN2dd3bddELb1EjE4sizeEv.exit.i.i
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN2dd3bddELb1EjE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.noexc.i106 unwind label %bb.n ; 0 uses

.noexc.i106:                                      ; preds = %bb.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.bn = load ptr, ptr %2, align 8, !tbaa !116, !noalias !531 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZNK2dd4bddv6appendERKS0_.exit68, label %_ZNK6vectorIN2dd3bddELb1EjE4sizeEv.exit.i.i, !llvm.loop !9

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2dd4bddvD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  br label %.body109

_ZNK2dd4bddv6appendERKS0_.exit68:                 ; preds = %_ZNK6vectorIN2dd3bddELb1EjE4sizeEv.exit.i.i, %.noexc.i106, %_ZN2dd4bddvC2ERKS0_.exit.i
  %i.bq = load ptr, ptr %9, align 8, !tbaa !116
  %.not.i.i.i69 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i69, label %_ZN2dd4bddvD2Ev.exit71, label %bb.o

bb.o:                                             ; preds = %_ZNK2dd4bddv6appendERKS0_.exit68
  invoke void @_ZN6vectorIN2dd3bddELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc.i.i70 unwind label %bb.p

.noexc.i.i70:                                     ; preds = %bb.o
  %i.br = load ptr, ptr %9, align 8, !tbaa !116
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN2dd4bddvD2Ev.exit71 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i.i70, %bb.o
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #29
  unreachable

_ZN2dd4bddvD2Ev.exit71:                           ; preds = %_ZNK2dd4bddv6appendERKS0_.exit68, %.noexc.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not = icmp eq i32 %i.u, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.q

bb.q:                                             ; preds = %_ZN2dd3bddD2Ev.exit101, %_ZN2dd4bddvD2Ev.exit71
  %.030 = phi i32 [ 0, %_ZN2dd4bddvD2Ev.exit71 ], [ %i.ig, %_ZN2dd3bddD2Ev.exit101 ] ; 5 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !116   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNK2dd4bddv4sizeEv.exit73, label %_ZNK2dd4bddv4sizeEv.exit73.thread

_ZNK2dd4bddv4sizeEv.exit73:                       ; preds = %bb.q
  %.not.not = icmp eq i32 %.030, 0
  br i1 %.not.not, label %bb.u, label %_ZNK2dd4bddv4sizeEv.exit75

_ZNK2dd4bddv4sizeEv.exit73.thread:                ; preds = %bb.q
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !62 ; 2 uses
  %.not113 = icmp ugt i32 %.030, %i.cd
  br i1 %.not113, label %_ZNK2dd4bddv4sizeEv.exit75, label %bb.u

bb.r:                                             ; preds = %_ZNK2dd4bddv4sizeEv.exit56
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2dd4bddvD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bt

bb.s:                                             ; preds = %_ZN6vectorIN2dd3bddELb1EjE9copy_coreERKS2_.exit.i.i.i, %_ZNK6vectorIN2dd3bddELb1EjE8capacityEv.exit.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.body109:                                         ; preds = %bb.n, %bb.s
  %eh.lpad-body110 = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %i.bp, %bb.n ]
  call void @_ZN2dd4bddvD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bs

bb.t:                                             ; preds = %_ZNK2dd4bddv4sizeEv.exit75
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.u:                                             ; preds = %_ZNK2dd4bddv4sizeEv.exit73.thread, %_ZNK2dd4bddv4sizeEv.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !120, !noalias !532
  invoke void @_ZN2dd11bdd_manager6mk_uleERKNS_4bddvES3_(ptr dead_on_unwind nonnull writable sret(%"class.dd::bdd") align 8 %10, ptr noundef nonnull align 8 dereferenceable(728) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNK2dd4bddvleERKS0_.exit unwind label %bb.v

_ZNK2dd4bddvleERKS0_.exit:                        ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !120, !noalias !533
  invoke void @_ZN2dd11bdd_manager6mk_subERKNS_4bddvES3_(ptr dead_on_unwind nonnull writable sret(%"class.dd::bddv") align 8 %11, ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNK2dd4bddvmiERKS0_.exit.preheader unwind label %bb.w

_ZNK2dd4bddvmiERKS0_.exit.preheader:              ; preds = %_ZNK2dd4bddvleERKS0_.exit
  br i1 %.not, label %_ZNK2dd4bddvmiERKS0_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2dd4bddvmiERKS0_.exit.preheader
  %13 = load i32, ptr %10, align 8, !tbaa !94, !noalias !534
  br label %.lr.ph.a

_ZNK2dd4bddvmiERKS0_.exit._crit_edge:             ; preds = %_ZN2dd3bddD2Ev.exit, %_ZNK2dd4bddvmiERKS0_.exit.preheader
  %.not40 = icmp eq i32 %.030, 0
  br i1 %.not40, label %bb.bd, label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.w:                                             ; preds = %_ZNK2dd4bddvleERKS0_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph.a:                                         ; preds = %.lr.ph, %_ZN2dd3bddD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2dd3bddD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cl = load ptr, ptr %11, align 8, !tbaa !116
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cn = load ptr, ptr %4, align 8, !tbaa !116
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !59, !noalias !534 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN2dd11bdd_manager11scoped_pushC2ERS0_.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.a
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !62, !noalias !534
  br label %_ZN2dd11bdd_manager11scoped_pushC2ERS0_.exit.i

_ZN2dd11bdd_manager11scoped_pushC2ERS0_.exit.i:   ; preds = %bb.x, %.lr.ph.a
  %.0.i.i.i = phi i32 [ %i.cs, %bb.x ], [ 0, %.lr.ph.a ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %_ZN2dd11bdd_manager11scoped_pushC2ERS0_.exit.i
  %.010.i = phi i1 [ true, %_ZN2dd11bdd_manager11scoped_pushC2ERS0_.exit.i ], [ false, %bb.ai ]
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !94, !noalias !534
  %i.cu = load i32, ptr %i.co, align 8, !tbaa !94, !noalias !534
  %i.cv = invoke noundef i32 @_ZN2dd11bdd_manager10mk_ite_recEjjj(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %13, i32 noundef %i.ct, i32 noundef %i.cu)
          to label %bb.z unwind label %bb.ae, !noalias !534 ; 6 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = load ptr, ptr %i.bx, align 8, !tbaa !48, !noalias !534
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !534 ; 3 uses
  %i.da = and i32 %i.cz, 1023
  %.not.i.i.i76 = icmp eq i32 %i.da, 1023
  br i1 %.not.i.i.i76, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = add i32 %i.cz, 1
  %i.dc = and i32 %i.db, 1023
  %i.dd = and i32 %i.cz, -1024
  %i.de = or disjoint i32 %i.dc, %i.dd
  store i32 %i.de, ptr %i.cy, align 4, !noalias !534
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.df = load ptr, ptr %i.by, align 8, !tbaa !59, !noalias !534 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i, label %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i.i

_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i.i:           ; preds = %bb.ab
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !62, !noalias !534 ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  %.not8.not.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not8.not.i.i.i.i, label %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i, label %.lr.ph.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.not.i.i.i.i, label %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i.i, %bb.ac
  %.09.i.i.i.i = phi ptr [ %i.dm, %bb.ac ], [ %i.df, %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i.i ] ; 2 uses
  %i.dn = load i32, ptr %.09.i.i.i.i, align 4, !tbaa !62, !noalias !534
  %i.do = icmp eq i32 %i.dn, %i.cv
  br i1 %i.do, label %_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i.i, label %bb.ac

_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i.i:      ; preds = %.lr.ph.i.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.15, i32 noundef 186, ptr noundef nonnull @.str.16)
          to label %.noexc.i unwind label %bb.ae, !noalias !534

.noexc.i:                                         ; preds = %_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i unwind label %bb.ae, !noalias !534

_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i:          ; preds = %.noexc.i, %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i.i, %bb.ab, %bb.ac
  store ptr %0, ptr %i.bw, align 8, !alias.scope !534
  store i32 %i.cv, ptr %12, align 8, !alias.scope !534
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !59, !noalias !534 ; 2 uses
  %.not.i.i14.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i14.i, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -4
  store i32 %.0.i.i.i, ptr %i.dq, align 4, !tbaa !62, !noalias !534
  br label %bb.an

bb.ae:                                            ; preds = %.noexc.i, %_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i.i, %bb.y
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2dd11bdd_manager7mem_outE ; 3 uses
  %i.ds = extractvalue { ptr, i32 } %i.dr, 1
  %i.dt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2dd11bdd_manager7mem_outE) #25
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.af, label %.sink.split.i

bb.af:                                            ; preds = %bb.ae
  %i.dv = extractvalue { ptr, i32 } %i.dr, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %i.dv) #25, !noalias !534 ; 0 uses
  br i1 %.010.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_rethrow() #27
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !534

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %bb.ah, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.sink.split.i unwind label %bb.al, !noalias !534

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN2dd11bdd_manager11try_reorderEv(ptr noundef nonnull align 8 dereferenceable(728) %0)
          to label %bb.ai unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !534

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.aj, !noalias !534, !llvm.loop !8

bb.aj:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.aj, %.loopexit.split-lp.i.loopexit.split-lp
  %.merged.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ], [ %i.dx, %bb.aj ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.dy = load ptr, ptr %i.bv, align 8, !tbaa !59, !noalias !534 ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i15.i, label %.body, label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %.0.i.i.i, ptr %i.dz, align 4, !tbaa !62, !noalias !534
  br label %.body

bb.al:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #29, !noalias !534
  unreachable

bb.am:                                            ; preds = %bb.ag
  unreachable

bb.an:                                            ; preds = %_ZN2dd3bddC2EjPNS_11bdd_managerE.exit.i, %bb.ad
  %i.ec = load ptr, ptr %4, align 8, !tbaa !116
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !94 ; 2 uses
  store i32 %i.cv, ptr %i.ed, align 8, !tbaa !94
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !95 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !48
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.cx ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4            ; 3 uses
  %i.el = and i32 %i.ek, 1023
  %.not.i.i = icmp eq i32 %i.el, 1023
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = add i32 %i.ek, 1
  %i.en = and i32 %i.em, 1023
  %i.eo = and i32 %i.ek, -1024
  %i.ep = or disjoint i32 %i.en, %i.eo
  store i32 %i.ep, ptr %i.ej, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !59 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN2dd11bdd_manager7inc_refEj.exit.i, label %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i

_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i:             ; preds = %bb.ap
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !62 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ew
  %.not8.not.i.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not8.not.i.i.i, label %_ZN2dd11bdd_manager7inc_refEj.exit.i, label %.lr.ph.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ey, %i.ex
  br i1 %.not.not.i.i.i, label %_ZN2dd11bdd_manager7inc_refEj.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i, %bb.aq
  %.09.i.i.i = phi ptr [ %i.ey, %bb.aq ], [ %i.er, %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i ] ; 2 uses
  %i.ez = load i32, ptr %.09.i.i.i, align 4, !tbaa !62
  %i.fa = icmp eq i32 %i.ez, %i.cv
  br i1 %i.fa, label %_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i, label %bb.aq

_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i:        ; preds = %.lr.ph.i.i.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.15, i32 noundef 186, ptr noundef nonnull @.str.16)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %_ZNK6vectorIjLb0EjE8containsERKj.exit.i.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN2dd11bdd_manager7inc_refEj.exit.i unwind label %bb.ay

_ZN2dd11bdd_manager7inc_refEj.exit.i:             ; preds = %bb.aq, %.noexc, %_ZNK6vectorIjLb0EjE3endEv.exit.i.i.i, %bb.ap
  %i.fb = load ptr, ptr %i.ef, align 8, !tbaa !95 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !48
  %i.fe = zext i32 %i.ee to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4            ; 3 uses
  %i.fh = and i32 %i.fg, 1023
  %.not.i2.i = icmp eq i32 %i.fh, 1023
  br i1 %.not.i2.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN2dd11bdd_manager7inc_refEj.exit.i
  %i.fi = add i32 %i.fg, 1023
  %i.fj = and i32 %i.fi, 1023
  %i.fk = and i32 %i.fg, -1024
  %i.fl = or disjoint i32 %i.fj, %i.fk
  store i32 %i.fl, ptr %i.ff, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN2dd11bdd_manager7inc_refEj.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 112
end_hunk_0

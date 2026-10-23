Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/falsecolor?download=true
inline.NumInlined: 299
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #18
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.i, ptr %i.a, align 8, !tbaa !17
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.k   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i
  store ptr %i.k, ptr %15, align 8, !tbaa !14
  %i.l = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.l, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc33, %bb.d
  %i.m = phi ptr [ %i.k, %.noexc33 ], [ %i.g, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = load ptr, ptr %15, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.s = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #17
  %i.t = load ptr, ptr %14, align 8, !tbaa !14    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = load ptr, ptr %15, align 8, !tbaa !14    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ar

bb.k:                                             ; preds = %.noexc.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.l:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.m:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn16 = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.ag = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.l
  %.pn16.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn16, %bb.o ] ; 2 uses
  %i.al = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.an = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.k
  %.pn16.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn16.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn16.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bi

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !43
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %2, i32 noundef 500, i32 noundef 612, i32 noundef 0)
          to label %.noexc43 unwind label %bb.ap

.noexc43:                                         ; preds = %bb.p
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #17
  %i.ap = load ptr, ptr %2, align 8, !tbaa !49, !noalias !50 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(688) %2, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %.noexc43
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !43
  br label %.body

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %.noexc43
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #17
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !43
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.q

.preheader.i:                                     ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.t

bb.q:                                             ; preds = %bb.r, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !43
  store i64 0, ptr %i.ay, align 8, !noalias !43
  store i32 50397184, ptr %3, align 8, !tbaa !28, !noalias !43
  store ptr %16, ptr %i.ax, align 8, !tbaa !29, !noalias !43
  %i.bl = shl nuw nsw i64 %indvars.iv.i, 1
  %23 = add nuw nsw i64 %i.bl, 50                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !43
  %i.bm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bn = uitofp nneg i32 %i.bm to double
  store double %i.bn, ptr %4, align 8, !tbaa !30, !noalias !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !noalias !43
  %.sroa.0144.0.insert.insert.i = or disjoint i64 %23, 107374182400
  %.sroa.0142.0.insert.insert.i = or disjoint i64 %23, 322122547200
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %.sroa.0144.0.insert.insert.i, i64 %.sroa.0142.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.q, !llvm.loop !39

bb.s:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !43
  br label %bb.an

bb.t:                                             ; preds = %bb.am, %.preheader.i
  %.040202.i = phi i32 [ 1, %.preheader.i ], [ %i.gm, %bb.am ] ; 4 uses
  %.sroa.0129.0201.i = phi i64 [ 4294967295, %.preheader.i ], [ %.sroa.0129.1.i, %bb.am ] ; 2 uses
  %i.bp = and i64 %.sroa.0129.0201.i, 4294967295
  %i.bq = mul nuw i64 %i.bp, 4164903690
  %i.br = lshr i64 %.sroa.0129.0201.i, 32
  %i.bs = add nuw i64 %i.bq, %i.br                ; 10 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = urem i32 %i.bt, 3
  %i.bv = load i32, ptr %i.ba, align 4, !tbaa !54, !alias.scope !43 ; 4 uses
  %i.bw = icmp eq i32 %i.bv, 100                  ; 3 uses
  switch i32 %i.bu, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.aa
    i32 2, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.bw, label %_ZN2cv3RNG7uniformEii.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = and i64 %i.bs, 4294967295
  %i.by = mul nuw i64 %i.bx, 4164903690
  %i.bz = lshr i64 %i.bs, 32
  %i.ca = add nuw i64 %i.by, %i.bz                ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add nsw i32 %i.bv, -100
  %i.cd = urem i32 %i.cb, %i.cc
  %i.ce = add i32 %i.cd, 50
  %i.cf = zext i32 %i.ce to i64
  br label %_ZN2cv3RNG7uniformEii.exit.i

_ZN2cv3RNG7uniformEii.exit.i:                     ; preds = %bb.v, %bb.u
  %.sroa.0129.2.i = phi i64 [ %i.bs, %bb.u ], [ %i.ca, %bb.v ] ; 3 uses
  %.sroa.0111.0.insert.ext.i = phi i64 [ 50, %bb.u ], [ %i.cf, %bb.v ]
  %i.cg = load i32, ptr %i.bb, align 8, !tbaa !55, !alias.scope !43 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 100
  br i1 %i.ch, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN2cv3RNG7uniformEii.exit.i
  %i.ci = and i64 %.sroa.0129.2.i, 4294967295
  %i.cj = mul nuw i64 %i.ci, 4164903690
  %i.ck = lshr i64 %.sroa.0129.2.i, 32
  %i.cl = add nuw i64 %i.cj, %i.ck                ; 2 uses
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add nsw i32 %i.cg, -100
  %i.co = urem i32 %i.cm, %i.cn
  %i.cp = add i32 %i.co, 75
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw i64 %i.cq, 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2cv3RNG7uniformEii.exit.i
  %.sroa.0129.3.i = phi i64 [ %.sroa.0129.2.i, %_ZN2cv3RNG7uniformEii.exit.i ], [ %i.cl, %bb.w ] ; 2 uses
  %.sroa.5112.0.insert.ext.i = phi i64 [ 322122547200, %_ZN2cv3RNG7uniformEii.exit.i ], [ %i.cr, %bb.w ]
  %i.cs = and i64 %.sroa.0129.3.i, 4294967295
  %i.ct = mul nuw i64 %i.cs, 4164903690
  %i.cu = lshr i64 %.sroa.0129.3.i, 32
  %i.cv = add nuw i64 %i.ct, %i.cu                ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = urem i32 %i.cw, 24
  %i.cy = add nuw nsw i32 %i.cx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !43
  store i64 0, ptr %i.bj, align 8, !noalias !43
  store i32 50397184, ptr %5, align 8, !tbaa !28, !noalias !43
  store ptr %16, ptr %i.bi, align 8, !tbaa !29, !noalias !43
  %.sroa.0115.0.insert.insert118.i = or disjoint i64 %.sroa.5112.0.insert.ext.i, %.sroa.0111.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !43
  %i.cz = uitofp nneg i32 %.040202.i to double
  store double %i.cz, ptr %6, align 8, !tbaa !30, !noalias !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !noalias !43
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %.sroa.0115.0.insert.insert118.i, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !43
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !43
  br label %bb.an

bb.aa:                                            ; preds = %bb.t
  br i1 %i.bw, label %_ZN2cv3RNG7uniformEii.exit65.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = and i64 %i.bs, 4294967295
  %i.dc = mul nuw i64 %i.db, 4164903690
  %i.dd = lshr i64 %i.bs, 32
  %i.de = add nuw i64 %i.dc, %i.dd                ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = add nsw i32 %i.bv, -100
  %i.dh = urem i32 %i.df, %i.dg
  %i.di = add i32 %i.dh, 50
  br label %_ZN2cv3RNG7uniformEii.exit65.i

_ZN2cv3RNG7uniformEii.exit65.i:                   ; preds = %bb.ab, %bb.aa
  %.sroa.0129.5.i = phi i64 [ %i.bs, %bb.aa ], [ %i.de, %bb.ab ] ; 3 uses
  %.sroa.0109.0.insert.ext.i = phi i32 [ 50, %bb.aa ], [ %i.di, %bb.ab ] ; 2 uses
  %i.dj = load i32, ptr %i.bb, align 8, !tbaa !55, !alias.scope !43 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 100
  br i1 %i.dk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv3RNG7uniformEii.exit65.i
  %i.dl = and i64 %.sroa.0129.5.i, 4294967295
  %i.dm = mul nuw i64 %i.dl, 4164903690
  %i.dn = lshr i64 %.sroa.0129.5.i, 32
  %i.do = add nuw i64 %i.dm, %i.dn                ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = add nsw i32 %i.dj, -100
  %i.dr = urem i32 %i.dp, %i.dq
  %i.ds = add i32 %i.dr, 75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN2cv3RNG7uniformEii.exit65.i
  %.sroa.0129.6.i = phi i64 [ %.sroa.0129.5.i, %_ZN2cv3RNG7uniformEii.exit65.i ], [ %i.do, %bb.ac ] ; 2 uses
  %.sroa.5110.0.insert.ext.i = phi i32 [ 75, %_ZN2cv3RNG7uniformEii.exit65.i ], [ %i.ds, %bb.ac ] ; 2 uses
  %i.dt = and i64 %.sroa.0129.6.i, 4294967295
  %i.du = mul nuw i64 %i.dt, 4164903690
  %i.dv = lshr i64 %.sroa.0129.6.i, 32
  %i.dw = add nuw i64 %i.du, %i.dv                ; 3 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = urem i32 %i.dx, 24
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = and i64 %i.dw, 4294967295
  %i.eb = mul nuw i64 %i.ea, 4164903690
  %i.ec = lshr i64 %i.dw, 32
  %i.ed = add nuw i64 %i.eb, %i.ec                ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = urem i32 %i.ee, 24
  %i.eg = lshr i32 %i.dz, 1                       ; 2 uses
  %.lhs.trunc.i = add nuw nsw i32 %i.ef, 1
  %.zext.i = lshr i32 %.lhs.trunc.i, 1            ; 2 uses
  %i.eh = sub nsw i32 %.sroa.0109.0.insert.ext.i, %i.eg ; 2 uses
  %i.ei = sub nsw i32 %.sroa.5110.0.insert.ext.i, %.zext.i ; 2 uses
  %i.ej = add nsw i32 %i.eg, %.sroa.0109.0.insert.ext.i ; 2 uses
  %i.ek = add nsw i32 %.zext.i, %.sroa.5110.0.insert.ext.i ; 2 uses
  %i.el = call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.eh) ; 2 uses
  %i.em = call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.ei) ; 2 uses
  %i.en = call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ej)
  %i.eo = sub nsw i32 %i.en, %i.el
  %i.ep = call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.ek)
  %i.eq = sub nsw i32 %i.ep, %i.em
  %.sroa.7114.8.insert.ext.i = zext i32 %i.eo to i64
  %.sroa.7114.12.insert.ext.i = zext i32 %i.eq to i64
  %.sroa.7114.12.insert.shift.i = shl nuw i64 %.sroa.7114.12.insert.ext.i, 32
  %.sroa.7114.12.insert.insert.i = or disjoint i64 %.sroa.7114.12.insert.shift.i, %.sroa.7114.8.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !43
  store i64 0, ptr %i.bg, align 8, !noalias !43
  store i32 50397184, ptr %7, align 8, !tbaa !28, !noalias !43
  store ptr %16, ptr %i.bf, align 8, !tbaa !29, !noalias !43
  %.sroa.0113.sroa.6.0.insert.ext.i = zext i32 %i.em to i64
  %.sroa.0113.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.0113.sroa.6.0.insert.ext.i, 32
  %.sroa.0113.sroa.0.0.insert.ext.i = zext i32 %i.el to i64
  %.sroa.0113.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0113.sroa.6.0.insert.shift.i, %.sroa.0113.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !43
  %i.er = uitofp nneg i32 %.040202.i to double
  store double %i.er, ptr %8, align 8, !tbaa !30, !noalias !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !noalias !43
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %.sroa.0113.sroa.0.0.insert.insert.i, i64 %.sroa.7114.12.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !43
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !43
  br label %bb.an

bb.ag:                                            ; preds = %bb.t
  br i1 %i.bw, label %_ZN2cv3RNG7uniformEii.exit84.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = and i64 %i.bs, 4294967295
end_hunk_0

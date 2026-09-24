Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/descriptor?download=true
inline.NumInlined: 22466
inline.NumDeleted: 7935
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN6google8protobuf17DescriptorBuilder24CheckEnumValueUniquenessERKNS0_19EnumDescriptorProtoEPKNS0_14EnumDescriptorE:bb.a
  %.01818.i = phi i64 [ %i.ci, %bb.n ], [ 0, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.01818.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64, !noalias !1907 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 95
  br i1 %i.bt, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i45
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64, !noalias !1907
  %i.bx = add nuw i64 %.01719.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.01719.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64, !noalias !1907
  %.not.i46 = icmp eq i8 %i.bw, %i.bz
  br i1 %.not.i46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ak, ptr %7, align 8, !tbaa !60, !alias.scope !1907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40, !noalias !1907
  store i64 %i.bo, ptr %i.d, align 8, !tbaa !61, !noalias !1907
  %i.ca = icmp ugt i64 %i.bo, 15
  br i1 %i.ca, label %._crit_edge.i.i.i.i.thread.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.thread.i:                     ; preds = %bb.j
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %._crit_edge.i.i.i.i.thread.i
  store ptr %i.cb, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !1907
  store i64 %i.cc, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1907
  br label %bb.l

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j
  %cond.i = icmp eq i64 %i.bo, 1
  br i1 %cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cd = load i8, ptr %i.bm, align 1, !tbaa !64, !noalias !1907
  store i8 %i.cd, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1907
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i, %.noexc
  %i.ce = phi ptr [ %i.cb, %.noexc ], [ %i.ak, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull readonly align 1 %i.bm, i64 %i.bo, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !1907
  %.pre98 = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = phi ptr [ %.pre98, %bb.l ], [ %i.ak, %bb.k ]
  %i.cg = phi i64 [ %.pre, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  store i64 %i.cg, ptr %i.al, align 8, !tbaa !65, !alias.scope !1907
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40, !noalias !1907
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.i, %.lr.ph.i45
  %.1.i = phi i64 [ %.01719.i, %.lr.ph.i45 ], [ %i.bx, %bb.i ] ; 3 uses
  %i.ci = add nuw i64 %.01818.i, 1                ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.bo
  %i.ck = icmp ult i64 %.1.i, %.val39
  %or.cond.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i, label %.lr.ph.i45, label %.critedge.i, !llvm.loop !1898

.critedge.i:                                      ; preds = %bb.n, %bb.h
  %.018.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.ci, %bb.n ] ; 3 uses
  %.017.lcssa.i = phi i64 [ 0, %bb.h ], [ %.1.i, %bb.n ]
  %i.cl = icmp ult i64 %.017.lcssa.i, %.val39
  br i1 %i.cl, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.cm = icmp ult i64 %.018.lcssa.i, %i.bo
  br i1 %i.cm, label %.lr.ph22.i, label %.critedge2.i

bb.o:                                             ; preds = %.critedge.i
  store ptr %i.ak, ptr %7, align 8, !tbaa !60, !alias.scope !1907
  %i.cn = icmp eq ptr %i.bm, null
  %or.cond.i.i.i25.i = and i1 %i.cn, %i.bp
  br i1 %or.cond.i.i.i25.i, label %.noexc28.i.invoke, label %bb.p

.noexc28.i.invoke:                                ; preds = %bb.z, %bb.u, %bb.o
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.272) #44
          to label %.noexc28.i.cont unwind label %.loopexit.split-lp

.noexc28.i.cont:                                  ; preds = %.noexc28.i.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40, !noalias !1907
  store i64 %i.bo, ptr %i.c, align 8, !tbaa !61, !noalias !1907
  %i.co = icmp ugt i64 %i.bo, 15
  br i1 %i.co, label %.noexc.i.i.i27.i, label %._crit_edge.i.i.i.i26.i

.noexc.i.i.i27.i:                                 ; preds = %bb.p
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc48 unwind label %.loopexit ; 2 uses

.noexc48:                                         ; preds = %.noexc.i.i.i27.i
  store ptr %i.cp, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !61, !noalias !1907
  store i64 %i.cq, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1907
  br label %._crit_edge.i.i.i.i26.i

._crit_edge.i.i.i.i26.i:                          ; preds = %.noexc48, %bb.p
  %i.cr = phi ptr [ %i.cp, %.noexc48 ], [ %i.ak, %bb.p ] ; 2 uses
  switch i64 %i.bo, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i26.i
  %i.cs = load i8, ptr %i.bm, align 1, !tbaa !64, !noalias !1907
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !64
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i.i26.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr readonly align 1 %i.bm, i64 %i.bo, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i26.i
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !61, !noalias !1907 ; 2 uses
  store i64 %i.ct, ptr %i.al, align 8, !tbaa !65, !alias.scope !1907
  %i.cu = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40, !noalias !1907
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.t
  %.11921.i = phi i64 [ %i.cz, %bb.t ], [ %.018.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.11921.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !64, !noalias !1907
  %i.cy = icmp eq i8 %i.cx, 95
  br i1 %i.cy, label %bb.t, label %.critedge2.i

bb.t:                                             ; preds = %.lr.ph22.i
  %i.cz = add i64 %.11921.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cz, %i.bo
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph22.i, !llvm.loop !1899

.thread.i:                                        ; preds = %bb.t
  store ptr %i.ak, ptr %7, align 8, !tbaa !60, !alias.scope !1907
  br label %bb.v

.critedge2.i:                                     ; preds = %.lr.ph22.i, %.preheader.i
  %.119.lcssa.i = phi i64 [ %.018.lcssa.i, %.preheader.i ], [ %.11921.i, %.lr.ph22.i ] ; 3 uses
  %i.da = icmp eq i64 %.119.lcssa.i, %i.bo
  br i1 %i.da, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.critedge2.i
  store ptr %i.ak, ptr %7, align 8, !tbaa !60, !alias.scope !1907
  %i.db = icmp eq ptr %i.bm, null
  %or.cond.i.i.i34.i = and i1 %i.db, %i.bp
  br i1 %or.cond.i.i.i34.i, label %.noexc28.i.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40, !noalias !1907
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !61, !noalias !1907
  %i.dc = icmp ugt i64 %i.bo, 15
  br i1 %i.dc, label %.noexc.i.i.i36.i, label %._crit_edge.i.i.i.i35.i

.noexc.i.i.i36.i:                                 ; preds = %bb.v
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %.loopexit ; 2 uses

.noexc50:                                         ; preds = %.noexc.i.i.i36.i
  store ptr %i.dd, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.de = load i64, ptr %i.b, align 8, !tbaa !61, !noalias !1907
  store i64 %i.de, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1907
  br label %._crit_edge.i.i.i.i35.i

._crit_edge.i.i.i.i35.i:                          ; preds = %.noexc50, %bb.v
  %i.df = phi ptr [ %i.dd, %.noexc50 ], [ %i.ak, %bb.v ] ; 2 uses
  switch i64 %i.bo, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i35.i
  %i.dg = load i8, ptr %i.bm, align 1, !tbaa !64, !noalias !1907
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !64
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i.i35.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr readonly align 1 %i.bm, i64 %i.bo, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i.i35.i
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !61, !noalias !1907 ; 2 uses
  store i64 %i.dh, ptr %i.al, align 8, !tbaa !65, !alias.scope !1907
  %i.di = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40, !noalias !1907
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.z:                                             ; preds = %.critedge2.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.119.lcssa.i ; 2 uses
  %i.dl = sub nuw i64 %i.bo, %.119.lcssa.i        ; 4 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !60, !alias.scope !1907
  %i.dm = icmp eq ptr %i.bm, null
  br i1 %i.dm, label %.noexc28.i.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !1907
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !61, !noalias !1907
  %i.dn = icmp ugt i64 %i.dl, 15
  br i1 %i.dn, label %.noexc.i.i.i45.i, label %._crit_edge.i.i.i.i44.i

.noexc.i.i.i45.i:                                 ; preds = %bb.aa
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc52 unwind label %.loopexit ; 2 uses

.noexc52:                                         ; preds = %.noexc.i.i.i45.i
  store ptr %i.do, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !61, !noalias !1907
  store i64 %i.dp, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1907
  br label %._crit_edge.i.i.i.i44.i

._crit_edge.i.i.i.i44.i:                          ; preds = %.noexc52, %bb.aa
  %i.dq = phi ptr [ %i.do, %.noexc52 ], [ %i.ak, %bb.aa ] ; 2 uses
  switch i64 %i.dl, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i44.i
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !64, !noalias !1907
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !64
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i44.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr nonnull readonly align 1 %i.dk, i64 %i.dl, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i44.i
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !61, !noalias !1907 ; 2 uses
  store i64 %i.ds, ptr %i.al, align 8, !tbaa !65, !alias.scope !1907
  %i.dt = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !1907
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !1907
  br label %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.ad, %bb.y, %bb.s, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  store ptr %i.am, ptr %6, align 8, !tbaa !60, !alias.scope !1908
  store i64 0, ptr %i.an, align 8, !tbaa !65, !alias.scope !1908
  store i8 0, ptr %i.am, align 8, !tbaa !64, !alias.scope !1908
  %i.dv = load i64, ptr %i.al, align 8, !tbaa !65, !noalias !1908
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.dv)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dw = load ptr, ptr %7, align 8, !tbaa !63, !noalias !1908 ; 3 uses
  %i.dx = load i64, ptr %i.al, align 8, !tbaa !65, !noalias !1908 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %.not24.i = icmp samesign eq i64 %i.dx, 0
  br i1 %.not24.i, label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i54

bb.af:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_113PrefixRemover11MaybeRemoveB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph.i54:                                       ; preds = %bb.ae, %bb.am
  %.01126.i = phi i1 [ %i.eb, %bb.am ], [ true, %bb.ae ]
  %.sroa.021.025.i = phi ptr [ %i.ex, %bb.am ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.ea = load i8, ptr %.sroa.021.025.i, align 1, !tbaa !64 ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 95                    ; 2 uses
  br i1 %i.eb, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i54
  %i.ec = zext i8 %i.ea to i64                    ; 2 uses
  %i.ed = load i64, ptr %i.an, align 8, !tbaa !65, !alias.scope !1908 ; 6 uses
  %i.ee = add i64 %i.ed, 1                        ; 4 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !63, !alias.scope !1908 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, %i.am                ; 2 uses
  br i1 %.01126.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.ec
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !64, !noalias !1908 ; 2 uses
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57: ; preds = %bb.ah
  %i.ej = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.ah
  %i.ek = load i64, ptr %i.am, align 8, !tbaa !64, !alias.scope !1908
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57
  %i.el = phi i64 [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57 ]
  %i.em = icmp ugt i64 %i.ee, %i.el
  br i1 %i.em, label %bb.ai, label %.sink.split.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.sink.split.sink.split.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToLowerE, i64 %i.ec
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !64, !noalias !1908 ; 2 uses
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i: ; preds = %bb.ak
  %i.eq = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %bb.ak
  %i.er = load i64, ptr %i.am, align 8, !tbaa !64, !alias.scope !1908
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i
  %i.es = phi i64 [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i ]
  %i.et = icmp ugt i64 %i.ee, %i.es
  br i1 %i.et, label %bb.al, label %.sink.split.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ed, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.sink.split.sink.split.i unwind label %bb.aj

.sink.split.sink.split.i:                         ; preds = %bb.al, %bb.ai
  %.sink.ph.i = phi i8 [ %i.ei, %bb.ai ], [ %i.ep, %bb.al ]
  %.pre.i15.i = load ptr, ptr %6, align 8, !tbaa !63, !alias.scope !1908
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.sink32.i = phi ptr [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i ], [ %.pre.i15.i, %.sink.split.sink.split.i ]
  %.sink.i = phi i8 [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i14.i ], [ %.sink.ph.i, %.sink.split.sink.split.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink32.i, i64 %i.ed
  store i8 %.sink.i, ptr %i.eu, align 1, !tbaa !64
  store i64 %i.ee, ptr %i.an, align 8, !tbaa !65, !alias.scope !1908
  %i.ev = load ptr, ptr %6, align 8, !tbaa !63, !alias.scope !1908
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ee
  store i8 0, ptr %i.ew, align 1, !tbaa !64
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i, %.lr.ph.i54
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 1 ; 2 uses
  %.not.i55 = icmp eq ptr %i.ex, %i.dy
  br i1 %.not.i55, label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit, label %.lr.ph.i54

bb.an:                                            ; preds = %bb.aj, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.en, %bb.aj ], [ %i.dz, %bb.af ] ; 2 uses
  %i.ey = load ptr, ptr %6, align 8, !tbaa !63, !alias.scope !1908 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.am
  br i1 %i.ez, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %bb.an
  %i.fa = load i64, ptr %i.am, align 8, !tbaa !64, !alias.scope !1908
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #41
  br label %.body

_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit: ; preds = %bb.am
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !63
  br label %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit, %bb.ae
  %i.fc = phi ptr [ %.pre99, %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ak
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fe = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121EnumValueToPascalCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.463") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc58 unwind label %bb.aw

.noexc58:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fg = load i8, ptr %i.ao, align 8, !tbaa !681, !range !73, !alias.scope !1911, !noundef !74
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ao, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE11try_emplaceIS9_Li0EJRSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSS_8iteratorEbEOSQ_DpOT1_.exit.thread

bb.ao:                                            ; preds = %.noexc58
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !1911 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 16 ; 3 uses
  store ptr %i.fi, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !60
  %i.fj = load ptr, ptr %6, align 8, !tbaa !63, !noalias !1911 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.am
  br i1 %i.fk, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/httpfetch?download=true
inline.NumInlined: 1477
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN15CurlFetchThread13processQueuedEP14CurlHandlePool:bb.a
bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !155
  %i.bl = urem i64 %i.bk, %i.ay
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  store ptr %i.r, ptr %i.bm, align 8, !tbaa !64
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  store i64 0, ptr %i.bn, align 8, !tbaa !169
  store i64 1, ptr %i.ax, align 8, !tbaa !55
  store ptr null, ptr %i.bf, align 8, !tbaa !143
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 144 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !37
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !39 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i
  store ptr %i.bp, ptr %i.v, align 8, !tbaa !43
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !40
  store i64 %i.bw, ptr %i.w, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 152 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !39
  store i64 %i.by, ptr %i.x, align 8, !tbaa !39
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !43
  store i64 0, ptr %i.bx, align 8, !tbaa !39
  store i8 0, ptr %i.bq, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 176 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !139
  store <2 x ptr> %i.ca, ptr %i.y, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  store ptr %i.cc, ptr %i.z, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 200 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !37
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ah, i64 216 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZN16HTTPFetchRequestC2EOS_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.ce, ptr %i.aa, align 8, !tbaa !43
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !40
  store i64 %i.cl, ptr %i.ab, align 8, !tbaa !40
  br label %_ZN16HTTPFetchRequestC2EOS_.exit

_ZN16HTTPFetchRequestC2EOS_.exit:                 ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 208 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39
  store i64 %i.cn, ptr %i.ac, align 8, !tbaa !39
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !43
  store i64 0, ptr %i.cm, align 8, !tbaa !39
  store i8 0, ptr %i.cf, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !58, !range !136, !noundef !78
  store i8 %i.cp, ptr %i.ad, align 8, !tbaa !58
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  %i.cr = load i64, ptr %i.ae, align 8, !tbaa !218
  %i.cs = add i64 %i.cr, -1
  store i64 %i.cs, ptr %i.ae, align 8, !tbaa !218
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @_ZN16HTTPFetchRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %i.ct) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 240) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.cu = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #28
          to label %.noexc unwind label %bb.q     ; 8 uses

.noexc:                                           ; preds = %_ZN16HTTPFetchRequestC2EOS_.exit
  invoke void @_ZN16HTTPFetchOngoingC2ERK16HTTPFetchRequestP14CurlHandlePool(ptr noundef nonnull align 8 dereferenceable(328) %i.cu, ptr noundef nonnull align 8 dereferenceable(217) %2, ptr noundef %1)
          to label %bb.k unwind label %bb.j, !noalias !332

bb.j:                                             ; preds = %.noexc
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 328) #26, !noalias !332
  br label %.body

bb.k:                                             ; preds = %.noexc
  store ptr %i.cu, ptr %3, align 8, !tbaa !211, !alias.scope !332
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !213
  %i.cx = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cy = invoke noundef i32 @_ZN16HTTPFetchOngoing5startEPv(ptr noundef nonnull align 8 dereferenceable(328) %i.cu, ptr noundef %i.cw)
          to label %bb.l unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !209 ; 6 uses
  %i.db = load ptr, ptr %i.ag, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i, label %bb.n, label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.m
  store i64 %i.cx, ptr %i.da, align 8, !tbaa !211
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !209
  br label %_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !208 ; 10 uses
  %i.de = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 4 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i8)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #28
          to label %.noexc10 unwind label %.loopexit ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store i64 %i.cx, ptr %i.dp, align 8, !tbaa !211
  store ptr null, ptr %3, align 8, !tbaa !211
  %.not10.i.i.i.i = icmp eq ptr %i.dd, %i.da
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc10
  %i.dq = add i64 %i.de, -8
  %i.dr = sub i64 %i.dq, %i.df                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.do, i64 8
  %i.du = add i64 %i.de, -8
  %i.dv = sub i64 %i.du, %i.df
  %i.dw = and i64 %i.dv, -8                       ; 2 uses
  %scevgep45 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep46 = getelementptr i8, ptr %i.dd, i64 8
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.dw
  %bound0 = icmp ult ptr %i.do, %scevgep47
  %bound1 = icmp ult ptr %i.dd, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dd, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.ea ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.dd, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.eb = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !211, !alias.scope !335, !noalias !333
  %wide.load49 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !211, !alias.scope !335, !noalias !333
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !211, !alias.scope !336, !noalias !335
  store <2 x i64> %wide.load49, ptr %i.ec, align 8, !tbaa !211, !alias.scope !336, !noalias !335
  %i.ed = getelementptr i8, ptr %next.gep48, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep48, align 8, !tbaa !211, !alias.scope !335, !noalias !333
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !211, !alias.scope !335, !noalias !333
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader51

.lr.ph.i.i.i.i.preheader51:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph.i.i.i.i.preheader ], [ %i.dy, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader51, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ef = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !211, !alias.scope !334, !noalias !333
  store i64 %i.ef, ptr %.012.i.i.i.i, align 8, !tbaa !211, !alias.scope !333, !noalias !334
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !211, !alias.scope !334, !noalias !333
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eg, %i.da
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i = phi ptr [ %i.do, %.noexc10 ], [ %i.dy, %middle.block ], [ %i.eh, %.lr.ph.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread36, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ej = load ptr, ptr %i.ag, align 8, !tbaa !212
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.el) #26
  br label %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread36

_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread36: ; preds = %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.p
  store ptr %i.do, ptr %i.a, align 8, !tbaa !208
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !209
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.em, ptr %i.ag, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev.exit

bb.q:                                             ; preds = %_ZN16HTTPFetchRequestC2EOS_.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.k, %bb.s, %bb.t, %_ZNKSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %.body

bb.s:                                             ; preds = %bb.l
  %i.eo = invoke noundef ptr @_ZN16HTTPFetchOngoing8completeE8CURLcode(ptr noundef nonnull align 8 dereferenceable(328) %i.cu, i32 noundef %i.cy)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_ZL24httpfetch_deliver_resultRK15HTTPFetchResult(ptr noundef nonnull align 8 dereferenceable(64) %i.eo)
          to label %_ZNKSt14default_deleteI16HTTPFetchOngoingEclEPS0_.exit.i unwind label %.loopexit

_ZNKSt14default_deleteI16HTTPFetchOngoingEclEPS0_.exit.i: ; preds = %bb.t
  call void @_ZN16HTTPFetchOngoingD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.cu) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 328) #26
  br label %_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread36, %_ZNSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread, %_ZNKSt14default_deleteI16HTTPFetchOngoingEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN16HTTPFetchRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !208
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !207
  %i.ew = icmp ult i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.b, label %.critedge, !llvm.loop !331

.body:                                            ; preds = %bb.q, %bb.j, %bb.r
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.r ], [ %i.en, %bb.q ], [ %i.cv, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN16HTTPFetchRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.b, %_ZNSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EED2Ev.exit, %bb.a
  ret void
}

declare i32 @curl_multi_perform(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @curl_multi_info_read(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15CurlFetchThread9waitForIOEl(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.d = trunc i64 %1 to i32
  %i.e = tail call i32 @curl_multi_poll(ptr noundef %i.c, ptr noundef null, i32 noundef 0, i32 noundef %i.d, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.b, %bb.c
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77, !nonnull !78, !align !79 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !339
  %.v.i = select i1 %i.j, i64 976, i64 984
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.50, ptr %i.a, align 8, !tbaa !57
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW11errorstream.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !89
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN11StreamProxylsIR9CURLMcodeEERS_OT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !82
  br label %_ZN11StreamProxylsIR9CURLMcodeEERS_OT_.exit

_ZN11StreamProxylsIR9CURLMcodeEERS_OT_.exit:      ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %.pre.i, %bb.e ], [ %i.m, %bb.d ]
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %i.e) ; 0 uses
  %.pr = load ptr, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not.i2 = icmp eq ptr %.pr, null
  br i1 %.not.i2, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11StreamProxylsIR9CURLMcodeEERS_OT_.exit
  %i.w = load ptr, ptr %.pr, align 8, !tbaa !81
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.pr, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !89
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i3 = load ptr, ptr %i.k, align 8, !tbaa !82 ; 2 uses
  %.pre = load ptr, ptr %.pre.i3, align 8, !tbaa !81
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre5 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi i64 [ %.pre5, %bb.g ], [ %i.y, %bb.f ]
  %i.ae = phi ptr [ %.pre.i3, %bb.g ], [ %.pr, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !101
  %.not.i1.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 67
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ah)
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ah, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.al, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %.0.i.i.i)
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW11errorstream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIR9CURLMcodeEERS_OT_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #19

declare void @_Z18debug_describe_excB5cxx11RKSt9exception(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare i32 @curl_multi_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14CurlHandlePoolD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not7 = icmp eq ptr %i.a, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !148
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.04.08 = phi ptr [ %i.k, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.04.08, align 8, !tbaa !133
  invoke void @curl_easy_cleanup(ptr noundef %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

declare void @_ZN9Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN5Event6signalEv(ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL24httpfetch_deliver_resultRK15HTTPFetchResult(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !59
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_httpfetch_mutex) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS4_SaIS4_EEEESaIS9_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) @_ZL19g_httpfetch_results, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt13unordered_mapImSt5queueI15HTTPFetchResultSt5dequeIS1_SaIS1_EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEixERSB_.exit unwind label %bb.h ; 3 uses

_ZNSt13unordered_mapImSt5queueI15HTTPFetchResultSt5dequeIS1_SaIS1_EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEixERSB_.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !341
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -64
  %.not.i.i3 = icmp eq ptr %i.h, %i.k
  br i1 %.not.i.i3, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapImSt5queueI15HTTPFetchResultSt5dequeIS1_SaIS1_EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEixERSB_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !37
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.q, ptr %i.a, align 8, !tbaa !59
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.s, ptr %i.l, align 8, !tbaa !43
  %i.t = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.t, ptr %i.n, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.n, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN15HTTPFetchResultC2ERKS_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !40
  store i8 %i.v, ptr %i.u, align 1, !tbaa !40
  br label %_ZN15HTTPFetchResultC2ERKS_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZN15HTTPFetchResultC2ERKS_.exit.i.i

_ZN15HTTPFetchResultC2ERKS_.exit.i.i:             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !39
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !180
  br label %_ZNSt5queueI15HTTPFetchResultSt5dequeIS0_SaIS0_EEE7emplaceIJRKS0_EEEDcDpOT_.exit

bb.g:                                             ; preds = %_ZNSt13unordered_mapImSt5queueI15HTTPFetchResultSt5dequeIS1_SaIS1_EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEEixERSB_.exit
  invoke void @_ZNSt5dequeI15HTTPFetchResultSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZNSt5queueI15HTTPFetchResultSt5dequeIS0_SaIS0_EEE7emplaceIJRKS0_EEEDcDpOT_.exit unwind label %bb.h

_ZNSt5queueI15HTTPFetchResultSt5dequeIS0_SaIS0_EEE7emplaceIJRKS0_EEEDcDpOT_.exit: ; preds = %bb.g, %_ZN15HTTPFetchResultC2ERKS_.exit.i.i
  %i.ad = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_httpfetch_mutex) #25 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_httpfetch_mutex) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %_ZNSt5queueI15HTTPFetchResultSt5dequeIS0_SaIS0_EEE7emplaceIJRKS0_EEEDcDpOT_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI15HTTPFetchResultSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ne ptr %i.e, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = shl nsw i64 %.neg.i.i, 3
  %i.m = add i64 %i.j, %i.l
  %i.n = and i64 %i.m, -8
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 6
  %i.v = add nsw i64 %i.u, %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !121
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 6
  %i.ad = add nsw i64 %i.v, %i.ac
  %i.ae = icmp eq i64 %i.ad, 144115188075855871
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !152
  %i.ah = load ptr, ptr %0, align 8, !tbaa !150
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.h, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI15HTTPFetchResultSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !119
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !180 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !37
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !59
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !43
  %i.az = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.az, ptr %i.at, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit
  %i.ba = phi ptr [ %i.ay, %.noexc ], [ %i.at, %_ZNSt5dequeI15HTTPFetchResultSaIS0_EE22_M_reserve_map_at_backEm.exit ] ; 2 uses
  switch i64 %i.aw, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !40
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !39
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !118
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !119 ; 3 uses
  store ptr %i.bk, ptr %i.p, align 8, !tbaa !120
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !121
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !180
end_hunk_0
begin_hunk_1_@_ZNSt5dequeI15HTTPFetchResultSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_:bb.a
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !119
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef 512) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bt

bb.k:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #29
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI15HTTPFetchResultSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !152  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !150
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !171

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !119
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !119
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !171

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !119
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !119
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE15_M_allocate_mapEm.exit, !prof !114

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !171

bb.m:                                             ; preds = %_ZNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !119
  store ptr %i.be, ptr %i.av, align 8, !tbaa !119
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24

_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !150
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !152
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #26
  store ptr %i.aq, ptr %0, align 8, !tbaa !150
  store i64 %i.am, ptr %i.k, align 8, !tbaa !152
  br label %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPP15HTTPFetchResultS2_ET0_T_S4_S3_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !118
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !119  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !121
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !118
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !119 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !120
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12MutexedQueueIN15CurlFetchThread7RequestEE9pop_frontEj(ptr dead_on_unwind noalias writable sret(%"struct.CurlFetchThread::Request") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.2", align 1  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = tail call noundef zeroext i1 @_ZN9Semaphore4waitEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162, !noalias !344 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  store i32 %i.g, ptr %0, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN16HTTPFetchRequestC2EOS_(ptr noundef nonnull align 8 dereferenceable(217) %i.h, ptr noundef nonnull align 8 dereferenceable(217) %i.i) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  store ptr %i.l, ptr %i.j, align 8, !tbaa !109
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !215  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -240
  %.not.i = icmp eq ptr %i.m, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_ZN16HTTPFetchRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %i.q) #25
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !215
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  br label %_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE9pop_frontEv.exit

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 480) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !170
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !161
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !168  ; 3 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 480
  store ptr %i.z, ptr %i.n, align 8, !tbaa !164
  br label %_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE9pop_frontEv.exit

_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE9pop_frontEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i = phi ptr [ %i.s, %bb.d ], [ %i.y, %bb.e ]
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !215
  %i.aa = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN21ItemNotFoundExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI21ItemNotFoundException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @__cxa_free_exception(ptr %i.ab) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn10 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare noundef zeroext i1 @_ZN9Semaphore4waitEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21ItemNotFoundExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !59
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !43
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.c, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV21ItemNotFoundException, i64 16), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21ItemNotFoundExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !175
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #25, !inline_history !175
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

declare i32 @curl_multi_poll(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @curl_easy_cleanup(ptr noundef) local_unnamed_addr #4

end_hunk_1
begin_hunk_2_@llvm.smax.i32
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"any p2 pointer", !21, i64 0}
!23 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!24 = !{!"long", !17, i64 0}
!25 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!26 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!27 = !{!"float", !17, i64 0}
!28 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !27, i64 0, !24, i64 8}
!29 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS3_SaIS3_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !23, i64 0, !24, i64 8, !26, i64 16, !24, i64 24, !28, i64 32, !25, i64 48}
!30 = !{!29, !25, i64 16}
!31 = !{!26, !25, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !23, i64 0}
!34 = !{!29, !24, i64 8}
!35 = !{!"p1 omnipotent char", !21, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !24, i64 8, !17, i64 16}
!39 = !{!38, !24, i64 8}
!40 = !{!17, !17, i64 0}
!41 = !{!"p1 _ZTS8Settings", !21, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!38, !35, i64 0}
!44 = !{!"bool", !17, i64 0}
!45 = !{!"_ZTS10HttpMethod", !17, i64 0}
!46 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !23, i64 0, !24, i64 8, !26, i64 16, !24, i64 24, !28, i64 32, !25, i64 48}
!47 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !46, i64 0}
!48 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !49, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTS16HTTPFetchRequest", !38, i64 0, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !44, i64 64, !45, i64 65, !47, i64 72, !38, i64 128, !52, i64 160, !38, i64 184, !44, i64 216}
!54 = !{!46, !23, i64 0}
!55 = !{!46, !24, i64 8}
!56 = !{!28, !27, i64 0}
!57 = !{!35, !35, i64 0}
!58 = !{!53, !44, i64 216}
!59 = !{!24, !24, i64 0}
!60 = !{!49, !48, i64 0}
!61 = !{!49, !48, i64 8}
!62 = !{!49, !48, i64 16}
!63 = !{!29, !24, i64 24}
!64 = !{!25, !25, i64 0}
!65 = !{!"p1 _ZTS9LogTarget", !21, i64 0}
!66 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!67 = !{!"_ZTSSt6locale", !66, i64 0}
!68 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !67, i64 56}
!69 = !{!"_ZTSSt14_Function_base", !17, i64 0, !21, i64 16}
!70 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !69, i64 0, !21, i64 24}
!71 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !68, i64 0, !70, i64 64, !18, i64 96, !17, i64 100}
!72 = !{!"_ZTS17DummyStreamBuffer", !68, i64 0}
!73 = !{!"_ZTSSo"}
!74 = !{!"p1 _ZTSSo", !21, i64 0}
!75 = !{!"_ZTS11StreamProxy", !74, i64 0}
!76 = !{!"_ZTS9LogStream", !65, i64 0, !71, i64 8, !72, i64 368, !73, i64 432, !73, i64 704, !75, i64 976, !75, i64 984}
!77 = !{!76, !65, i64 0}
!78 = !{}
!79 = !{i64 8}
!80 = !{!"vtable pointer", !16, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!75, !74, i64 0}
!83 = !{!"_ZTSSt13_Ios_Fmtflags", !17, i64 0}
!84 = !{!"_ZTSSt12_Ios_Iostate", !17, i64 0}
!85 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!86 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !24, i64 8}
!87 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!88 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !83, i64 24, !84, i64 28, !84, i64 32, !85, i64 40, !86, i64 48, !17, i64 64, !18, i64 192, !87, i64 200, !67, i64 208}
!89 = !{!88, !84, i64 32}
!90 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!91 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!92 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!93 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!94 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !88, i64 0, !74, i64 216, !17, i64 224, !44, i64 225, !90, i64 232, !91, i64 240, !92, i64 248, !93, i64 256}
!95 = !{!94, !91, i64 240}
!96 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!97 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!98 = !{!"p1 int", !21, i64 0}
!99 = !{!"p1 short", !21, i64 0}
!100 = !{!"_ZTSSt5ctypeIcE", !96, i64 0, !97, i64 16, !44, i64 24, !98, i64 32, !98, i64 40, !99, i64 48, !17, i64 56, !17, i64 57, !17, i64 313, !17, i64 569}
!101 = !{!100, !17, i64 56}
!102 = !{!"p1 _ZTS15CurlFetchThread", !21, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"_ZTSN15CurlFetchThread11RequestTypeE", !17, i64 0}
!105 = !{!"p1 _ZTS5Event", !21, i64 0}
!106 = !{!"_ZTSN15CurlFetchThread7RequestE", !104, i64 0, !53, i64 8, !105, i64 232}
!107 = !{!106, !104, i64 0}
!108 = !{!106, !24, i64 40}
!109 = !{!106, !105, i64 232}
!110 = !{!"p1 _ZTS15HTTPFetchResult", !21, i64 0}
!111 = !{!"p2 _ZTS15HTTPFetchResult", !22, i64 0}
!112 = !{!"_ZTSSt15_Deque_iteratorI15HTTPFetchResultRS0_PS0_E", !110, i64 0, !110, i64 8, !110, i64 16, !111, i64 24}
!113 = !{!112, !110, i64 0}
!114 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!115 = !{!"_ZTSNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE16_Deque_impl_dataE", !111, i64 0, !24, i64 8, !112, i64 16, !112, i64 48}
!116 = !{!115, !110, i64 16}
!117 = !{!115, !111, i64 40}
!118 = !{!112, !111, i64 24}
!119 = !{!110, !110, i64 0}
!120 = !{!112, !110, i64 8}
!121 = !{!112, !110, i64 16}
!122 = !{!"p1 _ZTS14CurlHandlePool", !21, i64 0}
!123 = !{!"_ZTS15HTTPFetchResult", !44, i64 0, !44, i64 1, !24, i64 8, !38, i64 16, !24, i64 48, !24, i64 56}
!124 = !{!"p1 _ZTS10curl_slist", !21, i64 0}
!125 = !{!"p1 _ZTS9curl_mime", !21, i64 0}
!126 = !{!"_ZTS16HTTPFetchOngoing", !122, i64 0, !21, i64 8, !21, i64 16, !53, i64 24, !123, i64 248, !124, i64 312, !125, i64 320}
!127 = !{!126, !122, i64 0}
!128 = !{!123, !44, i64 0}
!129 = !{!123, !44, i64 1}
!130 = !{!123, !24, i64 8}
!131 = !{!22, !22, i64 0}
!132 = !{!126, !21, i64 8}
!133 = !{!21, !21, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!135 = !{!134, !22, i64 8}
!136 = !{i8 0, i8 2}
!137 = !{!126, !125, i64 320}
!138 = !{!46, !24, i64 24}
!139 = !{!48, !48, i64 0}
!140 = !{!126, !124, i64 312}
!141 = !{!27, !27, i64 0}
!142 = !{i64 0, i64 4, !141, i64 8, i64 8, !59}
!143 = !{!46, !25, i64 48}
!144 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !21, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!126, !21, i64 16}
!147 = !{!134, !22, i64 16}
!148 = !{!134, !22, i64 0}
!149 = !{!53, !24, i64 32}
!150 = !{!115, !111, i64 0}
!151 = !{!115, !111, i64 72}
!152 = !{!115, !24, i64 8}
!153 = !{!46, !25, i64 16}
!154 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!155 = !{!154, !24, i64 0}
!156 = !{!"p2 _ZTSN15CurlFetchThread7RequestE", !22, i64 0}
!157 = !{!"p1 _ZTSN15CurlFetchThread7RequestE", !21, i64 0}
!158 = !{!"_ZTSSt15_Deque_iteratorIN15CurlFetchThread7RequestERS1_PS1_E", !157, i64 0, !157, i64 8, !157, i64 16, !156, i64 24}
!159 = !{!"_ZTSNSt11_Deque_baseIN15CurlFetchThread7RequestESaIS1_EE16_Deque_impl_dataE", !156, i64 0, !24, i64 8, !158, i64 16, !158, i64 48}
!160 = !{!159, !157, i64 48}
!161 = !{!158, !156, i64 24}
!162 = !{!158, !157, i64 0}
!163 = !{!158, !157, i64 8}
!164 = !{!158, !157, i64 16}
!165 = !{!159, !24, i64 8}
!166 = !{!159, !156, i64 0}
!167 = !{!159, !156, i64 72}
!168 = !{!157, !157, i64 0}
!169 = !{!28, !24, i64 8}
!170 = !{!159, !156, i64 40}
!171 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!172 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !21, i64 0}
!173 = !{!"_ZTSNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !172, i64 0, !144, i64 8}
!174 = !{!173, !172, i64 0}
!175 = !{ptr @_ZN13BaseExceptionD2Ev}
!176 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS5_SaIS5_EEEELb0EEEEEE", !21, i64 0}
!177 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS4_SaIS4_EEEELb0EEE", !21, i64 0}
!178 = !{!"_ZTSNSt10_HashtableImSt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS3_SaIS3_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !176, i64 0, !177, i64 8}
!179 = !{!178, !177, i64 8}
!180 = !{!115, !110, i64 48}
!181 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !21, i64 0}
!182 = !{!"_ZTSNSt8__detail15_List_node_baseE", !181, i64 0, !181, i64 8}
!183 = !{!182, !181, i64 8}
!184 = !{!182, !181, i64 0}
!185 = !{!"_ZTSNSt8__detail17_List_node_headerE", !182, i64 0, !24, i64 16}
!186 = !{!185, !24, i64 16}
!187 = !{!"_ZTSSt13__atomic_baseIbE", !44, i64 0}
!188 = !{!"_ZTSSt6atomicIbE", !187, i64 0}
!189 = !{!"_ZTSSt12__mutex_base", !17, i64 0}
!190 = !{!"_ZTSSt5mutex", !189, i64 0}
!191 = !{!"p1 _ZTSSt6thread", !21, i64 0}
!192 = !{!"_ZTS6Thread", !38, i64 8, !21, i64 40, !44, i64 48, !188, i64 49, !188, i64 50, !190, i64 56, !190, i64 96, !191, i64 136}
!193 = !{!"_ZTSNSt11_Deque_baseIN15CurlFetchThread7RequestESaIS1_EE11_Deque_implE", !159, i64 0}
!194 = !{!"_ZTSSt11_Deque_baseIN15CurlFetchThread7RequestESaIS1_EE", !193, i64 0}
!195 = !{!"_ZTSSt5dequeIN15CurlFetchThread7RequestESaIS1_EE", !194, i64 0}
!196 = !{!"_ZTS9Semaphore", !17, i64 0}
!197 = !{!"_ZTS12MutexedQueueIN15CurlFetchThread7RequestEE", !195, i64 0, !190, i64 80, !196, i64 120}
!198 = !{!"p1 _ZTSSt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS0_EE", !21, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !198, i64 0, !198, i64 8, !198, i64 16}
!200 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !199, i64 0}
!201 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE", !200, i64 0}
!202 = !{!"_ZTSSt6vectorISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EESaIS4_EE", !201, i64 0}
!203 = !{!"_ZTSNSt7__cxx1110_List_baseI16HTTPFetchRequestSaIS1_EE10_List_implE", !185, i64 0}
!204 = !{!"_ZTSNSt7__cxx1110_List_baseI16HTTPFetchRequestSaIS1_EEE", !203, i64 0}
!205 = !{!"_ZTSNSt7__cxx114listI16HTTPFetchRequestSaIS1_EEE", !204, i64 0}
!206 = !{!"_ZTS15CurlFetchThread", !192, i64 0, !21, i64 144, !197, i64 152, !24, i64 304, !202, i64 312, !205, i64 336}
!207 = !{!206, !24, i64 304}
!208 = !{!199, !198, i64 0}
!209 = !{!199, !198, i64 8}
!210 = !{!"p1 _ZTS16HTTPFetchOngoing", !21, i64 0}
!211 = !{!210, !210, i64 0}
!212 = !{!199, !198, i64 16}
!213 = !{!206, !21, i64 144}
!214 = !{!198, !198, i64 0}
!215 = !{!159, !157, i64 16}
!216 = !{!159, !157, i64 32}
!217 = !{!159, !157, i64 24}
!218 = !{!204, !24, i64 16}
!219 = distinct !{!219, !32}
!220 = distinct !{!220, i1 false, !"_ZL18default_user_agentB5cxx11v"}
!221 = distinct !{!221, !220, !"_ZL18default_user_agentB5cxx11v: argument 0"}
!222 = !{!53, !24, i64 48}
!223 = !{!53, !24, i64 56}
!224 = !{!53, !44, i64 64}
!225 = !{!53, !45, i64 65}
!226 = !{!221}
!227 = distinct !{!227, !32}
!228 = distinct !{null}
!229 = distinct !{!229, !32}
!230 = distinct !{null}
!231 = !{!115, !110, i64 32}
!232 = !{!115, !110, i64 24}
!233 = !{!126, !24, i64 72}
!234 = !{!126, !24, i64 80}
!235 = !{!126, !24, i64 56}
!236 = !{!126, !45, i64 89}
!237 = !{!126, !44, i64 88}
!238 = distinct !{null}
!239 = distinct !{null}
!240 = distinct !{null}
!241 = distinct !{null}
!242 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null, null}
!243 = distinct !{null, null}
!244 = distinct !{null}
!245 = distinct !{null, null, null}
!246 = !{!126, !44, i64 248}
!247 = !{!126, !44, i64 249}
!248 = !{!126, !24, i64 256}
!249 = !{!126, !44, i64 240}
!250 = !{!126, !24, i64 296}
!251 = distinct !{null}
!252 = distinct !{null}
!253 = distinct !{!253, i1 false, !"_ZSt11make_uniqueI15CurlFetchThreadJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!254 = distinct !{!254, !253, !"_ZSt11make_uniqueI15CurlFetchThreadJRiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!255 = distinct !{null, null, null, null, null}
!256 = !{!254}
!257 = distinct !{null}
!258 = distinct !{null, null, null}
!259 = distinct !{!259, !32}
!260 = distinct !{!260, i1 false, !"_ZNSt5dequeI15HTTPFetchResultSaIS0_EE5beginEv"}
!261 = distinct !{!261, !260, !"_ZNSt5dequeI15HTTPFetchResultSaIS0_EE5beginEv: argument 0"}
!262 = distinct !{!262, i1 false, !"_ZNSt5dequeI15HTTPFetchResultSaIS0_EE3endEv"}
!263 = distinct !{!263, !262, !"_ZNSt5dequeI15HTTPFetchResultSaIS0_EE3endEv: argument 0"}
!264 = !{!261}
!265 = !{!263}
!266 = distinct !{!266, !32}
!267 = distinct !{!267, !32}
!268 = distinct !{!268, !32}
!269 = distinct !{!269, !32}
!270 = !{!159, !157, i64 64}
!271 = distinct !{!271, !32}
!272 = distinct !{!272, !32}
!273 = distinct !{!273, !32}
!274 = distinct !{!274, !32}
!275 = distinct !{!275, !32}
!276 = !{!178, !176, i64 0}
!277 = !{!"_ZTSNSt11_Deque_baseI15HTTPFetchResultSaIS0_EE11_Deque_implE", !115, i64 0}
!278 = !{!"_ZTSSt11_Deque_baseI15HTTPFetchResultSaIS0_EE", !277, i64 0}
!279 = !{!"_ZTSSt5dequeI15HTTPFetchResultSaIS0_EE", !278, i64 0}
!280 = !{!"_ZTSSt5queueI15HTTPFetchResultSt5dequeIS0_SaIS0_EEE", !279, i64 0}
!281 = !{!"_ZTSSt4pairIKmSt5queueI15HTTPFetchResultSt5dequeIS2_SaIS2_EEEE", !24, i64 0, !280, i64 8}
!282 = !{!281, !24, i64 0}
!283 = distinct !{!283, !32}
!284 = distinct !{!284, !32}
!285 = !{!29, !25, i64 48}
!286 = distinct !{!286, !32}
!287 = distinct !{!287, i1 false, !"_ZN12MutexedQueueIN15CurlFetchThread7RequestEE13pop_frontNoExEv"}
!288 = distinct !{!288, !287, !"_ZN12MutexedQueueIN15CurlFetchThread7RequestEE13pop_frontNoExEv: argument 0"}
!289 = distinct !{!289, i1 false, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv"}
!290 = distinct !{!290, !289, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv: argument 0"}
!291 = distinct !{!291, !32}
!292 = distinct !{!292, !32}
!293 = distinct !{!293, !32}
!294 = distinct !{!294, !32}
!295 = distinct !{null}
!296 = distinct !{!296, !32}
!297 = distinct !{null}
!298 = distinct !{null}
!299 = distinct !{null}
!300 = !{!"_ZTS8timespec", !24, i64 0, !24, i64 8}
!301 = !{!300, !24, i64 0}
!302 = !{!300, !24, i64 8}
!303 = !{!288}
!304 = !{!290, !288}
!305 = !{!18, !18, i64 0}
!306 = !{!"_ZTS7CURLMSG", !17, i64 0}
!307 = !{!"_ZTS7CURLMsg", !306, i64 0, !21, i64 8, !17, i64 16}
!308 = !{!307, !306, i64 0}
!309 = !{!307, !21, i64 8}
!310 = distinct !{!310, i1 false, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv"}
!311 = distinct !{!311, !310, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv: argument 0"}
!312 = distinct !{!312, i1 false, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE3endEv"}
!313 = distinct !{!313, !312, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE3endEv: argument 0"}
!314 = !{!311}
!315 = !{!313}
!316 = distinct !{!316, !32}
!317 = distinct !{!317, !32}
!318 = distinct !{!318, !32}
!319 = distinct !{!319, !32}
!320 = distinct !{!320, !32}
!321 = distinct !{!321, i1 false, !"_ZSt11make_uniqueI16HTTPFetchOngoingJR16HTTPFetchRequestRP14CurlHandlePoolEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!322 = distinct !{!322, !321, !"_ZSt11make_uniqueI16HTTPFetchOngoingJR16HTTPFetchRequestRP14CurlHandlePoolEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!323 = distinct !{!323, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!324 = distinct !{!324, !323, !"_ZSt19__relocate_object_aISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!325 = distinct !{!325, !323, !"_ZSt19__relocate_object_aISt10unique_ptrI16HTTPFetchOngoingSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!326 = distinct !{!326, i1 false, !"LVerDomain"}
!327 = distinct !{!327, !326}
!328 = distinct !{!328, !326}
!329 = distinct !{!329, !32, !337, !338}
!330 = distinct !{!330, !32, !337}
!331 = distinct !{!331, !32}
!332 = !{!322}
!333 = !{!324}
!334 = !{!325}
!335 = !{!325, !327}
!336 = !{!324, !328}
!337 = !{!"llvm.loop.isvectorized", i32 1}
!338 = !{!"llvm.loop.unroll.runtime.disable"}
!339 = distinct !{null}
!340 = !{!123, !24, i64 48}
!341 = !{!115, !110, i64 64}
!342 = distinct !{!342, i1 false, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv"}
!343 = distinct !{!343, !342, !"_ZNSt5dequeIN15CurlFetchThread7RequestESaIS1_EE5beginEv: argument 0"}
!344 = !{!343}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFPQFastScan?download=true
inline.NumInlined: 541
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5faiss14fvec_madd_simdEmPKffS1_Pf:bb.a
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.aa)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ag = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14fvec_madd_simdEmPKffS1_Pf, ptr noundef nonnull @.str.2, i32 noundef 202)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #28
          to label %bb.am unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn42 = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ah, %bb.q ]
  %i.ai = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.r
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !25
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.al

bb.s:                                             ; preds = %bb.j
  %i.am = ptrtoint ptr %4 to i64
  %i.an = and i64 %i.am, 31
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !93
  store i8 0, ptr %i.ap, align 8, !tbaa !25
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #16 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.au)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr %7, align 8, !tbaa !24
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !93
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #16 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.at)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v, %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.az = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14fvec_madd_simdEmPKffS1_Pf, ptr noundef nonnull @.str.2, i32 noundef 203)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #28
          to label %bb.am unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.az) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn44 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.ba, %bb.z ]
  %i.bb = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ap
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.aa
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.al

bb.ab:                                            ; preds = %bb.s
  %i.bf = and i64 %0, 7
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !93
  store i8 0, ptr %i.bh, align 8, !tbaa !25
  %i.bj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bl = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bm)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr %8, align 8, !tbaa !24
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !93
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bl)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %i.br = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14fvec_madd_simdEmPKffS1_Pf, ptr noundef nonnull @.str.2, i32 noundef 204)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #28
          to label %bb.am unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn46 = phi { ptr, i32 } [ %i.bq, %bb.af ], [ %i.bs, %bb.ai ]
  %i.bt = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bh
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.aj
  %i.bv = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  %i.bx = lshr exact i64 %0, 3                    ; 4 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %0, 32
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.by = shl i64 %0, 2                           ; 3 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.by  ; 2 uses
  %scevgep94 = getelementptr i8, ptr %1, i64 %i.by
  %scevgep95 = getelementptr i8, ptr %3, i64 %i.by
  %bound0 = icmp ult ptr %4, %scevgep94
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound096 = icmp ult ptr %4, %scevgep95
  %bound197 = icmp ult ptr %3, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict, %found.conflict98
  br i1 %conflict.rdx, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 2305843009213693948     ; 4 uses
  %i.bz = shl i64 %n.vec, 5                       ; 3 uses
  %i.ca = getelementptr i8, ptr %4, i64 %i.bz
  %i.cb = getelementptr i8, ptr %3, i64 %i.bz
  %i.cc = getelementptr i8, ptr %1, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0 ; 2 uses
  %9 = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  %i.cd = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 5                       ; 6 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.ce
  %i.cf = or disjoint i64 %i.ce, 32               ; 2 uses
  %i.cg = or disjoint i64 %i.ce, 64               ; 2 uses
  %i.ch = or disjoint i64 %i.ce, 96               ; 2 uses
  %next.gep99 = getelementptr i8, ptr %3, i64 %i.ce ; 8 uses
  %next.gep100 = getelementptr i8, ptr %3, i64 %i.cf ; 8 uses
  %next.gep101 = getelementptr i8, ptr %3, i64 %i.cg ; 8 uses
  %next.gep102 = getelementptr i8, ptr %3, i64 %i.ch ; 8 uses
  %next.gep103 = getelementptr i8, ptr %1, i64 %i.ce ; 8 uses
  %next.gep104 = getelementptr i8, ptr %1, i64 %i.cf ; 8 uses
  %next.gep105 = getelementptr i8, ptr %1, i64 %i.cg ; 8 uses
  %next.gep106 = getelementptr i8, ptr %1, i64 %i.ch ; 8 uses
  %i.ci = load float, ptr %next.gep103, align 1, !alias.scope !145
  %i.cj = load float, ptr %next.gep104, align 1, !alias.scope !145
  %i.ck = load float, ptr %next.gep105, align 1, !alias.scope !145
  %i.cl = load float, ptr %next.gep106, align 1, !alias.scope !145
  %i.cm = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 1
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 3
  %i.cq = getelementptr inbounds nuw i8, ptr %next.gep103, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep104, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %next.gep105, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %next.gep106, i64 4
  %i.cu = load float, ptr %i.cq, align 1, !alias.scope !145
  %i.cv = load float, ptr %i.cr, align 1, !alias.scope !145
  %i.cw = load float, ptr %i.cs, align 1, !alias.scope !145
  %i.cx = load float, ptr %i.ct, align 1, !alias.scope !145
  %i.cy = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 2
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 3
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep103, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %next.gep104, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %next.gep105, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %next.gep106, i64 8
  %i.dg = load float, ptr %i.dc, align 1, !alias.scope !145
  %i.dh = load float, ptr %i.dd, align 1, !alias.scope !145
  %i.di = load float, ptr %i.de, align 1, !alias.scope !145
  %i.dj = load float, ptr %i.df, align 1, !alias.scope !145
  %i.dk = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 3
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep103, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep104, i64 12
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep105, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep106, i64 12
  %i.ds = load float, ptr %i.do, align 1, !alias.scope !145
  %i.dt = load float, ptr %i.dp, align 1, !alias.scope !145
  %i.du = load float, ptr %i.dq, align 1, !alias.scope !145
  %i.dv = load float, ptr %i.dr, align 1, !alias.scope !145
  %i.dw = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep103, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %next.gep104, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep105, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep106, i64 16
  %i.ee = load float, ptr %i.ea, align 1, !alias.scope !145
  %i.ef = load float, ptr %i.eb, align 1, !alias.scope !145
  %i.eg = load float, ptr %i.ec, align 1, !alias.scope !145
  %i.eh = load float, ptr %i.ed, align 1, !alias.scope !145
  %i.ei = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %next.gep103, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %next.gep104, i64 20
  %i.eo = getelementptr inbounds nuw i8, ptr %next.gep105, i64 20
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep106, i64 20
  %i.eq = load float, ptr %i.em, align 1, !alias.scope !145
  %i.er = load float, ptr %i.en, align 1, !alias.scope !145
  %i.es = load float, ptr %i.eo, align 1, !alias.scope !145
  %i.et = load float, ptr %i.ep, align 1, !alias.scope !145
  %i.eu = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 3
  %i.ey = getelementptr inbounds nuw i8, ptr %next.gep103, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %next.gep104, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep105, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep106, i64 24
  %i.fc = load float, ptr %i.ey, align 1, !alias.scope !145
  %i.fd = load float, ptr %i.ez, align 1, !alias.scope !145
  %i.fe = load float, ptr %i.fa, align 1, !alias.scope !145
  %i.ff = load float, ptr %i.fb, align 1, !alias.scope !145
  %i.fg = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 2
  %i.fj = insertelement <4 x float> %i.fi, float %i.ff, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %next.gep103, i64 28
  %i.fl = getelementptr inbounds nuw i8, ptr %next.gep104, i64 28
  %i.fm = getelementptr inbounds nuw i8, ptr %next.gep105, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %next.gep106, i64 28
  %i.fo = load float, ptr %i.fk, align 1, !alias.scope !145
  %i.fp = load float, ptr %i.fl, align 1, !alias.scope !145
  %i.fq = load float, ptr %i.fm, align 1, !alias.scope !145
  %i.fr = load float, ptr %i.fn, align 1, !alias.scope !145
  %i.fs = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 1
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 3
  %i.fw = load float, ptr %next.gep99, align 1, !alias.scope !146
  %i.fx = load float, ptr %next.gep100, align 1, !alias.scope !146
  %i.fy = load float, ptr %next.gep101, align 1, !alias.scope !146
  %i.fz = load float, ptr %next.gep102, align 1, !alias.scope !146
  %i.ga = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 1
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 2
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 3
  %i.ge = getelementptr inbounds nuw i8, ptr %next.gep99, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %next.gep100, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep101, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %next.gep102, i64 4
  %i.gi = load float, ptr %i.ge, align 1, !alias.scope !146
  %i.gj = load float, ptr %i.gf, align 1, !alias.scope !146
  %i.gk = load float, ptr %i.gg, align 1, !alias.scope !146
  %i.gl = load float, ptr %i.gh, align 1, !alias.scope !146
  %i.gm = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 1
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 3
  %i.gq = getelementptr inbounds nuw i8, ptr %next.gep99, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep100, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %next.gep101, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep102, i64 8
  %i.gu = load float, ptr %i.gq, align 1, !alias.scope !146
  %i.gv = load float, ptr %i.gr, align 1, !alias.scope !146
  %i.gw = load float, ptr %i.gs, align 1, !alias.scope !146
  %i.gx = load float, ptr %i.gt, align 1, !alias.scope !146
  %i.gy = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 1
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 2
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 3
  %i.hc = getelementptr inbounds nuw i8, ptr %next.gep99, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %next.gep100, i64 12
  %i.he = getelementptr inbounds nuw i8, ptr %next.gep101, i64 12
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep102, i64 12
  %i.hg = load float, ptr %i.hc, align 1, !alias.scope !146
  %i.hh = load float, ptr %i.hd, align 1, !alias.scope !146
  %i.hi = load float, ptr %i.he, align 1, !alias.scope !146
  %i.hj = load float, ptr %i.hf, align 1, !alias.scope !146
  %i.hk = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 1
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 3
  %i.ho = getelementptr inbounds nuw i8, ptr %next.gep99, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %next.gep100, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %next.gep101, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep102, i64 16
  %i.hs = load float, ptr %i.ho, align 1, !alias.scope !146
  %i.ht = load float, ptr %i.hp, align 1, !alias.scope !146
  %i.hu = load float, ptr %i.hq, align 1, !alias.scope !146
  %i.hv = load float, ptr %i.hr, align 1, !alias.scope !146
  %i.hw = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 2
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %next.gep99, i64 20
  %i.ib = getelementptr inbounds nuw i8, ptr %next.gep100, i64 20
  %i.ic = getelementptr inbounds nuw i8, ptr %next.gep101, i64 20
  %i.id = getelementptr inbounds nuw i8, ptr %next.gep102, i64 20
  %i.ie = load float, ptr %i.ia, align 1, !alias.scope !146
  %i.if = load float, ptr %i.ib, align 1, !alias.scope !146
  %i.ig = load float, ptr %i.ic, align 1, !alias.scope !146
  %i.ih = load float, ptr %i.id, align 1, !alias.scope !146
  %i.ii = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 3
  %i.im = getelementptr inbounds nuw i8, ptr %next.gep99, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %next.gep100, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep101, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %next.gep102, i64 24
  %i.iq = load float, ptr %i.im, align 1, !alias.scope !146
  %i.ir = load float, ptr %i.in, align 1, !alias.scope !146
  %i.is = load float, ptr %i.io, align 1, !alias.scope !146
  %i.it = load float, ptr %i.ip, align 1, !alias.scope !146
  %i.iu = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.iv = insertelement <4 x float> %i.iu, float %i.ir, i64 1
  %i.iw = insertelement <4 x float> %i.iv, float %i.is, i64 2
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 3
  %i.iy = getelementptr inbounds nuw i8, ptr %next.gep99, i64 28
  %i.iz = getelementptr inbounds nuw i8, ptr %next.gep100, i64 28
  %i.ja = getelementptr inbounds nuw i8, ptr %next.gep101, i64 28
  %i.jb = getelementptr inbounds nuw i8, ptr %next.gep102, i64 28
  %i.jc = load float, ptr %i.iy, align 1, !alias.scope !146
  %i.jd = load float, ptr %i.iz, align 1, !alias.scope !146
  %i.je = load float, ptr %i.ja, align 1, !alias.scope !146
  %i.jf = load float, ptr %i.jb, align 1, !alias.scope !146
  %i.jg = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.jh = insertelement <4 x float> %i.jg, float %i.jd, i64 1
  %i.ji = insertelement <4 x float> %i.jh, float %i.je, i64 2
  %i.jj = insertelement <4 x float> %i.ji, float %i.jf, i64 3
  %10 = shufflevector <4 x float> %i.gd, <4 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = shufflevector <4 x float> %i.cp, <4 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x float> %i.hb, <4 x float> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <4 x float> %i.dn, <4 x float> %i.dz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %14 = shufflevector <4 x float> %i.hz, <4 x float> %i.il, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <4 x float> %i.el, <4 x float> %i.ex, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <4 x float> %i.ix, <4 x float> %i.jj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jk = shufflevector <4 x float> %i.fj, <4 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = shufflevector <8 x float> %10, <8 x float> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jl = shufflevector <8 x float> %11, <8 x float> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jm = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %9, <16 x float> %17, <16 x float> %i.jl)
  %18 = shufflevector <8 x float> %14, <8 x float> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = shufflevector <8 x float> %15, <8 x float> %i.jk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jn = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cd, <16 x float> %18, <16 x float> %19)
  %interleaved.vec = shufflevector <16 x float> %i.jm, <16 x float> %i.jn, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !147, !noalias !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.082.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.03481.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.ca, %middle.block ] ; 4 uses
  %.03580.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.cb, %middle.block ] ; 4 uses
  %.03679.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.cc, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.082.ph, 1
  %i.jp = and i64 %0, 8
  %lcmp.mod.not = icmp eq i64 %i.jp, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader110
  %.sroa.770.0..036.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03679.ph, i64 16
  %.sroa.762.0..035.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03580.ph, i64 16
  %i.jq = load <4 x float>, ptr %.03679.ph, align 1
  %i.jr = load <4 x float>, ptr %.03580.ph, align 1
  %i.js = insertelement <4 x float> poison, float %2, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.jr, <4 x float> %i.jq)
  %.sroa.7.0..034.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03481.ph, i64 16
  %i.jv = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx.prol, align 1
  %i.jw = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx.prol, align 1
  %i.jx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.jw, <4 x float> %i.jv)
  store <4 x float> %i.ju, ptr %.03481.ph, align 1
  store <4 x float> %i.jx, ptr %.sroa.7.0..034.sroa_idx.prol, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.03481.ph, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %.03679.ph, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %.03580.ph, i64 32
  %i.kb = or disjoint i64 %.082.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader110
  %.082.unr = phi i64 [ %.082.ph, %.lr.ph.preheader110 ], [ %i.kb, %.lr.ph.prol ]
  %.03481.unr = phi ptr [ %.03481.ph, %.lr.ph.preheader110 ], [ %i.jy, %.lr.ph.prol ]
  %.03580.unr = phi ptr [ %.03580.ph, %.lr.ph.preheader110 ], [ %i.ka, %.lr.ph.prol ]
  %.03679.unr = phi ptr [ %.03679.ph, %.lr.ph.preheader110 ], [ %i.jz, %.lr.ph.prol ]
  %i.kc = icmp eq i64 %i.bx, %.neg
  br i1 %i.kc, label %._crit_edge, label %.lr.ph.preheader110.new

.lr.ph.preheader110.new:                          ; preds = %.lr.ph.prol.loopexit
  %i.kd = insertelement <4 x float> poison, float %2, i64 0
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kf = insertelement <4 x float> poison, float %2, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.ak
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader110.new
  %.082 = phi i64 [ %.082.unr, %.lr.ph.preheader110.new ], [ %i.kz, %.lr.ph ]
  %.03481 = phi ptr [ %.03481.unr, %.lr.ph.preheader110.new ], [ %i.kw, %.lr.ph ] ; 5 uses
  %.03580 = phi ptr [ %.03580.unr, %.lr.ph.preheader110.new ], [ %i.ky, %.lr.ph ] ; 5 uses
  %.03679 = phi ptr [ %.03679.unr, %.lr.ph.preheader110.new ], [ %i.kx, %.lr.ph ] ; 5 uses
  %.sroa.770.0..036.sroa_idx = getelementptr inbounds nuw i8, ptr %.03679, i64 16
  %.sroa.762.0..035.sroa_idx = getelementptr inbounds nuw i8, ptr %.03580, i64 16
  %i.kh = load <4 x float>, ptr %.03679, align 1
  %i.ki = load <4 x float>, ptr %.03580, align 1
  %i.kj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.ki, <4 x float> %i.kh)
  %.sroa.7.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03481, i64 16
  %i.kk = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx, align 1
  %i.kl = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx, align 1
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.kl, <4 x float> %i.kk)
  store <4 x float> %i.kj, ptr %.03481, align 1
  store <4 x float> %i.km, ptr %.sroa.7.0..034.sroa_idx, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.03481, i64 32
  %i.ko = getelementptr inbounds nuw i8, ptr %.03679, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %.03580, i64 32
  %.sroa.770.0..036.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03679, i64 48
  %.sroa.762.0..035.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03580, i64 48
  %i.kq = load <4 x float>, ptr %i.ko, align 1
  %i.kr = load <4 x float>, ptr %i.kp, align 1
  %i.ks = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kg, <4 x float> %i.kr, <4 x float> %i.kq)
  %.sroa.7.0..034.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03481, i64 48
  %i.kt = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx.1, align 1
  %i.ku = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx.1, align 1
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kg, <4 x float> %i.ku, <4 x float> %i.kt)
  store <4 x float> %i.ks, ptr %i.kn, align 1
  store <4 x float> %i.kv, ptr %.sroa.7.0..034.sroa_idx.1, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.03481, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %.03679, i64 64
  %i.ky = getelementptr inbounds nuw i8, ptr %.03580, i64 64
  %i.kz = add nuw nsw i64 %.082, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.kz, %i.bx
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !144

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn46.pn

bb.am:                                            ; preds = %bb.ah, %bb.y, %bb.p, %bb.g
  unreachable
}

declare void @_ZNK5faiss16ProductQuantizer25compute_inner_prod_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss18IndexIVFPQFastScan11compute_LUTEmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIfLi32EEES9_RKNS_30FastScanDistancePostProcessingE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !59
  %i.f = load i64, ptr %2, align 8, !tbaa !59
  %i.g = mul i64 %i.f, %i.e                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.i, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !91
  %i.j = load i32, ptr %0, align 4, !tbaa !91     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.k = load i64, ptr %i.b, align 8, !tbaa !59
  %i.l = call i64 @llvm.smin.i64(i64 %i.k, i64 %i.i) ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !59
  %i.m = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not27 = icmp sgt i64 %i.m, %i.l
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 584
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.028 = phi i64 [ %i.m, %.lr.ph ], [ %i.ag, %bb.f ] ; 5 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !16
  %i.q = load i64, ptr %5, align 8, !tbaa !59     ; 5 uses
  %i.r = mul i64 %i.q, %.028
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !105
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.028
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %2, align 8, !tbaa !59
  %i.y = udiv i64 %.028, %i.x
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.aa = load ptr, ptr %8, align 8, !tbaa !16
  %i.ab = mul i64 %i.v, %i.q
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = mul i64 %i.y, %i.q
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ad
  invoke void @_ZN5faiss14fvec_madd_simdEmPKffS1_Pf(i64 noundef %i.q, ptr noundef %i.ac, float noundef -2.000000e+00, ptr noundef %i.ae, ptr noundef %i.s)
          to label %bb.f unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.af = shl i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 -1, i64 %i.af, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ag = add nsw i64 %.028, 1
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !59
  %.not.not = icmp slt i64 %.028, %i.ah
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #30
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #20

; Function Attrs: noinline norecurse nounwind uwtable
end_hunk_0

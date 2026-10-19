Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFPQFastScan?download=true
inline.NumInlined: 541
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5faiss14fvec_madd_simdEmPKffS1_Pf:bb.a
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
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
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
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
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
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
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
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
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
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #28
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
  br i1 %min.iters.check, label %.lr.ph.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.by = shl i64 %0, 2                           ; 3 uses
  %i.bz = getelementptr i8, ptr %4, i64 %i.by     ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.by
  %i.cb = getelementptr i8, ptr %3, i64 %i.by
  %bound0 = icmp ult ptr %4, %i.ca
  %bound1 = icmp ult ptr %1, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %4, %i.cb
  %bound1100 = icmp ult ptr %3, %i.bz
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %.lr.ph.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 2305843009213693948     ; 4 uses
  %i.cc = shl i64 %n.vec, 5                       ; 3 uses
  %i.cd = getelementptr i8, ptr %4, i64 %i.cc
  %i.ce = getelementptr i8, ptr %3, i64 %i.cc
  %i.cf = getelementptr i8, ptr %1, i64 %i.cc
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ch = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 5                       ; 6 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.ci
  %i.cj = or disjoint i64 %i.ci, 32               ; 2 uses
  %i.ck = or disjoint i64 %i.ci, 64               ; 2 uses
  %i.cl = or disjoint i64 %i.ci, 96               ; 2 uses
  %next.gep102 = getelementptr i8, ptr %3, i64 %i.ci ; 8 uses
  %next.gep103 = getelementptr i8, ptr %3, i64 %i.cj ; 8 uses
  %next.gep104 = getelementptr i8, ptr %3, i64 %i.ck ; 8 uses
  %next.gep105 = getelementptr i8, ptr %3, i64 %i.cl ; 8 uses
  %next.gep106 = getelementptr i8, ptr %1, i64 %i.ci ; 8 uses
  %next.gep107 = getelementptr i8, ptr %1, i64 %i.cj ; 8 uses
  %next.gep108 = getelementptr i8, ptr %1, i64 %i.ck ; 8 uses
  %next.gep109 = getelementptr i8, ptr %1, i64 %i.cl ; 8 uses
  %i.cm = load float, ptr %next.gep106, align 1, !alias.scope !145
  %i.cn = load float, ptr %next.gep107, align 1, !alias.scope !145
  %i.co = load float, ptr %next.gep108, align 1, !alias.scope !145
  %i.cp = load float, ptr %next.gep109, align 1, !alias.scope !145
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep106, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep107, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep108, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep109, i64 4
  %i.cy = load float, ptr %i.cu, align 1, !alias.scope !145
  %i.cz = load float, ptr %i.cv, align 1, !alias.scope !145
  %i.da = load float, ptr %i.cw, align 1, !alias.scope !145
  %i.db = load float, ptr %i.cx, align 1, !alias.scope !145
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep106, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %next.gep107, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep108, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep109, i64 8
  %i.dk = load float, ptr %i.dg, align 1, !alias.scope !145
  %i.dl = load float, ptr %i.dh, align 1, !alias.scope !145
  %i.dm = load float, ptr %i.di, align 1, !alias.scope !145
  %i.dn = load float, ptr %i.dj, align 1, !alias.scope !145
  %i.do = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 3
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep106, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep107, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep108, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep109, i64 12
  %i.dw = load float, ptr %i.ds, align 1, !alias.scope !145
  %i.dx = load float, ptr %i.dt, align 1, !alias.scope !145
  %i.dy = load float, ptr %i.du, align 1, !alias.scope !145
  %i.dz = load float, ptr %i.dv, align 1, !alias.scope !145
  %i.ea = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 1
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 2
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 3
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep106, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep107, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep108, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep109, i64 16
  %i.ei = load float, ptr %i.ee, align 1, !alias.scope !145
  %i.ej = load float, ptr %i.ef, align 1, !alias.scope !145
  %i.ek = load float, ptr %i.eg, align 1, !alias.scope !145
  %i.el = load float, ptr %i.eh, align 1, !alias.scope !145
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  %i.eq = getelementptr inbounds nuw i8, ptr %next.gep106, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %next.gep107, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep108, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %next.gep109, i64 20
  %i.eu = load float, ptr %i.eq, align 1, !alias.scope !145
  %i.ev = load float, ptr %i.er, align 1, !alias.scope !145
  %i.ew = load float, ptr %i.es, align 1, !alias.scope !145
  %i.ex = load float, ptr %i.et, align 1, !alias.scope !145
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 3
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep106, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %next.gep107, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep108, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %next.gep109, i64 24
  %i.fg = load float, ptr %i.fc, align 1, !alias.scope !145
  %i.fh = load float, ptr %i.fd, align 1, !alias.scope !145
  %i.fi = load float, ptr %i.fe, align 1, !alias.scope !145
  %i.fj = load float, ptr %i.ff, align 1, !alias.scope !145
  %i.fk = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 1
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 2
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 3
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep106, i64 28
  %i.fp = getelementptr inbounds nuw i8, ptr %next.gep107, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %next.gep108, i64 28
  %i.fr = getelementptr inbounds nuw i8, ptr %next.gep109, i64 28
  %i.fs = load float, ptr %i.fo, align 1, !alias.scope !145
  %i.ft = load float, ptr %i.fp, align 1, !alias.scope !145
  %i.fu = load float, ptr %i.fq, align 1, !alias.scope !145
  %i.fv = load float, ptr %i.fr, align 1, !alias.scope !145
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3
  %i.ga = load float, ptr %next.gep102, align 1, !alias.scope !146
  %i.gb = load float, ptr %next.gep103, align 1, !alias.scope !146
  %i.gc = load float, ptr %next.gep104, align 1, !alias.scope !146
  %i.gd = load float, ptr %next.gep105, align 1, !alias.scope !146
  %i.ge = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %next.gep102, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %next.gep103, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %next.gep104, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep105, i64 4
  %i.gm = load float, ptr %i.gi, align 1, !alias.scope !146
  %i.gn = load float, ptr %i.gj, align 1, !alias.scope !146
  %i.go = load float, ptr %i.gk, align 1, !alias.scope !146
  %i.gp = load float, ptr %i.gl, align 1, !alias.scope !146
  %i.gq = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.gn, i64 1
  %i.gs = insertelement <4 x float> %i.gr, float %i.go, i64 2
  %i.gt = insertelement <4 x float> %i.gs, float %i.gp, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %next.gep102, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %next.gep103, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep104, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %next.gep105, i64 8
  %i.gy = load float, ptr %i.gu, align 1, !alias.scope !146
  %i.gz = load float, ptr %i.gv, align 1, !alias.scope !146
  %i.ha = load float, ptr %i.gw, align 1, !alias.scope !146
  %i.hb = load float, ptr %i.gx, align 1, !alias.scope !146
  %i.hc = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 2
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 3
  %i.hg = getelementptr inbounds nuw i8, ptr %next.gep102, i64 12
  %i.hh = getelementptr inbounds nuw i8, ptr %next.gep103, i64 12
  %i.hi = getelementptr inbounds nuw i8, ptr %next.gep104, i64 12
  %i.hj = getelementptr inbounds nuw i8, ptr %next.gep105, i64 12
  %i.hk = load float, ptr %i.hg, align 1, !alias.scope !146
  %i.hl = load float, ptr %i.hh, align 1, !alias.scope !146
  %i.hm = load float, ptr %i.hi, align 1, !alias.scope !146
  %i.hn = load float, ptr %i.hj, align 1, !alias.scope !146
  %i.ho = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 3
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep102, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %next.gep103, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %next.gep104, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %next.gep105, i64 16
  %i.hw = load float, ptr %i.hs, align 1, !alias.scope !146
  %i.hx = load float, ptr %i.ht, align 1, !alias.scope !146
  %i.hy = load float, ptr %i.hu, align 1, !alias.scope !146
  %i.hz = load float, ptr %i.hv, align 1, !alias.scope !146
  %i.ia = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.ib = insertelement <4 x float> %i.ia, float %i.hx, i64 1
  %i.ic = insertelement <4 x float> %i.ib, float %i.hy, i64 2
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 3
  %i.ie = getelementptr inbounds nuw i8, ptr %next.gep102, i64 20
  %i.if = getelementptr inbounds nuw i8, ptr %next.gep103, i64 20
  %i.ig = getelementptr inbounds nuw i8, ptr %next.gep104, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %next.gep105, i64 20
  %i.ii = load float, ptr %i.ie, align 1, !alias.scope !146
  %i.ij = load float, ptr %i.if, align 1, !alias.scope !146
  %i.ik = load float, ptr %i.ig, align 1, !alias.scope !146
  %i.il = load float, ptr %i.ih, align 1, !alias.scope !146
  %i.im = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 1
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 2
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 3
  %i.iq = getelementptr inbounds nuw i8, ptr %next.gep102, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %next.gep103, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %next.gep104, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %next.gep105, i64 24
  %i.iu = load float, ptr %i.iq, align 1, !alias.scope !146
  %i.iv = load float, ptr %i.ir, align 1, !alias.scope !146
  %i.iw = load float, ptr %i.is, align 1, !alias.scope !146
  %i.ix = load float, ptr %i.it, align 1, !alias.scope !146
  %i.iy = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 1
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 2
  %i.jb = insertelement <4 x float> %i.ja, float %i.ix, i64 3
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep102, i64 28
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep103, i64 28
  %i.je = getelementptr inbounds nuw i8, ptr %next.gep104, i64 28
  %i.jf = getelementptr inbounds nuw i8, ptr %next.gep105, i64 28
  %i.jg = load float, ptr %i.jc, align 1, !alias.scope !146
  %i.jh = load float, ptr %i.jd, align 1, !alias.scope !146
  %i.ji = load float, ptr %i.je, align 1, !alias.scope !146
  %i.jj = load float, ptr %i.jf, align 1, !alias.scope !146
  %i.jk = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.jl = insertelement <4 x float> %i.jk, float %i.jh, i64 1
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 2
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 3
  %i.jo = shufflevector <4 x float> %i.gh, <4 x float> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jp = shufflevector <4 x float> %i.ct, <4 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jq = shufflevector <4 x float> %i.hf, <4 x float> %i.hr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jr = shufflevector <4 x float> %i.dr, <4 x float> %i.ed, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.js = shufflevector <4 x float> %i.id, <4 x float> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jt = shufflevector <4 x float> %i.ep, <4 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ju = shufflevector <4 x float> %i.jb, <4 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jv = shufflevector <4 x float> %i.fn, <4 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jw = shufflevector <8 x float> %i.jo, <8 x float> %i.jq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jx = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jy = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cg, <16 x float> %i.jw, <16 x float> %i.jx)
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> %i.ju, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ka = shufflevector <8 x float> %i.jt, <8 x float> %i.jv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kb = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ch, <16 x float> %i.jz, <16 x float> %i.ka)
  %interleaved.vec = shufflevector <16 x float> %i.jy, <16 x float> %i.kb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !147, !noalias !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader113

.lr.ph.preheader113:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.082.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.03481.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.cd, %middle.block ] ; 4 uses
  %.03580.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.ce, %middle.block ] ; 4 uses
  %.03679.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.cf, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.082.ph, 1
  %i.kd = and i64 %0, 8
  %lcmp.mod.not = icmp eq i64 %i.kd, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader113
  %.sroa.770.0..036.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03679.ph, i64 16
  %.sroa.762.0..035.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03580.ph, i64 16
  %i.ke = load <4 x float>, ptr %.03679.ph, align 1
  %i.kf = load <4 x float>, ptr %.03580.ph, align 1
  %i.kg = insertelement <4 x float> poison, float %2, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ki = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kh, <4 x float> %i.kf, <4 x float> %i.ke)
  %.sroa.7.0..034.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.03481.ph, i64 16
  %i.kj = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx.prol, align 1
  %i.kk = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx.prol, align 1
  %i.kl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kh, <4 x float> %i.kk, <4 x float> %i.kj)
  store <4 x float> %i.ki, ptr %.03481.ph, align 1
  store <4 x float> %i.kl, ptr %.sroa.7.0..034.sroa_idx.prol, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %.03481.ph, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %.03679.ph, i64 32
  %i.ko = getelementptr inbounds nuw i8, ptr %.03580.ph, i64 32
  %i.kp = or disjoint i64 %.082.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader113
  %.082.unr = phi i64 [ %.082.ph, %.lr.ph.preheader113 ], [ %i.kp, %.lr.ph.prol ]
  %.03481.unr = phi ptr [ %.03481.ph, %.lr.ph.preheader113 ], [ %i.km, %.lr.ph.prol ]
  %.03580.unr = phi ptr [ %.03580.ph, %.lr.ph.preheader113 ], [ %i.ko, %.lr.ph.prol ]
  %.03679.unr = phi ptr [ %.03679.ph, %.lr.ph.preheader113 ], [ %i.kn, %.lr.ph.prol ]
  %i.kq = icmp eq i64 %i.bx, %.neg
  br i1 %i.kq, label %._crit_edge, label %.lr.ph.preheader113.new

.lr.ph.preheader113.new:                          ; preds = %.lr.ph.prol.loopexit
  %i.kr = insertelement <4 x float> poison, float %2, i64 0
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kt = insertelement <4 x float> poison, float %2, i64 0
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.ak
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader113.new
  %.082 = phi i64 [ %.082.unr, %.lr.ph.preheader113.new ], [ %i.ln, %.lr.ph ]
  %.03481 = phi ptr [ %.03481.unr, %.lr.ph.preheader113.new ], [ %i.lk, %.lr.ph ] ; 5 uses
  %.03580 = phi ptr [ %.03580.unr, %.lr.ph.preheader113.new ], [ %i.lm, %.lr.ph ] ; 5 uses
  %.03679 = phi ptr [ %.03679.unr, %.lr.ph.preheader113.new ], [ %i.ll, %.lr.ph ] ; 5 uses
  %.sroa.770.0..036.sroa_idx = getelementptr inbounds nuw i8, ptr %.03679, i64 16
  %.sroa.762.0..035.sroa_idx = getelementptr inbounds nuw i8, ptr %.03580, i64 16
  %i.kv = load <4 x float>, ptr %.03679, align 1
  %i.kw = load <4 x float>, ptr %.03580, align 1
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ks, <4 x float> %i.kw, <4 x float> %i.kv)
  %.sroa.7.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03481, i64 16
  %i.ky = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx, align 1
  %i.kz = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx, align 1
  %i.la = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ks, <4 x float> %i.kz, <4 x float> %i.ky)
  store <4 x float> %i.kx, ptr %.03481, align 1
  store <4 x float> %i.la, ptr %.sroa.7.0..034.sroa_idx, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %.03481, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %.03679, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %.03580, i64 32
  %.sroa.770.0..036.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03679, i64 48
  %.sroa.762.0..035.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03580, i64 48
  %i.le = load <4 x float>, ptr %i.lc, align 1
  %i.lf = load <4 x float>, ptr %i.ld, align 1
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %i.lf, <4 x float> %i.le)
  %.sroa.7.0..034.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.03481, i64 48
  %i.lh = load <4 x float>, ptr %.sroa.770.0..036.sroa_idx.1, align 1
  %i.li = load <4 x float>, ptr %.sroa.762.0..035.sroa_idx.1, align 1
  %i.lj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %i.li, <4 x float> %i.lh)
  store <4 x float> %i.lg, ptr %i.lb, align 1
  store <4 x float> %i.lj, ptr %.sroa.7.0..034.sroa_idx.1, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.03481, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.03679, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %.03580, i64 64
  %i.ln = add nuw nsw i64 %.082, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ln, %i.bx
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
  call void @__clang_call_terminate(ptr %i.aj) #31
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #20

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss18IndexIVFPQFastScan11compute_LUTEmPKfRKNS_16IndexIVFFastScan15CoarseQuantizedERNS_12AlignedTableIfLi32EEES9_RKNS_30FastScanDistancePostProcessingE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #15 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lookahead?download=true
inline.NumInlined: 908
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7CaDiCaL8Internal23lookahead_populate_loccEv:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2216
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not6270 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not6270, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 760
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02765 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bh, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ak = trunc i64 %.02765 to i32
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02765
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !169
  %i.am = or disjoint i64 %.02765, 1              ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.am
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !169
  %i.ap = or disjoint i64 %.02765, 2              ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ap
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !169
  %i.as = or disjoint i64 %.02765, 3              ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.as
  store i32 %i.at, ptr %i.au, align 4, !tbaa !169
  %i.av = or disjoint i64 %.02765, 4              ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.av
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !169
  %i.ay = or disjoint i64 %.02765, 5              ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ay
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !169
  %i.bb = or disjoint i64 %.02765, 6              ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bb
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !169
  %i.be = or disjoint i64 %.02765, 7              ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !169
  %i.bh = add nuw i64 %.02765, 8                  ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !224

._crit_edge74:                                    ; preds = %.loopexit64, %._crit_edge
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge74
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.053.0115, ptr %.0.i.i.i.i.i116, i64 noundef %i.ae)
          to label %.noexc35 unwind label %bb.n

.noexc35:                                         ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.053.0115, ptr %.0.i.i.i.i.i116)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.n

bb.d:                                             ; preds = %.lr.ph73, %.loopexit64
  %.sroa.049.071 = phi ptr [ %i.ag, %.lr.ph73 ], [ %i.df, %.loopexit64 ] ; 2 uses
  %i.bi = load ptr, ptr %.sroa.049.071, align 8, !tbaa !172 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, 2048
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.e, label %.loopexit64

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !164 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %.idx = shl nsw i64 %i.bp, 2                    ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %.idx
  %.not3066 = icmp eq i32 %i.bo, 0
  br i1 %.not3066, label %.loopexit64, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !173 ; 3 uses
  %i.bs = add nsw i64 %.idx, -4                   ; 2 uses
  %i.bt = and i64 %i.bs, 4
  %lcmp.mod148.not.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod148.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph69
  %i.bu = load i32, ptr %i.bm, align 8, !tbaa !164
  %i.bv = tail call i32 @llvm.abs.i32(i32 %i.bu, i1 true)
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 1
  %i.bz = and i32 %i.by, 117440512
  %i.ca = icmp eq i32 %i.bz, 16777216
  br i1 %i.ca, label %bb.f, label %.prol.loopexit.unr-lcssa

bb.f:                                             ; preds = %.prol.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.053.0115, i64 %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !174
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !174
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f, %.prol.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph69
  %.02867.unr = phi ptr [ %i.bm, %.lr.ph69 ], [ %i.cf, %.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i64 %i.bs, 0
  br i1 %i.cg, label %.loopexit64, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.prol.loopexit, %bb.j
  %.02867 = phi ptr [ %i.de, %bb.j ], [ %.02867.unr, %.prol.loopexit ] ; 3 uses
  %i.ch = load i32, ptr %.02867, align 4, !tbaa !164
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = and i32 %i.cl, 117440512
  %i.cn = icmp eq i32 %i.cm, 16777216
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph69.new
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.053.0115, i64 %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !174
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !174
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph69.new
  %i.cs = getelementptr inbounds nuw i8, ptr %.02867, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !164
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = and i32 %i.cx, 117440512
  %i.cz = icmp eq i32 %i.cy, 16777216
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.053.0115, i64 %i.cv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !174
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !174
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %.02867, i64 8 ; 2 uses
  %.not30.1 = icmp eq ptr %i.de, %i.bq
  br i1 %.not30.1, label %.loopexit64, label %.lr.ph69.new

.loopexit64:                                      ; preds = %.prol.loopexit, %bb.j, %bb.e, %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.049.071, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.df, %i.ai
  br i1 %.not62, label %._crit_edge74, label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %._crit_edge74, %.noexc35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.dg = load i32, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = icmp slt i32 %i.dg, 0
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #17
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL11literal_occESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not111 = icmp eq i32 %i.dg, 0
  br i1 %.not111, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.dk = shl nuw nsw i64 %i.dh, 2
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #18
          to label %.noexc38 unwind label %.loopexit.split-lp ; 4 uses

.noexc38:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dl, ptr %0, align 8, !tbaa !175
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !176
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dh ; 2 uses
  store ptr %i.dn, ptr %i.dj, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %.noexc38, %bb.l
  %.promoted78 = phi ptr [ %i.dl, %.noexc38 ], [ null, %bb.l ] ; 3 uses
  %.promoted = phi ptr [ %i.dn, %.noexc38 ], [ null, %bb.l ] ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge85.a, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.o

._crit_edge85:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %2, ptr %i.do, align 8
  br label %._crit_edge85.a

._crit_edge85.a:                                  ; preds = %._crit_edge85, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa79 = phi ptr [ %i.ek, %._crit_edge85 ], [ %.promoted78, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  %.lcssa75 = phi ptr [ %i.el, %._crit_edge85 ], [ %.promoted, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  store ptr %.lcssa75, ptr %i.dj, align 8
  store ptr %.lcssa79, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %.sroa.053.0115, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge85.a
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.053.0115) #19
  br label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit: ; preds = %._crit_edge85.a, %bb.m
  ret void

bb.n:                                             ; preds = %.noexc35, %bb.c
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.o:                                             ; preds = %.lr.ph84, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dq = phi ptr [ %.promoted78, %.lr.ph84 ], [ %2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.045.083 = phi ptr [ %.sroa.053.0115, %.lr.ph84 ], [ %i.em, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.dr = phi ptr [ %.promoted, %.lr.ph84 ], [ %i.el, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.ds = phi ptr [ %.promoted78, %.lr.ph84 ], [ %i.ek, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 9 uses
  %.not.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load i32, ptr %.sroa.045.083, align 4, !tbaa !164
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %bb.o
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.dq, ptr %i.do, align 8
  store ptr %i.dr, ptr %i.dj, align 8
  store ptr %i.ds, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i39 = icmp ne i64 %i.ec, 0
  tail call void @llvm.assume(i1 %.not.i.i.i39)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #18
          to label %.noexc41 unwind label %.loopexit ; 4 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  %i.eg = load i32, ptr %.sroa.045.083, align 4, !tbaa !164
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !164
  %i.eh = icmp sgt i64 %i.dw, 0
  br i1 %i.eh, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %i.ds, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc41
  %.not.i17.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ds) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.p
  %i.ej = phi ptr [ %i.ef, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dq, %bb.p ]
  %i.ek = phi ptr [ %i.ee, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ds, %bb.p ] ; 2 uses
  %i.el = phi ptr [ %i.ei, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dr, %bb.p ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.083, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.em, %.0.i.i.i.i.i116
  br i1 %.not63, label %._crit_edge85, label %bb.o

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dq, ptr %i.do, align 8
  store ptr %i.dr, ptr %i.dj, align 8
  store ptr %i.ds, ptr %0, align 8
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.r, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.k
  %i.en = phi ptr [ %i.ds, %bb.r ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.k ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.eo = phi ptr [ %i.ds, %.loopexit ], [ %i.en, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdlPv(ptr noundef nonnull %i.eo) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.v, %bb.u, %bb.n
  %.pn31 = phi { ptr, i32 } [ %lpad.phi, %bb.v ], [ %i.dp, %bb.n ], [ %lpad.phi, %bb.u ]
  %.not.i.i.i43 = icmp eq ptr %.sroa.053.0115, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.053.0115) #19
  br label %_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44

_ZNSt6vectorIN7CaDiCaL11literal_occESaIS1_EED2Ev.exit44: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEED2Ev.exit
  resume { ptr, i32 } %.pn31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL8Internal14lookahead_loccERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !178    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 2 uses
  %.not2326 = icmp eq ptr %i.a, %i.c
  br i1 %.not2326, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.g = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.014.027 = phi ptr [ %i.a, %.lr.ph ], [ %i.w, %bb.f ] ; 2 uses
  %i.h = load i32, ptr %.sroa.014.027, align 4, !tbaa !164 ; 5 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1              ; 2 uses
  %i.m = and i32 %i.l, 117440512
  %i.n = icmp eq i32 %i.m, 16777216
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.lobit.i.i = lshr i32 %i.h, 31
  %i.o = add nuw nsw i32 %.lobit.i.i, 1
  %i.p = lshr i32 %i.l, 18                        ; 2 uses
  %i.q = and i32 %i.p, %i.o
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.inv = icmp slt i32 %i.h, 1
  %i.r = select i1 %.inv, i32 1, i32 2
  %i.s = and i32 %i.p, %i.r
  %.not25 = icmp eq i32 %i.s, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = sext i32 %i.h to i64
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !179
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.w, %i.c
  br i1 %.not23, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.a
  %i.x = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.h, %bb.e ]
  ret i32 %i.x
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal22most_occurring_literalEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %.not5258 = icmp eq ptr %i.b, %i.d
  br i1 %.not5258, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit55, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 4, !tbaa !180, !range !181, !noundef !182
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.m, label %bb.g

bb.b:                                             ; preds = %.lr.ph60, %.loopexit55
  %.sroa.049.059 = phi ptr [ %i.b, %.lr.ph60 ], [ %i.ah, %.loopexit55 ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.049.059, align 8, !tbaa !172 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 2048
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %bb.c, label %.loopexit55

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 2
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %.not4756 = icmp eq i32 %i.p, 0
  br i1 %.not4756, label %.loopexit55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !173
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.03957 = phi ptr [ %i.n, %.lr.ph ], [ %i.ag, %bb.f ] ; 2 uses
  %i.t = load i32, ptr %.03957, align 4, !tbaa !164 ; 2 uses
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 117440512
  %i.z = icmp eq i32 %i.y, 16777216
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.t, i32 1)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !184
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !184
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.03957, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.ag, %i.r
  br i1 %.not47, label %.loopexit55, label %bb.d

.loopexit55:                                      ; preds = %bb.f, %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.049.059, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.ah, %i.d
  br i1 %.not52, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %._crit_edge
  %i.ai = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !163 ; 2 uses
  %.not64 = icmp slt i32 %i.ak, 1
  br i1 %.not64, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !173 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ap = add nuw i32 %i.ak, 1
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.h

._crit_edge70:                                    ; preds = %.loopexit, %bb.g
  %.034.lcssa = phi i64 [ 0, %bb.g ], [ %.438, %.loopexit ]
  %.033.lcssa = phi i32 [ 0, %bb.g ], [ %.4, %.loopexit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !185 ; 2 uses
end_hunk_0

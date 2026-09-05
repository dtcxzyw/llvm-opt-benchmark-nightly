Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE:bb.a
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.preheader312.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge337.thread

.preheader312.lr.ph:                              ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30 ; 7 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = load i8, ptr %i.n, align 1, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 %i.t, i64 %spec.select, i1 false)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !61  ; 2 uses
  %.pre416.a = load ptr, ptr %1, align 8, !tbaa !62 ; 3 uses
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = ptrtoint ptr %.pre416.a to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 1
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.pre416.a to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.lr.ph, %._crit_edge
  %.0127336 = phi i64 [ 0, %.preheader312.lr.ph ], [ %i.ak, %._crit_edge ] ; 3 uses
  %.0142335 = phi i1 [ false, %.preheader312.lr.ph ], [ %i.aj, %._crit_edge ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0127336 ; 3 uses
  br i1 %i.y, label %.lr.ph, label %.preheader312.._crit_edge_crit_edge

.preheader312.._crit_edge_crit_edge:              ; preds = %.preheader312
  %.pre418.a = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader312
  %i.ad = trunc i64 %.0127336 to i32
  %i.ae = srem i32 %i.ad, 255
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.af
  %.pre417 = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %bb.b

._crit_edge337:                                   ; preds = %._crit_edge
  br i1 %i.aj, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164, label %._crit_edge337.thread

._crit_edge:                                      ; preds = %_ZN2cvL5gfMulEhh.exit, %.preheader312.._crit_edge_crit_edge
  %i.ah = phi i8 [ %.pre418.a, %.preheader312.._crit_edge_crit_edge ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ]
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = or i1 %.0142335, %i.ai                  ; 2 uses
  %i.ak = add nuw i64 %.0127336, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %spec.select
  br i1 %exitcond.not, label %._crit_edge337, label %.preheader312, !llvm.loop !319

bb.b:                                             ; preds = %.lr.ph, %_ZN2cvL5gfMulEhh.exit
  %i.al = phi i8 [ %.pre417, %.lr.ph ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %.0126334 = phi i64 [ 1, %.lr.ph ], [ %i.bd, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZN2cvL5gfMulEhh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i16
  %i.as = zext i8 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i16
  %.lhs.trunc.i = add nuw nsw i16 %i.av, %i.ar
  %i.aw = urem i16 %.lhs.trunc.i, 255
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit

_ZN2cvL5gfMulEhh.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.az, %bb.c ], [ 0, %bb.b ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre416.a, i64 %.0126334
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = xor i8 %i.bb, %.0.i                     ; 3 uses
  store i8 %i.bc, ptr %i.ac, align 1, !tbaa !16
  %i.bd = add nuw i64 %.0126334, 1                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.ab
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !320

._crit_edge337.thread:                            ; preds = %.thread, %._crit_edge337
  %i.bf = phi ptr [ %i.p, %._crit_edge337 ], [ null, %.thread ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.k
  %i.bn = icmp ult i64 %i.bl, %i.k
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge337.thread
  %i.bo = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bo)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge337.thread
  %.not389 = icmp eq i32 %i.j, 0
  br i1 %.not389, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.g:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %._crit_edge337
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  store ptr %i.br, ptr %3, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.lr.ph356 unwind label %bb.l  ; 4 uses

.lr.ph356:                                        ; preds = %bb.h
  store ptr %i.bv, ptr %4, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %spec.select ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !61
  store i8 1, ptr %i.bv, align 1, !tbaa !16
  store i8 1, ptr %i.br, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not500 = icmp eq i64 %spec.select, 1
  br label %bb.m

._crit_edge357:                                   ; preds = %bb.af
  %i.cb = icmp ugt i64 %.2125, 1152921504606846975
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge357
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
          to label %.noexc178 unwind label %.thread298

.noexc178:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge357
  %.not = icmp eq i64 %.2125, 0                   ; 4 uses
  br i1 %.not, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.cc = shl nuw nsw i64 %.2125, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #30
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.thread298 ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.2125
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.j, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.0123.lcssa470474 = phi i64 [ %.2125, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ 0, %bb.j ] ; 9 uses
  %.sroa.0267.3 = phi ptr [ %i.cd, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.29.3 = phi ptr [ %i.ce, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %.not392 = icmp eq i64 %i.ck, 0
  br i1 %.not392, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %9 = call i64 @llvm.umax.i64(i64 %.0123.lcssa470474, i64 1)
  br label %bb.ag

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

bb.l:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

bb.m:                                             ; preds = %.lr.ph356, %bb.af
  %.0117353 = phi i64 [ 0, %.lr.ph356 ], [ %i.gf, %bb.af ] ; 5 uses
  %.0118352 = phi i8 [ 1, %.lr.ph356 ], [ %.2, %bb.af ] ; 3 uses
  %.0120351 = phi i64 [ 1, %.lr.ph356 ], [ %.2122, %bb.af ] ; 4 uses
  %.0123349 = phi i64 [ 0, %.lr.ph356 ], [ %.2125, %bb.af ] ; 8 uses
  %i.cn = add i64 %.0123349, -1
  %i.co = add i64 %i.cn, %.0120351
  %i.cp = icmp ult i64 %i.co, %spec.select
  br i1 %i.cp, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE, ptr noundef nonnull @.str.1, i32 noundef 1582) #28
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cr, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.s:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0117353
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16  ; 2 uses
  %.not152339 = icmp eq i64 %.0123349, 0          ; 2 uses
  br i1 %.not152339, label %._crit_edge344, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.s
  %i.cz = add i64 %.0123349, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  br label %.lr.ph343

._crit_edge344:                                   ; preds = %_ZN2cvL5gfMulEhh.exit183, %bb.s
  %.0116.lcssa = phi i8 [ %i.cy, %bb.s ], [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ] ; 3 uses
  %i.da = icmp eq i8 %.0116.lcssa, 0
  br i1 %i.da, label %bb.u, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %_ZN2cvL5gfMulEhh.exit183
  %.0115341 = phi i64 [ %i.dv, %_ZN2cvL5gfMulEhh.exit183 ], [ 1, %.lr.ph343.preheader ] ; 3 uses
  %.0116340 = phi i8 [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ], [ %i.cy, %.lr.ph343.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0115341
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16  ; 2 uses
  %i.dd = sub i64 %.0117353, %.0115341
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16  ; 2 uses
  %i.dg = icmp eq i8 %i.dc, 0
  %i.dh = icmp eq i8 %i.df, 0
  %or.cond.i180 = or i1 %i.dg, %i.dh
  br i1 %or.cond.i180, label %_ZN2cvL5gfMulEhh.exit183, label %bb.t

bb.t:                                             ; preds = %.lr.ph343
  %i.di = zext i8 %i.dc to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i16
  %i.dm = zext i8 %i.df to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i16
  %.lhs.trunc.i181 = add nuw nsw i16 %i.dp, %i.dl
  %i.dq = urem i16 %.lhs.trunc.i181, 255
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = xor i8 %i.dt, %.0116340
  br label %_ZN2cvL5gfMulEhh.exit183

_ZN2cvL5gfMulEhh.exit183:                         ; preds = %.lr.ph343, %bb.t
  %.0.i182 = phi i8 [ %i.du, %bb.t ], [ %.0116340, %.lr.ph343 ] ; 2 uses
  %i.dv = add nuw i64 %.0115341, 1                ; 2 uses
  %exitcond405 = icmp eq i64 %i.dv, %umax
  br i1 %exitcond405, label %._crit_edge344, label %.lr.ph343, !llvm.loop !321

bb.u:                                             ; preds = %._crit_edge344
  %i.dw = add i64 %.0120351, 1
  br label %bb.af

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge344
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.noexc186 unwind label %.loopexit307 ; 5 uses

.noexc186:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.dx, ptr %7, align 8, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %spec.select ; 2 uses
  store ptr %i.dy, ptr %i.ca, align 8, !tbaa !64
  br i1 %.not500, label %bb.w, label %bb.v, !prof !97

bb.v:                                             ; preds = %.noexc186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %i.br, i64 %spec.select, i1 false)
  br label %_ZN2cvL5gfMulEhh.exit193

bb.w:                                             ; preds = %.noexc186
  %i.dz = load i8, ptr %i.br, align 1, !tbaa !16
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit193

_ZN2cvL5gfMulEhh.exit193:                         ; preds = %bb.w, %bb.v
  store ptr %i.dy, ptr %i.bz, align 8, !tbaa !61
  br i1 %.not152339, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %_ZN2cvL5gfMulEhh.exit193
  %i.ea = zext i8 %.0118352 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.ed = zext i8 %i.ec to i16
  %.lhs.trunc.i188 = sub nuw nsw i16 510, %i.ed
  %i.ee = urem i16 %.lhs.trunc.i188, 255
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.el = zext i8 %i.ek to i16
  %i.em = zext i8 %.0116.lcssa to i64
  %i.en = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = zext i8 %i.eo to i16
  %.lhs.trunc.i191 = add nuw nsw i16 %i.el, %i.ep
  %i.eq = urem i16 %.lhs.trunc.i191, 255
  %i.er = zext nneg i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %i.eu = freeze i8 %i.et                         ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 0
  %i.ew = zext i8 %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.br, i64 %.0120351
  br i1 %i.ev, label %._crit_edge348, label %.lr.ph347.split.preheader

.lr.ph347.split.preheader:                        ; preds = %.lr.ph347
  %.pre419.a = load ptr, ptr %4, align 8, !tbaa !62
  br label %.lr.ph347.split

._crit_edge348:                                   ; preds = %_ZN2cvL5gfMulEhh.exit197, %.lr.ph347, %_ZN2cvL5gfMulEhh.exit193
  %i.ez = shl i64 %.0123349, 1
  %.not153 = icmp ugt i64 %i.ez, %.0117353
  br i1 %.not153, label %bb.ac, label %bb.aa

.loopexit307:                                     ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.x:                                             ; preds = %bb.aa
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !64
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.ff) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph347.split:                                  ; preds = %.lr.ph347.split.preheader, %_ZN2cvL5gfMulEhh.exit197
  %.0114346 = phi i64 [ %i.fw, %_ZN2cvL5gfMulEhh.exit197 ], [ 0, %.lr.ph347.split.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre419.a, i64 %.0114346
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %_ZN2cvL5gfMulEhh.exit197, label %bb.z

bb.z:                                             ; preds = %.lr.ph347.split
  %i.fj = load i8, ptr %i.ex, align 1, !tbaa !16
  %i.fk = zext i8 %i.fj to i16
  %i.fl = zext i8 %i.fh to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i16
  %.lhs.trunc.i195 = add nuw nsw i16 %i.fo, %i.fk
  %i.fp = urem i16 %.lhs.trunc.i195, 255
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit197

_ZN2cvL5gfMulEhh.exit197:                         ; preds = %.lr.ph347.split, %bb.z
  %.0.i196 = phi i8 [ %i.fs, %bb.z ], [ 0, %.lr.ph347.split ]
  %i.ft = getelementptr i8, ptr %i.ey, i64 %.0114346 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  %i.fv = xor i8 %i.fu, %.0.i196
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !16
  %i.fw = add nuw i64 %.0114346, 1                ; 2 uses
  %exitcond406.not = icmp eq i64 %i.fw, %.0123349
  br i1 %exitcond406.not, label %._crit_edge348, label %.lr.ph347.split, !llvm.loop !322

bb.aa:                                            ; preds = %._crit_edge348
  %i.fx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ab unwind label %bb.x      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %reass.sub = sub i64 %.0117353, %.0123349
  %i.fy = add i64 %reass.sub, 1
  %.pre420.a = load ptr, ptr %7, align 8, !tbaa !62
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge348
  %i.fz = add i64 %.0120351, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ga = phi ptr [ %.pre420.a, %bb.ab ], [ %i.dx, %bb.ac ] ; 3 uses
  %.1124 = phi i64 [ %i.fy, %bb.ab ], [ %.0123349, %bb.ac ]
  %.1121 = phi i64 [ 1, %bb.ab ], [ %i.fz, %bb.ac ]
  %.1119 = phi i8 [ %.0116.lcssa, %bb.ab ], [ %.0118352, %bb.ac ]
  %.not.i.i.i198 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIhSaIhEED2Ev.exit199, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gb = load ptr, ptr %i.ca, align 8, !tbaa !64
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.ge) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit199

_ZNSt6vectorIhSaIhEED2Ev.exit199:                 ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.af

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit307, %bb.y, %bb.x
  %.pn154 = phi { ptr, i32 } [ %i.fa, %bb.y ], [ %i.fa, %bb.x ], [ %lpad.loopexit309, %.loopexit307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.af:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit199, %bb.u
  %.2125 = phi i64 [ %.0123349, %bb.u ], [ %.1124, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ] ; 6 uses
  %.2122 = phi i64 [ %i.dw, %bb.u ], [ %.1121, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ]
  %.2 = phi i8 [ %.0118352, %bb.u ], [ %.1119, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ]
  %i.gf = add nuw i64 %.0117353, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.gf, %spec.select
  br i1 %exitcond407.not, label %._crit_edge357, label %bb.m, !llvm.loop !323

._crit_edge371:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.sroa.0267.0.lcssa = phi ptr [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.0267.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.18.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.29.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.gg = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.gh = ptrtoint ptr %.sroa.0267.0.lcssa to i64 ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 3
  %.not144 = icmp eq i64 %i.gj, %.0123.lcssa470474 ; 2 uses
  br i1 %.not144, label %bb.ap, label %bb.bl

.thread298:                                       ; preds = %bb.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.ag:                                            ; preds = %.lr.ph370, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.gl = phi ptr [ %i.ch, %.lr.ph370 ], [ %i.ie, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.gm = phi ptr [ %i.cg, %.lr.ph370 ], [ %i.if, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.gn = phi i64 [ %i.ck, %.lr.ph370 ], [ %i.ij, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.0113369 = phi i64 [ 0, %.lr.ph370 ], [ %i.ig, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %.sroa.29.0368 = phi ptr [ %.sroa.29.3, %.lr.ph370 ], [ %.sroa.29.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %.sroa.18.0367 = phi ptr [ %.sroa.0267.3, %.lr.ph370 ], [ %.sroa.18.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 5 uses
  %.sroa.0267.0366 = phi ptr [ %.sroa.0267.3, %.lr.ph370 ], [ %.sroa.0267.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 9 uses
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ag
  %i.go = trunc i64 %.0113369 to i32
  %i.gp = srem i32 %i.go, 255
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !16
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gt
  br label %bb.ah

._crit_edge364:                                   ; preds = %_ZN2cvL5gfMulEhh.exit203
  %i.gv = icmp eq i8 %i.hi, %.0.i202
  br i1 %i.gv, label %bb.aj, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ah:                                            ; preds = %.lr.ph363, %_ZN2cvL5gfMulEhh.exit203
  %.0111361 = phi i64 [ 1, %.lr.ph363 ], [ %i.hk, %_ZN2cvL5gfMulEhh.exit203 ] ; 3 uses
  %.0112360 = phi i8 [ 1, %.lr.ph363 ], [ %i.hj, %_ZN2cvL5gfMulEhh.exit203 ] ; 2 uses
  %i.gw = icmp eq i8 %.0112360, 0
  br i1 %i.gw, label %_ZN2cvL5gfMulEhh.exit203, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = zext i8 %.0112360 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %i.ha = zext i8 %i.gz to i16
  %i.hb = load i8, ptr %i.gu, align 1, !tbaa !16
  %i.hc = zext i8 %i.hb to i16
  %.lhs.trunc.i201 = add nuw nsw i16 %i.hc, %i.ha
  %i.hd = urem i16 %.lhs.trunc.i201, 255
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit203

_ZN2cvL5gfMulEhh.exit203:                         ; preds = %bb.ah, %bb.ai
  %.0.i202 = phi i8 [ %i.hg, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0111361
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16  ; 2 uses
  %i.hj = xor i8 %i.hi, %.0.i202
  %i.hk = add nuw i64 %.0111361, 1
  %exitcond409 = icmp eq i64 %.0111361, %9
  br i1 %exitcond409, label %._crit_edge364, label %bb.ah, !llvm.loop !324

bb.aj:                                            ; preds = %._crit_edge364
  %i.hl = xor i64 %.0113369, -1
  %i.hm = add i64 %i.gn, %i.hl
  %sext = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext, 32                ; 2 uses
  %.not.i.i204 = icmp eq ptr %.sroa.18.0367, %.sroa.29.0368
  br i1 %.not.i.i204, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.hn, ptr %.sroa.18.0367, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.18.0367, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.al:                                            ; preds = %bb.aj
  %i.hp = ptrtoint ptr %.sroa.29.0368 to i64
  %i.hq = ptrtoint ptr %.sroa.0267.0366 to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 6 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775800
  br i1 %i.hs, label %bb.am, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc206 unwind label %.loopexit.split-lp

.noexc206:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ht = ashr exact i64 %i.hr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 1152921504606846975)
  %i.hx = select i1 %i.hv, i64 1152921504606846975, i64 %i.hw ; 3 uses
  %.not.i.i.i.i205 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i205)
  %i.hy = shl nuw nsw i64 %i.hx, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #30
          to label %.noexc207 unwind label %.loopexit ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hr ; 2 uses
  store i64 %i.hn, ptr %i.ia, align 8, !tbaa !24
  %i.ib = icmp sgt i64 %i.hr, 0
  br i1 %i.ib, label %bb.an, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hz, ptr align 8 %.sroa.0267.0366, i64 %i.hr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc207
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0267.0366, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0366, i64 noundef %i.hr) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  %.pre421.a = load ptr, ptr %i.cf, align 8, !tbaa !61
  %.pre422.a = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ag, %bb.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %._crit_edge364
  %i.ie = phi ptr [ %i.gl, %._crit_edge364 ], [ %.pre422.a, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gl, %bb.ak ], [ %i.gl, %bb.ag ] ; 2 uses
  %i.if = phi ptr [ %i.gm, %._crit_edge364 ], [ %.pre421.a, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gm, %bb.ak ], [ %i.gm, %bb.ag ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.0366, %._crit_edge364 ], [ %i.hz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0267.0366, %bb.ak ], [ %.sroa.0267.0366, %bb.ag ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0367, %._crit_edge364 ], [ %i.ic, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ho, %bb.ak ], [ %.sroa.18.0367, %bb.ag ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0368, %._crit_edge364 ], [ %i.id, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.29.0368, %bb.ak ], [ %.sroa.29.0368, %bb.ag ] ; 2 uses
  %i.ig = add nuw i64 %.0113369, 1                ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 2 uses
  %i.ik = icmp ult i64 %i.ig, %i.ij
  br i1 %i.ik, label %bb.ag, label %._crit_edge371, !llvm.loop !325

bb.ap:                                            ; preds = %._crit_edge371
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL9gfPolyMulERKSt6vectorIhSaIhEES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 unwind label %bb.as

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208: ; preds = %bb.ap
  %.not.i.i.i.i209 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.0267.0.lcssa
  br i1 %.not.i.i.i.i209, label %._crit_edge387, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.0123.lcssa470474) #30
          to label %.noexc212 unwind label %bb.at ; 7 uses

.noexc212:                                        ; preds = %bb.aq
  %i.im = getelementptr i8, ptr %i.il, i64 %.0123.lcssa470474
  store i8 0, ptr %i.il, align 1, !tbaa !16
  %i.in = add nsw i64 %.0123.lcssa470474, -1      ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.lr.ph376, label %bb.ar

bb.ar:                                            ; preds = %.noexc212
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ip, i8 0, i64 %i.in, i1 false)
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.ar, %.noexc212
  %i.iq = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ir = load ptr, ptr %1, align 8, !tbaa !62
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %umax410 = call i64 @llvm.umax.i64(i64 %.0123.lcssa470474, i64 1)
  br label %bb.au

.lr.ph386:                                        ; preds = %bb.au
  %umax413 = call i64 @llvm.umax.i64(i64 %.0123.lcssa470474, i64 1) ; 2 uses
  br label %bb.ay

bb.as:                                            ; preds = %bb.ap
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.at:                                            ; preds = %bb.aq
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.au:                                            ; preds = %.lr.ph376, %bb.au
  %.0110375 = phi i64 [ 0, %.lr.ph376 ], [ %i.jh, %bb.au ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0110375
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !24
  %i.iz = xor i64 %i.iy, -1
  %i.ja = add i64 %i.iu, %i.iz
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = srem i32 %i.jb, 255
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0110375
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !16
  %i.jh = add nuw i64 %.0110375, 1                ; 2 uses
  %exitcond411.not.a = icmp eq i64 %i.jh, %umax410
  br i1 %exitcond411.not.a, label %.lr.ph386, label %bb.au, !llvm.loop !326

._crit_edge387.loopexit:                          ; preds = %_ZN2cvL5gfDivEhh.exit228
  %i.ji = ptrtoint ptr %i.im to i64
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %.sroa.0260.0480486 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.il, %._crit_edge387.loopexit ] ; 6 uses
  %.sroa.12.0482485 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.ji, %._crit_edge387.loopexit ] ; 2 uses
  %i.jj = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %i.jk = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = sub nuw i64 %i.jn, %i.k
  %i.jp = icmp ult i64 %i.jn, %i.k
  br i1 %i.jp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge387
  %i.jq = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jq)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216 unwind label %bb.bi

bb.aw:                                            ; preds = %._crit_edge387
  %.not396 = icmp eq i32 %i.j, 0
  br i1 %.not396, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jo ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.jj, %i.jr
  br i1 %.not.i.i213, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214:     ; preds = %bb.ax
  store ptr %i.jr, ptr %i.cf, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ay:                                            ; preds = %.lr.ph386, %_ZN2cvL5gfDivEhh.exit228
  %.0109385 = phi i64 [ 0, %.lr.ph386 ], [ %i.lz, %_ZN2cvL5gfDivEhh.exit228 ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0109385
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !16  ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %_ZN2cvL5gfDivEhh.exit220.thread, label %_ZN2cvL5gfDivEhh.exit220

_ZN2cvL5gfDivEhh.exit220:                         ; preds = %bb.ay
  %i.jv = zext i8 %i.jt to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !16
  %i.jy = zext i8 %i.jx to i16
  %.lhs.trunc.i218 = sub nuw nsw i16 510, %i.jy
  %i.jz = urem i16 %.lhs.trunc.i218, 255
  %i.ka = zext nneg i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !16
  %i.kd = freeze i8 %i.kc                         ; 3 uses
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379

_ZN2cvL5gfDivEhh.exit220.thread:                  ; preds = %bb.ay
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379.thread

.lr.ph379.thread:                                 ; preds = %_ZN2cvL5gfDivEhh.exit220.thread
  %i.ke = load ptr, ptr %8, align 8, !tbaa !62
  br label %_ZN2cvL5gfMulEhh.exit224.us.preheader

_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge:    ; preds = %_ZN2cvL5gfDivEhh.exit220.thread, %_ZN2cvL5gfDivEhh.exit220
  %.0.i219490 = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220.thread ], [ %i.kd, %_ZN2cvL5gfDivEhh.exit220 ] ; 2 uses
  %.pre425 = zext i8 %.0.i219490 to i64
  %i.kf = icmp eq i8 %.0.i219490, 0
  br label %.preheader

.lr.ph379:                                        ; preds = %_ZN2cvL5gfDivEhh.exit220
  %i.kg = icmp eq i8 %i.kd, 0
  %i.kh = zext i8 %i.kd to i64                    ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kh
  %i.kj = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 %.0123.lcssa470474
  br i1 %i.kg, label %_ZN2cvL5gfMulEhh.exit224.us.preheader, label %.lr.ph379.split

_ZN2cvL5gfMulEhh.exit224.us.preheader:            ; preds = %.lr.ph379.thread, %.lr.ph379
  %i.kl = phi ptr [ %i.ke, %.lr.ph379.thread ], [ %i.kj, %.lr.ph379 ]
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %_ZN2cvL5gfMulEhh.exit224, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, %_ZN2cvL5gfMulEhh.exit224.us.preheader
  %.0.i219489 = phi i1 [ %i.kf, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ true, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ false, %_ZN2cvL5gfMulEhh.exit224 ]
  %.pre-phi = phi i64 [ %.pre425, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ 0, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.kh, %_ZN2cvL5gfMulEhh.exit224 ]
  %.0108.lcssa = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ %i.km, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.lc, %_ZN2cvL5gfMulEhh.exit224 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %.pre-phi
  br label %bb.bc

.lr.ph379.split:                                  ; preds = %.lr.ph379, %_ZN2cvL5gfMulEhh.exit224
  %.0105378 = phi i64 [ %i.ld, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %.0108377 = phi i8 [ %i.lc, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %i.ko = icmp eq i8 %.0108377, 0
  br i1 %i.ko, label %_ZN2cvL5gfMulEhh.exit224, label %bb.az

bb.az:                                            ; preds = %.lr.ph379.split
  %i.kp = zext i8 %.0108377 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !16
  %i.ks = zext i8 %i.kr to i16
  %i.kt = load i8, ptr %i.ki, align 1, !tbaa !16
  %i.ku = zext i8 %i.kt to i16
  %.lhs.trunc.i222 = add nuw nsw i16 %i.ku, %i.ks
  %i.kv = urem i16 %.lhs.trunc.i222, 255
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit224

_ZN2cvL5gfMulEhh.exit224:                         ; preds = %.lr.ph379.split, %bb.az
  %.0.i223 = phi i8 [ %i.ky, %bb.az ], [ 0, %.lr.ph379.split ]
  %i.kz = xor i64 %.0105378, -1
  %i.la = getelementptr i8, ptr %i.kk, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !16
  %i.lc = xor i8 %i.lb, %.0.i223                  ; 2 uses
  %i.ld = add nuw i64 %.0105378, 1                ; 2 uses
  %exitcond412.not = icmp eq i64 %i.ld, %.0123.lcssa470474
  br i1 %exitcond412.not, label %.preheader, label %.lr.ph379.split, !llvm.loop !327

bb.ba:                                            ; preds = %_ZN2cvL5gfMulEhh.exit236
  %i.le = icmp eq i8 %.0108.lcssa, 0
  %i.lf = icmp eq i8 %.1107, 0
  %or.cond.i225 = or i1 %i.le, %i.lf
  br i1 %or.cond.i225, label %_ZN2cvL5gfDivEhh.exit228, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lg = zext i8 %.0108.lcssa to i64
  %i.lh = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !16
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, 255
  %i.ll = zext i8 %.1107 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !16
  %i.lo = zext i8 %i.ln to i16
  %.lhs.trunc.i226 = sub nuw nsw i16 %i.lk, %i.lo
  %i.lp = urem i16 %.lhs.trunc.i226, 255
  %i.lq = zext nneg i16 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !16
  br label %_ZN2cvL5gfDivEhh.exit228

_ZN2cvL5gfDivEhh.exit228:                         ; preds = %bb.ba, %bb.bb
  %.0.i227 = phi i8 [ %i.ls, %bb.bb ], [ 0, %bb.ba ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0109385
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !24
  %i.lv = load ptr, ptr %1, align 8, !tbaa !62
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lu ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !16
  %i.ly = xor i8 %i.lx, %.0.i227
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !16
  %i.lz = add nuw i64 %.0109385, 1                ; 2 uses
  %exitcond415.not = icmp eq i64 %i.lz, %umax413
  br i1 %exitcond415.not, label %._crit_edge387.loopexit, label %bb.ay, !llvm.loop !328

bb.bc:                                            ; preds = %.preheader, %_ZN2cvL5gfMulEhh.exit236
  %.0104384 = phi i64 [ 0, %.preheader ], [ %i.nd, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %.0106383 = phi i8 [ 1, %.preheader ], [ %.1107, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %i.ma = icmp eq i64 %.0109385, %.0104384
  br i1 %i.ma, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mb = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0104384
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !16  ; 2 uses
  %i.md = icmp eq i8 %i.mc, 0
  %or.cond.i229 = or i1 %.0.i219489, %i.md
  br i1 %or.cond.i229, label %_ZN2cvL5gfMulEhh.exit232, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.me = load i8, ptr %i.kn, align 1, !tbaa !16
  %i.mf = zext i8 %i.me to i16
  %i.mg = zext i8 %i.mc to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !16
  %i.mj = zext i8 %i.mi to i16
  %.lhs.trunc.i230 = add nuw nsw i16 %i.mj, %i.mf
  %i.mk = urem i16 %.lhs.trunc.i230, 255
  %i.ml = zext nneg i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !16
  %i.mo = xor i8 %i.mn, 1
  br label %_ZN2cvL5gfMulEhh.exit232

_ZN2cvL5gfMulEhh.exit232:                         ; preds = %bb.bd, %bb.be
  %.0.i231 = phi i8 [ %i.mo, %bb.be ], [ 1, %bb.bd ] ; 2 uses
  %i.mp = icmp eq i8 %.0106383, 0
  %i.mq = icmp eq i8 %.0.i231, 0
  %or.cond.i233 = or i1 %i.mp, %i.mq
  br i1 %or.cond.i233, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bf

bb.bf:                                            ; preds = %_ZN2cvL5gfMulEhh.exit232
  %i.mr = zext i8 %.0106383 to i64
  %i.ms = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !16
  %i.mu = zext i8 %i.mt to i16
  %i.mv = zext i8 %.0.i231 to i64
  %i.mw = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !16
  %i.my = zext i8 %i.mx to i16
  %.lhs.trunc.i234 = add nuw nsw i16 %i.my, %i.mu
  %i.mz = urem i16 %.lhs.trunc.i234, 255
  %i.na = zext nneg i16 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit236

_ZN2cvL5gfMulEhh.exit236:                         ; preds = %bb.bf, %_ZN2cvL5gfMulEhh.exit232, %bb.bc
  %.1107 = phi i8 [ %.0106383, %bb.bc ], [ %i.nc, %bb.bf ], [ 0, %_ZN2cvL5gfMulEhh.exit232 ] ; 3 uses
  %i.nd = add nuw i64 %.0104384, 1                ; 2 uses
  %exitcond414.not = icmp eq i64 %i.nd, %umax413
  br i1 %exitcond414.not, label %bb.ba, label %bb.bc, !llvm.loop !329

_ZNSt6vectorIhSaIhEE6resizeEm.exit216:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214, %bb.ax, %bb.aw, %bb.av
  %.not.i.i.i237 = icmp eq ptr %.sroa.0260.0480486, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIhSaIhEED2Ev.exit238, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216
  %i.ne = ptrtoint ptr %.sroa.0260.0480486 to i64
  %i.nf = sub i64 %.sroa.12.0482485, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0480486, i64 noundef %i.nf) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit238

_ZNSt6vectorIhSaIhEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, %bb.bg
  %i.ng = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIhSaIhEED2Ev.exit240, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit238
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !64
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nl) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit240

_ZNSt6vectorIhSaIhEED2Ev.exit240:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit238, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bl

bb.bi:                                            ; preds = %bb.av
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %.sroa.0260.0480486, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIhSaIhEED2Ev.exit242, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nn = ptrtoint ptr %.sroa.0260.0480486 to i64
  %i.no = sub i64 %.sroa.12.0482485, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0480486, i64 noundef %i.no) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

_ZNSt6vectorIhSaIhEED2Ev.exit242:                 ; preds = %bb.at, %bb.bi, %bb.bj, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.as ], [ %i.iw, %bb.at ], [ %i.nm, %bb.bi ], [ %i.nm, %bb.bj ]
  %i.np = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i243 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIhSaIhEED2Ev.exit244, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit242
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !64
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nu) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit244

_ZNSt6vectorIhSaIhEED2Ev.exit244:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit242, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bo

bb.bl:                                            ; preds = %._crit_edge371, %_ZNSt6vectorIhSaIhEED2Ev.exit240
  %.not.i.i.i245 = icmp eq ptr %.sroa.0267.0.lcssa, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nv = ptrtoint ptr %.sroa.29.0.lcssa to i64
  %i.nw = sub i64 %i.nv, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0.lcssa, i64 noundef %i.nw) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.bl, %bb.bm
  %i.nx = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIhSaIhEED2Ev.exit247, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !64
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit247

_ZNSt6vectorIhSaIhEED2Ev.exit247:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %spec.select) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre423.a = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.bo:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit244
  %.sroa.0267.0324 = phi ptr [ %.sroa.0267.0.lcssa, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %.sroa.0267.0366, %.loopexit ], [ %.sroa.0267.0366, %.loopexit.split-lp ] ; 3 uses
  %.sroa.29.0317 = phi ptr [ %.sroa.29.0.lcssa, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %.sroa.29.0368, %.loopexit ], [ %.sroa.29.0368, %.loopexit.split-lp ]
  %.pn148 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i250 = icmp eq ptr %.sroa.0267.0324, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorImSaImEED2Ev.exit251, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.od = ptrtoint ptr %.sroa.29.0317 to i64
  %i.oe = ptrtoint ptr %.sroa.0267.0324 to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0324, i64 noundef %i.of) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

_ZNSt6vectorImSaImEED2Ev.exit251:                 ; preds = %bb.bp, %bb.bo, %.thread298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn154, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.gk, %.thread298 ], [ %.pn148, %bb.bo ], [ %.pn148, %bb.bp ] ; 2 uses
  %i.og = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorIhSaIhEED2Ev.exit253, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit251
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !64
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

_ZNSt6vectorIhSaIhEED2Ev.exit253:                 ; preds = %bb.bq, %_ZNSt6vectorImSaImEED2Ev.exit251, %bb.l
  %.pn154.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.l ], [ %.pn154.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit251 ], [ %.pn154.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %spec.select) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

_ZNSt6vectorIhSaIhEED2Ev.exit255:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit253, %bb.k
  %.pn154.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.k ], [ %.pn154.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre424 = load ptr, ptr %2, align 8, !tbaa !62
  br label %bb.bs

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit247
  %i.om = phi ptr [ %.pre423.a, %_ZNSt6vectorIhSaIhEED2Ev.exit247 ], [ %i.bf, %bb.d ], [ %i.bf, %bb.e ], [ %i.bf, %bb.f ], [ %i.bf, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.1 = phi i1 [ %.not144, %_ZNSt6vectorIhSaIhEED2Ev.exit247 ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %.not.i.i.i256 = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIhSaIhEED2Ev.exit257, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !64
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.om to i64
  %i.or = sub i64 %i.op, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef %i.or) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit257

_ZNSt6vectorIhSaIhEED2Ev.exit257:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %.1

bb.bs:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit255, %bb.g
  %i.os = phi ptr [ %.pre424, %_ZNSt6vectorIhSaIhEED2Ev.exit255 ], [ %i.bf, %bb.g ] ; 3 uses
  %.pn154.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit255 ], [ %i.bq, %bb.g ]
  %.not.i.i.i258 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIhSaIhEED2Ev.exit259, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !64
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.os to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ox) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit259

_ZNSt6vectorIhSaIhEED2Ev.exit259:                 ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn154.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = load ptr, ptr %0, align 8, !tbaa !62     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !94

bb.d:                                             ; preds = %bb.c
end_hunk_0

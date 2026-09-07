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
  %.pre414.a = load ptr, ptr %1, align 8, !tbaa !62 ; 3 uses
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = ptrtoint ptr %.pre414.a to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 1
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.pre414.a to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.lr.ph, %._crit_edge
  %.0127336 = phi i64 [ 0, %.preheader312.lr.ph ], [ %i.ak, %._crit_edge ] ; 3 uses
  %.0142335 = phi i1 [ false, %.preheader312.lr.ph ], [ %i.aj, %._crit_edge ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0127336 ; 3 uses
  br i1 %i.y, label %.lr.ph, label %.preheader312.._crit_edge_crit_edge

.preheader312.._crit_edge_crit_edge:              ; preds = %.preheader312
  %.pre416.a = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader312
  %i.ad = trunc i64 %.0127336 to i32
  %i.ae = srem i32 %i.ad, 255
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.af
  %.pre415 = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %bb.b

._crit_edge337:                                   ; preds = %._crit_edge
  br i1 %i.aj, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164, label %._crit_edge337.thread

._crit_edge:                                      ; preds = %_ZN2cvL5gfMulEhh.exit, %.preheader312.._crit_edge_crit_edge
  %i.ah = phi i8 [ %.pre416.a, %.preheader312.._crit_edge_crit_edge ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ]
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = or i1 %.0142335, %i.ai                  ; 2 uses
  %i.ak = add nuw i64 %.0127336, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %spec.select
  br i1 %exitcond.not, label %._crit_edge337, label %.preheader312, !llvm.loop !319

bb.b:                                             ; preds = %.lr.ph, %_ZN2cvL5gfMulEhh.exit
  %i.al = phi i8 [ %.pre415, %.lr.ph ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
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
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre414.a, i64 %.0126334
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
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = sub i64 %i.bl, %i.k                     ; 2 uses
  %i.bn = icmp ult i64 %i.bl, %i.k
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge337.thread
  %i.bo = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bo)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge337.thread
  %i.bp = icmp ult i64 %i.bm, %i.bl
  br i1 %i.bp, label %bb.f, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.g:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %._crit_edge337
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  store ptr %i.bs, ptr %3, align 8, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %spec.select ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bs, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.lr.ph356 unwind label %bb.l  ; 4 uses

.lr.ph356:                                        ; preds = %bb.h
  store ptr %i.bw, ptr %4, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %spec.select ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %spec.select, i1 false)
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !61
  store i8 1, ptr %i.bw, align 1, !tbaa !16
  store i8 1, ptr %i.bs, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not502 = icmp eq i64 %spec.select, 1
  br label %bb.m

._crit_edge357:                                   ; preds = %bb.af
  %i.cc = icmp ugt i64 %.2125, 1152921504606846975
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge357
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
          to label %.noexc178 unwind label %.thread298

.noexc178:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge357
  %.not = icmp eq i64 %.2125, 0                   ; 4 uses
  br i1 %.not, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.cd = shl nuw nsw i64 %.2125, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #30
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.thread298 ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.2125
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.j, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.0123.lcssa472476 = phi i64 [ %.2125, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ 0, %bb.j ] ; 9 uses
  %.sroa.0267.3 = phi ptr [ %i.ce, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.29.3 = phi ptr [ %i.cf, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !61 ; 2 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %.not391 = icmp eq i64 %i.cl, 0
  br i1 %.not391, label %._crit_edge371, label %bb.ag

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

bb.l:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

bb.m:                                             ; preds = %.lr.ph356, %bb.af
  %.0117353 = phi i64 [ 0, %.lr.ph356 ], [ %i.gg, %bb.af ] ; 5 uses
  %.0118352 = phi i8 [ 1, %.lr.ph356 ], [ %.2, %bb.af ] ; 3 uses
  %.0120351 = phi i64 [ 1, %.lr.ph356 ], [ %.2122, %bb.af ] ; 4 uses
  %.0123349 = phi i64 [ 0, %.lr.ph356 ], [ %.2125, %bb.af ] ; 8 uses
  %i.co = add i64 %.0123349, -1
  %i.cp = add i64 %i.co, %.0120351
  %i.cq = icmp ult i64 %i.cp, %spec.select
  br i1 %i.cq, label %bb.s, label %bb.n

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
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cs, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.s:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0117353
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16  ; 2 uses
  %.not152339 = icmp eq i64 %.0123349, 0          ; 2 uses
  br i1 %.not152339, label %._crit_edge344, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.s
  %i.da = add i64 %.0123349, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.da, i64 2)
  br label %.lr.ph343

._crit_edge344:                                   ; preds = %_ZN2cvL5gfMulEhh.exit183, %bb.s
  %.0116.lcssa = phi i8 [ %i.cz, %bb.s ], [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ] ; 3 uses
  %i.db = icmp eq i8 %.0116.lcssa, 0
  br i1 %i.db, label %bb.u, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %_ZN2cvL5gfMulEhh.exit183
  %.0115341 = phi i64 [ %i.dw, %_ZN2cvL5gfMulEhh.exit183 ], [ 1, %.lr.ph343.preheader ] ; 3 uses
  %.0116340 = phi i8 [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ], [ %i.cz, %.lr.ph343.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.0115341
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16  ; 2 uses
  %i.de = sub i64 %.0117353, %.0115341
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16  ; 2 uses
  %i.dh = icmp eq i8 %i.dd, 0
  %i.di = icmp eq i8 %i.dg, 0
  %or.cond.i180 = or i1 %i.dh, %i.di
  br i1 %or.cond.i180, label %_ZN2cvL5gfMulEhh.exit183, label %bb.t

bb.t:                                             ; preds = %.lr.ph343
  %i.dj = zext i8 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i16
  %i.dn = zext i8 %i.dg to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = zext i8 %i.dp to i16
  %.lhs.trunc.i181 = add nuw nsw i16 %i.dq, %i.dm
  %i.dr = urem i16 %.lhs.trunc.i181, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = xor i8 %i.du, %.0116340
  br label %_ZN2cvL5gfMulEhh.exit183

_ZN2cvL5gfMulEhh.exit183:                         ; preds = %.lr.ph343, %bb.t
  %.0.i182 = phi i8 [ %i.dv, %bb.t ], [ %.0116340, %.lr.ph343 ] ; 2 uses
  %i.dw = add nuw i64 %.0115341, 1                ; 2 uses
  %exitcond403 = icmp eq i64 %i.dw, %umax
  br i1 %exitcond403, label %._crit_edge344, label %.lr.ph343, !llvm.loop !321

bb.u:                                             ; preds = %._crit_edge344
  %i.dx = add i64 %.0120351, 1
  br label %bb.af

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge344
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.noexc186 unwind label %.loopexit307 ; 5 uses

.noexc186:                                        ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.dy, ptr %7, align 8, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %spec.select ; 2 uses
  store ptr %i.dz, ptr %i.cb, align 8, !tbaa !64
  br i1 %.not502, label %bb.w, label %bb.v, !prof !97

bb.v:                                             ; preds = %.noexc186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.bs, i64 %spec.select, i1 false)
  br label %_ZN2cvL5gfMulEhh.exit193

bb.w:                                             ; preds = %.noexc186
  %i.ea = load i8, ptr %i.bs, align 1, !tbaa !16
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit193

_ZN2cvL5gfMulEhh.exit193:                         ; preds = %bb.w, %bb.v
  store ptr %i.dz, ptr %i.ca, align 8, !tbaa !61
  br i1 %.not152339, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %_ZN2cvL5gfMulEhh.exit193
  %i.eb = zext i8 %.0118352 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = zext i8 %i.ed to i16
  %.lhs.trunc.i188 = sub nuw nsw i16 510, %i.ee
  %i.ef = urem i16 %.lhs.trunc.i188, 255
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  %i.em = zext i8 %i.el to i16
  %i.en = zext i8 %.0116.lcssa to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16
  %i.eq = zext i8 %i.ep to i16
  %.lhs.trunc.i191 = add nuw nsw i16 %i.em, %i.eq
  %i.er = urem i16 %.lhs.trunc.i191, 255
  %i.es = zext nneg i16 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = freeze i8 %i.eu                         ; 2 uses
  %i.ew = icmp eq i8 %i.ev, 0
  %i.ex = zext i8 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.bs, i64 %.0120351
  br i1 %i.ew, label %._crit_edge348, label %.lr.ph347.split.preheader

.lr.ph347.split.preheader:                        ; preds = %.lr.ph347
  %.pre417.a = load ptr, ptr %4, align 8, !tbaa !62
  br label %.lr.ph347.split

._crit_edge348:                                   ; preds = %_ZN2cvL5gfMulEhh.exit197, %.lr.ph347, %_ZN2cvL5gfMulEhh.exit193
  %i.fa = shl i64 %.0123349, 1
  %.not153 = icmp ugt i64 %i.fa, %.0117353
  br i1 %.not153, label %bb.ac, label %bb.aa

.loopexit307:                                     ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.x:                                             ; preds = %bb.aa
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %i.cb, align 8, !tbaa !64
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.lr.ph347.split:                                  ; preds = %.lr.ph347.split.preheader, %_ZN2cvL5gfMulEhh.exit197
  %.0114346 = phi i64 [ %i.fx, %_ZN2cvL5gfMulEhh.exit197 ], [ 0, %.lr.ph347.split.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre417.a, i64 %.0114346
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16  ; 2 uses
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %_ZN2cvL5gfMulEhh.exit197, label %bb.z

bb.z:                                             ; preds = %.lr.ph347.split
  %i.fk = load i8, ptr %i.ey, align 1, !tbaa !16
  %i.fl = zext i8 %i.fk to i16
  %i.fm = zext i8 %i.fi to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !16
  %i.fp = zext i8 %i.fo to i16
  %.lhs.trunc.i195 = add nuw nsw i16 %i.fp, %i.fl
  %i.fq = urem i16 %.lhs.trunc.i195, 255
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit197

_ZN2cvL5gfMulEhh.exit197:                         ; preds = %.lr.ph347.split, %bb.z
  %.0.i196 = phi i8 [ %i.ft, %bb.z ], [ 0, %.lr.ph347.split ]
  %i.fu = getelementptr i8, ptr %i.ez, i64 %.0114346 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = xor i8 %i.fv, %.0.i196
  store i8 %i.fw, ptr %i.fu, align 1, !tbaa !16
  %i.fx = add nuw i64 %.0114346, 1                ; 2 uses
  %exitcond404.not = icmp eq i64 %i.fx, %.0123349
  br i1 %exitcond404.not, label %._crit_edge348, label %.lr.ph347.split, !llvm.loop !322

bb.aa:                                            ; preds = %._crit_edge348
  %i.fy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ab unwind label %bb.x      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %reass.sub = sub i64 %.0117353, %.0123349
  %i.fz = add i64 %reass.sub, 1
  %.pre418.a = load ptr, ptr %7, align 8, !tbaa !62
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge348
  %i.ga = add i64 %.0120351, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gb = phi ptr [ %.pre418.a, %bb.ab ], [ %i.dy, %bb.ac ] ; 3 uses
  %.1124 = phi i64 [ %i.fz, %bb.ab ], [ %.0123349, %bb.ac ]
  %.1121 = phi i64 [ 1, %bb.ab ], [ %i.ga, %bb.ac ]
  %.1119 = phi i8 [ %.0116.lcssa, %bb.ab ], [ %.0118352, %bb.ac ]
  %.not.i.i.i198 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIhSaIhEED2Ev.exit199, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gc = load ptr, ptr %i.cb, align 8, !tbaa !64
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gf) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit199

_ZNSt6vectorIhSaIhEED2Ev.exit199:                 ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.af

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit307, %bb.y, %bb.x
  %.pn154 = phi { ptr, i32 } [ %i.fb, %bb.y ], [ %i.fb, %bb.x ], [ %lpad.loopexit309, %.loopexit307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.af:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit199, %bb.u
  %.2125 = phi i64 [ %.0123349, %bb.u ], [ %.1124, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ] ; 6 uses
  %.2122 = phi i64 [ %i.dx, %bb.u ], [ %.1121, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ]
  %.2 = phi i8 [ %.0118352, %bb.u ], [ %.1119, %_ZNSt6vectorIhSaIhEED2Ev.exit199 ]
  %i.gg = add nuw i64 %.0117353, 1                ; 2 uses
  %exitcond405.not = icmp eq i64 %i.gg, %spec.select
  br i1 %exitcond405.not, label %._crit_edge357, label %bb.m, !llvm.loop !323

._crit_edge371:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.sroa.0267.0.lcssa = phi ptr [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.0267.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.18.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.29.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.gh = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.gi = ptrtoint ptr %.sroa.0267.0.lcssa to i64 ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3
  %.not144 = icmp eq i64 %i.gk, %.0123.lcssa472476 ; 2 uses
  br i1 %.not144, label %bb.ap, label %bb.bl

.thread298:                                       ; preds = %bb.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.gm = phi ptr [ %i.if, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.ci, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %i.gn = phi ptr [ %i.ig, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.ch, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %i.go = phi i64 [ %i.ik, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.cl, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %.0113369 = phi i64 [ %i.ih, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.29.0368 = phi ptr [ %.sroa.29.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.29.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 7 uses
  %.sroa.18.0367 = phi ptr [ %.sroa.18.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 5 uses
  %.sroa.0267.0366 = phi ptr [ %.sroa.0267.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0267.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 9 uses
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ag
  %i.gp = trunc i64 %.0113369 to i32
  %i.gq = srem i32 %i.gp, 255
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !16
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gu
  br label %bb.ah

._crit_edge364:                                   ; preds = %_ZN2cvL5gfMulEhh.exit203
  %i.gw = icmp eq i8 %i.hj, %.0.i202
  br i1 %i.gw, label %bb.aj, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ah:                                            ; preds = %.lr.ph363, %_ZN2cvL5gfMulEhh.exit203
  %.0111361 = phi i64 [ 1, %.lr.ph363 ], [ %i.hl, %_ZN2cvL5gfMulEhh.exit203 ] ; 3 uses
  %.0112360 = phi i8 [ 1, %.lr.ph363 ], [ %i.hk, %_ZN2cvL5gfMulEhh.exit203 ] ; 2 uses
  %i.gx = icmp eq i8 %.0112360, 0
  br i1 %i.gx, label %_ZN2cvL5gfMulEhh.exit203, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = zext i8 %.0112360 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !16
  %i.hb = zext i8 %i.ha to i16
  %i.hc = load i8, ptr %i.gv, align 1, !tbaa !16
  %i.hd = zext i8 %i.hc to i16
  %.lhs.trunc.i201 = add nuw nsw i16 %i.hd, %i.hb
  %i.he = urem i16 %.lhs.trunc.i201, 255
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit203

_ZN2cvL5gfMulEhh.exit203:                         ; preds = %bb.ah, %bb.ai
  %.0.i202 = phi i8 [ %i.hh, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.0111361
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !16  ; 2 uses
  %i.hk = xor i8 %i.hj, %.0.i202
  %i.hl = add nuw i64 %.0111361, 1
  %exitcond407 = icmp eq i64 %.0111361, %.0123.lcssa472476
  br i1 %exitcond407, label %._crit_edge364, label %bb.ah, !llvm.loop !324

bb.aj:                                            ; preds = %._crit_edge364
  %i.hm = xor i64 %.0113369, -1
  %i.hn = add i64 %i.go, %i.hm
  %sext = shl i64 %i.hn, 32
  %i.ho = ashr exact i64 %sext, 32                ; 2 uses
  %.not.i.i204 = icmp eq ptr %.sroa.18.0367, %.sroa.29.0368
  br i1 %.not.i.i204, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.ho, ptr %.sroa.18.0367, align 8, !tbaa !24
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.18.0367, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.al:                                            ; preds = %bb.aj
  %i.hq = ptrtoint ptr %.sroa.29.0368 to i64
  %i.hr = ptrtoint ptr %.sroa.0267.0366 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 6 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775800
  br i1 %i.ht, label %bb.am, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc206 unwind label %.loopexit.split-lp

.noexc206:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.hu = ashr exact i64 %i.hs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 1152921504606846975)
  %i.hy = select i1 %i.hw, i64 1152921504606846975, i64 %i.hx ; 3 uses
  %.not.i.i.i.i205 = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i205)
  %i.hz = shl nuw nsw i64 %i.hy, 3
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #30
          to label %.noexc207 unwind label %.loopexit ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 %i.hs ; 2 uses
  store i64 %i.ho, ptr %i.ib, align 8, !tbaa !24
  %i.ic = icmp sgt i64 %i.hs, 0
  br i1 %i.ic, label %bb.an, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr align 8 %.sroa.0267.0366, i64 %i.hs, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc207
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0267.0366, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0366, i64 noundef %i.hs) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hy
  %.pre419.a = load ptr, ptr %i.cg, align 8, !tbaa !61
  %.pre420.a = load ptr, ptr %1, align 8, !tbaa !62
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
  %i.if = phi ptr [ %i.gm, %._crit_edge364 ], [ %.pre420.a, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gm, %bb.ak ], [ %i.gm, %bb.ag ] ; 2 uses
  %i.ig = phi ptr [ %i.gn, %._crit_edge364 ], [ %.pre419.a, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gn, %bb.ak ], [ %i.gn, %bb.ag ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.0366, %._crit_edge364 ], [ %i.ia, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0267.0366, %bb.ak ], [ %.sroa.0267.0366, %bb.ag ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0367, %._crit_edge364 ], [ %i.id, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.hp, %bb.ak ], [ %.sroa.18.0367, %bb.ag ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0368, %._crit_edge364 ], [ %i.ie, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.29.0368, %bb.ak ], [ %.sroa.29.0368, %bb.ag ] ; 2 uses
  %i.ih = add nuw i64 %.0113369, 1                ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = icmp ult i64 %i.ih, %i.ik
  br i1 %i.il, label %bb.ag, label %._crit_edge371, !llvm.loop !325

bb.ap:                                            ; preds = %._crit_edge371
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL9gfPolyMulERKSt6vectorIhSaIhEES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 unwind label %bb.as

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208: ; preds = %bb.ap
  %.not.i.i.i.i209 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.0267.0.lcssa
  br i1 %.not.i.i.i.i209, label %._crit_edge387, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.0123.lcssa472476) #30
          to label %.noexc212 unwind label %bb.at ; 7 uses

.noexc212:                                        ; preds = %bb.aq
  %i.in = getelementptr i8, ptr %i.im, i64 %.0123.lcssa472476
  store i8 0, ptr %i.im, align 1, !tbaa !16
  %i.io = add nsw i64 %.0123.lcssa472476, -1      ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.lr.ph376, label %bb.ar

bb.ar:                                            ; preds = %.noexc212
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iq, i8 0, i64 %i.io, i1 false)
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.ar, %.noexc212
  %i.ir = load ptr, ptr %i.cg, align 8, !tbaa !61
  %i.is = load ptr, ptr %1, align 8, !tbaa !62
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %umax408 = call i64 @llvm.umax.i64(i64 %.0123.lcssa472476, i64 1)
  br label %bb.au

.lr.ph386:                                        ; preds = %bb.au
  %umax411 = call i64 @llvm.umax.i64(i64 %.0123.lcssa472476, i64 1) ; 2 uses
  br label %bb.ay

bb.as:                                            ; preds = %bb.ap
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.at:                                            ; preds = %bb.aq
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.au:                                            ; preds = %.lr.ph376, %bb.au
  %.0110375 = phi i64 [ 0, %.lr.ph376 ], [ %i.ji, %bb.au ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0110375
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !24
  %i.ja = xor i64 %i.iz, -1
  %i.jb = add i64 %i.iv, %i.ja
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = srem i32 %i.jc, 255
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0110375
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !16
  %i.ji = add nuw nsw i64 %.0110375, 1            ; 2 uses
  %exitcond409.not.a = icmp eq i64 %i.ji, %umax408
  br i1 %exitcond409.not.a, label %.lr.ph386, label %bb.au, !llvm.loop !326

._crit_edge387.loopexit:                          ; preds = %_ZN2cvL5gfDivEhh.exit228
  %i.jj = ptrtoint ptr %i.in to i64
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %.sroa.0260.0482488 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.im, %._crit_edge387.loopexit ] ; 6 uses
  %.sroa.12.0484487 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.jj, %._crit_edge387.loopexit ] ; 2 uses
  %i.jk = load ptr, ptr %i.cg, align 8, !tbaa !61 ; 2 uses
  %i.jl = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 3 uses
  %i.jp = sub i64 %i.jo, %i.k                     ; 2 uses
  %i.jq = icmp ult i64 %i.jo, %i.k
  br i1 %i.jq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge387
  %i.jr = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jr)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216 unwind label %bb.bi

bb.aw:                                            ; preds = %._crit_edge387
  %i.js = icmp ult i64 %i.jp, %i.jo
  br i1 %i.js, label %bb.ax, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ax:                                            ; preds = %bb.aw
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jp ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.jk, %i.jt
  br i1 %.not.i.i213, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214:     ; preds = %bb.ax
  store ptr %i.jt, ptr %i.cg, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ay:                                            ; preds = %.lr.ph386, %_ZN2cvL5gfDivEhh.exit228
  %.0109385 = phi i64 [ 0, %.lr.ph386 ], [ %i.mb, %_ZN2cvL5gfDivEhh.exit228 ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0109385
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !16  ; 2 uses
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %_ZN2cvL5gfDivEhh.exit220.thread, label %_ZN2cvL5gfDivEhh.exit220

_ZN2cvL5gfDivEhh.exit220:                         ; preds = %bb.ay
  %i.jx = zext i8 %i.jv to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !16
  %i.ka = zext i8 %i.jz to i16
  %.lhs.trunc.i218 = sub nuw nsw i16 510, %i.ka
  %i.kb = urem i16 %.lhs.trunc.i218, 255
  %i.kc = zext nneg i16 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !16
  %i.kf = freeze i8 %i.ke                         ; 3 uses
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379

_ZN2cvL5gfDivEhh.exit220.thread:                  ; preds = %bb.ay
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379.thread

.lr.ph379.thread:                                 ; preds = %_ZN2cvL5gfDivEhh.exit220.thread
  %i.kg = load ptr, ptr %8, align 8, !tbaa !62
  br label %_ZN2cvL5gfMulEhh.exit224.us.preheader

_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge:    ; preds = %_ZN2cvL5gfDivEhh.exit220.thread, %_ZN2cvL5gfDivEhh.exit220
  %.0.i219492 = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220.thread ], [ %i.kf, %_ZN2cvL5gfDivEhh.exit220 ] ; 2 uses
  %.pre423 = zext i8 %.0.i219492 to i64
  %i.kh = icmp eq i8 %.0.i219492, 0
  br label %.preheader

.lr.ph379:                                        ; preds = %_ZN2cvL5gfDivEhh.exit220
  %i.ki = icmp eq i8 %i.kf, 0
  %i.kj = zext i8 %i.kf to i64                    ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kj
  %i.kl = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 %.0123.lcssa472476
  br i1 %i.ki, label %_ZN2cvL5gfMulEhh.exit224.us.preheader, label %.lr.ph379.split

_ZN2cvL5gfMulEhh.exit224.us.preheader:            ; preds = %.lr.ph379.thread, %.lr.ph379
  %i.kn = phi ptr [ %i.kg, %.lr.ph379.thread ], [ %i.kl, %.lr.ph379 ]
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %_ZN2cvL5gfMulEhh.exit224, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, %_ZN2cvL5gfMulEhh.exit224.us.preheader
  %.0.i219491 = phi i1 [ %i.kh, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ true, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ false, %_ZN2cvL5gfMulEhh.exit224 ]
  %.pre-phi = phi i64 [ %.pre423, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ 0, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.kj, %_ZN2cvL5gfMulEhh.exit224 ]
  %.0108.lcssa = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ %i.ko, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.le, %_ZN2cvL5gfMulEhh.exit224 ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %.pre-phi
  br label %bb.bc

.lr.ph379.split:                                  ; preds = %.lr.ph379, %_ZN2cvL5gfMulEhh.exit224
  %.0105378 = phi i64 [ %i.lf, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %.0108377 = phi i8 [ %i.le, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %i.kq = icmp eq i8 %.0108377, 0
  br i1 %i.kq, label %_ZN2cvL5gfMulEhh.exit224, label %bb.az

bb.az:                                            ; preds = %.lr.ph379.split
  %i.kr = zext i8 %.0108377 to i64
  %i.ks = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !16
  %i.ku = zext i8 %i.kt to i16
  %i.kv = load i8, ptr %i.kk, align 1, !tbaa !16
  %i.kw = zext i8 %i.kv to i16
  %.lhs.trunc.i222 = add nuw nsw i16 %i.kw, %i.ku
  %i.kx = urem i16 %.lhs.trunc.i222, 255
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit224

_ZN2cvL5gfMulEhh.exit224:                         ; preds = %.lr.ph379.split, %bb.az
  %.0.i223 = phi i8 [ %i.la, %bb.az ], [ 0, %.lr.ph379.split ]
  %i.lb = xor i64 %.0105378, -1
  %i.lc = getelementptr i8, ptr %i.km, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !16
  %i.le = xor i8 %i.ld, %.0.i223                  ; 2 uses
  %i.lf = add nuw nsw i64 %.0105378, 1            ; 2 uses
  %exitcond410.not = icmp eq i64 %i.lf, %.0123.lcssa472476
  br i1 %exitcond410.not, label %.preheader, label %.lr.ph379.split, !llvm.loop !327

bb.ba:                                            ; preds = %_ZN2cvL5gfMulEhh.exit236
  %i.lg = icmp eq i8 %.0108.lcssa, 0
  %i.lh = icmp eq i8 %.1107, 0
  %or.cond.i225 = or i1 %i.lg, %i.lh
  br i1 %or.cond.i225, label %_ZN2cvL5gfDivEhh.exit228, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.li = zext i8 %.0108.lcssa to i64
  %i.lj = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !16
  %i.ll = zext i8 %i.lk to i16
  %i.lm = add nuw nsw i16 %i.ll, 255
  %i.ln = zext i8 %.1107 to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !16
  %i.lq = zext i8 %i.lp to i16
  %.lhs.trunc.i226 = sub nuw nsw i16 %i.lm, %i.lq
  %i.lr = urem i16 %.lhs.trunc.i226, 255
  %i.ls = zext nneg i16 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !16
  br label %_ZN2cvL5gfDivEhh.exit228

_ZN2cvL5gfDivEhh.exit228:                         ; preds = %bb.ba, %bb.bb
  %.0.i227 = phi i8 [ %i.lu, %bb.bb ], [ 0, %bb.ba ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0109385
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !24
  %i.lx = load ptr, ptr %1, align 8, !tbaa !62
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lw ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !16
  %i.ma = xor i8 %i.lz, %.0.i227
  store i8 %i.ma, ptr %i.ly, align 1, !tbaa !16
  %i.mb = add nuw nsw i64 %.0109385, 1            ; 2 uses
  %exitcond413.not = icmp eq i64 %i.mb, %umax411
  br i1 %exitcond413.not, label %._crit_edge387.loopexit, label %bb.ay, !llvm.loop !328

bb.bc:                                            ; preds = %.preheader, %_ZN2cvL5gfMulEhh.exit236
  %.0104384 = phi i64 [ 0, %.preheader ], [ %i.nf, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %.0106383 = phi i8 [ 1, %.preheader ], [ %.1107, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %i.mc = icmp eq i64 %.0109385, %.0104384
  br i1 %i.mc, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.md = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0104384
  %i.me = load i8, ptr %i.md, align 1, !tbaa !16  ; 2 uses
  %i.mf = icmp eq i8 %i.me, 0
  %or.cond.i229 = or i1 %.0.i219491, %i.mf
  br i1 %or.cond.i229, label %_ZN2cvL5gfMulEhh.exit232, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mg = load i8, ptr %i.kp, align 1, !tbaa !16
  %i.mh = zext i8 %i.mg to i16
  %i.mi = zext i8 %i.me to i64
  %i.mj = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !16
  %i.ml = zext i8 %i.mk to i16
  %.lhs.trunc.i230 = add nuw nsw i16 %i.ml, %i.mh
  %i.mm = urem i16 %.lhs.trunc.i230, 255
  %i.mn = zext nneg i16 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !16
  %i.mq = xor i8 %i.mp, 1
  br label %_ZN2cvL5gfMulEhh.exit232

_ZN2cvL5gfMulEhh.exit232:                         ; preds = %bb.bd, %bb.be
  %.0.i231 = phi i8 [ %i.mq, %bb.be ], [ 1, %bb.bd ] ; 2 uses
  %i.mr = icmp eq i8 %.0106383, 0
  %i.ms = icmp eq i8 %.0.i231, 0
  %or.cond.i233 = or i1 %i.mr, %i.ms
  br i1 %or.cond.i233, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bf

bb.bf:                                            ; preds = %_ZN2cvL5gfMulEhh.exit232
  %i.mt = zext i8 %.0106383 to i64
  %i.mu = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !16
  %i.mw = zext i8 %i.mv to i16
  %i.mx = zext i8 %.0.i231 to i64
  %i.my = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !16
  %i.na = zext i8 %i.mz to i16
  %.lhs.trunc.i234 = add nuw nsw i16 %i.na, %i.mw
  %i.nb = urem i16 %.lhs.trunc.i234, 255
  %i.nc = zext nneg i16 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit236

_ZN2cvL5gfMulEhh.exit236:                         ; preds = %bb.bf, %_ZN2cvL5gfMulEhh.exit232, %bb.bc
  %.1107 = phi i8 [ %.0106383, %bb.bc ], [ %i.ne, %bb.bf ], [ 0, %_ZN2cvL5gfMulEhh.exit232 ] ; 3 uses
  %i.nf = add nuw nsw i64 %.0104384, 1            ; 2 uses
  %exitcond412.not = icmp eq i64 %i.nf, %umax411
  br i1 %exitcond412.not, label %bb.ba, label %bb.bc, !llvm.loop !329

_ZNSt6vectorIhSaIhEE6resizeEm.exit216:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214, %bb.ax, %bb.aw, %bb.av
  %.not.i.i.i237 = icmp eq ptr %.sroa.0260.0482488, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIhSaIhEED2Ev.exit238, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216
  %i.ng = ptrtoint ptr %.sroa.0260.0482488 to i64
  %i.nh = sub i64 %.sroa.12.0484487, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0482488, i64 noundef %i.nh) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit238

_ZNSt6vectorIhSaIhEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, %bb.bg
  %i.ni = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIhSaIhEED2Ev.exit240, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit238
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !64
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ni to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nn) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit240

_ZNSt6vectorIhSaIhEED2Ev.exit240:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit238, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bl

bb.bi:                                            ; preds = %bb.av
  %i.no = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %.sroa.0260.0482488, null
  br i1 %.not.i.i.i241, label %_ZNSt6vectorIhSaIhEED2Ev.exit242, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.np = ptrtoint ptr %.sroa.0260.0482488 to i64
  %i.nq = sub i64 %.sroa.12.0484487, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0482488, i64 noundef %i.nq) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

_ZNSt6vectorIhSaIhEED2Ev.exit242:                 ; preds = %bb.at, %bb.bi, %bb.bj, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.as ], [ %i.ix, %bb.at ], [ %i.no, %bb.bi ], [ %i.no, %bb.bj ]
  %i.nr = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i243 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIhSaIhEED2Ev.exit244, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit242
  %i.ns = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !64
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit244

_ZNSt6vectorIhSaIhEED2Ev.exit244:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit242, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bo

bb.bl:                                            ; preds = %._crit_edge371, %_ZNSt6vectorIhSaIhEED2Ev.exit240
  %.not.i.i.i245 = icmp eq ptr %.sroa.0267.0.lcssa, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nx = ptrtoint ptr %.sroa.29.0.lcssa to i64
  %i.ny = sub i64 %i.nx, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0.lcssa, i64 noundef %i.ny) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.bl, %bb.bm
  %i.nz = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIhSaIhEED2Ev.exit247, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !64
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.nz to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.oe) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit247

_ZNSt6vectorIhSaIhEED2Ev.exit247:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %spec.select) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre421.a = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.bo:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit244
  %.sroa.0267.0324 = phi ptr [ %.sroa.0267.0.lcssa, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %.sroa.0267.0366, %.loopexit ], [ %.sroa.0267.0366, %.loopexit.split-lp ] ; 3 uses
  %.sroa.29.0317 = phi ptr [ %.sroa.29.0.lcssa, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %.sroa.29.0368, %.loopexit ], [ %.sroa.29.0368, %.loopexit.split-lp ]
  %.pn148 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit244 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i250 = icmp eq ptr %.sroa.0267.0324, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorImSaImEED2Ev.exit251, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.of = ptrtoint ptr %.sroa.29.0317 to i64
  %i.og = ptrtoint ptr %.sroa.0267.0324 to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0324, i64 noundef %i.oh) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

_ZNSt6vectorImSaImEED2Ev.exit251:                 ; preds = %bb.bp, %bb.bo, %.thread298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn154, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.gl, %.thread298 ], [ %.pn148, %bb.bo ], [ %.pn148, %bb.bp ] ; 2 uses
  %i.oi = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorIhSaIhEED2Ev.exit253, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit251
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !64
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = ptrtoint ptr %i.oi to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %i.oi, i64 noundef %i.on) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

_ZNSt6vectorIhSaIhEED2Ev.exit253:                 ; preds = %bb.bq, %_ZNSt6vectorImSaImEED2Ev.exit251, %bb.l
  %.pn154.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.l ], [ %.pn154.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit251 ], [ %.pn154.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %spec.select) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

_ZNSt6vectorIhSaIhEED2Ev.exit255:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit253, %bb.k
  %.pn154.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.k ], [ %.pn154.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre422 = load ptr, ptr %2, align 8, !tbaa !62
  br label %bb.bs

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d, %_ZNSt6vectorIhSaIhEED2Ev.exit247
  %i.oo = phi ptr [ %.pre421.a, %_ZNSt6vectorIhSaIhEED2Ev.exit247 ], [ %i.bf, %bb.d ], [ %i.bf, %bb.e ], [ %i.bf, %bb.f ], [ %i.bf, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.1 = phi i1 [ %.not144, %_ZNSt6vectorIhSaIhEED2Ev.exit247 ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %.not.i.i.i256 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIhSaIhEED2Ev.exit257, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !64
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = ptrtoint ptr %i.oo to i64
  %i.ot = sub i64 %i.or, %i.os
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.ot) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit257

_ZNSt6vectorIhSaIhEED2Ev.exit257:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %.1

bb.bs:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit255, %bb.g
  %i.ou = phi ptr [ %.pre422, %_ZNSt6vectorIhSaIhEED2Ev.exit255 ], [ %i.bf, %bb.g ] ; 3 uses
  %.pn154.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit255 ], [ %i.br, %bb.g ]
  %.not.i.i.i258 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIhSaIhEED2Ev.exit259, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !64
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oz) #29
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

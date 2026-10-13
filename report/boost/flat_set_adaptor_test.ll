Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SD_T0_:bb.a
.lr.ph.i.13.2:                                    ; preds = %.lr.ph.i.13.1
  store i32 %i.jo, ptr %i.jk, align 4, !tbaa !296
  %i.jq = getelementptr i8, ptr %i.f, i64 40      ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !296 ; 2 uses
  %i.js = icmp slt i32 %i.ji, %i.jr
  br i1 %i.js, label %.lr.ph.i.13.3, label %.critedge.i.13

.lr.ph.i.13.3:                                    ; preds = %.lr.ph.i.13.2
  store i32 %i.jr, ptr %i.jn, align 4, !tbaa !296
  %i.jt = getelementptr i8, ptr %i.f, i64 36      ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !296 ; 2 uses
  %i.jv = icmp slt i32 %i.ji, %i.ju
  br i1 %i.jv, label %.lr.ph.i.13.4, label %.critedge.i.13

.lr.ph.i.13.4:                                    ; preds = %.lr.ph.i.13.3
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !296
  %i.jw = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !296 ; 2 uses
  %i.jy = icmp slt i32 %i.ji, %i.jx
  br i1 %i.jy, label %.lr.ph.i.13.5, label %.critedge.i.13

.lr.ph.i.13.5:                                    ; preds = %.lr.ph.i.13.4
  store i32 %i.jx, ptr %i.jt, align 4, !tbaa !296
  %i.jz = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !296 ; 2 uses
  %i.kb = icmp slt i32 %i.ji, %i.ka
  br i1 %i.kb, label %.lr.ph.i.13.6, label %.critedge.i.13

.lr.ph.i.13.6:                                    ; preds = %.lr.ph.i.13.5
  store i32 %i.ka, ptr %i.jw, align 4, !tbaa !296
  %i.kc = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !296 ; 2 uses
  %i.ke = icmp slt i32 %i.ji, %i.kd
  br i1 %i.ke, label %.lr.ph.i.13.7, label %.critedge.i.13

.lr.ph.i.13.7:                                    ; preds = %.lr.ph.i.13.6
  store i32 %i.kd, ptr %i.jz, align 4, !tbaa !296
  %i.kf = getelementptr i8, ptr %i.f, i64 20      ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !296 ; 2 uses
  %i.kh = icmp slt i32 %i.ji, %i.kg
  br i1 %i.kh, label %.lr.ph.i.13.8, label %.critedge.i.13

.lr.ph.i.13.8:                                    ; preds = %.lr.ph.i.13.7
  store i32 %i.kg, ptr %i.kc, align 4, !tbaa !296
  %i.ki = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !296 ; 2 uses
  %i.kk = icmp slt i32 %i.ji, %i.kj
  br i1 %i.kk, label %.lr.ph.i.13.9, label %.critedge.i.13

.lr.ph.i.13.9:                                    ; preds = %.lr.ph.i.13.8
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !296
  %i.kl = getelementptr i8, ptr %i.f, i64 12      ; 3 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !296 ; 2 uses
  %i.kn = icmp slt i32 %i.ji, %i.km
  br i1 %i.kn, label %.lr.ph.i.13.10, label %.critedge.i.13

.lr.ph.i.13.10:                                   ; preds = %.lr.ph.i.13.9
  store i32 %i.km, ptr %i.ki, align 4, !tbaa !296
  %i.ko = getelementptr i8, ptr %i.f, i64 8       ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !296 ; 2 uses
  %i.kq = icmp slt i32 %i.ji, %i.kp
  br i1 %i.kq, label %.lr.ph.i.13.11, label %.critedge.i.13

.lr.ph.i.13.11:                                   ; preds = %.lr.ph.i.13.10
  store i32 %i.kp, ptr %i.kl, align 4, !tbaa !296
  %i.kr = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !296 ; 2 uses
  %i.kt = icmp slt i32 %i.ji, %i.ks
  br i1 %i.kt, label %.lr.ph.i.13.12, label %.critedge.i.13

.lr.ph.i.13.12:                                   ; preds = %.lr.ph.i.13.11
  store i32 %i.ks, ptr %i.ko, align 4, !tbaa !296
  %i.ku = load i32, ptr %i.f, align 4, !tbaa !296 ; 2 uses
  %i.kv = icmp slt i32 %i.ji, %i.ku
  br i1 %i.kv, label %bb.n, label %.critedge.i.13

bb.n:                                             ; preds = %.lr.ph.i.13.12
  store i32 %i.ku, ptr %i.kr, align 4, !tbaa !296
  br label %.critedge.i.13

.critedge.i.13:                                   ; preds = %.lr.ph.i.preheader.13, %.lr.ph.i.13.1, %.lr.ph.i.13.2, %.lr.ph.i.13.3, %.lr.ph.i.13.4, %.lr.ph.i.13.5, %.lr.ph.i.13.6, %.lr.ph.i.13.7, %.lr.ph.i.13.8, %.lr.ph.i.13.9, %.lr.ph.i.13.10, %.lr.ph.i.13.11, %.lr.ph.i.13.12, %bb.n
  %.021.lcssa.i.ph.13 = phi ptr [ %i.f, %bb.n ], [ %.02236.i.ptr.12, %.lr.ph.i.preheader.13 ], [ %i.jk, %.lr.ph.i.13.1 ], [ %i.kr, %.lr.ph.i.13.12 ], [ %i.jn, %.lr.ph.i.13.2 ], [ %i.kc, %.lr.ph.i.13.7 ], [ %i.jq, %.lr.ph.i.13.3 ], [ %i.ko, %.lr.ph.i.13.11 ], [ %i.jt, %.lr.ph.i.13.4 ], [ %i.ki, %.lr.ph.i.13.9 ], [ %i.jw, %.lr.ph.i.13.5 ], [ %i.kl, %.lr.ph.i.13.10 ], [ %i.jz, %.lr.ph.i.13.6 ], [ %i.kf, %.lr.ph.i.13.8 ]
  store i32 %i.ji, ptr %.021.lcssa.i.ph.13, align 4, !tbaa !296
  %.pre81 = load i32, ptr %.02236.i.ptr.13, align 4, !tbaa !296
  br label %.lr.ph37.i.14

.lr.ph37.i.14:                                    ; preds = %.critedge.i.13, %.lr.ph37.i.13
  %i.kw = phi i32 [ %.pre81, %.critedge.i.13 ], [ %i.ji, %.lr.ph37.i.13 ] ; 2 uses
  %.02236.i.ptr.14 = getelementptr inbounds nuw i8, ptr %i.f, i64 60 ; 2 uses
  %i.kx = load i32, ptr %.02236.i.ptr.14, align 4, !tbaa !296 ; 16 uses
  %i.ky = icmp slt i32 %i.kx, %i.kw
  br i1 %i.ky, label %.lr.ph.i.preheader.14, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

.lr.ph.i.preheader.14:                            ; preds = %.lr.ph37.i.14
  store i32 %i.kw, ptr %.02236.i.ptr.14, align 4, !tbaa !296
  %i.kz = getelementptr i8, ptr %i.f, i64 52      ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !296 ; 2 uses
  %i.lb = icmp slt i32 %i.kx, %i.la
  br i1 %i.lb, label %.lr.ph.i.14.1, label %.critedge.i.14

.lr.ph.i.14.1:                                    ; preds = %.lr.ph.i.preheader.14
  store i32 %i.la, ptr %.02236.i.ptr.13, align 4, !tbaa !296
  %i.lc = getelementptr i8, ptr %i.f, i64 48      ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !296 ; 2 uses
  %i.le = icmp slt i32 %i.kx, %i.ld
  br i1 %i.le, label %.lr.ph.i.14.2, label %.critedge.i.14

.lr.ph.i.14.2:                                    ; preds = %.lr.ph.i.14.1
  store i32 %i.ld, ptr %i.kz, align 4, !tbaa !296
  %i.lf = getelementptr i8, ptr %i.f, i64 44      ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !296 ; 2 uses
  %i.lh = icmp slt i32 %i.kx, %i.lg
  br i1 %i.lh, label %.lr.ph.i.14.3, label %.critedge.i.14

.lr.ph.i.14.3:                                    ; preds = %.lr.ph.i.14.2
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !296
  %i.li = getelementptr i8, ptr %i.f, i64 40      ; 3 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !296 ; 2 uses
  %i.lk = icmp slt i32 %i.kx, %i.lj
  br i1 %i.lk, label %.lr.ph.i.14.4, label %.critedge.i.14

.lr.ph.i.14.4:                                    ; preds = %.lr.ph.i.14.3
  store i32 %i.lj, ptr %i.lf, align 4, !tbaa !296
  %i.ll = getelementptr i8, ptr %i.f, i64 36      ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !296 ; 2 uses
  %i.ln = icmp slt i32 %i.kx, %i.lm
  br i1 %i.ln, label %.lr.ph.i.14.5, label %.critedge.i.14

.lr.ph.i.14.5:                                    ; preds = %.lr.ph.i.14.4
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !296
  %i.lo = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !296 ; 2 uses
  %i.lq = icmp slt i32 %i.kx, %i.lp
  br i1 %i.lq, label %.lr.ph.i.14.6, label %.critedge.i.14

.lr.ph.i.14.6:                                    ; preds = %.lr.ph.i.14.5
  store i32 %i.lp, ptr %i.ll, align 4, !tbaa !296
  %i.lr = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !296 ; 2 uses
  %i.lt = icmp slt i32 %i.kx, %i.ls
  br i1 %i.lt, label %.lr.ph.i.14.7, label %.critedge.i.14

.lr.ph.i.14.7:                                    ; preds = %.lr.ph.i.14.6
  store i32 %i.ls, ptr %i.lo, align 4, !tbaa !296
  %i.lu = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !296 ; 2 uses
  %i.lw = icmp slt i32 %i.kx, %i.lv
  br i1 %i.lw, label %.lr.ph.i.14.8, label %.critedge.i.14

.lr.ph.i.14.8:                                    ; preds = %.lr.ph.i.14.7
  store i32 %i.lv, ptr %i.lr, align 4, !tbaa !296
  %i.lx = getelementptr i8, ptr %i.f, i64 20      ; 3 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !296 ; 2 uses
  %i.lz = icmp slt i32 %i.kx, %i.ly
  br i1 %i.lz, label %.lr.ph.i.14.9, label %.critedge.i.14

.lr.ph.i.14.9:                                    ; preds = %.lr.ph.i.14.8
  store i32 %i.ly, ptr %i.lu, align 4, !tbaa !296
  %i.ma = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !296 ; 2 uses
  %i.mc = icmp slt i32 %i.kx, %i.mb
  br i1 %i.mc, label %.lr.ph.i.14.10, label %.critedge.i.14

.lr.ph.i.14.10:                                   ; preds = %.lr.ph.i.14.9
  store i32 %i.mb, ptr %i.lx, align 4, !tbaa !296
  %i.md = getelementptr i8, ptr %i.f, i64 12      ; 3 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !296 ; 2 uses
  %i.mf = icmp slt i32 %i.kx, %i.me
  br i1 %i.mf, label %.lr.ph.i.14.11, label %.critedge.i.14

.lr.ph.i.14.11:                                   ; preds = %.lr.ph.i.14.10
  store i32 %i.me, ptr %i.ma, align 4, !tbaa !296
  %i.mg = getelementptr i8, ptr %i.f, i64 8       ; 3 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !296 ; 2 uses
  %i.mi = icmp slt i32 %i.kx, %i.mh
  br i1 %i.mi, label %.lr.ph.i.14.12, label %.critedge.i.14

.lr.ph.i.14.12:                                   ; preds = %.lr.ph.i.14.11
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !296
  %i.mj = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !296 ; 2 uses
  %i.ml = icmp slt i32 %i.kx, %i.mk
  br i1 %i.ml, label %.lr.ph.i.14.13, label %.critedge.i.14

.lr.ph.i.14.13:                                   ; preds = %.lr.ph.i.14.12
  store i32 %i.mk, ptr %i.mg, align 4, !tbaa !296
  %i.mm = load i32, ptr %i.f, align 4, !tbaa !296 ; 2 uses
  %i.mn = icmp slt i32 %i.kx, %i.mm
  br i1 %i.mn, label %bb.o, label %.critedge.i.14

bb.o:                                             ; preds = %.lr.ph.i.14.13
  store i32 %i.mm, ptr %i.mj, align 4, !tbaa !296
  br label %.critedge.i.14

.critedge.i.14:                                   ; preds = %.lr.ph.i.preheader.14, %.lr.ph.i.14.1, %.lr.ph.i.14.2, %.lr.ph.i.14.3, %.lr.ph.i.14.4, %.lr.ph.i.14.5, %.lr.ph.i.14.6, %.lr.ph.i.14.7, %.lr.ph.i.14.8, %.lr.ph.i.14.9, %.lr.ph.i.14.10, %.lr.ph.i.14.11, %.lr.ph.i.14.12, %.lr.ph.i.14.13, %bb.o
  %.021.lcssa.i.ph.14 = phi ptr [ %i.f, %bb.o ], [ %.02236.i.ptr.13, %.lr.ph.i.preheader.14 ], [ %i.kz, %.lr.ph.i.14.1 ], [ %i.mj, %.lr.ph.i.14.13 ], [ %i.lc, %.lr.ph.i.14.2 ], [ %i.ma, %.lr.ph.i.14.10 ], [ %i.lf, %.lr.ph.i.14.3 ], [ %i.mg, %.lr.ph.i.14.12 ], [ %i.li, %.lr.ph.i.14.4 ], [ %i.lu, %.lr.ph.i.14.8 ], [ %i.ll, %.lr.ph.i.14.5 ], [ %i.md, %.lr.ph.i.14.11 ], [ %i.lo, %.lr.ph.i.14.6 ], [ %i.lx, %.lr.ph.i.14.9 ], [ %i.lr, %.lr.ph.i.14.7 ]
  store i32 %i.kx, ptr %.021.lcssa.i.ph.14, align 4, !tbaa !296
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit: ; preds = %.critedge.i.14, %.lr.ph37.i.14
  %i.mo = add nuw i64 %.04460, 16                 ; 3 uses
  %i.mp = sub i64 %i.d, %i.mo
  %i.mq = icmp ugt i64 %i.mp, 16
  br i1 %i.mq, label %.lr.ph, label %._crit_edge, !llvm.loop !3619

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.mo, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.mr, %1
  %.02233.i46 = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, label %.lr.ph37.i47

.lr.ph37.i47:                                     ; preds = %._crit_edge, %bb.r
  %.02236.i48 = phi ptr [ %.022.i50, %bb.r ], [ %.02233.i46, %._crit_edge ] ; 4 uses
  %.pn35.i49 = phi ptr [ %.02236.i48, %bb.r ], [ %i.mr, %._crit_edge ] ; 3 uses
  %i.ms = load i32, ptr %.02236.i48, align 4, !tbaa !296 ; 3 uses
  %i.mt = load i32, ptr %.pn35.i49, align 4, !tbaa !296 ; 2 uses
  %i.mu = icmp slt i32 %i.ms, %i.mt
  br i1 %i.mu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph37.i47
  store i32 %i.mt, ptr %.02236.i48, align 4, !tbaa !296
  %.not2628.i52 = icmp eq ptr %.pn35.i49, %i.mr
  br i1 %.not2628.i52, label %.critedge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.p, %bb.q
  %.030.i54 = phi ptr [ %i.mv, %bb.q ], [ %.pn35.i49, %bb.p ] ; 3 uses
  %i.mv = getelementptr i8, ptr %.030.i54, i64 -4 ; 3 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !296 ; 2 uses
  %i.mx = icmp slt i32 %i.ms, %i.mw
  br i1 %i.mx, label %bb.q, label %.critedge.i55

.critedge.i55:                                    ; preds = %bb.q, %.lr.ph.i53, %bb.p
  %.021.lcssa.i56 = phi ptr [ %i.mr, %bb.p ], [ %.030.i54, %.lr.ph.i53 ], [ %i.mr, %bb.q ]
  store i32 %i.ms, ptr %.021.lcssa.i56, align 4, !tbaa !296
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i53
  store i32 %i.mw, ptr %.030.i54, align 4, !tbaa !296
  %.not26.i57 = icmp eq ptr %i.mv, %i.mr
  br i1 %.not26.i57, label %.critedge.i55, label %.lr.ph.i53, !llvm.loop !75

bb.r:                                             ; preds = %.critedge.i55, %.lr.ph37.i47
  %.022.i50 = getelementptr inbounds nuw i8, ptr %.02236.i48, i64 4 ; 2 uses
  %.not25.i51 = icmp eq ptr %.022.i50, %1
  br i1 %.not25.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, label %.lr.ph37.i47, !llvm.loop !76

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58: ; preds = %bb.r, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.v, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, %bb.v
  %.04365 = phi i64 [ %i.nq, %bb.v ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58 ] ; 10 uses
  %i.my = sub i64 %i.d, %.04365
  %i.mz = icmp ugt i64 %i.my, %.04365             ; 2 uses
  br i1 %i.mz, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph67
  %i.na = shl i64 %.04365, 1                      ; 3 uses
  %i.nb = icmp ugt i64 %i.d, %i.na
  br i1 %i.nb, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.s
  %.idx59 = shl i64 %.04365, 2                    ; 2 uses
  %.idx = shl i64 %.04365, 3
  %i.nc = ashr exact i64 %.idx59, 2
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph63, %bb.t
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.ng, %bb.t ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx59
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.nd, ptr noundef %i.ne, ptr noundef %i.nf, i64 noundef %.04365, i64 noundef %i.nc)
  %i.ng = add i64 %.061, %i.na                    ; 3 uses
  %i.nh = sub i64 %i.d, %i.ng
  %i.ni = icmp ugt i64 %i.nh, %i.na
  br i1 %i.ni, label %bb.t, label %.loopexit, !llvm.loop !3620

.loopexit:                                        ; preds = %bb.t, %bb.s, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.s ], [ %i.ng, %bb.t ] ; 2 uses
  %i.nj = sub i64 %i.d, %.1
  %i.nk = icmp ugt i64 %i.nj, %.04365
  br i1 %i.nk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.04365 ; 2 uses
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = sub i64 %i.a, %i.nn
  %i.np = ashr exact i64 %i.no, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.nl, ptr noundef %i.nm, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.np)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit
  %i.nq = shl i64 %.04365, 1
  br i1 %i.mz, label %.lr.ph67, label %._crit_edge68, !llvm.loop !3621
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx36 = shl nuw nsw i64 %.sroa.speculated, 2
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph42.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us
  %.037.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.037.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !3622

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39
  %.037.us38 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.us38 ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !296
  store i32 %i.h, ptr %i.g, align 4, !tbaa !296
  %i.i = add i64 %.037.us38, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39, label %._crit_edge, !llvm.loop !3622

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit
  %.037 = phi i64 [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx36
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !296
  store i32 %i.o, ptr %i.n, align 4, !tbaa !296
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.z, %.critedge.i ], [ %i.p, %.lr.ph42.i.preheader ] ; 4 uses
  %.pn40.i = phi ptr [ %.02641.i, %.critedge.i ], [ %i.n, %.lr.ph42.i.preheader ] ; 4 uses
  %.02641.i = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !296
  %i.s = load i32, ptr %.pn40.i, align 4, !tbaa !296 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 %i.s, ptr %.02641.i, align 4, !tbaa !296
  %.not3233.i = icmp eq ptr %.pn40.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.u, %bb.c ], [ %.pn40.i, %bb.b ] ; 3 uses
  %i.u = getelementptr i8, ptr %.035.i, i64 -4    ; 3 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !296
  %i.w = load i32, ptr %i.u, align 4, !tbaa !296  ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.w, ptr %.035.i, align 4, !tbaa !296
  %.not32.i = icmp eq ptr %i.u, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph42.i
  %.1.i = phi ptr [ %.02641.i, %.lr.ph42.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.y = load i32, ptr %i.q, align 4, !tbaa !296
  store i32 %i.y, ptr %.1.i, align 4, !tbaa !296
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not31.i = icmp eq ptr %i.z, %i.m
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !80

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.aa = add i64 %.037, %.sroa.speculated        ; 3 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !3622

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.idx35 = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit33, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !373    ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !296
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !296
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !365  ; 2 uses
  %.not2534.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not2534.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %.lr.ph36.i.preheader.i

.lr.ph36.i.preheader.i:                           ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !367
  br label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph36.i.preheader.i
  %i.q = phi ptr [ %i.ap, %.critedge.i.i ], [ %i.o, %.lr.ph36.i.preheader.i ] ; 2 uses
  %.pn.i = phi ptr [ %i.s, %.critedge.i.i ], [ %i.p, %.lr.ph36.i.preheader.i ]
  %.sroa.021.035.i.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.021.035.i.i = load ptr, ptr %.sroa.021.035.i.in.i, align 8, !tbaa !365 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %.sroa.021.035.i.i, align 8, !tbaa !367 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !365  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.r, align 4, !tbaa !296
  %i.x = load i32, ptr %i.v, align 4, !tbaa !296  ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph36.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.035.i.i, i64 8
  store i32 %i.x, ptr %i.z, align 8, !tbaa !296
  %.not2627.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not2627.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.013.029.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.06.028.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.u, %bb.d ]
  %i.aa = load ptr, ptr %.sroa.06.028.i.i, align 8, !tbaa !367
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !365 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !296
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !296 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i.i, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !296
  %i.ai = load ptr, ptr %.sroa.013.029.i.i, align 8, !tbaa !367
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !365 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ac, %i.j
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !142

.critedge.i.i:                                    ; preds = %bb.e, %.lr.ph.i.i, %bb.d, %.lr.ph36.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.021.035.i.i, %.lr.ph36.i.i ], [ %i.u, %bb.d ], [ %i.ak, %bb.e ], [ %.sroa.013.029.i.i, %.lr.ph.i.i ]
  %i.al = load i32, ptr %i.r, align 4, !tbaa !296
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !296
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !367
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !365 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ap, %i.a
  br i1 %.not25.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %.lr.ph36.i.i, !llvm.loop !143

bb.f:                                             ; preds = %bb.a
  %i.aq = lshr i64 %i.h, 1                        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8556)
  store ptr %i.c, ptr %3, align 8, !tbaa !373, !alias.scope !8556
  %.not.i.i11 = icmp eq i64 %i.aq, 0              ; 2 uses
  br i1 %.not.i.i11, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !365, !noalias !8556
  store ptr %i.as, ptr %3, align 8, !tbaa !373, !alias.scope !8556
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8557)
  %i.at = load ptr, ptr %2, align 8, !tbaa !373, !noalias !8557
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !367, !noalias !8557
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aq
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13: ; preds = %bb.f, %bb.g
  %storemerge.in = phi ptr [ %i.av, %bb.g ], [ %2, %bb.f ]
  store ptr %i.a, ptr %4, align 8, !tbaa !373
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !365, !noalias !398
  store ptr %storemerge, ptr %5, align 8, !tbaa !373, !alias.scope !8558
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !373   ; 4 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !373
  call void @llvm.experimental.noalias.scope.decl(metadata !8559)
  store ptr %i.aw, ptr %7, align 8, !tbaa !373, !alias.scope !8559
  br i1 %.not.i.i11, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13
  store ptr %i.aw, ptr %8, align 8, !tbaa !373, !alias.scope !8560
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  br label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !367, !noalias !8559
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !365, !noalias !8559 ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !373, !alias.scope !8559
  store ptr %i.az, ptr %8, align 8, !tbaa !373, !alias.scope !8561
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8562
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !367, !noalias !8562
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aq
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !365, !noalias !8562 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !367, !noalias !8563
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aq
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !365, !noalias !8563 ; 3 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !373   ; 2 uses
  store ptr %i.bh, ptr %.sroa.031, align 8, !tbaa !373
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !367, !noalias !8564 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.aq
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !365, !noalias !8564
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !365, !noalias !8565
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  %.not12.i.i = icmp eq ptr %i.bd, %i.bg
  br i1 %.not12.i.i, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27, %.cont.i
  %.in.i = phi ptr [ %i.ci, %.cont.i ], [ %.sroa.031, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ]
  %.sroa.01.0.i = phi ptr [ %spec.select.i, %.cont.i ], [ %i.bk, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 4 uses
  %.sroa.06.0.i = phi ptr [ %spec.select8.i, %.cont.i ], [ %i.bd, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 4 uses
  %i.bn = load ptr, ptr %.in.i, align 8, !tbaa !365 ; 3 uses
  %i.bo = icmp eq ptr %.sroa.01.0.i, %i.bm
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader.i, label %.cont.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.i28
  store ptr %i.bn, ptr %.sroa.02.i, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.0.0.i.in.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.sroa.02.i, %.lr.ph.i.i.i.preheader.i ]
  %i.bp = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.sroa.06.0.i, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.i.in.i.i, align 8, !tbaa !365 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !296, !noalias !8566
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !296, !noalias !8566
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !367, !noalias !8566
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !365, !noalias !8566 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !367, !noalias !8566
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bg
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !104

.cont.i:                                          ; preds = %.lr.ph.i.i28
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !296 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !296 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %..i.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cb)
  %.30.i.i = select i1 %i.cc, ptr %.sroa.01.0.i, ptr %.sroa.06.0.i
  store i32 %..i.i, ptr %i.cd, align 4, !tbaa !296
  %i.ce = load ptr, ptr %.30.i.i, align 8, !tbaa !367
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !365 ; 2 uses
  %spec.select.i = select i1 %i.cc, ptr %i.cg, ptr %.sroa.01.0.i
  %spec.select8.i = select i1 %i.cc, ptr %.sroa.06.0.i, ptr %i.cg ; 2 uses
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !367
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i.i29 = icmp eq ptr %spec.select8.i, %i.bg
  br i1 %.not.i.i29, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i28, !llvm.loop !8555

_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit: ; preds = %.cont.i, %.lr.ph.i.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  br label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit: ; preds = %.critedge.i.i, %bb.c, %bb.b, %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SF_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !373    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367
  %i.c = load ptr, ptr %0, align 8, !tbaa !373    ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %.033100 = phi i64 [ %i.ah, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365, !noalias !8589
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !367, !noalias !8590 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !365, !noalias !8590 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36
  %.sroa.012.0.in26.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.012.027.i = load ptr, ptr %.sroa.012.0.in26.i, align 8, !tbaa !365 ; 2 uses
  %.not1928.i = icmp eq ptr %.sroa.012.027.i, %i.n
  br i1 %.not1928.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.012.029.i = phi ptr [ %.sroa.012.0.i, %bb.f ], [ %.sroa.012.027.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.012.029.i, align 8, !tbaa !367 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !365  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.o, align 8, !tbaa !296  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !296  ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph30.i
  store i32 %i.u, ptr %i.o, align 8, !tbaa !296
  %.not2021.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2021.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.023.i = phi ptr [ %i.y, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.05.022.i = phi ptr [ %i.ag, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.w = load ptr, ptr %.sroa.0.023.i, align 8, !tbaa !367
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !365  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !296 ; 2 uses
  %i.ab = icmp slt i32 %i.t, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.05.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.05.022.i, %.lr.ph.i ], [ %i.ag, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ac, align 4, !tbaa !296
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i, i64 8
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !296
  %i.ae = load ptr, ptr %.sroa.05.022.i, align 8, !tbaa !367
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !365 ; 2 uses
  %.not20.i = icmp eq ptr %i.y, %.sroa.082.0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !100

bb.f:                                             ; preds = %.critedge.i, %.lr.ph30.i
  %.sroa.012.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.012.0.i = load ptr, ptr %.sroa.012.0.in.i, align 8, !tbaa !365 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.012.0.i, %i.n
  br i1 %.not19.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i, !llvm.loop !101

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36, %bb.c
  %i.ah = add nuw i64 %.033100, 16                ; 3 uses
  %i.ai = sub i64 %i.h, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 16
  br i1 %i.aj, label %.lr.ph, label %bb.g, !llvm.loop !8571

bb.g:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !8591
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38: ; preds = %bb.a, %bb.g
  %.sroa.081.0 = phi ptr [ %i.al, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38
  %i.am = load ptr, ptr %.sroa.081.0, align 8, !tbaa !367
  %.sroa.012.0.in26.i40 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.012.027.i41 = load ptr, ptr %.sroa.012.0.in26.i40, align 8, !tbaa !365 ; 2 uses
  %.not1928.i42 = icmp eq ptr %.sroa.012.027.i41, %i.a
  br i1 %.not1928.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %.lr.ph30.i43

.lr.ph30.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.012.029.i44 = phi ptr [ %.sroa.012.0.i46, %bb.k ], [ %.sroa.012.027.i41, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i44, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.012.029.i44, align 8, !tbaa !367 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.an, align 8, !tbaa !296 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !296 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph30.i43
  store i32 %i.at, ptr %i.an, align 8, !tbaa !296
  %.not2021.i48 = icmp eq ptr %i.aq, %.sroa.081.0
  br i1 %.not2021.i48, label %.critedge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.023.i50 = phi ptr [ %i.ax, %bb.j ], [ %i.aq, %bb.i ]
  %.sroa.05.022.i51 = phi ptr [ %i.bf, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.0.023.i50, align 8, !tbaa !367
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !365 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !296 ; 2 uses
  %i.ba = icmp slt i32 %i.as, %i.az
  br i1 %i.ba, label %bb.j, label %.critedge.i52

.critedge.i52:                                    ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.05.0.lcssa.i53 = phi ptr [ %i.aq, %bb.i ], [ %.sroa.05.022.i51, %.lr.ph.i49 ], [ %i.bf, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i53, i64 8
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !296
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i51, i64 8
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !296
  %i.bd = load ptr, ptr %.sroa.05.022.i51, align 8, !tbaa !367
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !365 ; 2 uses
  %.not20.i54 = icmp eq ptr %i.ax, %.sroa.081.0
  br i1 %.not20.i54, label %.critedge.i52, label %.lr.ph.i49, !llvm.loop !100

bb.k:                                             ; preds = %.critedge.i52, %.lr.ph30.i43
  %.sroa.012.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.012.0.i46 = load ptr, ptr %.sroa.012.0.in.i45, align 8, !tbaa !365 ; 2 uses
  %.not19.i47 = icmp eq ptr %.sroa.012.0.i46, %i.a
  br i1 %.not19.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %.lr.ph30.i43, !llvm.loop !101

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.dr, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55 ] ; 11 uses
  %i.bg = sub i64 %i.h, %.032106
  %i.bh = icmp ugt i64 %i.bg, %.032106            ; 2 uses
  br i1 %i.bh, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.bi = shl i64 %.032106, 1                     ; 6 uses
  %i.bj = icmp ugt i64 %i.h, %i.bi
  br i1 %i.bj, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.bi, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us
  %i.bk = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8592 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !367, !noalias !8593
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !365, !noalias !8593
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.bk, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us ], [ %i.bn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bk, ptr %5, align 8, !tbaa !373
  store ptr %i.bk, ptr %6, align 8, !tbaa !373
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !373
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !367
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !367
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bp
  %i.bt = ashr exact i64 %i.bs, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65
  %.0101 = phi i64 [ %i.cq, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8592 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !367, !noalias !398 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.0101
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !365, !noalias !8592 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !367, !noalias !8594
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !367, !noalias !8595
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.0101
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !365, !noalias !8595
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.by, %bb.n ], [ %i.bv, %.lr.ph103.split ]
  %.sroa.077.0130 = phi ptr [ %i.bx, %bb.n ], [ %i.bu, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.cb, %bb.n ], [ %i.bu, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.cc = load ptr, ptr %.in, align 8, !tbaa !365, !noalias !8594 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63
  %i.cd = load ptr, ptr %.sroa.075.0, align 8, !tbaa !367, !noalias !8593
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bi
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !365, !noalias !8593
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63 ], [ %i.cf, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0130, ptr %5, align 8, !tbaa !373
  store ptr %i.cc, ptr %6, align 8, !tbaa !373
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !373
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !367
  %i.ch = load ptr, ptr %.sroa.077.0130, align 8, !tbaa !367
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = load ptr, ptr %.sroa.076.0, align 8, !tbaa !367
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.ci
  %i.cp = ashr exact i64 %i.co, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cl, i64 noundef %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cq = add i64 %.0101, %i.bi                   ; 5 uses
  %i.cr = sub i64 %i.h, %i.cq
  %i.cs = icmp ugt i64 %i.cr, %i.bi
  br i1 %i.cs, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !8582

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65
  %i.ct = sub i64 %i.h, %i.cq
  %i.cu = icmp ugt i64 %i.ct, %.032106
  br i1 %i.cu, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.cv = icmp ugt i64 %i.h, %.032106
  br i1 %i.cv, label %.thread133, label %bb.s

.thread133:                                       ; preds = %._crit_edge104.thread
  %i.cw = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8596
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
  %i.cx = icmp ugt i64 %i.h, %.032106
  br i1 %i.cx, label %.thread91, label %._crit_edge109

.thread91:                                        ; preds = %.thread
  %i.cy = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8597
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

bb.p:                                             ; preds = %._crit_edge104
  %i.cz = load ptr, ptr %0, align 8, !tbaa !373, !noalias !8596 ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !367, !noalias !8596
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cq
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !365, !noalias !8596
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEESC_EEvT0_SE_T1_SF_SF_T_:bb.a
  %.03043.lcssa = phi ptr [ %2, %.lr.ph ], [ %i.at, %bb.b ]
  %.pre59 = load ptr, ptr %i.f, align 8, !tbaa !491
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit
  %i.i = phi ptr [ %i.s, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.pre59, %.lr.ph49.preheader ] ; 3 uses
  %i.j = phi ptr [ %i.t, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.promoted.lcssa, %.lr.ph49.preheader ] ; 2 uses
  %.13148 = phi ptr [ %i.l, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.03043.lcssa, %.lr.ph49.preheader ] ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !296
  store i32 %i.k, ptr %.13148, align 4, !tbaa !296
  %i.l = getelementptr inbounds nuw i8, ptr %.13148, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !401
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1024
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit, !prof !316

bb.c:                                             ; preds = %.lr.ph49
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !299  ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !401
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit: ; preds = %.lr.ph49, %bb.c
  %i.s = phi ptr [ %i.i, %.lr.ph49 ], [ %i.q, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.m, %.lr.ph49 ], [ %i.r, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %i.l, %3
  br i1 %.not, label %._crit_edge50.loopexit, label %.lr.ph49, !llvm.loop !15779

._crit_edge50.loopexit:                           ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %.not3.i = icmp eq ptr %i.t, %.pre
  br i1 %.not3.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge50.loopexit
  %.pre60 = load ptr, ptr %i.s, align 8, !tbaa !299
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.u = phi ptr [ %i.ad, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %.pre60, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.af, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.s, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.04.i = phi ptr [ %i.ag, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !296
  store i32 %i.x, ptr %.04.i, align 4, !tbaa !296
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1024
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.ad = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.ae = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ac, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %.not.i = icmp eq ptr %i.ae, %.pre
  br i1 %.not.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !189

.lr.ph111:                                        ; preds = %.lr.ph, %bb.b
  %.03043110 = phi ptr [ %i.at, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.044109 = phi ptr [ %.1, %bb.b ], [ %3, %.lr.ph ] ; 4 uses
  %.promoted108 = phi ptr [ %i.as, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.ah = load i32, ptr %.044109, align 4, !tbaa !296 ; 2 uses
  %i.ai = load i32, ptr %.promoted108, align 4, !tbaa !296 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph111
  store i32 %i.ah, ptr %.03043110, align 4, !tbaa !296
  %i.ak = getelementptr inbounds nuw i8, ptr %.044109, i64 4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14

bb.f:                                             ; preds = %.lr.ph111
  store i32 %i.ai, ptr %.03043110, align 4, !tbaa !296
  %i.al = getelementptr inbounds nuw i8, ptr %.promoted108, i64 4 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !401
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !491 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !299
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1024
  %i.ap = icmp eq ptr %i.al, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14, !prof !316

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !491
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !299 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !401
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14: ; preds = %bb.g, %bb.f, %bb.e
  %i.as = phi ptr [ %.promoted108, %bb.e ], [ %i.al, %bb.f ], [ %i.ar, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.ak, %bb.e ], [ %.044109, %bb.f ], [ %.044109, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03043110, i64 4 ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !401   ; 2 uses
  %i.av = icmp ne ptr %i.as, %i.au
  %i.aw = icmp ne ptr %i.at, %3
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !15778

._crit_edge:                                      ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ]
  %.lcssa39 = phi ptr [ %i.a, %bb.a ], [ %i.as, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ] ; 2 uses
  %.lcssa37 = phi ptr [ %i.b, %bb.a ], [ %i.au, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.lcssa39, %.lcssa37
  br i1 %.not19.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !491
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.az, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.ba = phi ptr [ %i.bz, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %.lcssa39, %.lr.ph.i.i.preheader ] ; 4 uses
  %.021.i.i = phi ptr [ %i.ca, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.i.i = phi ptr [ %.1.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.bb = icmp eq ptr %.0920.i.i, %4
  br i1 %i.bb, label %.lr.ph.i.preheader.i.i.i, label %bb.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !299
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bc = phi ptr [ %i.bl, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bd = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.sroa.4.0.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.bm, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %i.ba, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.04.i.i.i.i = phi ptr [ %i.bo, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !296
  store i32 %i.bf, ptr %.04.i.i.i.i, align 4, !tbaa !296
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1024
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, !prof !316

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bl = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.h ]
  %i.bm = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bn = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.h ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bm, %.lcssa37
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !189

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bp = load i32, ptr %.0920.i.i, align 4, !tbaa !296 ; 2 uses
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !296 ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bp, ptr %.021.i.i, align 4, !tbaa !296
  %i.bs = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  store i32 %i.bq, ptr %.021.i.i, align 4, !tbaa !296
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !299
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1024
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i, !prof !316

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !299
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i = phi ptr [ %.sroa.4.0.i, %bb.j ], [ %i.bx, %bb.l ], [ %.sroa.4.0.i, %bb.k ]
  %i.bz = phi ptr [ %i.ba, %bb.j ], [ %i.by, %bb.l ], [ %i.bt, %bb.k ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bs, %bb.j ], [ %.0920.i.i, %bb.l ], [ %.0920.i.i, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bz, %.lcssa37
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !15780

_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %._crit_edge, %._crit_edge50.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SF_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !401    ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !401    ; 10 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !299
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !299
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v                       ; 5 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %bb.a
  %.0.i223 = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ 0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre192 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !491, !noalias !15809
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !491, !noalias !15810 ; 10 uses
  %i.aa = ptrtoint ptr %i.b to i64
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !299, !noalias !398 ; 5 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit
  %.033181 = phi i64 [ 0, %.lr.ph ], [ %i.db, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit ] ; 5 uses
  %.not.i.i = icmp eq i64 %.033181, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ad, %.033181             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033181
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033181
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ae, 0
  %i.ai = lshr i64 %i.ae, 8                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -72057594037927936
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !299, !noalias !15810 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 8
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp sgt i64 %i.ae, 0
  %i.ar = lshr i64 %i.ae, 8                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -72057594037927936
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !299, !noalias !15811 ; 2 uses
  %i.aw = shl nsw i64 %i.at, 8
  %i.ax = sub nsw i64 %i.ae, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.az = phi ptr [ %i.am, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i156 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.6.1.i154 = phi ptr [ %i.al, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.au, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.ay, %bb.e ], [ %i.ag, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = add nsw i64 %i.be, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bf, 256
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 64
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39
  %i.bh = icmp sgt i64 %i.be, -16
  %i.bi = lshr i64 %i.bf, 8                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -72057594037927936
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !299, !noalias !15812
  %i.bn = shl nsw i64 %i.bk, 8
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bp, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i156, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i156, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !316

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i154, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.i ], [ %i.az, %bb.h ]
  %.sroa.14.1.i = phi ptr [ %i.bt, %bb.i ], [ %.sroa.6.1.i154, %bb.h ]
  %.sroa.019.1.i = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %.not2836.i = icmp eq ptr %.sroa.019.1.i, %.sroa.0.0.i42
  br i1 %.not2836.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i
  %i.bw = phi ptr [ %i.da, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %i.bv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %.sroa.019.038.i = phi ptr [ %.sroa.019.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.019.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 5 uses
  %.sroa.14.037.i = phi ptr [ %.sroa.14.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.14.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.bx = icmp eq ptr %.sroa.019.038.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !316

bb.j:                                             ; preds = %.lr.ph39.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.14.037.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !299
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph39.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.019.038.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.12.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.14.037.i, %bb.k ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 5 uses
  %i.cc = load i32, ptr %.sroa.019.038.i, align 4, !tbaa !296 ; 3 uses
  %i.cd = load i32, ptr %storemerge.i.i, align 4, !tbaa !296 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i
  store i32 %i.cd, ptr %.sroa.019.038.i, align 4, !tbaa !296
  %.not2930.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i156
  br i1 %.not2930.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.12.1.i, align 8, !tbaa !299 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i, %.lr.ph.preheader.i
  %i.cf = phi ptr [ %i.cu, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cg = phi ptr [ %i.cm, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.034.i = phi ptr [ %storemerge.i1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.8.033.i = phi ptr [ %.sroa.8.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.032.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.12.031.i = phi ptr [ %.sroa.12.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ch = icmp eq ptr %.sroa.0.034.i, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.n, !prof !316

bb.m:                                             ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.8.033.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !299 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.034.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ %i.cj, %bb.m ], [ %i.cg, %bb.n ]
  %.sroa.8.1.i = phi ptr [ %i.ci, %bb.m ], [ %.sroa.8.033.i, %bb.n ]
  %storemerge.i1.i = phi ptr [ %i.ck, %bb.m ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cn = load i32, ptr %storemerge.i1.i, align 4, !tbaa !296 ; 2 uses
  %i.co = icmp slt i32 %i.cc, %i.cn
  br i1 %i.co, label %bb.o, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i, %bb.l
  %.sroa.010.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %.sroa.010.032.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i ], [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ]
  store i32 %i.cc, ptr %.sroa.010.0.lcssa.i, align 4, !tbaa !296
  br label %bb.r

bb.o:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i
  store i32 %i.cn, ptr %.sroa.010.032.i, align 4, !tbaa !296
  %i.cp = icmp eq ptr %.sroa.010.032.i, %i.cf
  br i1 %i.cp, label %bb.p, label %bb.q, !prof !316

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds i8, ptr %.sroa.12.031.i, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !299 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i

bb.q:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds i8, ptr %.sroa.010.032.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i: ; preds = %bb.q, %bb.p
  %i.cu = phi ptr [ %i.cr, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.12.2.i = phi ptr [ %i.cq, %bb.p ], [ %.sroa.12.031.i, %bb.q ]
  %storemerge.i3.i = phi ptr [ %i.cs, %bb.p ], [ %i.ct, %bb.q ] ; 2 uses
  %.not29.i = icmp eq ptr %storemerge.i1.i, %.sroa.0.0.i156
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !178

bb.r:                                             ; preds = %.critedge.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.019.038.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i, !prof !316

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.14.037.i, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i: ; preds = %bb.s, %bb.r
  %i.da = phi ptr [ %i.cz, %bb.s ], [ %i.bw, %bb.r ]
  %.sroa.14.2.i = phi ptr [ %i.cy, %bb.s ], [ %.sroa.14.037.i, %bb.r ]
  %.sroa.019.2.i = phi ptr [ %i.cz, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.not28.i = icmp eq ptr %.sroa.019.2.i, %.sroa.0.0.i42
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %.lr.ph39.i, !llvm.loop !179

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.db = add nuw i64 %.033181, 16                ; 4 uses
  %i.dc = sub i64 %i.w, %i.db
  %i.dd = icmp ugt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %bb.t, !llvm.loop !15789

bb.t:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit
  %i.de = load ptr, ptr %i.z, align 8, !tbaa !299, !noalias !15809
  %i.df = ptrtoint ptr %i.b to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = add nsw i64 %i.di, %i.db                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.dj, 256
  br i1 %or.cond.i.i45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.db
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

bb.v:                                             ; preds = %bb.t
  %i.dl = icmp sgt i64 %i.dj, 0
  %i.dm = lshr i64 %i.dj, 8                       ; 2 uses
  %i.dn = or disjoint i64 %i.dm, -72057594037927936
  %i.do = select i1 %i.dl, i64 %i.dm, i64 %i.dn   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !299, !noalias !15809
  %i.dr = shl nsw i64 %i.do, 8
  %i.ds = sub nsw i64 %i.dj, %i.dr
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ds
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %bb.u, %bb.v
  %.0.i222232 = phi i64 [ %.0.i223, %._crit_edge.thread ], [ %i.w, %bb.u ], [ %i.w, %bb.v ] ; 6 uses
  %8 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.u ], [ true, %bb.v ]
  %.sroa.6.1.i46 = phi ptr [ %.pre192, %._crit_edge.thread ], [ %i.z, %bb.u ], [ %i.dp, %bb.v ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.dk, %bb.u ], [ %i.dt, %bb.v ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.a
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %bb.w

bb.w:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 4 ; 2 uses
  %i.dx = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !299 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1024
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.x, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50, !prof !316

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.x, %bb.w
  %i.ec = phi ptr [ %i.eb, %bb.x ], [ %i.dx, %bb.w ]
  %.sroa.14.1.i51 = phi ptr [ %i.ea, %bb.x ], [ %.sroa.6.1.i46, %bb.w ]
  %.sroa.019.1.i52 = phi ptr [ %i.eb, %bb.x ], [ %i.dw, %bb.w ] ; 2 uses
  %.not2836.i53 = icmp eq ptr %.sroa.019.1.i52, %i.a
  br i1 %.not2836.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %.lr.ph39.i54

.lr.ph39.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60
  %i.ed = phi ptr [ %i.fh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %i.ec, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 3 uses
  %.sroa.019.038.i55 = phi ptr [ %.sroa.019.2.i62, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.019.1.i52, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 5 uses
  %.sroa.14.037.i56 = phi ptr [ %.sroa.14.2.i61, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.14.1.i51, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 4 uses
  %i.ee = icmp eq ptr %.sroa.019.038.i55, %i.ed
  br i1 %i.ee, label %bb.y, label %bb.z, !prof !316

bb.y:                                             ; preds = %.lr.ph39.i54
  %i.ef = getelementptr inbounds i8, ptr %.sroa.14.037.i56, i64 -8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !299
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57

bb.z:                                             ; preds = %.lr.ph39.i54
  %i.ei = getelementptr inbounds i8, ptr %.sroa.019.038.i55, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.z, %bb.y
  %.sroa.12.1.i58 = phi ptr [ %i.ef, %bb.y ], [ %.sroa.14.037.i56, %bb.z ] ; 3 uses
  %storemerge.i.i59 = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ] ; 5 uses
  %i.ej = load i32, ptr %.sroa.019.038.i55, align 4, !tbaa !296 ; 3 uses
  %i.ek = load i32, ptr %storemerge.i.i59, align 4, !tbaa !296 ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57
  store i32 %i.ek, ptr %.sroa.019.038.i55, align 4, !tbaa !296
  %.not2930.i64 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not2930.i64, label %.critedge.i75, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.aa
  %.pre.i66 = load ptr, ptr %.sroa.12.1.i58, align 8, !tbaa !299 ; 2 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77, %.lr.ph.preheader.i65
  %i.em = phi ptr [ %i.fb, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.en = phi ptr [ %i.et, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.0.034.i68 = phi ptr [ %storemerge.i1.i74, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.8.033.i69 = phi ptr [ %.sroa.8.1.i73, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.sroa.12.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.010.032.i70 = phi ptr [ %storemerge.i3.i79, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 4 uses
  %.sroa.12.031.i71 = phi ptr [ %.sroa.12.2.i78, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.sroa.12.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.eo = icmp eq ptr %.sroa.0.034.i68, %i.en
  br i1 %i.eo, label %bb.ab, label %bb.ac, !prof !316

bb.ab:                                            ; preds = %.lr.ph.i67
  %i.ep = getelementptr inbounds i8, ptr %.sroa.8.033.i69, i64 -8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !299 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72

bb.ac:                                            ; preds = %.lr.ph.i67
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.034.i68, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72: ; preds = %bb.ac, %bb.ab
  %i.et = phi ptr [ %i.eq, %bb.ab ], [ %i.en, %bb.ac ]
  %.sroa.8.1.i73 = phi ptr [ %i.ep, %bb.ab ], [ %.sroa.8.033.i69, %bb.ac ]
  %storemerge.i1.i74 = phi ptr [ %i.er, %bb.ab ], [ %i.es, %bb.ac ] ; 3 uses
  %i.eu = load i32, ptr %storemerge.i1.i74, align 4, !tbaa !296 ; 2 uses
  %i.ev = icmp slt i32 %i.ej, %i.eu
  br i1 %i.ev, label %bb.ad, label %.critedge.i75

.critedge.i75:                                    ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72, %bb.aa
  %.sroa.010.0.lcssa.i76 = phi ptr [ %storemerge.i.i59, %bb.aa ], [ %.sroa.010.032.i70, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72 ], [ %storemerge.i3.i79, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ]
  store i32 %i.ej, ptr %.sroa.010.0.lcssa.i76, align 4, !tbaa !296
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72
  store i32 %i.eu, ptr %.sroa.010.032.i70, align 4, !tbaa !296
  %i.ew = icmp eq ptr %.sroa.010.032.i70, %i.em
  br i1 %i.ew, label %bb.ae, label %bb.af, !prof !316

bb.ae:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds i8, ptr %.sroa.12.031.i71, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !299 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77

bb.af:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds i8, ptr %.sroa.010.032.i70, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77: ; preds = %bb.af, %bb.ae
  %i.fb = phi ptr [ %i.ey, %bb.ae ], [ %i.em, %bb.af ]
  %.sroa.12.2.i78 = phi ptr [ %i.ex, %bb.ae ], [ %.sroa.12.031.i71, %bb.af ]
  %storemerge.i3.i79 = phi ptr [ %i.ez, %bb.ae ], [ %i.fa, %bb.af ] ; 2 uses
  %.not29.i80 = icmp eq ptr %storemerge.i1.i74, %.sroa.0.0.i47
  br i1 %.not29.i80, label %.critedge.i75, label %.lr.ph.i67, !llvm.loop !178

bb.ag:                                            ; preds = %.critedge.i75, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.019.038.i55, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ed, i64 1024
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %bb.ah, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60, !prof !316

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.14.037.i56, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !299 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60: ; preds = %bb.ah, %bb.ag
  %i.fh = phi ptr [ %i.fg, %bb.ah ], [ %i.ed, %bb.ag ]
  %.sroa.14.2.i61 = phi ptr [ %i.ff, %bb.ah ], [ %.sroa.14.037.i56, %bb.ag ]
  %.sroa.019.2.i62 = phi ptr [ %i.fg, %bb.ah ], [ %i.fc, %bb.ag ] ; 2 uses
  %.not28.i63 = icmp eq ptr %.sroa.019.2.i62, %i.a
  br i1 %.not28.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %.lr.ph39.i54, !llvm.loop !179

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50
  br i1 %8, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ai

._crit_edge190:                                   ; preds = %.thread, %bb.bi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81
  ret void

bb.ai:                                            ; preds = %.lr.ph189, %bb.bi
  %.032187 = phi i64 [ 16, %.lr.ph189 ], [ %i.nl, %bb.bi ] ; 13 uses
  %i.fo = sub i64 %.0.i222232, %.032187
  %i.fp = icmp ugt i64 %i.fo, %.032187            ; 2 uses
  br i1 %i.fp, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fq = shl i64 %.032187, 1                     ; 6 uses
  %i.fr = icmp ugt i64 %.0.i222232, %i.fq
  br i1 %i.fr, label %.lr.ph184, label %._crit_edge185.thread

.lr.ph184:                                        ; preds = %bb.aj
  %.not.i.i92 = icmp eq i64 %.032187, 0
  %.not.i.i102 = icmp eq i64 %i.fq, 0
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph184, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit
  %.0182 = phi i64 [ 0, %.lr.ph184 ], [ %i.jy, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit ] ; 7 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !401, !noalias !15813 ; 8 uses
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !491, !noalias !15813 ; 11 uses
  %.not.i.i82 = icmp eq i64 %.0182, 0             ; 2 uses
  br i1 %.not.i.i82, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !299, !noalias !15813
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2
  %i.fz = add nsw i64 %i.fy, %.0182               ; 7 uses
  %or.cond.i.i83 = icmp ult i64 %i.fz, 256
  br i1 %or.cond.i.i83, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.0182
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.0182
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit91

bb.an:                                            ; preds = %bb.al
  %i.gc = icmp sgt i64 %i.fz, 0
  %i.gd = lshr i64 %i.fz, 8                       ; 2 uses
  %i.ge = or disjoint i64 %i.gd, -72057594037927936
  %i.gf = select i1 %i.gc, i64 %i.gd, i64 %i.ge   ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.gf ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !299, !noalias !15813
  %i.gi = shl nsw i64 %i.gf, 8
  %i.gj = sub nsw i64 %i.fz, %i.gi
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = icmp sgt i64 %i.fz, 0
  %i.gm = lshr i64 %i.fz, 8                       ; 2 uses
  %i.gn = or disjoint i64 %i.gm, -72057594037927936
  %i.go = select i1 %i.gl, i64 %i.gm, i64 %i.gn   ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.go ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !299, !noalias !15814
end_hunk_2

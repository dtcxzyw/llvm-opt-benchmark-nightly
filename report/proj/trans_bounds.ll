Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans_bounds?download=true
inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@proj_trans_bounds:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  %i.c = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @proj_pj_info(ptr dead_on_unwind nonnull writable sret(%struct.PJ_PROJ_INFO) align 8 %12, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %12, align 8, !tbaa !18    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.2)
  %i.f = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit331

bb.g:                                             ; preds = %bb.e
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.3) #17
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond4 = or i1 %i.i, %i.h
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %3, ptr %7, align 8, !tbaa !14
  store double %5, ptr %9, align 8, !tbaa !14
  store double %4, ptr %8, align 8, !tbaa !14
  store double %6, ptr %10, align 8, !tbaa !14
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit331

bb.i:                                             ; preds = %bb.g
  %i.j = call i32 @proj_degree_output(ptr noundef nonnull %1, i32 noundef %2)
  %i.k = icmp ne i32 %i.j, 0                      ; 4 uses
  %i.l = call i32 @proj_degree_input(ptr noundef nonnull %1, i32 noundef %2)
  %.not256 = icmp ne i32 %i.l, 0                  ; 4 uses
  %i.m = icmp samesign ult i32 %11, 2
  %or.cond6 = and i1 %i.m, %i.k
  br i1 %or.cond6, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
  %i.n = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit331

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.i
  %i.o = add nuw nsw i32 %11, 1                   ; 8 uses
  %i.p = shl nuw nsw i32 %i.o, 2                  ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 14 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344 unwind label %bb.k ; 29 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.r, -8      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 8 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18
          to label %bb.p unwind label %bb.k       ; 28 uses

bb.k:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %.sroa.0381.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %i.s, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344 ] ; 4 uses
  %.sroa.32.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %i.u, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344 ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.x = extractvalue { ptr, i32 } %i.w, 1
  %i.y = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #16
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.l, label %_ZNSt6vectorIdSaIdEED2Ev.exit333

bb.l:                                             ; preds = %bb.k
  %i.aa = extractvalue { ptr, i32 } %i.w, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #16
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef %i.af)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %.thread481

.thread481:                                       ; preds = %bb.n
  %lpad.thr_comm.split-lp486 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit333

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit333 unwind label %bb.be

bb.p:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i344
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !14
  %i.ai = getelementptr i8, ptr %i.v, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.q ; 7 uses
  br i1 %.not256, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ak = invoke noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
          to label %bb.r unwind label %.thread469

bb.r:                                             ; preds = %bb.q
  %i.al = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %i.ak)
          to label %bb.s unwind label %.thread469 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not258 = icmp eq i32 %i.al, -1
  %i.am = icmp ne i32 %i.al, 0
  br i1 %.not258, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.1223 = phi i1 [ %i.am, %bb.s ], [ false, %bb.p ] ; 2 uses
  br i1 %i.k, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.an = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.v unwind label %.thread469 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not259 = icmp eq i32 %i.an, -1
  br i1 %.not259, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = icmp ne i32 %i.an, 0                    ; 3 uses
  %i.ap = invoke fastcc noundef zeroext i1 @_ZL19contains_north_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i1 noundef zeroext %i.ao)
          to label %bb.x unwind label %.thread469

bb.x:                                             ; preds = %bb.w
  %i.aq = invoke fastcc noundef zeroext i1 @_ZL19contains_south_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i1 noundef zeroext %i.ao)
          to label %bb.y unwind label %.thread469

bb.y:                                             ; preds = %bb.x, %bb.t
  %.1227 = phi i1 [ false, %bb.t ], [ %i.ap, %bb.x ]
  %.1225 = phi i1 [ false, %bb.t ], [ %i.aq, %bb.x ]
  %.1 = phi i1 [ false, %bb.t ], [ %i.ao, %bb.x ]
  %i.ar = fcmp olt double %5, %3
  %or.cond267 = and i1 %i.ar, %.not256
  br i1 %or.cond267, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %.1223, label %.thread526, label %.thread532.invoke

bb.aa:                                            ; preds = %bb.y
  %i.as = fsub double %5, %3
  %i.at = uitofp nneg i32 %i.o to double
  %i.au = fdiv double %i.as, %i.at                ; 2 uses
  %i.av = fcmp olt double %6, %4
  %or.cond269 = and i1 %i.av, %.not256
  br i1 %or.cond269, label %bb.ab, label %bb.ad

.thread526:                                       ; preds = %bb.z
  %i.aw = fsub double %5, %3
  %i.ax = fadd double %i.aw, 3.600000e+02
  %i.ay = uitofp nneg i32 %i.o to double
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = fcmp olt double %6, %4
  %or.cond269528 = and i1 %i.ba, %.not256
  br i1 %or.cond269528, label %.thread532.invoke, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %.1223, label %.thread532.invoke, label %bb.ac

.thread532.invoke:                                ; preds = %bb.ab, %.thread526, %bb.z
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %.thread469

.invoke:                                          ; preds = %.thread532.invoke
  %i.bb = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread unwind label %.thread469 ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bc = fsub double %6, %4
  %i.bd = fadd double %i.bc, 3.600000e+02
  br label %.lr.ph

bb.ad:                                            ; preds = %.thread526, %bb.aa
  %.0229530 = phi double [ %i.az, %.thread526 ], [ %i.au, %bb.aa ]
  %i.be = fsub double %6, %4
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %.sink = phi double [ %i.bd, %bb.ac ], [ %i.be, %bb.ad ]
  %.0229529 = phi double [ %i.au, %bb.ac ], [ %.0229530, %bb.ad ] ; 6 uses
  %i.bf = uitofp nneg i32 %i.o to double
  %i.bg = fdiv double %.sink, %i.bf               ; 3 uses
  %i.bh = shl nuw nsw i32 %i.o, 1
  %i.bi = mul nuw nsw i32 %i.o, 3
  %i.bj = zext nneg i32 %i.o to i64               ; 9 uses
  %i.bk = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bl = zext nneg i32 %i.bi to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %11, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %13 = shl nuw nsw i64 %i.bj, 3                  ; 2 uses
  %14 = shl nuw nsw i64 %i.bk, 3                  ; 2 uses
  %15 = shl nuw nsw i64 %i.bl, 3                  ; 2 uses
  %16 = sub nsw i64 %13, %14
  %diff.check563 = icmp ugt i64 %16, -16
  %17 = sub nsw i64 %13, %15
  %diff.check565 = icmp ugt i64 %17, -16
  %conflict.rdx566 = or i1 %diff.check563, %diff.check565
  %i.bm = sub nsw i64 %14, %15
  %diff.check567 = icmp ugt i64 %i.bm, -16
  %conflict.rdx568 = or i1 %conflict.rdx566, %diff.check567
  br i1 %conflict.rdx568, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 32766                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0229529, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert571 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat572 = shufflevector <2 x double> %broadcast.splatinsert571, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bn = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.bo = fneg <2 x double> %i.bn                 ; 2 uses
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %broadcast.splat570, <2 x double> %broadcast.splat572)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index
  store <2 x double> %i.bp, ptr %i.bq, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  store <2 x double> %broadcast.splat574, ptr %i.br, align 8, !tbaa !14
  %i.bs = add nuw nsw i64 %index, %i.bj           ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bs
  store <2 x double> %broadcast.splat576, ptr %i.bt, align 8, !tbaa !14
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat574)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bs
  store <2 x double> %i.bu, ptr %i.bv, align 8, !tbaa !14
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %broadcast.splat570, <2 x double> %broadcast.splat576)
  %i.bx = add nuw nsw i64 %index, %i.bk           ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bx
  store <2 x double> %i.bw, ptr %i.by, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bx
  store <2 x double> %broadcast.splat578, ptr %i.bz, align 8, !tbaa !14
  %i.ca = add nuw nsw i64 %index, %i.bl           ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ca
  store <2 x double> %broadcast.splat572, ptr %i.cb, align 8, !tbaa !14
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat578)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ca
  store <2 x double> %i.cc, ptr %i.cd, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cf = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %.0229529, i64 1 ; 2 uses
  %i.ch = insertelement <2 x double> poison, double %6, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %3, i64 1
  %i.cj = insertelement <2 x double> poison, double %4, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %5, i64 1
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cl = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.s, i64 noundef 8, i64 noundef %i.q, ptr noundef nonnull %i.v, i64 noundef 8, i64 noundef %i.q, ptr noundef null, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.ae unwind label %.thread469 ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32
  %i.cn = uitofp nneg i32 %i.cm to double         ; 3 uses
  %i.co = fneg double %i.cn                       ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store double %3, ptr %i.cq, align 8, !tbaa !14
  %i.cr = add nuw nsw i64 %indvars.iv, %i.bj      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cr
  store double %4, ptr %i.cs, align 8, !tbaa !14
  %i.ct = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cn, i64 1
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cg, <2 x double> %i.ci) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  store double %i.cw, ptr %i.cp, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cr
  %i.cy = extractelement <2 x double> %i.cv, i64 1
  store double %i.cy, ptr %i.cx, align 8, !tbaa !14
  %i.cz = add nuw nsw i64 %indvars.iv, %i.bk      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cz
  store double %5, ptr %i.db, align 8, !tbaa !14
  %i.dc = add nuw nsw i64 %indvars.iv, %i.bl      ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.co, i64 1
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cg, <2 x double> %i.ck) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  store double %i.dh, ptr %i.da, align 8, !tbaa !14
  store double %6, ptr %i.dd, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dc
  %i.dj = extractelement <2 x double> %i.dg, i64 1
  store double %i.dj, ptr %i.di, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26

bb.ae:                                            ; preds = %._crit_edge
  %.not = xor i1 %i.k, true
  %or.cond8 = or i1 %.1, %.not                    ; 2 uses
  br i1 %or.cond8, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  br i1 %i.k, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = load double, ptr %i.s, align 8, !tbaa !14 ; 3 uses
  %i.dl = add nsw i64 %i.q, -2                    ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 2
  br i1 %i.dm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ag
  %i.dn = add nsw i64 %i.q, -8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.new
  %indvars.iv.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.3, %bb.ah ] ; 5 uses
  %.0911.i = phi double [ %i.dk, %.new ], [ %.1.i.3, %bb.ah ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ah ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %i.dq = fcmp olt double %i.dp, %.0911.i
  %.1.i = select i1 %i.dq, double %i.dp, double %.0911.i ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !14 ; 2 uses
  %i.du = fcmp olt double %i.dt, %.1.i
  %.1.i.1 = select i1 %i.du, double %i.dt, double %.1.i ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  %i.dy = fcmp olt double %i.dx, %.1.i.1
  %.1.i.2 = select i1 %i.dy, double %i.dx, double %.1.i.1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.ec = fcmp olt double %i.eb, %.1.i.2
  %.1.i.3 = select i1 %i.ec, double %i.eb, double %.1.i.2 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, %i.dn
  br i1 %niter.ncmp.3, label %.epil.preheader, label %bb.ah, !llvm.loop !0

.epil.preheader:                                  ; preds = %bb.ah, %bb.ag
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.ag ], [ %indvars.iv.next.i.3, %bb.ah ]
  %.0911.i.epil.init = phi double [ %i.dk, %bb.ag ], [ %.1.i.3, %bb.ah ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ai ] ; 2 uses
  %.0911.i.epil = phi double [ %.0911.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.ai ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ai ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.ef = fcmp olt double %i.ee, %.0911.i.epil
  %.1.i.epil = select i1 %i.ef, double %i.ee, double %.0911.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit, label %bb.ai, !llvm.loop !27

_ZL10simple_minPKdi.exit:                         ; preds = %bb.ai
  store double %.1.i.epil, ptr %7, align 8, !tbaa !14
  %i.eg = add nsw i64 %i.q, -4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %_ZL10simple_minPKdi.exit
  %indvars.iv.i275 = phi i64 [ 1, %_ZL10simple_minPKdi.exit ], [ %indvars.iv.next.i277.1, %bb.aj ] ; 3 uses
  %.01316.i = phi double [ %i.dk, %_ZL10simple_minPKdi.exit ], [ %.1.i276.1, %bb.aj ] ; 3 uses
  %niter616 = phi i64 [ 0, %_ZL10simple_minPKdi.exit ], [ %niter616.next.1, %bb.aj ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i275
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14 ; 3 uses
  %i.ej = fcmp ogt double %i.ei, %.01316.i
  %i.ek = fcmp oeq double %.01316.i, +inf
  %or.cond.i = or i1 %i.ek, %i.ej
  %i.el = fcmp une double %i.ei, +inf
  %or.cond15.i = and i1 %i.el, %or.cond.i
  %.1.i276 = select i1 %or.cond15.i, double %i.ei, double %.01316.i ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i275
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !14 ; 3 uses
  %i.ep = fcmp ogt double %i.eo, %.1.i276
  %i.eq = fcmp oeq double %.1.i276, +inf
  %or.cond.i.1 = or i1 %i.eq, %i.ep
  %i.er = fcmp une double %i.eo, +inf
  %or.cond15.i.1 = and i1 %i.er, %or.cond.i.1
  %.1.i276.1 = select i1 %or.cond15.i.1, double %i.eo, double %.1.i276 ; 4 uses
  %indvars.iv.next.i277.1 = add nuw nsw i64 %indvars.iv.i275, 2 ; 2 uses
  %niter616.next.1 = add nuw nsw i64 %niter616, 2
  %niter616.ncmp.1 = icmp eq i64 %niter616, %i.eg
  br i1 %niter616.ncmp.1, label %_ZL10simple_maxPKdi.exit.epilog-lcssa, label %bb.aj, !llvm.loop !1
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %.0.i = phi ptr [ %i.q, %bb.l ], [ %i.r, %bb.m ] ; 3 uses
  %.not471 = icmp eq ptr %.0.i, null
  br i1 %.not471, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.s = call ptr @proj_destroy(ptr noundef null) ; 0 uses
  %i.t = shl nuw nsw i32 %i.o, 2
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.u = call i32 @proj_get_type(ptr noundef nonnull %.0.i)
  %.fr = freeze i32 %i.u
  %i.v = icmp eq i32 %.fr, 10                     ; 2 uses
  %i.w = call ptr @proj_destroy(ptr noundef nonnull %.0.i) ; 0 uses
  %i.x = mul nuw nsw i32 %i.o, 12
  %i.y = shl nuw nsw i32 %i.o, 2
  %spec.select = select i1 %i.v, i32 %i.x, i32 %i.y
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n, %.thread
  %i.z = phi i1 [ false, %.thread ], [ %i.v, %bb.n ]
  %i.aa = phi i32 [ %i.t, %.thread ], [ %spec.select, %bb.n ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 15 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 6 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 unwind label %bb.o ; 45 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.ac, -8     ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 8 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 unwind label %bb.o ; 44 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ab ; 7 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %bb.t unwind label %bb.o       ; 63 uses

bb.o:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %.sroa.0845.0 = phi ptr [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.43.0 = phi ptr [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.0807.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ag, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.45.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ai, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.al = extractvalue { ptr, i32 } %i.ak, 1
  %i.am = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #16
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.p, label %_ZNSt6vectorIdSaIdEED2Ev.exit669

bb.p:                                             ; preds = %bb.o
  %i.ao = extractvalue { ptr, i32 } %i.ak, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.ao) #16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #16
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef %i.at)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.au = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit unwind label %bb.ch

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit669 unwind label %bb.cl

bb.t:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699
  %i.aw = ptrtoaddr ptr %i.aj to i64              ; 15 uses
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.aj, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  br i1 %.not470, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ay = invoke noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
          to label %bb.v unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.az = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %i.ay)
          to label %bb.w unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not473 = icmp eq i32 %i.az, -1
  %i.ba = icmp ne i32 %i.az, 0
  br i1 %.not473, label %.loopexit979, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.1426 = phi i1 [ %i.ba, %bb.w ], [ false, %bb.t ] ; 2 uses
  br i1 %i.k, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bb = invoke fastcc noundef i32 @_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.z unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.y
  %.not474 = icmp eq i32 %i.bb, -1
  br i1 %.not474, label %.loopexit979, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp ne i32 %i.bb, 0                    ; 3 uses
  %i.bd = invoke fastcc noundef zeroext i1 @_ZL19contains_north_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bc)
          to label %bb.ab unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.be = invoke fastcc noundef zeroext i1 @_ZL19contains_south_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %6, double noundef %7, i1 noundef zeroext %i.bc)
          to label %bb.ac unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.1430 = phi i1 [ false, %bb.x ], [ %i.bd, %bb.ab ]
  %.1428 = phi i1 [ false, %bb.x ], [ %i.be, %bb.ab ]
  %.1424 = phi i1 [ false, %bb.x ], [ %i.bc, %bb.ab ]
  %i.bf = fcmp olt double %6, %3
  %or.cond491 = and i1 %i.bf, %.not470
  br i1 %or.cond491, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %.1426, label %.thread1137, label %.thread1143.invoke

bb.ae:                                            ; preds = %bb.ac
  %i.bg = fsub double %6, %3
  %i.bh = uitofp nneg i32 %i.o to double
  %i.bi = fdiv double %i.bg, %i.bh                ; 2 uses
  %i.bj = fcmp olt double %7, %4
  %or.cond493 = and i1 %i.bj, %.not470
  br i1 %or.cond493, label %bb.af, label %bb.ah

.thread1137:                                      ; preds = %bb.ad
  %i.bk = fsub double %6, %3
  %i.bl = fadd double %i.bk, 3.600000e+02
  %i.bm = uitofp nneg i32 %i.o to double
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = fcmp olt double %7, %4
  %or.cond4931139 = and i1 %i.bo, %.not470
  br i1 %or.cond4931139, label %.thread1143.invoke, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %.1426, label %.thread1143.invoke, label %bb.ag

.thread1143.invoke:                               ; preds = %bb.af, %.thread1137, %bb.ad
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %.thread1143.invoke
  %i.bp = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %.loopexit979 unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bq = fsub double %7, %4
  %i.br = fadd double %i.bq, 3.600000e+02
  br label %bb.ai

bb.ah:                                            ; preds = %.thread1137, %bb.ae
  %.04321141 = phi double [ %i.bn, %.thread1137 ], [ %i.bi, %bb.ae ]
  %i.bs = fsub double %7, %4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink = phi double [ %i.bs, %bb.ah ], [ %i.br, %bb.ag ]
  %.04321140 = phi double [ %.04321141, %bb.ah ], [ %i.bi, %bb.ag ] ; 14 uses
  %i.bt = uitofp nneg i32 %i.o to double
  %i.bu = fdiv double %.sink, %i.bt               ; 11 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %9, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %10, align 8, !tbaa !14
  store double f0x7FEFFFFFFFFFFFFF, ptr %11, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %12, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %13, align 8, !tbaa !14
  store double f0xFFEFFFFFFFFFFFFF, ptr %14, align 8, !tbaa !14
  br i1 %i.z, label %.lr.ph1012.preheader, label %.preheader978

.preheader978:                                    ; preds = %bb.ai
  %i.bv = shl nuw nsw i32 %i.o, 1
  %i.bw = mul nuw nsw i32 %i.o, 3
  %.not = xor i1 %i.k, true
  %or.cond8 = or i1 %.1424, %.not                 ; 2 uses
  %i.bx = icmp samesign ult i32 %15, 2            ; 4 uses
  %i.by = zext nneg i32 %i.o to i64               ; 14 uses
  %i.bz = zext nneg i32 %i.bv to i64              ; 3 uses
  %i.ca = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.cb = call i32 @llvm.umax.i32(i32 %15, i32 2)
  %i.cc = shl nuw nsw i64 %i.ca, 3                ; 9 uses
  %i.cd = sub i64 %i.cc, %i.aw                    ; 2 uses
  %i.ce = shl nuw nsw i64 %i.bz, 3                ; 10 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = add i64 %i.cc, %i.aw
  %i.ch = sub i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = sub nsw i64 %i.cc, %i.ce                ; 3 uses
  %i.cj = shl nuw nsw i64 %i.by, 3                ; 10 uses
  %i.ck = sub i64 %i.cd, %i.cj                    ; 2 uses
  %i.cl = add i64 %i.cj, %i.aw
  %i.cm = sub i64 %i.ce, %i.cl                    ; 2 uses
  %i.cn = add i64 %i.cc, %i.aw
  %i.co = sub i64 %i.cn, %i.cj                    ; 2 uses
  %i.cp = sub nsw i64 %i.cc, %i.cj                ; 3 uses
  %i.cq = add i64 %i.ce, %i.aw
  %i.cr = sub i64 %i.cq, %i.cj                    ; 2 uses
  %i.cs = sub nsw i64 %i.ce, %i.cj                ; 3 uses
  %i.ct = sub i64 %i.cc, %i.aw                    ; 2 uses
  %i.cu = sub i64 %i.ce, %i.aw                    ; 2 uses
  %i.cv = sub i64 %i.cj, %i.aw                    ; 2 uses
  %i.cw = add i64 %i.cc, %i.aw                    ; 2 uses
  %i.cx = add i64 %i.ce, %i.aw                    ; 2 uses
  %i.cy = add i64 %i.cj, %i.aw                    ; 2 uses
  %i.cz = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.da = add nsw i64 %i.ab, -2                   ; 10 uses
  %i.db = zext nneg i32 %15 to i64
  %min.iters.check1297 = icmp ult i32 %15, 25
  %invariant.op = add i64 %i.cv, -1
  %invariant.op1862.a = add i64 %i.cv, -1
  %invariant.op1864.a = add i64 %i.cu, -1
  %invariant.op1866.a = add i64 %i.cu, -1
  %invariant.op1868.a = add i64 %i.ct, -1
  %invariant.op1870.a = add i64 %i.ct, -1
  %diff.check1346 = icmp ult i64 %i.cs, 16
  %invariant.op1872.a = add i64 %i.cs, -1
  %diff.check1352.a = icmp ult i64 %i.cp, 16
  %invariant.op1874 = add i64 %i.cp, -1
  %invariant.op1876.a = add i64 %i.cs, -1
  %invariant.op1878.a = add i64 %i.cp, -1
  %invariant.op1880.a = add i64 %i.cm, -1
  %invariant.op1882.a = add i64 %i.cm, -1
  %invariant.op1884 = add i64 %i.ck, -1
  %invariant.op1886 = add i64 %i.ck, -1
  %i.dc = add nsw i64 %i.ci, -1
  %diff.check1374 = icmp ult i64 %i.dc, 15
  %invariant.op1888 = add i64 %i.ci, -1
  %invariant.op1890 = add i64 %i.ci, -1
  %invariant.op1892 = add i64 %i.cf, -1
  %invariant.op1894 = add i64 %i.cf, -1
  %n.vec1389 = and i64 %i.by, 32766               ; 3 uses
  %broadcast.splatinsert1392 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1393 = shufflevector <2 x double> %broadcast.splatinsert1392, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1394 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1395 = shufflevector <2 x double> %broadcast.splatinsert1394, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1396 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1397 = shufflevector <2 x double> %broadcast.splatinsert1396, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1398 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1399 = shufflevector <2 x double> %broadcast.splatinsert1398, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1400 = insertelement <2 x double> poison, double %.04321140, i64 0
  %broadcast.splat1401 = shufflevector <2 x double> %broadcast.splatinsert1400, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1402 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1403 = shufflevector <2 x double> %broadcast.splatinsert1402, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1410 = icmp eq i64 %n.vec1389, %i.by
  %i.dd = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %.04321140, i64 1 ; 2 uses
  %i.df = insertelement <2 x double> poison, double %7, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %3, i64 1
  %i.dh = insertelement <2 x double> poison, double %4, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %6, i64 1
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %i.dj = icmp ult i64 %i.da, 3
  %unroll_iter = and i64 %i.cz, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1712 = icmp ne i64 %xtraiter, 0
  %xtraiter1714 = and i64 %i.cz, 1
  %i.dk = icmp eq i64 %i.da, 0
  %unroll_iter1719 = and i64 %i.cz, -2
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  %lcmp.mod1718 = trunc i64 %i.cz to i1
  %xtraiter1722 = and i64 %i.cz, 3                ; 3 uses
  %i.dl = icmp ult i64 %i.da, 3
  %unroll_iter1727 = and i64 %i.cz, -4
  %lcmp.mod1724.not = icmp eq i64 %xtraiter1722, 0
  %lcmp.mod1726 = icmp ne i64 %xtraiter1722, 0
  %xtraiter1730 = and i64 %i.cz, 1
  %i.dm = icmp eq i64 %i.da, 0
  %unroll_iter1735 = and i64 %i.cz, -2
  %lcmp.mod1732.not = icmp eq i64 %xtraiter1730, 0
  %lcmp.mod1734 = trunc i64 %i.cz to i1
  %xtraiter1738 = and i64 %i.cz, 3                ; 3 uses
  %i.dn = icmp ult i64 %i.da, 3
  %unroll_iter1743 = and i64 %i.cz, -4
  %lcmp.mod1740.not = icmp eq i64 %xtraiter1738, 0
  %lcmp.mod1742 = icmp ne i64 %xtraiter1738, 0
  %xtraiter1746 = and i64 %i.cz, 1
  %i.do = icmp eq i64 %i.da, 0
  %unroll_iter1751 = and i64 %i.cz, -2
  %lcmp.mod1748.not = icmp eq i64 %xtraiter1746, 0
  %lcmp.mod1750 = trunc i64 %i.cz to i1
  %xtraiter1755 = and i64 %i.cz, 1
  %i.dp = icmp eq i64 %i.da, 0
  %unroll_iter1760 = and i64 %i.cz, -2
  %lcmp.mod1757.not = icmp eq i64 %xtraiter1755, 0
  %lcmp.mod1759 = trunc i64 %i.cz to i1
  %xtraiter1764 = and i64 %i.cz, 3                ; 3 uses
  %i.dq = icmp ult i64 %i.da, 3
  %unroll_iter1769 = and i64 %i.cz, -4
  %lcmp.mod1766.not = icmp eq i64 %xtraiter1764, 0
  %lcmp.mod1768 = icmp ne i64 %xtraiter1764, 0
  %xtraiter1773 = and i64 %i.cz, 3                ; 3 uses
  %i.dr = icmp ult i64 %i.da, 3
  %unroll_iter1778 = and i64 %i.cz, -4
  %lcmp.mod1775.not = icmp eq i64 %xtraiter1773, 0
  %lcmp.mod1777 = icmp ne i64 %xtraiter1773, 0
  %xtraiter1781 = and i64 %i.cz, 1
  %i.ds = icmp eq i64 %i.da, 0
  %unroll_iter1786 = and i64 %i.cz, -2
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1781, 0
  %lcmp.mod1785 = trunc i64 %i.cz to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %i.by, 32764                   ; 3 uses
  %broadcast.splatinsert1196 = insertelement <2 x double> poison, double %.04321140, i64 0
  %broadcast.splat1197 = shufflevector <2 x double> %broadcast.splatinsert1196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1198 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1199 = shufflevector <2 x double> %broadcast.splatinsert1198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.by
  %xtraiter1788.a = and i64 %i.by, 1
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788.a, 0
  br label %.lr.ph.preheader

.lr.ph1035.preheader:                             ; preds = %.lr.ph1026.1, %middle.block1583
  %indvars.iv.next1098.1.lcssa = phi i64 [ %i.je, %middle.block1583 ], [ %indvars.iv.next1098.1, %.lr.ph1026.1 ] ; 3 uses
  %i.dt = fsub double %8, %5
  %i.du = uitofp nneg i32 %i.o to double
  %i.dv = fdiv double %i.dt, %i.du                ; 8 uses
  %min.iters.check1588 = icmp ult i32 %15, 3
  br i1 %min.iters.check1588, label %.lr.ph1035.preheader1680, label %vector.ph1589

vector.ph1589:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1590 = and i64 %i.ey, 32764               ; 4 uses
  %i.dw = add i64 %indvars.iv.next1098.1.lcssa, %n.vec1590 ; 2 uses
  %i.dx = trunc nuw nsw i64 %n.vec1590 to i32
  %broadcast.splatinsert1591 = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat1592 = shufflevector <2 x double> %broadcast.splatinsert1591, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1593 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1594 = shufflevector <2 x double> %broadcast.splatinsert1593, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1595 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1596 = shufflevector <2 x double> %broadcast.splatinsert1595, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1597 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1598 = shufflevector <2 x double> %broadcast.splatinsert1597, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1599

vector.body1599:                                  ; preds = %vector.body1599, %vector.ph1589
  %index1600 = phi i64 [ 0, %vector.ph1589 ], [ %index.next1603, %vector.body1599 ] ; 2 uses
  %vec.ind1601 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1589 ], [ %vec.ind.next1604, %vector.body1599 ] ; 3 uses
  %step.add1602 = add nuw <2 x i32> %vec.ind1601, splat (i32 2)
  %i.dy = add i64 %indvars.iv.next1098.1.lcssa, %index1600 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %broadcast.splat1594, ptr %i.dz, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1594, ptr %i.ea, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dy ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> %broadcast.splat1596, ptr %i.eb, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1596, ptr %i.ec, align 8, !tbaa !14
  %i.ed = uitofp nneg <2 x i32> %vec.ind1601 to <2 x double>
  %i.ee = uitofp nneg <2 x i32> %step.add1602 to <2 x double>
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %broadcast.splat1592, <2 x double> %broadcast.splat1598)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %broadcast.splat1592, <2 x double> %broadcast.splat1598)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.dy ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x double> %i.ef, ptr %i.eh, align 8, !tbaa !14
  store <2 x double> %i.eg, ptr %i.ei, align 8, !tbaa !14
  %index.next1603 = add nuw i64 %index1600, 4     ; 2 uses
  %vec.ind.next1604 = add nuw <2 x i32> %vec.ind1601, splat (i32 4)
  %i.ej = icmp eq i64 %index.next1603, %n.vec1590
  br i1 %i.ej, label %middle.block1605, label %vector.body1599, !llvm.loop !44

middle.block1605:                                 ; preds = %vector.body1599
  %cmp.n1606 = icmp eq i64 %n.vec1590, %i.ey
  br i1 %cmp.n1606, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1680

.lr.ph1035.preheader1680:                         ; preds = %.lr.ph1035.preheader, %middle.block1605
  %indvars.iv1104.ph = phi i64 [ %indvars.iv.next1098.1.lcssa, %.lr.ph1035.preheader ], [ %i.dw, %middle.block1605 ]
  %.04161033.ph = phi i32 [ 0, %.lr.ph1035.preheader ], [ %i.dx, %middle.block1605 ]
  br label %.lr.ph1035

.lr.ph1012.preheader:                             ; preds = %bb.ai
  %wide.trip.count1102 = zext nneg i32 %i.o to i64 ; 3 uses
  %min.iters.check1413 = icmp ult i32 %15, 3
  br i1 %min.iters.check1413, label %.lr.ph1012.preheader1696, label %vector.ph1414

vector.ph1414:                                    ; preds = %.lr.ph1012.preheader
  %n.vec1415 = and i64 %wide.trip.count1102, 32764 ; 3 uses
  %broadcast.splatinsert1416 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1417 = shufflevector <2 x double> %broadcast.splatinsert1416, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1418 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1419 = shufflevector <2 x double> %broadcast.splatinsert1418, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1420 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1421 = shufflevector <2 x double> %broadcast.splatinsert1420, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1422 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1423 = shufflevector <2 x double> %broadcast.splatinsert1422, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1414
  %index1425 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1428, %vector.body1424 ] ; 4 uses
  %vec.ind1426 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1414 ], [ %vec.ind.next1429, %vector.body1424 ] ; 3 uses
  %step.add1427 = add <2 x i32> %vec.ind1426, splat (i32 2)
  %i.ek = uitofp nneg <2 x i32> %vec.ind1426 to <2 x double>
  %i.el = uitofp nneg <2 x i32> %step.add1427 to <2 x double>
  %i.em = fneg <2 x double> %i.ek
  %i.en = fneg <2 x double> %i.el
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %broadcast.splat1417, <2 x double> %broadcast.splat1419)
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %broadcast.splat1417, <2 x double> %broadcast.splat1419)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1425 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %i.eo, ptr %i.eq, align 8, !tbaa !14
  store <2 x double> %i.ep, ptr %i.er, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1425 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %broadcast.splat1421, ptr %i.es, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1421, ptr %i.et, align 8, !tbaa !14
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1425 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x double> %broadcast.splat1423, ptr %i.eu, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1423, ptr %i.ev, align 8, !tbaa !14
  %index.next1428 = add nuw i64 %index1425, 4     ; 2 uses
  %vec.ind.next1429 = add <2 x i32> %vec.ind1426, splat (i32 4)
  %i.ew = icmp eq i64 %index.next1428, %n.vec1415
  br i1 %i.ew, label %middle.block1430, label %vector.body1424, !llvm.loop !45

middle.block1430:                                 ; preds = %vector.body1424
  %cmp.n1431 = icmp eq i64 %n.vec1415, %wide.trip.count1102
  br i1 %cmp.n1431, label %.lr.ph1016.preheader, label %.lr.ph1012.preheader1696

.lr.ph1012.preheader1696:                         ; preds = %.lr.ph1012.preheader, %middle.block1430
  %indvars.iv1085.ph = phi i64 [ 0, %.lr.ph1012.preheader ], [ %n.vec1415, %middle.block1430 ]
  br label %.lr.ph1012

.lr.ph1016.preheader:                             ; preds = %.lr.ph1012, %middle.block1430
  %i.ex = zext nneg i32 %i.o to i64               ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.ey = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1434 = icmp ult i32 %15, 3
  br i1 %min.iters.check1434, label %.lr.ph1016.preheader1694, label %vector.ph1435
end_hunk_1
begin_hunk_2_@proj_trans_bounds_3D:bb.a
  %xtraiter1824 = and i64 %i.no, 1
  %i.qw = icmp eq i64 %i.np, 0
  br i1 %i.qw, label %.epil.preheader1823, label %_ZL10simple_maxPKdi.exit.new

_ZL10simple_maxPKdi.exit.new:                     ; preds = %_ZL10simple_maxPKdi.exit
  %unroll_iter1829 = and i64 %i.no, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %_ZL10simple_maxPKdi.exit.new
  %indvars.iv.i525 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit.new ], [ %indvars.iv.next.i530.1, %bb.ar ] ; 3 uses
  %.01316.i526 = phi double [ %i.ol, %_ZL10simple_maxPKdi.exit.new ], [ %.1.i529.1, %bb.ar ] ; 3 uses
  %niter1830 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit.new ], [ %niter1830.next.1, %bb.ar ]
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !14 ; 3 uses
  %i.qz = fcmp ogt double %i.qy, %.01316.i526
  %i.ra = fcmp oeq double %.01316.i526, +inf
  %or.cond.i527 = or i1 %i.ra, %i.qz
  %i.rb = fcmp une double %i.qy, +inf
  %or.cond15.i528 = and i1 %i.rb, %or.cond.i527
  %.1.i529 = select i1 %or.cond15.i528, double %i.qy, double %.01316.i526 ; 3 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load double, ptr %i.rd, align 8, !tbaa !14 ; 3 uses
  %i.rf = fcmp ogt double %i.re, %.1.i529
  %i.rg = fcmp oeq double %.1.i529, +inf
  %or.cond.i527.1 = or i1 %i.rg, %i.rf
  %i.rh = fcmp une double %i.re, +inf
  %or.cond15.i528.1 = and i1 %i.rh, %or.cond.i527.1
  %.1.i529.1 = select i1 %or.cond15.i528.1, double %i.re, double %.1.i529 ; 3 uses
  %indvars.iv.next.i530.1 = add nuw nsw i64 %indvars.iv.i525, 2 ; 2 uses
  %niter1830.next.1 = add nuw i64 %niter1830, 2   ; 2 uses
  %niter1830.ncmp.1 = icmp eq i64 %niter1830.next.1, %unroll_iter1829
  br i1 %niter1830.ncmp.1, label %_ZL10simple_maxPKdi.exit532.unr-lcssa, label %bb.ar, !llvm.loop !1

_ZL10simple_maxPKdi.exit532.unr-lcssa:            ; preds = %bb.ar
  %lcmp.mod1826.not = icmp eq i64 %xtraiter1824, 0
  br i1 %lcmp.mod1826.not, label %_ZL10simple_maxPKdi.exit532, label %.epil.preheader1823

.epil.preheader1823:                              ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %_ZL10simple_maxPKdi.exit
  %indvars.iv.i525.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit ], [ %indvars.iv.next.i530.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ]
  %.01316.i526.epil.init = phi double [ %i.ol, %_ZL10simple_maxPKdi.exit ], [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ] ; 3 uses
  %lcmp.mod1828 = trunc i64 %i.no to i1
  call void @llvm.assume(i1 %lcmp.mod1828)
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525.epil.init
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !14 ; 3 uses
  %i.rk = fcmp ogt double %i.rj, %.01316.i526.epil.init
  %i.rl = fcmp oeq double %.01316.i526.epil.init, +inf
  %or.cond.i527.epil = or i1 %i.rl, %i.rk
  %i.rm = fcmp une double %i.rj, +inf
  %or.cond15.i528.epil = and i1 %i.rm, %or.cond.i527.epil
  %.1.i529.epil = select i1 %or.cond15.i528.epil, double %i.rj, double %.01316.i526.epil.init
  br label %_ZL10simple_maxPKdi.exit532

_ZL10simple_maxPKdi.exit532:                      ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %.epil.preheader1823
  %.1.i529.lcssa = phi double [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ], [ %.1.i529.epil, %.epil.preheader1823 ] ; 2 uses
  %i.rn = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.ro = fcmp olt double %i.rn, %.1.i529.lcssa
  %.sroa.speculated759 = select i1 %i.ro, double %.1.i529.lcssa, double %i.rn
  store double %.sroa.speculated759, ptr %13, align 8, !tbaa !14
  %xtraiter1832 = and i64 %i.no, 1
  %i.rp = icmp eq i64 %i.np, 0
  br i1 %i.rp, label %.epil.preheader1831, label %_ZL10simple_maxPKdi.exit532.new

_ZL10simple_maxPKdi.exit532.new:                  ; preds = %_ZL10simple_maxPKdi.exit532
  %unroll_iter1837 = and i64 %i.no, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %_ZL10simple_maxPKdi.exit532.new
  %indvars.iv.i535 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532.new ], [ %indvars.iv.next.i540.1, %bb.as ] ; 3 uses
  %.01316.i536 = phi double [ %i.ph, %_ZL10simple_maxPKdi.exit532.new ], [ %.1.i539.1, %bb.as ] ; 3 uses
  %niter1838 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit532.new ], [ %niter1838.next.1, %bb.as ]
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !14 ; 3 uses
  %i.rs = fcmp ogt double %i.rr, %.01316.i536
  %i.rt = fcmp oeq double %.01316.i536, +inf
  %or.cond.i537 = or i1 %i.rt, %i.rs
  %i.ru = fcmp une double %i.rr, +inf
  %or.cond15.i538 = and i1 %i.ru, %or.cond.i537
  %.1.i539 = select i1 %or.cond15.i538, double %i.rr, double %.01316.i536 ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !14 ; 3 uses
  %i.ry = fcmp ogt double %i.rx, %.1.i539
  %i.rz = fcmp oeq double %.1.i539, +inf
  %or.cond.i537.1 = or i1 %i.rz, %i.ry
  %i.sa = fcmp une double %i.rx, +inf
  %or.cond15.i538.1 = and i1 %i.sa, %or.cond.i537.1
  %.1.i539.1 = select i1 %or.cond15.i538.1, double %i.rx, double %.1.i539 ; 3 uses
  %indvars.iv.next.i540.1 = add nuw nsw i64 %indvars.iv.i535, 2 ; 2 uses
  %niter1838.next.1 = add nuw i64 %niter1838, 2   ; 2 uses
  %niter1838.ncmp.1 = icmp eq i64 %niter1838.next.1, %unroll_iter1837
  br i1 %niter1838.ncmp.1, label %_ZL10simple_maxPKdi.exit542.unr-lcssa, label %bb.as, !llvm.loop !1

_ZL10simple_maxPKdi.exit542.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod1834.not = icmp eq i64 %xtraiter1832, 0
  br i1 %lcmp.mod1834.not, label %_ZL10simple_maxPKdi.exit542, label %.epil.preheader1831

.epil.preheader1831:                              ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %_ZL10simple_maxPKdi.exit532
  %indvars.iv.i535.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532 ], [ %indvars.iv.next.i540.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ]
  %.01316.i536.epil.init = phi double [ %i.ph, %_ZL10simple_maxPKdi.exit532 ], [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ] ; 3 uses
  %lcmp.mod1836 = trunc i64 %i.no to i1
  call void @llvm.assume(i1 %lcmp.mod1836)
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535.epil.init
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !14 ; 3 uses
  %i.sd = fcmp ogt double %i.sc, %.01316.i536.epil.init
  %i.se = fcmp oeq double %.01316.i536.epil.init, +inf
  %or.cond.i537.epil = or i1 %i.se, %i.sd
  %i.sf = fcmp une double %i.sc, +inf
  %or.cond15.i538.epil = and i1 %i.sf, %or.cond.i537.epil
  %.1.i539.epil = select i1 %or.cond15.i538.epil, double %i.sc, double %.01316.i536.epil.init
  br label %_ZL10simple_maxPKdi.exit542

_ZL10simple_maxPKdi.exit542:                      ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %.epil.preheader1831
  %.1.i539.lcssa = phi double [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ], [ %.1.i539.epil, %.epil.preheader1831 ] ; 2 uses
  %i.sg = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.sh = fcmp olt double %i.sg, %.1.i539.lcssa
  %.sroa.speculated755 = select i1 %i.sh, double %.1.i539.lcssa, double %i.sg
  store double %.sroa.speculated755, ptr %14, align 8, !tbaa !14
  br label %.loopexit979

.lr.ph.preheader:                                 ; preds = %.loopexit, %.preheader978
  %i.si = phi i1 [ true, %.preheader978 ], [ false, %.loopexit ] ; 2 uses
  %.sroa.45.11006 = phi ptr [ %i.ai, %.preheader978 ], [ %.sroa.45.2900, %.loopexit ] ; 4 uses
  %.sroa.0807.11005 = phi ptr [ %i.ag, %.preheader978 ], [ %.sroa.0807.2897, %.loopexit ] ; 24 uses
  %.sroa.43.11004 = phi ptr [ %i.af, %.preheader978 ], [ %.sroa.43.2894, %.loopexit ] ; 4 uses
  %.sroa.0845.11003 = phi ptr [ %i.ad, %.preheader978 ], [ %.sroa.0845.2890, %.loopexit ] ; 24 uses
  %i.sj = select i1 %i.si, double %5, double %8   ; 9 uses
  br i1 %min.iters.check1297, label %.lr.ph.preheader1697, label %vector.memcheck1298

vector.memcheck1298:                              ; preds = %.lr.ph.preheader
  %.sroa.0807.110051295 = ptrtoaddr ptr %.sroa.0807.11005 to i64 ; 21 uses
  %.sroa.0845.110031294 = ptrtoaddr ptr %.sroa.0845.11003 to i64 ; 21 uses
  %i.sk = sub i64 %.sroa.0845.110031294, %.sroa.0807.110051295 ; 4 uses
  %i.sl = add i64 %i.sk, -1
  %diff.check1299 = icmp ult i64 %i.sl, 15
  %i.sm = sub i64 %.sroa.0807.110051295, %i.aw
  %diff.check1300 = icmp ugt i64 %i.sm, -16
  %conflict.rdx1301 = or i1 %diff.check1299, %diff.check1300
  %i.sn = add i64 %i.cj, %.sroa.0845.110031294
  %i.so = sub i64 %.sroa.0807.110051295, %i.sn
  %diff.check1304.a = icmp ugt i64 %i.so, -16
  %conflict.rdx1305.a = or i1 %conflict.rdx1301, %diff.check1304.a
  %i.sp = sub i64 %.sroa.0807.110051295, %i.cy
  %diff.check1306 = icmp ugt i64 %i.sp, -16
  %conflict.rdx1307 = or i1 %conflict.rdx1305.a, %diff.check1306
  %i.sq = add i64 %i.ce, %.sroa.0845.110031294
  %i.sr = sub i64 %.sroa.0807.110051295, %i.sq
  %diff.check1310.a = icmp ugt i64 %i.sr, -16
  %conflict.rdx1311.a = or i1 %conflict.rdx1307, %diff.check1310.a
  %i.ss = sub i64 %.sroa.0807.110051295, %i.cx
  %diff.check1312.a = icmp ugt i64 %i.ss, -16
  %conflict.rdx1313.a = or i1 %conflict.rdx1311.a, %diff.check1312.a
  %i.st = add i64 %i.cc, %.sroa.0845.110031294
  %i.su = sub i64 %.sroa.0807.110051295, %i.st
  %diff.check1316.a = icmp ugt i64 %i.su, -16
  %conflict.rdx1317.a = or i1 %conflict.rdx1313.a, %diff.check1316.a
  %i.sv = sub i64 %.sroa.0807.110051295, %i.cw
  %diff.check1318.a = icmp ugt i64 %i.sv, -16
  %conflict.rdx1319.a = or i1 %conflict.rdx1317.a, %diff.check1318.a
  %i.sw = sub i64 %.sroa.0845.110031294, %i.aw
  %diff.check1320.a = icmp ugt i64 %i.sw, -16
  %conflict.rdx1321.a = or i1 %conflict.rdx1319.a, %diff.check1320.a
  %i.sx = add i64 %i.cj, %.sroa.0807.110051295
  %i.sy = sub i64 %.sroa.0845.110031294, %i.sx
  %diff.check1322.a = icmp ugt i64 %i.sy, -16
  %conflict.rdx1323.a = or i1 %conflict.rdx1321.a, %diff.check1322.a
  %i.sz = sub i64 %.sroa.0845.110031294, %i.cy
  %diff.check1324.a = icmp ugt i64 %i.sz, -16
  %conflict.rdx1325.a = or i1 %conflict.rdx1323.a, %diff.check1324.a
  %i.ta = add i64 %i.ce, %.sroa.0807.110051295
  %i.tb = sub i64 %.sroa.0845.110031294, %i.ta
  %diff.check1326.a = icmp ugt i64 %i.tb, -16
  %conflict.rdx1327.a = or i1 %conflict.rdx1325.a, %diff.check1326.a
  %i.tc = sub i64 %.sroa.0845.110031294, %i.cx
  %diff.check1328.a = icmp ugt i64 %i.tc, -16
  %conflict.rdx1329.a = or i1 %conflict.rdx1327.a, %diff.check1328.a
  %i.td = add i64 %i.cc, %.sroa.0807.110051295
  %i.te = sub i64 %.sroa.0845.110031294, %i.td
  %diff.check1330.a = icmp ugt i64 %i.te, -16
  %conflict.rdx1331.a = or i1 %conflict.rdx1329.a, %diff.check1330.a
  %i.tf = sub i64 %.sroa.0845.110031294, %i.cw
  %diff.check1332.a = icmp ugt i64 %i.tf, -16
  %conflict.rdx1333.a = or i1 %conflict.rdx1331.a, %diff.check1332.a
  %.reass = add i64 %.sroa.0807.110051295, %invariant.op
  %diff.check1334.a = icmp ult i64 %.reass, 15
  %conflict.rdx1335.a = or i1 %conflict.rdx1333.a, %diff.check1334.a
  %.reass1863.a = add i64 %.sroa.0845.110031294, %invariant.op1862.a
  %diff.check1336.a = icmp ult i64 %.reass1863.a, 15
  %conflict.rdx1337.a = or i1 %conflict.rdx1335.a, %diff.check1336.a
  %.reass1865.a = add i64 %.sroa.0807.110051295, %invariant.op1864.a
  %diff.check1338.a = icmp ult i64 %.reass1865.a, 15
  %conflict.rdx1339.a = or i1 %conflict.rdx1337.a, %diff.check1338.a
  %.reass1867.a = add i64 %.sroa.0845.110031294, %invariant.op1866.a
  %diff.check1340.a = icmp ult i64 %.reass1867.a, 15
  %conflict.rdx1341.a = or i1 %conflict.rdx1339.a, %diff.check1340.a
  %.reass1869.a = add i64 %.sroa.0807.110051295, %invariant.op1868.a
  %diff.check1342 = icmp ult i64 %.reass1869.a, 15
  %conflict.rdx1343.a = or i1 %conflict.rdx1341.a, %diff.check1342
  %.reass1871.a = add i64 %.sroa.0845.110031294, %invariant.op1870.a
  %diff.check1344.a = icmp ult i64 %.reass1871.a, 15
  %conflict.rdx1345 = or i1 %conflict.rdx1343.a, %diff.check1344.a
  %conflict.rdx1347.a = or i1 %conflict.rdx1345, %diff.check1346
  %.reass1873.a = add i64 %i.sk, %invariant.op1872.a
  %diff.check1348.a = icmp ult i64 %.reass1873.a, 15
  %conflict.rdx1349.a = or i1 %conflict.rdx1347.a, %diff.check1348.a
  %i.tg = sub i64 %.sroa.0807.110051295, %i.cr
  %diff.check1350.a = icmp ugt i64 %i.tg, -16
  %conflict.rdx1351.a = or i1 %conflict.rdx1349.a, %diff.check1350.a
  %conflict.rdx1353.a = or i1 %conflict.rdx1351.a, %diff.check1352.a
  %.reass1875.a = add i64 %i.sk, %invariant.op1874
  %diff.check1354.a = icmp ult i64 %.reass1875.a, 15
  %conflict.rdx1355.a = or i1 %conflict.rdx1353.a, %diff.check1354.a
  %i.th = sub i64 %.sroa.0807.110051295, %i.co
  %diff.check1356.a = icmp ugt i64 %i.th, -16
  %conflict.rdx1357.a = or i1 %conflict.rdx1355.a, %diff.check1356.a
  %i.ti = sub i64 %.sroa.0807.110051295, %.sroa.0845.110031294 ; 3 uses
  %.reass1877.a = add i64 %i.ti, %invariant.op1876.a
  %diff.check1358.a = icmp ult i64 %.reass1877.a, 15
  %conflict.rdx1359.a = or i1 %conflict.rdx1357.a, %diff.check1358.a
  %i.tj = sub i64 %.sroa.0845.110031294, %i.cr
  %diff.check1360.a = icmp ugt i64 %i.tj, -16
  %conflict.rdx1361.a = or i1 %conflict.rdx1359.a, %diff.check1360.a
  %.reass1879.a = add i64 %i.ti, %invariant.op1878.a
  %diff.check1362.a = icmp ult i64 %.reass1879.a, 15
  %conflict.rdx1363.a = or i1 %conflict.rdx1361.a, %diff.check1362.a
  %i.tk = sub i64 %.sroa.0845.110031294, %i.co
  %diff.check1364.a = icmp ugt i64 %i.tk, -16
  %conflict.rdx1365.a = or i1 %conflict.rdx1363.a, %diff.check1364.a
  %.reass1881.a = add i64 %.sroa.0807.110051295, %invariant.op1880.a
  %diff.check1366.a = icmp ult i64 %.reass1881.a, 15
  %conflict.rdx1367.a = or i1 %conflict.rdx1365.a, %diff.check1366.a
  %.reass1883.a = add i64 %.sroa.0845.110031294, %invariant.op1882.a
  %diff.check1368.a = icmp ult i64 %.reass1883.a, 15
  %conflict.rdx1369.a = or i1 %conflict.rdx1367.a, %diff.check1368.a
  %.reass1885 = add i64 %.sroa.0807.110051295, %invariant.op1884
  %diff.check1370.a = icmp ult i64 %.reass1885, 15
  %conflict.rdx1371.a = or i1 %conflict.rdx1369.a, %diff.check1370.a
  %.reass1887 = add i64 %.sroa.0845.110031294, %invariant.op1886
  %diff.check1372.a = icmp ult i64 %.reass1887, 15
  %conflict.rdx1373 = or i1 %conflict.rdx1371.a, %diff.check1372.a
  %conflict.rdx1375.a = or i1 %conflict.rdx1373, %diff.check1374
  %.reass1889 = add i64 %i.sk, %invariant.op1888
  %diff.check1376 = icmp ult i64 %.reass1889, 15
  %conflict.rdx1377 = or i1 %conflict.rdx1375.a, %diff.check1376
  %i.tl = sub i64 %.sroa.0807.110051295, %i.ch
  %diff.check1378 = icmp ugt i64 %i.tl, -16
  %conflict.rdx1379 = or i1 %conflict.rdx1377, %diff.check1378
  %.reass1891 = add i64 %i.ti, %invariant.op1890
  %diff.check1380 = icmp ult i64 %.reass1891, 15
  %conflict.rdx1381 = or i1 %conflict.rdx1379, %diff.check1380
  %i.tm = sub i64 %.sroa.0845.110031294, %i.ch
  %diff.check1382 = icmp ugt i64 %i.tm, -16
  %conflict.rdx1383 = or i1 %conflict.rdx1381, %diff.check1382
  %.reass1893 = add i64 %.sroa.0807.110051295, %invariant.op1892
  %diff.check1384 = icmp ult i64 %.reass1893, 15
  %conflict.rdx1385 = or i1 %conflict.rdx1383, %diff.check1384
  %.reass1895 = add i64 %.sroa.0845.110031294, %invariant.op1894
  %diff.check1386 = icmp ult i64 %.reass1895, 15
  %conflict.rdx1387 = or i1 %conflict.rdx1385, %diff.check1386
  br i1 %conflict.rdx1387, label %.lr.ph.preheader1697, label %vector.ph1388

vector.ph1388:                                    ; preds = %vector.memcheck1298
  %broadcast.splatinsert1390 = insertelement <2 x double> poison, double %i.sj, i64 0
  %broadcast.splat1391 = shufflevector <2 x double> %broadcast.splatinsert1390, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1388
  %index1405 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1407, %vector.body1404 ] ; 7 uses
  %vec.ind1406 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1388 ], [ %vec.ind.next1408, %vector.body1404 ] ; 2 uses
  %i.tn = uitofp nneg <2 x i32> %vec.ind1406 to <2 x double> ; 3 uses
  %i.to = fneg <2 x double> %i.tn                 ; 2 uses
  %i.tp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %broadcast.splat1393, <2 x double> %broadcast.splat1395)
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %index1405
  store <2 x double> %i.tp, ptr %i.tq, align 8, !tbaa !14
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %index1405
  store <2 x double> %broadcast.splat1397, ptr %i.tr, align 8, !tbaa !14
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1405
  store <2 x double> %broadcast.splat1391, ptr %i.ts, align 8, !tbaa !14
  %i.tt = add nuw nsw i64 %index1405, %i.by       ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.tt
  store <2 x double> %broadcast.splat1399, ptr %i.tu, align 8, !tbaa !14
  %i.tv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tn, <2 x double> %broadcast.splat1401, <2 x double> %broadcast.splat1397)
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.tt
  store <2 x double> %i.tv, ptr %i.tw, align 8, !tbaa !14
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.tt
  store <2 x double> %broadcast.splat1391, ptr %i.tx, align 8, !tbaa !14
  %i.ty = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tn, <2 x double> %broadcast.splat1393, <2 x double> %broadcast.splat1399)
  %i.tz = add nuw nsw i64 %index1405, %i.bz       ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.tz
  store <2 x double> %i.ty, ptr %i.ua, align 8, !tbaa !14
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.tz
  store <2 x double> %broadcast.splat1403, ptr %i.ub, align 8, !tbaa !14
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.tz
  store <2 x double> %broadcast.splat1391, ptr %i.uc, align 8, !tbaa !14
  %i.ud = add nuw nsw i64 %index1405, %i.ca       ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.ud
  store <2 x double> %broadcast.splat1395, ptr %i.ue, align 8, !tbaa !14
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %broadcast.splat1401, <2 x double> %broadcast.splat1403)
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.ud
  store <2 x double> %i.uf, ptr %i.ug, align 8, !tbaa !14
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ud
  store <2 x double> %broadcast.splat1391, ptr %i.uh, align 8, !tbaa !14
  %index.next1407 = add nuw i64 %index1405, 2     ; 2 uses
  %vec.ind.next1408 = add <2 x i32> %vec.ind1406, splat (i32 2)
  %i.ui = icmp eq i64 %index.next1407, %n.vec1389
  br i1 %i.ui, label %middle.block1409, label %vector.body1404, !llvm.loop !71

middle.block1409:                                 ; preds = %vector.body1404
  br i1 %cmp.n1410, label %._crit_edge, label %.lr.ph.preheader1697

.lr.ph.preheader1697:                             ; preds = %vector.memcheck1298, %.lr.ph.preheader, %middle.block1409
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1298 ], [ 0, %.lr.ph.preheader ], [ %n.vec1389, %middle.block1409 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1409
  %i.uj = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.11003, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %.sroa.0807.11005, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.at unwind label %.thread953.loopexit.split-lp.loopexit ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader1697, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1697 ] ; 8 uses
  %i.uk = trunc nuw nsw i64 %indvars.iv to i32
  %i.ul = uitofp nneg i32 %i.uk to double         ; 3 uses
  %i.um = fneg double %i.ul                       ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv
  store double %3, ptr %i.uo, align 8, !tbaa !14
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.uq = add nuw nsw i64 %indvars.iv, %i.by      ; 3 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uq
  %i.us = insertelement <2 x double> poison, double %i.um, i64 0
  %i.ut = insertelement <2 x double> %i.us, double %i.ul, i64 1
  %i.uu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ut, <2 x double> %i.de, <2 x double> %i.dg) ; 2 uses
  %i.uv = extractelement <2 x double> %i.uu, i64 0
  store double %i.uv, ptr %i.un, align 8, !tbaa !14
  store double %i.sj, ptr %i.up, align 8, !tbaa !14
  store double %4, ptr %i.ur, align 8, !tbaa !14
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uq
  %i.ux = extractelement <2 x double> %i.uu, i64 1
  store double %i.ux, ptr %i.uw, align 8, !tbaa !14
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uq
  store double %i.sj, ptr %i.uy, align 8, !tbaa !14
  %i.uz = add nuw nsw i64 %indvars.iv, %i.bz      ; 3 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uz
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uz
  store double %6, ptr %i.vb, align 8, !tbaa !14
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uz
  %i.vd = add nuw nsw i64 %indvars.iv, %i.ca      ; 3 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vd
  %i.vf = insertelement <2 x double> poison, double %i.ul, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.um, i64 1
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vg, <2 x double> %i.de, <2 x double> %i.di) ; 2 uses
  %i.vi = extractelement <2 x double> %i.vh, i64 0
  store double %i.vi, ptr %i.va, align 8, !tbaa !14
  store double %i.sj, ptr %i.vc, align 8, !tbaa !14
  store double %7, ptr %i.ve, align 8, !tbaa !14
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vd
  %i.vk = extractelement <2 x double> %i.vh, i64 1
  store double %i.vk, ptr %i.vj, align 8, !tbaa !14
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vd
  store double %i.sj, ptr %i.vl, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.at:                                            ; preds = %._crit_edge
  br i1 %or.cond8, label %bb.au, label %.thread883

bb.au:                                            ; preds = %bb.at
  br i1 %i.k, label %.thread883, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vm = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.av, %.new
  %indvars.iv.i545 = phi i64 [ %indvars.iv.next.i548.3, %.new ], [ 1, %bb.av ] ; 5 uses
  %.0911.i546 = phi double [ %.1.i547.3, %.new ], [ %i.vm, %bb.av ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.av ]
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !14 ; 2 uses
  %i.vp = fcmp olt double %i.vo, %.0911.i546
  %.1.i547 = select i1 %i.vp, double %i.vo, double %.0911.i546 ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !14 ; 2 uses
  %i.vt = fcmp olt double %i.vs, %.1.i547
  %.1.i547.1 = select i1 %i.vt, double %i.vs, double %.1.i547 ; 2 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !14 ; 2 uses
  %i.vx = fcmp olt double %i.vw, %.1.i547.1
  %.1.i547.2 = select i1 %i.vx, double %i.vw, double %.1.i547.1 ; 2 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !14 ; 2 uses
  %i.wb = fcmp olt double %i.wa, %.1.i547.2
  %.1.i547.3 = select i1 %i.wb, double %i.wa, double %.1.i547.2 ; 3 uses
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i545, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.av
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.av ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.vm, %bb.av ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1712)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.aw ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aw ]
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545.epil
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !14 ; 2 uses
  %i.we = fcmp olt double %i.wd, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.we, double %i.wd, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.aw, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.aw, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %i.wf = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.wg = fcmp olt double %.1.i547.lcssa, %i.wf
  %.sroa.speculated751 = select i1 %i.wg, double %.1.i547.lcssa, double %i.wf
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.wh = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dk, label %.epil.preheader1713, label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550, %_ZL10simple_minPKdi.exit550.new
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ], [ 1, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %.01316.i554 = phi double [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ], [ %i.wh, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %niter1720 = phi i64 [ %niter1720.next.1, %_ZL10simple_minPKdi.exit550.new ], [ 0, %_ZL10simple_minPKdi.exit550 ]
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !14 ; 3 uses
  %i.wk = fcmp ogt double %i.wj, %.01316.i554
  %i.wl = fcmp oeq double %.01316.i554, +inf
end_hunk_2

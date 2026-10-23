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
  %i.bj = zext nneg i32 %i.o to i64               ; 2 uses
  %13 = zext nneg i32 %i.bh to i64                ; 3 uses
  %i.bk = zext nneg i32 %i.bi to i64              ; 3 uses
  %14 = add nuw nsw i32 %11, 1
  %wide.trip.count = zext nneg i32 %14 to i64     ; 7 uses
  %min.iters.check = icmp ult i32 %11, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bl = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bm = shl nuw nsw i64 %13, 3                  ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bk, 3                ; 2 uses
  %i.bo = sub nsw i64 %i.bl, %i.bm
  %diff.check563 = icmp ugt i64 %i.bo, -16
  %i.bp = sub nsw i64 %i.bl, %i.bn
  %diff.check565 = icmp ugt i64 %i.bp, -16
  %conflict.rdx566 = or i1 %diff.check563, %diff.check565
  %i.bq = sub nsw i64 %i.bm, %i.bn
  %diff.check567 = icmp ugt i64 %i.bq, -16
  %conflict.rdx568 = or i1 %conflict.rdx566, %diff.check567
  br i1 %conflict.rdx568, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 32766        ; 3 uses
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
  %i.br = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.bs = fneg <2 x double> %i.br                 ; 2 uses
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %broadcast.splat570, <2 x double> %broadcast.splat572)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  store <2 x double> %broadcast.splat574, ptr %i.bv, align 8, !tbaa !14
  %i.bw = add nuw nsw i64 %index, %i.bj           ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bw
  store <2 x double> %broadcast.splat576, ptr %i.bx, align 8, !tbaa !14
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat574)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw
  store <2 x double> %i.by, ptr %i.bz, align 8, !tbaa !14
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %broadcast.splat570, <2 x double> %broadcast.splat576)
  %i.cb = add nuw nsw i64 %index, %13             ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cb
  store <2 x double> %i.ca, ptr %i.cc, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cb
  store <2 x double> %broadcast.splat578, ptr %i.cd, align 8, !tbaa !14
  %i.ce = add nuw nsw i64 %index, %i.bk           ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ce
  store <2 x double> %broadcast.splat572, ptr %i.cf, align 8, !tbaa !14
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat578)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ce
  store <2 x double> %i.cg, ptr %i.ch, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cj = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %.0229529, i64 1 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %6, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %3, i64 1
  %i.cn = insertelement <2 x double> poison, double %4, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %5, i64 1
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cp = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.s, i64 noundef 8, i64 noundef %i.q, ptr noundef nonnull %i.v, i64 noundef 8, i64 noundef %i.q, ptr noundef null, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.ae unwind label %.thread469 ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv to i32
  %i.cr = uitofp nneg i32 %i.cq to double         ; 3 uses
  %i.cs = fneg double %i.cr                       ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  store double %3, ptr %i.cu, align 8, !tbaa !14
  %i.cv = add nuw nsw i64 %indvars.iv, %i.bj      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cv
  store double %4, ptr %i.cw, align 8, !tbaa !14
  %i.cx = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cr, i64 1
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.ck, <2 x double> %i.cm) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  store double %i.da, ptr %i.ct, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cv
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  store double %i.dc, ptr %i.db, align 8, !tbaa !14
  %i.dd = add nuw nsw i64 %indvars.iv, %13        ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dd
  store double %5, ptr %i.df, align 8, !tbaa !14
  %i.dg = add nuw nsw i64 %indvars.iv, %i.bk      ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dg
  %i.di = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.cs, i64 1
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.ck, <2 x double> %i.co) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  store double %i.dl, ptr %i.de, align 8, !tbaa !14
  store double %6, ptr %i.dh, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dg
  %i.dn = extractelement <2 x double> %i.dk, i64 1
  store double %i.dn, ptr %i.dm, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26

bb.ae:                                            ; preds = %._crit_edge
  %.not = xor i1 %i.k, true
  %or.cond8 = or i1 %.1, %.not                    ; 2 uses
  br i1 %or.cond8, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  br i1 %i.k, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = load double, ptr %i.s, align 8, !tbaa !14 ; 3 uses
  %i.dp = add nsw i64 %i.q, -2                    ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 2
  br i1 %i.dq, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ag
  %i.dr = add nsw i64 %i.q, -8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.new
  %indvars.iv.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.3, %bb.ah ] ; 5 uses
  %.0911.i = phi double [ %i.do, %.new ], [ %.1.i.3, %bb.ah ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ah ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !14 ; 2 uses
  %i.du = fcmp olt double %i.dt, %.0911.i
  %.1.i = select i1 %i.du, double %i.dt, double %.0911.i ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  %i.dy = fcmp olt double %i.dx, %.1.i
  %.1.i.1 = select i1 %i.dy, double %i.dx, double %.1.i ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.ec = fcmp olt double %i.eb, %.1.i.1
  %.1.i.2 = select i1 %i.ec, double %i.eb, double %.1.i.1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %i.eg = fcmp olt double %i.ef, %.1.i.2
  %.1.i.3 = select i1 %i.eg, double %i.ef, double %.1.i.2 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, %i.dr
  br i1 %niter.ncmp.3, label %.epil.preheader, label %bb.ah, !llvm.loop !0

.epil.preheader:                                  ; preds = %bb.ah, %bb.ag
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.ag ], [ %indvars.iv.next.i.3, %bb.ah ]
  %.0911.i.epil.init = phi double [ %i.do, %bb.ag ], [ %.1.i.3, %bb.ah ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ai ] ; 2 uses
  %.0911.i.epil = phi double [ %.0911.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.ai ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ai ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.epil
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %i.ej = fcmp olt double %i.ei, %.0911.i.epil
  %.1.i.epil = select i1 %i.ej, double %i.ei, double %.0911.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit, label %bb.ai, !llvm.loop !27

_ZL10simple_minPKdi.exit:                         ; preds = %bb.ai
  store double %.1.i.epil, ptr %7, align 8, !tbaa !14
  %i.ek = add nsw i64 %i.q, -4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %_ZL10simple_minPKdi.exit
  %indvars.iv.i275 = phi i64 [ 1, %_ZL10simple_minPKdi.exit ], [ %indvars.iv.next.i277.1, %bb.aj ] ; 3 uses
  %.01316.i = phi double [ %i.do, %_ZL10simple_minPKdi.exit ], [ %.1.i276.1, %bb.aj ] ; 3 uses
  %niter612 = phi i64 [ 0, %_ZL10simple_minPKdi.exit ], [ %niter612.next.1, %bb.aj ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i275
  %i.em = load double, ptr %i.el, align 8, !tbaa !14 ; 3 uses
  %i.en = fcmp ogt double %i.em, %.01316.i
  %i.eo = fcmp oeq double %.01316.i, +inf
  %or.cond.i = or i1 %i.eo, %i.en
  %i.ep = fcmp une double %i.em, +inf
  %or.cond15.i = and i1 %i.ep, %or.cond.i
  %.1.i276 = select i1 %or.cond15.i, double %i.em, double %.01316.i ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i275
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !14 ; 3 uses
  %i.et = fcmp ogt double %i.es, %.1.i276
  %i.eu = fcmp oeq double %.1.i276, +inf
  %or.cond.i.1 = or i1 %i.eu, %i.et
  %i.ev = fcmp une double %i.es, +inf
  %or.cond15.i.1 = and i1 %i.ev, %or.cond.i.1
  %.1.i276.1 = select i1 %or.cond15.i.1, double %i.es, double %.1.i276 ; 4 uses
  %indvars.iv.next.i277.1 = add nuw nsw i64 %indvars.iv.i275, 2 ; 2 uses
  %niter612.next.1 = add nuw i64 %niter612, 2
  %niter612.ncmp.1 = icmp eq i64 %niter612, %i.ek
  br i1 %niter612.ncmp.1, label %_ZL10simple_maxPKdi.exit.epilog-lcssa, label %bb.aj, !llvm.loop !1

_ZL10simple_maxPKdi.exit.epilog-lcssa:            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i277.1
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14 ; 3 uses
  %i.ey = fcmp ogt double %i.ex, %.1.i276.1
  %i.ez = fcmp oeq double %.1.i276.1, +inf
  %or.cond.i.epil = or i1 %i.ez, %i.ey
  %i.fa = fcmp une double %i.ex, +inf
  %or.cond15.i.epil = and i1 %i.fa, %or.cond.i.epil
  %.1.i276.epil = select i1 %or.cond15.i.epil, double %i.ex, double %.1.i276.1
  store double %.1.i276.epil, ptr %9, align 8, !tbaa !14
  %i.fb = load double, ptr %i.v, align 8, !tbaa !14 ; 3 uses
  %i.fc = icmp eq i64 %i.dp, 2
  br i1 %i.fc, label %.epil.preheader613, label %_ZL10simple_maxPKdi.exit.new

_ZL10simple_maxPKdi.exit.new:                     ; preds = %_ZL10simple_maxPKdi.exit.epilog-lcssa
  %i.fd = add nsw i64 %i.q, -8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_ZL10simple_maxPKdi.exit.new
  %indvars.iv.i280 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit.new ], [ %indvars.iv.next.i283.3, %bb.ak ] ; 5 uses
  %.0911.i281 = phi double [ %i.fb, %_ZL10simple_maxPKdi.exit.new ], [ %.1.i282.3, %bb.ak ] ; 2 uses
  %niter620 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit.new ], [ %niter620.next.3, %bb.ak ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i280
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !14 ; 2 uses
  %i.fg = fcmp olt double %i.ff, %.0911.i281
  %.1.i282 = select i1 %i.fg, double %i.ff, double %.0911.i281 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i280
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !14 ; 2 uses
  %i.fk = fcmp olt double %i.fj, %.1.i282
  %.1.i282.1 = select i1 %i.fk, double %i.fj, double %.1.i282 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i280
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !14 ; 2 uses
  %i.fo = fcmp olt double %i.fn, %.1.i282.1
  %.1.i282.2 = select i1 %i.fo, double %i.fn, double %.1.i282.1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i280
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !14 ; 2 uses
  %i.fs = fcmp olt double %i.fr, %.1.i282.2
  %.1.i282.3 = select i1 %i.fs, double %i.fr, double %.1.i282.2 ; 2 uses
  %indvars.iv.next.i283.3 = add nuw nsw i64 %indvars.iv.i280, 4 ; 2 uses
  %niter620.next.3 = add nuw i64 %niter620, 4
  %niter620.ncmp.3 = icmp eq i64 %niter620, %i.fd
  br i1 %niter620.ncmp.3, label %.epil.preheader613, label %bb.ak, !llvm.loop !0

.epil.preheader613:                               ; preds = %bb.ak, %_ZL10simple_maxPKdi.exit.epilog-lcssa
  %indvars.iv.i280.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit.epilog-lcssa ], [ %indvars.iv.next.i283.3, %bb.ak ]
  %.0911.i281.epil.init = phi double [ %i.fb, %_ZL10simple_maxPKdi.exit.epilog-lcssa ], [ %.1.i282.3, %bb.ak ]
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader613
  %indvars.iv.i280.epil = phi i64 [ %indvars.iv.i280.epil.init, %.epil.preheader613 ], [ %indvars.iv.next.i283.epil, %bb.al ] ; 2 uses
  %.0911.i281.epil = phi double [ %.0911.i281.epil.init, %.epil.preheader613 ], [ %.1.i282.epil, %bb.al ] ; 2 uses
  %epil.iter615 = phi i64 [ 0, %.epil.preheader613 ], [ %epil.iter615.next, %bb.al ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i280.epil
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !14 ; 2 uses
  %i.fv = fcmp olt double %i.fu, %.0911.i281.epil
  %.1.i282.epil = select i1 %i.fv, double %i.fu, double %.0911.i281.epil ; 2 uses
  %indvars.iv.next.i283.epil = add nuw nsw i64 %indvars.iv.i280.epil, 1
  %epil.iter615.next = add i64 %epil.iter615, 1   ; 2 uses
  %epil.iter615.cmp.not = icmp eq i64 %epil.iter615.next, 3
  br i1 %epil.iter615.cmp.not, label %_ZL10simple_minPKdi.exit285, label %bb.al, !llvm.loop !28

_ZL10simple_minPKdi.exit285:                      ; preds = %bb.al
  store double %.1.i282.epil, ptr %8, align 8, !tbaa !14
  %i.fw = add nsw i64 %i.q, -4
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %_ZL10simple_minPKdi.exit285
  %indvars.iv.i287 = phi i64 [ 1, %_ZL10simple_minPKdi.exit285 ], [ %indvars.iv.next.i292.1, %bb.am ] ; 3 uses
  %.01316.i288 = phi double [ %i.fb, %_ZL10simple_minPKdi.exit285 ], [ %.1.i291.1, %bb.am ] ; 3 uses
  %niter628 = phi i64 [ 0, %_ZL10simple_minPKdi.exit285 ], [ %niter628.next.1, %bb.am ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i287
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !14 ; 3 uses
  %i.fz = fcmp ogt double %i.fy, %.01316.i288
  %i.ga = fcmp oeq double %.01316.i288, +inf
  %or.cond.i289 = or i1 %i.ga, %i.fz
  %i.gb = fcmp une double %i.fy, +inf
  %or.cond15.i290 = and i1 %i.gb, %or.cond.i289
  %.1.i291 = select i1 %or.cond15.i290, double %i.fy, double %.01316.i288 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i287
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !14 ; 3 uses
  %i.gf = fcmp ogt double %i.ge, %.1.i291
  %i.gg = fcmp oeq double %.1.i291, +inf
  %or.cond.i289.1 = or i1 %i.gg, %i.gf
  %i.gh = fcmp une double %i.ge, +inf
  %or.cond15.i290.1 = and i1 %i.gh, %or.cond.i289.1
  %.1.i291.1 = select i1 %or.cond15.i290.1, double %i.ge, double %.1.i291 ; 4 uses
  %indvars.iv.next.i292.1 = add nuw nsw i64 %indvars.iv.i287, 2 ; 2 uses
  %niter628.next.1 = add nuw i64 %niter628, 2
  %niter628.ncmp.1 = icmp eq i64 %niter628, %i.fw
  br i1 %niter628.ncmp.1, label %.thread418.epilog-lcssa, label %bb.am, !llvm.loop !1

.thread418.epilog-lcssa:                          ; preds = %bb.am
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i292.1
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !14 ; 3 uses
  %i.gk = fcmp ogt double %i.gj, %.1.i291.1
  %i.gl = fcmp oeq double %.1.i291.1, +inf
  %or.cond.i289.epil = or i1 %i.gl, %i.gk
  %i.gm = fcmp une double %i.gj, +inf
  %or.cond15.i290.epil = and i1 %i.gm, %or.cond.i289.epil
  %.1.i291.epil = select i1 %or.cond15.i290.epil, double %i.gj, double %.1.i291.1
  store double %.1.i291.epil, ptr %10, align 8, !tbaa !14
  br label %.preheader492

.thread:                                          ; preds = %bb.ae, %bb.af
  %.sroa.34.0417 = phi ptr [ %i.aj, %bb.af ], [ %i.u, %bb.ae ] ; 4 uses
  %.sroa.0.0414 = phi ptr [ %i.v, %bb.af ], [ %i.s, %bb.ae ] ; 23 uses
  %.sroa.32.1413 = phi ptr [ %i.u, %bb.af ], [ %i.aj, %bb.ae ] ; 4 uses
  %.sroa.0381.1411 = phi ptr [ %i.s, %bb.af ], [ %i.v, %bb.ae ] ; 6 uses
  br i1 %.1227, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.thread
  store double -1.800000e+02, ptr %7, align 8, !tbaa !14
  store double 1.800000e+02, ptr %9, align 8, !tbaa !14
  %i.gn = load double, ptr %.sroa.0.0414, align 8, !tbaa !14 ; 2 uses
  %i.go = icmp eq i32 %11, 0
  br i1 %i.go, label %.epil.preheader659, label %.new658

.new658:                                          ; preds = %bb.an
  %i.gp = add nsw i64 %i.q, -8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.new658
  %indvars.iv.i296 = phi i64 [ 1, %.new658 ], [ %indvars.iv.next.i299.3, %bb.ao ] ; 5 uses
  %.0911.i297 = phi double [ %i.gn, %.new658 ], [ %.1.i298.3, %bb.ao ] ; 2 uses
  %niter666 = phi i64 [ 0, %.new658 ], [ %niter666.next.3, %bb.ao ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i296
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !14 ; 2 uses
  %i.gs = fcmp olt double %i.gr, %.0911.i297
  %.1.i298 = select i1 %i.gs, double %i.gr, double %.0911.i297 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i296
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !14 ; 2 uses
  %i.gw = fcmp olt double %i.gv, %.1.i298
  %.1.i298.1 = select i1 %i.gw, double %i.gv, double %.1.i298 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i296
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !14 ; 2 uses
  %i.ha = fcmp olt double %i.gz, %.1.i298.1
  %.1.i298.2 = select i1 %i.ha, double %i.gz, double %.1.i298.1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i296
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !14 ; 2 uses
  %i.he = fcmp olt double %i.hd, %.1.i298.2
  %.1.i298.3 = select i1 %i.he, double %i.hd, double %.1.i298.2 ; 2 uses
  %indvars.iv.next.i299.3 = add nuw nsw i64 %indvars.iv.i296, 4 ; 2 uses
  %niter666.next.3 = add nuw i64 %niter666, 4
  %niter666.ncmp.3 = icmp eq i64 %niter666, %i.gp
  br i1 %niter666.ncmp.3, label %.epil.preheader659, label %bb.ao, !llvm.loop !0

.epil.preheader659:                               ; preds = %bb.ao, %bb.an
  %indvars.iv.i296.epil.init = phi i64 [ 1, %bb.an ], [ %indvars.iv.next.i299.3, %bb.ao ]
  %.0911.i297.epil.init = phi double [ %i.gn, %bb.an ], [ %.1.i298.3, %bb.ao ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader659
  %indvars.iv.i296.epil = phi i64 [ %indvars.iv.i296.epil.init, %.epil.preheader659 ], [ %indvars.iv.next.i299.epil, %bb.ap ] ; 2 uses
  %.0911.i297.epil = phi double [ %.0911.i297.epil.init, %.epil.preheader659 ], [ %.1.i298.epil, %bb.ap ] ; 2 uses
  %epil.iter661 = phi i64 [ 0, %.epil.preheader659 ], [ %epil.iter661.next, %bb.ap ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i296.epil
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !14 ; 2 uses
  %i.hh = fcmp olt double %i.hg, %.0911.i297.epil
  %.1.i298.epil = select i1 %i.hh, double %i.hg, double %.0911.i297.epil ; 2 uses
  %indvars.iv.next.i299.epil = add nuw nsw i64 %indvars.iv.i296.epil, 1
  %epil.iter661.next = add i64 %epil.iter661, 1   ; 2 uses
  %epil.iter661.cmp.not = icmp eq i64 %epil.iter661.next, 3
  br i1 %epil.iter661.cmp.not, label %_ZL10simple_minPKdi.exit301, label %bb.ap, !llvm.loop !29

_ZL10simple_minPKdi.exit301:                      ; preds = %bb.ap
  store double %.1.i298.epil, ptr %8, align 8, !tbaa !14
  br label %_ZL10simple_maxPKdi.exit310

bb.aq:                                            ; preds = %.thread
  br i1 %.1225, label %.new648, label %bb.as

.new648:                                          ; preds = %bb.aq
  store double -1.800000e+02, ptr %7, align 8, !tbaa !14
  store double 1.800000e+02, ptr %9, align 8, !tbaa !14
  store double -9.000000e+01, ptr %8, align 8, !tbaa !14
  %i.hi = load double, ptr %.sroa.0.0414, align 8, !tbaa !14
  %i.hj = add nsw i64 %i.q, -4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.new648
  %indvars.iv.i303 = phi i64 [ 1, %.new648 ], [ %indvars.iv.next.i308.1, %bb.ar ] ; 3 uses
  %.01316.i304 = phi double [ %i.hi, %.new648 ], [ %.1.i307.1, %bb.ar ] ; 3 uses
  %niter656 = phi i64 [ 0, %.new648 ], [ %niter656.next.1, %bb.ar ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i303
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !14 ; 3 uses
  %i.hm = fcmp ogt double %i.hl, %.01316.i304
  %i.hn = fcmp oeq double %.01316.i304, +inf
  %or.cond.i305 = or i1 %i.hn, %i.hm
  %i.ho = fcmp une double %i.hl, +inf
  %or.cond15.i306 = and i1 %i.ho, %or.cond.i305
  %.1.i307 = select i1 %or.cond15.i306, double %i.hl, double %.01316.i304 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i303
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !14 ; 3 uses
  %i.hs = fcmp ogt double %i.hr, %.1.i307
  %i.ht = fcmp oeq double %.1.i307, +inf
  %or.cond.i305.1 = or i1 %i.ht, %i.hs
  %i.hu = fcmp une double %i.hr, +inf
  %or.cond15.i306.1 = and i1 %i.hu, %or.cond.i305.1
  %.1.i307.1 = select i1 %or.cond15.i306.1, double %i.hr, double %.1.i307 ; 4 uses
  %indvars.iv.next.i308.1 = add nuw nsw i64 %indvars.iv.i303, 2 ; 2 uses
  %niter656.next.1 = add nuw i64 %niter656, 2
  %niter656.ncmp.1 = icmp eq i64 %niter656, %i.hj
  br i1 %niter656.ncmp.1, label %_ZL10simple_maxPKdi.exit310.loopexit.epilog-lcssa, label %bb.ar, !llvm.loop !1

bb.as:                                            ; preds = %bb.aq
  %i.hv = call fastcc noundef double @_ZL16antimeridian_minPKdi(ptr noundef nonnull %.sroa.0381.1411, i32 noundef %i.p)
  store double %i.hv, ptr %7, align 8, !tbaa !14
  %i.hw = call fastcc noundef double @_ZL16antimeridian_maxPKdi(ptr noundef nonnull %.sroa.0381.1411, i32 noundef %i.p) ; 2 uses
  store double %i.hw, ptr %9, align 8, !tbaa !14
  %i.hx = load double, ptr %7, align 8, !tbaa !14
  %i.hy = load double, ptr %.sroa.0.0414, align 8, !tbaa !14 ; 3 uses
  %i.hz = icmp eq i32 %11, 0
  br i1 %i.hz, label %.epil.preheader631, label %.new630

.new630:                                          ; preds = %bb.as
  %i.ia = add nsw i64 %i.q, -8
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.new630
  %indvars.iv.i312 = phi i64 [ 1, %.new630 ], [ %indvars.iv.next.i315.3, %bb.at ] ; 5 uses
  %.0911.i313 = phi double [ %i.hy, %.new630 ], [ %.1.i314.3, %bb.at ] ; 2 uses
  %niter638 = phi i64 [ 0, %.new630 ], [ %niter638.next.3, %bb.at ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i312
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !14 ; 2 uses
  %i.id = fcmp olt double %i.ic, %.0911.i313
  %.1.i314 = select i1 %i.id, double %i.ic, double %.0911.i313 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i312
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load double, ptr %i.if, align 8, !tbaa !14 ; 2 uses
  %i.ih = fcmp olt double %i.ig, %.1.i314
  %.1.i314.1 = select i1 %i.ih, double %i.ig, double %.1.i314 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i312
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !14 ; 2 uses
  %i.il = fcmp olt double %i.ik, %.1.i314.1
  %.1.i314.2 = select i1 %i.il, double %i.ik, double %.1.i314.1 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i312
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load double, ptr %i.in, align 8, !tbaa !14 ; 2 uses
  %i.ip = fcmp olt double %i.io, %.1.i314.2
  %.1.i314.3 = select i1 %i.ip, double %i.io, double %.1.i314.2 ; 2 uses
  %indvars.iv.next.i315.3 = add nuw nsw i64 %indvars.iv.i312, 4 ; 2 uses
  %niter638.next.3 = add nuw i64 %niter638, 4
  %niter638.ncmp.3 = icmp eq i64 %niter638, %i.ia
  br i1 %niter638.ncmp.3, label %.epil.preheader631, label %bb.at, !llvm.loop !0

.epil.preheader631:                               ; preds = %bb.at, %bb.as
  %indvars.iv.i312.epil.init = phi i64 [ 1, %bb.as ], [ %indvars.iv.next.i315.3, %bb.at ]
  %.0911.i313.epil.init = phi double [ %i.hy, %bb.as ], [ %.1.i314.3, %bb.at ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader631
  %indvars.iv.i312.epil = phi i64 [ %indvars.iv.i312.epil.init, %.epil.preheader631 ], [ %indvars.iv.next.i315.epil, %bb.au ] ; 2 uses
  %.0911.i313.epil = phi double [ %.0911.i313.epil.init, %.epil.preheader631 ], [ %.1.i314.epil, %bb.au ] ; 2 uses
  %epil.iter633 = phi i64 [ 0, %.epil.preheader631 ], [ %epil.iter633.next, %bb.au ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i312.epil
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !14 ; 2 uses
  %i.is = fcmp olt double %i.ir, %.0911.i313.epil
  %.1.i314.epil = select i1 %i.is, double %i.ir, double %.0911.i313.epil ; 2 uses
  %indvars.iv.next.i315.epil = add nuw nsw i64 %indvars.iv.i312.epil, 1
  %epil.iter633.next = add i64 %epil.iter633, 1   ; 2 uses
  %epil.iter633.cmp.not = icmp eq i64 %epil.iter633.next, 3
  br i1 %epil.iter633.cmp.not, label %_ZL10simple_minPKdi.exit317, label %bb.au, !llvm.loop !30

_ZL10simple_minPKdi.exit317:                      ; preds = %bb.au
  store double %.1.i314.epil, ptr %8, align 8, !tbaa !14
  %i.it = add nsw i64 %i.q, -4
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %_ZL10simple_minPKdi.exit317
  %indvars.iv.i319 = phi i64 [ 1, %_ZL10simple_minPKdi.exit317 ], [ %indvars.iv.next.i324.1, %bb.av ] ; 3 uses
  %.01316.i320 = phi double [ %i.hy, %_ZL10simple_minPKdi.exit317 ], [ %.1.i323.1, %bb.av ] ; 3 uses
  %niter646 = phi i64 [ 0, %_ZL10simple_minPKdi.exit317 ], [ %niter646.next.1, %bb.av ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i319
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !14 ; 3 uses
  %i.iw = fcmp ogt double %i.iv, %.01316.i320
  %i.ix = fcmp oeq double %.01316.i320, +inf
  %or.cond.i321 = or i1 %i.ix, %i.iw
  %i.iy = fcmp une double %i.iv, +inf
  %or.cond15.i322 = and i1 %i.iy, %or.cond.i321
  %.1.i323 = select i1 %or.cond15.i322, double %i.iv, double %.01316.i320 ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.i319
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !14 ; 3 uses
  %i.jc = fcmp ogt double %i.jb, %.1.i323
  %i.jd = fcmp oeq double %.1.i323, +inf
  %or.cond.i321.1 = or i1 %i.jd, %i.jc
  %i.je = fcmp une double %i.jb, +inf
  %or.cond15.i322.1 = and i1 %i.je, %or.cond.i321.1
  %.1.i323.1 = select i1 %or.cond15.i322.1, double %i.jb, double %.1.i323 ; 4 uses
  %indvars.iv.next.i324.1 = add nuw nsw i64 %indvars.iv.i319, 2 ; 2 uses
  %niter646.next.1 = add nuw i64 %niter646, 2
  %niter646.ncmp.1 = icmp eq i64 %niter646, %i.it
  br i1 %niter646.ncmp.1, label %_ZL10simple_maxPKdi.exit326.epilog-lcssa, label %bb.av, !llvm.loop !1

_ZL10simple_maxPKdi.exit326.epilog-lcssa:         ; preds = %bb.av
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.next.i324.1
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !14 ; 3 uses
  %i.jh = fcmp ogt double %i.jg, %.1.i323.1
  %i.ji = fcmp oeq double %.1.i323.1, +inf
  %or.cond.i321.epil = or i1 %i.ji, %i.jh
  %i.jj = fcmp une double %i.jg, +inf
  %or.cond15.i322.epil = and i1 %i.jj, %or.cond.i321.epil
  %.1.i323.epil = select i1 %or.cond15.i322.epil, double %i.jg, double %.1.i323.1
  %i.jk = fcmp ogt double %i.hx, %i.hw
  br label %_ZL10simple_maxPKdi.exit310

_ZL10simple_maxPKdi.exit310.loopexit.epilog-lcssa: ; preds = %bb.ar
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0414, i64 %indvars.iv.next.i308.1
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !14 ; 3 uses
  %i.jn = fcmp ogt double %i.jm, %.1.i307.1
  %i.jo = fcmp oeq double %.1.i307.1, +inf
  %or.cond.i305.epil = or i1 %i.jo, %i.jn
  %i.jp = fcmp une double %i.jm, +inf
  %or.cond15.i306.epil = and i1 %i.jp, %or.cond.i305.epil
  %.1.i307.epil = select i1 %or.cond15.i306.epil, double %i.jm, double %.1.i307.1
  br label %_ZL10simple_maxPKdi.exit310

_ZL10simple_maxPKdi.exit310:                      ; preds = %_ZL10simple_maxPKdi.exit310.loopexit.epilog-lcssa, %_ZL10simple_minPKdi.exit301, %_ZL10simple_maxPKdi.exit326.epilog-lcssa
  %.sink550 = phi double [ 9.000000e+01, %_ZL10simple_minPKdi.exit301 ], [ %.1.i323.epil, %_ZL10simple_maxPKdi.exit326.epilog-lcssa ], [ %.1.i307.epil, %_ZL10simple_maxPKdi.exit310.loopexit.epilog-lcssa ]
  %.0219 = phi i1 [ false, %_ZL10simple_minPKdi.exit301 ], [ %i.jk, %_ZL10simple_maxPKdi.exit326.epilog-lcssa ], [ false, %_ZL10simple_maxPKdi.exit310.loopexit.epilog-lcssa ] ; 2 uses
  store double %.sink550, ptr %10, align 8, !tbaa !14
  br i1 %or.cond8, label %bb.aw, label %.split

.split:                                           ; preds = %_ZL10simple_maxPKdi.exit310
  %i.jq = load double, ptr %7, align 8, !tbaa !14
  %i.jr = load double, ptr %8, align 8, !tbaa !14
  store double %i.jr, ptr %7, align 8, !tbaa !14
  store double %i.jq, ptr %8, align 8, !tbaa !14
  %i.js = load double, ptr %9, align 8, !tbaa !14
  %i.jt = load double, ptr %10, align 8, !tbaa !14
  store double %i.jt, ptr %9, align 8, !tbaa !14
  store double %i.js, ptr %10, align 8, !tbaa !14
  br i1 %.0219, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %.preheader492

bb.aw:                                            ; preds = %_ZL10simple_maxPKdi.exit310
  br i1 %.0219, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %.preheader492

.preheader492:                                    ; preds = %bb.aw, %.split, %.thread418.epilog-lcssa
  %.sroa.34.0416424432.ph = phi ptr [ %.sroa.34.0417, %.split ], [ %i.aj, %.thread418.epilog-lcssa ], [ %.sroa.34.0417, %bb.aw ] ; 3 uses
  %.sroa.0.0415425431.ph = phi ptr [ %.sroa.0.0414, %.split ], [ %i.v, %.thread418.epilog-lcssa ], [ %.sroa.0.0414, %bb.aw ] ; 10 uses
  %.sroa.32.1412426430.ph = phi ptr [ %.sroa.32.1413, %.split ], [ %i.u, %.thread418.epilog-lcssa ], [ %.sroa.32.1413, %bb.aw ] ; 3 uses
  %.sroa.0381.1410427429.ph = phi ptr [ %.sroa.0381.1411, %.split ], [ %i.s, %.thread418.epilog-lcssa ], [ %.sroa.0381.1411, %bb.aw ] ; 10 uses
  %i.ju = icmp samesign ugt i32 %11, 1
  br i1 %i.ju, label %.preheader491.lr.ph, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread

.preheader491.lr.ph:                              ; preds = %.preheader492
  %.sroa.0381.1410427429.ph581 = ptrtoaddr ptr %.sroa.0381.1410427429.ph to i64
  %.sroa.0.0415425431.ph580 = ptrtoaddr ptr %.sroa.0.0415425431.ph to i64
  %i.jv = zext nneg i32 %i.o to i64               ; 4 uses
  %i.jw = zext nneg i32 %11 to i64
  %min.iters.check584 = icmp eq i32 %11, 2
  %i.jx = sub i64 %.sroa.0381.1410427429.ph581, %.sroa.0.0415425431.ph580
  %diff.check582 = icmp ugt i64 %i.jx, -32
  %or.cond601 = or i1 %min.iters.check584, %diff.check582
  %n.vec586 = and i64 %wide.trip.count, 32764     ; 3 uses
  %broadcast.splatinsert589 = insertelement <2 x double> poison, double %.0229529, i64 0
  %broadcast.splat590 = shufflevector <2 x double> %broadcast.splatinsert589, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert591 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat592 = shufflevector <2 x double> %broadcast.splatinsert591, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n599 = icmp eq i64 %n.vec586, %wide.trip.count
  %xtraiter667 = and i64 %wide.trip.count, 1
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br label %.lr.ph497

.lr.ph497:                                        ; preds = %._crit_edge502, %.preheader491.lr.ph
  %.0218503 = phi i32 [ 1, %.preheader491.lr.ph ], [ %i.la, %._crit_edge502 ] ; 2 uses
  %i.jy = uitofp nneg i32 %.0218503 to double
  %i.jz = call double @llvm.fmuladd.f64(double %i.jy, double %i.bg, double %4) ; 4 uses
  br i1 %or.cond601, label %scalar.ph583.preheader, label %vector.ph585

vector.ph585:                                     ; preds = %.lr.ph497
  %broadcast.splatinsert587 = insertelement <2 x double> poison, double %i.jz, i64 0
  %broadcast.splat588 = shufflevector <2 x double> %broadcast.splatinsert587, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph585
  %index594 = phi i64 [ 0, %vector.ph585 ], [ %index.next596, %vector.body593 ] ; 3 uses
  %vec.ind595 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph585 ], [ %vec.ind.next597, %vector.body593 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind595, splat (i32 2)
  %i.ka = uitofp nneg <2 x i32> %vec.ind595 to <2 x double>
  %i.kb = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ka, <2 x double> %broadcast.splat590, <2 x double> %broadcast.splat592)
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %broadcast.splat590, <2 x double> %broadcast.splat592)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1410427429.ph, i64 %index594 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store <2 x double> %i.kc, ptr %i.ke, align 8, !tbaa !14
  store <2 x double> %i.kd, ptr %i.kf, align 8, !tbaa !14
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0415425431.ph, i64 %index594 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <2 x double> %broadcast.splat588, ptr %i.kg, align 8, !tbaa !14
  store <2 x double> %broadcast.splat588, ptr %i.kh, align 8, !tbaa !14
  %index.next596 = add nuw i64 %index594, 4       ; 2 uses
  %vec.ind.next597 = add <2 x i32> %vec.ind595, splat (i32 4)
  %i.ki = icmp eq i64 %index.next596, %n.vec586
  br i1 %i.ki, label %middle.block598, label %vector.body593, !llvm.loop !31

middle.block598:                                  ; preds = %vector.body593
  br i1 %cmp.n599, label %._crit_edge498, label %scalar.ph583.preheader

scalar.ph583.preheader:                           ; preds = %.lr.ph497, %middle.block598
  %indvars.iv505.ph = phi i64 [ 0, %.lr.ph497 ], [ %n.vec586, %middle.block598 ] ; 6 uses
  br i1 %lcmp.mod668.not, label %scalar.ph583.prol.loopexit, label %scalar.ph583.prol

scalar.ph583.prol:                                ; preds = %scalar.ph583.preheader
  %i.kj = trunc nuw nsw i64 %indvars.iv505.ph to i32
  %i.kk = uitofp nneg i32 %i.kj to double
  %i.kl = call double @llvm.fmuladd.f64(double %i.kk, double %.0229529, double %3)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1410427429.ph, i64 %indvars.iv505.ph
  store double %i.kl, ptr %i.km, align 8, !tbaa !14
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0415425431.ph, i64 %indvars.iv505.ph
  store double %i.jz, ptr %i.kn, align 8, !tbaa !14
  %indvars.iv.next506.prol = or disjoint i64 %indvars.iv505.ph, 1
  br label %scalar.ph583.prol.loopexit

scalar.ph583.prol.loopexit:                       ; preds = %scalar.ph583.prol, %scalar.ph583.preheader
  %indvars.iv505.unr = phi i64 [ %indvars.iv505.ph, %scalar.ph583.preheader ], [ %indvars.iv.next506.prol, %scalar.ph583.prol ]
  %i.ko = icmp eq i64 %indvars.iv505.ph, %i.jw
  br i1 %i.ko, label %._crit_edge498, label %scalar.ph583

._crit_edge498:                                   ; preds = %scalar.ph583.prol.loopexit, %scalar.ph583, %middle.block598
  %i.kp = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0381.1410427429.ph, i64 noundef 8, i64 noundef %i.jv, ptr noundef nonnull %.sroa.0.0415425431.ph, i64 noundef 8, i64 noundef %i.jv, ptr noundef null, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph501 unwind label %bb.bb ; 0 uses

scalar.ph583:                                     ; preds = %scalar.ph583.prol.loopexit, %scalar.ph583
  %indvars.iv505 = phi i64 [ %indvars.iv.next506.1, %scalar.ph583 ], [ %indvars.iv505.unr, %scalar.ph583.prol.loopexit ] ; 5 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv505 to i32
  %i.kr = uitofp nneg i32 %i.kq to double
  %i.ks = call double @llvm.fmuladd.f64(double %i.kr, double %.0229529, double %3)
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1410427429.ph, i64 %indvars.iv505
  store double %i.ks, ptr %i.kt, align 8, !tbaa !14
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0415425431.ph, i64 %indvars.iv505
  store double %i.jz, ptr %i.ku, align 8, !tbaa !14
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1 ; 3 uses
  %i.kv = trunc nuw nsw i64 %indvars.iv.next506 to i32
  %i.kw = uitofp nneg i32 %i.kv to double
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %.0229529, double %3)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1410427429.ph, i64 %indvars.iv.next506
  store double %i.kx, ptr %i.ky, align 8, !tbaa !14
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0415425431.ph, i64 %indvars.iv.next506
  store double %i.jz, ptr %i.kz, align 8, !tbaa !14
  %indvars.iv.next506.1 = add nuw nsw i64 %indvars.iv505, 2 ; 2 uses
  %exitcond509.not.1 = icmp eq i64 %indvars.iv.next506.1, %i.jv
  br i1 %exitcond509.not.1, label %._crit_edge498, label %scalar.ph583, !llvm.loop !32

._crit_edge502:                                   ; preds = %bb.az
  %i.la = add nuw nsw i32 %.0218503, 1            ; 2 uses
  %exitcond515.not = icmp eq i32 %i.la, %11
  br i1 %exitcond515.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %.lr.ph497, !llvm.loop !33

.lr.ph501:                                        ; preds = %._crit_edge498, %bb.az
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %bb.az ], [ 0, %._crit_edge498 ] ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1410427429.ph, i64 %indvars.iv510 ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !14 ; 3 uses
  %i.ld = call double @llvm.fabs.f64(double %i.lc)
  %i.le = fcmp ueq double %i.ld, +inf
  br i1 %i.le, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph501
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0415425431.ph, i64 %indvars.iv510 ; 3 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !14
  %i.lh = call double @llvm.fabs.f64(double %i.lg)
  %i.li = fcmp ueq double %i.lh, +inf
  br i1 %i.li, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lj = load double, ptr %7, align 8, !tbaa !14 ; 2 uses
  %i.lk = fcmp olt double %i.lc, %i.lj
  %i.ll = select i1 %i.lk, double %i.lc, double %i.lj
  store double %i.ll, ptr %7, align 8, !tbaa !14
  %i.lm = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.ln = load double, ptr %i.lb, align 8, !tbaa !14 ; 2 uses
  %i.lo = fcmp olt double %i.lm, %i.ln
  %i.lp = select i1 %i.lo, double %i.ln, double %i.lm
  store double %i.lp, ptr %9, align 8, !tbaa !14
  %i.lq = load double, ptr %i.lf, align 8, !tbaa !14 ; 2 uses
  %i.lr = load double, ptr %8, align 8, !tbaa !14 ; 2 uses
  %i.ls = fcmp olt double %i.lq, %i.lr
  %i.lt = select i1 %i.ls, double %i.lq, double %i.lr
  store double %i.lt, ptr %8, align 8, !tbaa !14
  %i.lu = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.lv = load double, ptr %i.lf, align 8, !tbaa !14 ; 2 uses
  %i.lw = fcmp olt double %i.lu, %i.lv
  %i.lx = select i1 %i.lw, double %i.lv, double %i.lu
  store double %i.lx, ptr %10, align 8, !tbaa !14
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph501, %bb.ax, %bb.ay
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, %i.jv
  br i1 %exitcond514.not, label %._crit_edge502, label %.lr.ph501, !llvm.loop !34

_ZNSt6vectorIdSaIdEED2Ev.exit.thread:             ; preds = %._crit_edge502, %.invoke, %bb.v, %bb.aw, %bb.s, %.split, %.preheader492
  %.4445 = phi i32 [ 0, %.invoke ], [ 1, %.split ], [ 1, %.preheader492 ], [ 0, %bb.s ], [ 0, %bb.v ], [ 1, %bb.aw ], [ 1, %._crit_edge502 ]
  %.sroa.34.2444 = phi ptr [ %i.aj, %.invoke ], [ %.sroa.34.0417, %.split ], [ %.sroa.34.0416424432.ph, %.preheader492 ], [ %i.aj, %bb.s ], [ %i.aj, %bb.v ], [ %.sroa.34.0417, %bb.aw ], [ %.sroa.34.0416424432.ph, %._crit_edge502 ]
  %.sroa.0.2443 = phi ptr [ %i.v, %.invoke ], [ %.sroa.0.0414, %.split ], [ %.sroa.0.0415425431.ph, %.preheader492 ], [ %i.v, %bb.s ], [ %i.v, %bb.v ], [ %.sroa.0.0414, %bb.aw ], [ %.sroa.0.0415425431.ph, %._crit_edge502 ] ; 2 uses
  %.sroa.32.3441 = phi ptr [ %i.u, %.invoke ], [ %.sroa.32.1413, %.split ], [ %.sroa.32.1412426430.ph, %.preheader492 ], [ %i.u, %bb.s ], [ %i.u, %bb.v ], [ %.sroa.32.1413, %bb.aw ], [ %.sroa.32.1412426430.ph, %._crit_edge502 ]
  %.sroa.0381.3439 = phi ptr [ %i.s, %.invoke ], [ %.sroa.0381.1411, %.split ], [ %.sroa.0381.1410427429.ph, %.preheader492 ], [ %i.s, %bb.s ], [ %i.s, %bb.v ], [ %.sroa.0381.1411, %bb.aw ], [ %.sroa.0381.1410427429.ph, %._crit_edge502 ]
  %i.ly = ptrtoint ptr %.sroa.34.2444 to i64
  %i.lz = ptrtoint ptr %.sroa.0.2443 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2443, i64 noundef %i.ma) #19
  br label %bb.ba

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.n
  %.not.i.i.i330 = icmp eq ptr %.sroa.0381.0, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorIdSaIdEED2Ev.exit331, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.sroa.0381.3440540 = phi ptr [ %.sroa.0381.3439, %_ZNSt6vectorIdSaIdEED2Ev.exit.thread ], [ %.sroa.0381.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %.sroa.32.3442539 = phi ptr [ %.sroa.32.3441, %_ZNSt6vectorIdSaIdEED2Ev.exit.thread ], [ %.sroa.32.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %.4446538 = phi i32 [ %.4445, %_ZNSt6vectorIdSaIdEED2Ev.exit.thread ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.mb = ptrtoint ptr %.sroa.32.3442539 to i64
  %i.mc = ptrtoint ptr %.sroa.0381.3440540 to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.3440540, i64 noundef %i.md) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit331

.thread469:                                       ; preds = %.thread532.invoke, %.invoke, %._crit_edge, %bb.x, %bb.w, %bb.u, %bb.r, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread

bb.bb:                                            ; preds = %._crit_edge498
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread

_ZNSt6vectorIdSaIdEED2Ev.exit333.thread:          ; preds = %.thread469, %bb.bb
  %lpad.phi480 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread469 ], [ %lpad.thr_comm.split-lp, %bb.bb ]
  %.sroa.34.1479 = phi ptr [ %i.aj, %.thread469 ], [ %.sroa.34.0416424432.ph, %bb.bb ]
  %.sroa.0.1478 = phi ptr [ %i.v, %.thread469 ], [ %.sroa.0.0415425431.ph, %bb.bb ] ; 2 uses
  %.sroa.32.2477 = phi ptr [ %i.u, %.thread469 ], [ %.sroa.32.1412426430.ph, %bb.bb ]
  %.sroa.0381.2476 = phi ptr [ %i.s, %.thread469 ], [ %.sroa.0381.1410427429.ph, %bb.bb ]
  %i.me = ptrtoint ptr %.sroa.34.1479 to i64
  %i.mf = ptrtoint ptr %.sroa.0.1478 to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1478, i64 noundef %i.mg) #19
  br label %bb.bc

_ZNSt6vectorIdSaIdEED2Ev.exit333:                 ; preds = %bb.k, %bb.o, %.thread481
  %.merged463 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp486, %.thread481 ], [ %i.ah, %bb.o ], [ %i.w, %bb.k ] ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %.sroa.0381.0, null
  br i1 %.not.i.i.i334, label %_ZNSt6vectorIdSaIdEED2Ev.exit335, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit333
  %.sroa.0381.4461548 = phi ptr [ %.sroa.0381.2476, %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread ], [ %.sroa.0381.0, %_ZNSt6vectorIdSaIdEED2Ev.exit333 ] ; 2 uses
  %.sroa.32.4462547 = phi ptr [ %.sroa.32.2477, %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread ], [ %.sroa.32.0, %_ZNSt6vectorIdSaIdEED2Ev.exit333 ]
  %.merged463545 = phi { ptr, i32 } [ %lpad.phi480, %_ZNSt6vectorIdSaIdEED2Ev.exit333.thread ], [ %.merged463, %_ZNSt6vectorIdSaIdEED2Ev.exit333 ]
  %i.mh = ptrtoint ptr %.sroa.32.4462547 to i64
  %i.mi = ptrtoint ptr %.sroa.0381.4461548 to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.4461548, i64 noundef %i.mj) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit335

_ZNSt6vectorIdSaIdEED2Ev.exit335:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit333, %bb.bc
  %.merged463546 = phi { ptr, i32 } [ %.merged463, %_ZNSt6vectorIdSaIdEED2Ev.exit333 ], [ %.merged463545, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  resume { ptr, i32 } %.merged463546

_ZNSt6vectorIdSaIdEED2Ev.exit331:                 ; preds = %bb.ba, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.j, %bb.h, %bb.f
  %.6 = phi i32 [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.4446538, %bb.ba ]
end_hunk_0
begin_hunk_1_@_ZL16antimeridian_minPKdi:bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l, %bb.k
  %.051 = phi double [ %.247, %bb.l ], [ -1.800000e+02, %bb.k ], [ %.5, %bb.b ]
  ret double %.051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZL16antimeridian_maxPKdi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 4, 120013) %1) unnamed_addr #8 {
bb.a:
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  switch i32 %.2, label %bb.l [
    i32 2, label %bb.m
    i32 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %.05182 = phi i32 [ 0, %bb.a ], [ %.2, %bb.j ]  ; 7 uses
  %.05281 = phi i1 [ false, %bb.a ], [ %.254, %bb.j ] ; 2 uses
  %.05580 = phi double [ -inf, %bb.a ], [ %.257, %bb.j ] ; 5 uses
  %.05879 = phi double [ -inf, %bb.a ], [ %.5, %bb.j ] ; 5 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 7 uses
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %indvars.iv, 0
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.i = select i1 %i.d, i32 %1, i32 %i.e
  %.113.i = add nsw i32 %spec.select.i, -1        ; 3 uses
  %i.f = sext i32 %.113.i to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fcmp oeq double %i.h, +inf
  %i.j = zext i32 %.113.i to i64
  %i.k = icmp ne i64 %indvars.iv, %i.j
  %i.l = and i1 %i.k, %i.i
  br i1 %i.l, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.114.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.113.i, %bb.d ] ; 2 uses
  %i.m = icmp eq i32 %.114.i, 0
  %spec.select12.i = select i1 %i.m, i32 %1, i32 %.114.i
  %.1.i = add nsw i32 %spec.select12.i, -1        ; 3 uses
  %i.n = sext i32 %.1.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.q = fcmp oeq double %i.p, +inf
  %i.r = zext i32 %.1.i to i64
  %i.s = icmp ne i64 %indvars.iv, %i.r
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit:               ; preds = %.lr.ph.i, %bb.d
  %i.u = phi double [ %i.h, %bb.d ], [ %i.p, %.lr.ph.i ]
  %i.v = fsub double %i.u, %i.b                   ; 3 uses
  %i.w = fcmp oge double %i.v, 2.000000e+02
  %i.x = fcmp une double %i.v, +inf               ; 2 uses
  %or.cond = and i1 %i.w, %i.x
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.y = icmp eq i32 %.05182, 0
  %.159 = select i1 %i.y, double %i.b, double %.05879
  %i.z = add nsw i32 %.05182, 1
  br label %bb.g

bb.e:                                             ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.aa = fcmp ole double %i.v, -2.000000e+02
  %or.cond3 = and i1 %i.aa, %i.x
  br i1 %or.cond3, label %.thread75, label %bb.f

.thread75:                                        ; preds = %bb.e
  %i.ab = icmp eq i32 %.05182, 0
  %.260 = select i1 %i.ab, double %.05580, double %.05879
  %i.ac = add nsw i32 %.05182, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.05281, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %.174 = phi i32 [ %i.z, %.thread ], [ %.05182, %bb.f ] ; 2 uses
  %.370 = phi double [ %.159, %.thread ], [ %.05879, %bb.f ] ; 3 uses
  %i.ad = fcmp ogt double %i.b, %.370
  %i.ae = fcmp oeq double %.370, +inf
  %or.cond5 = or i1 %i.ad, %i.ae
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %.thread75, %bb.g, %bb.h, %bb.f
  %.173 = phi i32 [ %.174, %bb.h ], [ %.05182, %bb.f ], [ %.174, %bb.g ], [ %i.ac, %.thread75 ]
  %.15371 = phi i1 [ true, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.thread75 ]
  %.4 = phi double [ %i.b, %bb.h ], [ %.05879, %bb.f ], [ %.370, %bb.g ], [ %.260, %.thread75 ]
  %i.af = fcmp ogt double %i.b, %.05580
  %i.ag = fcmp oeq double %.05580, +inf
  %or.cond7 = or i1 %i.ag, %i.af
  %.156 = select i1 %or.cond7, double %i.b, double %.05580
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.5 = phi double [ %.05879, %bb.c ], [ %.4, %bb.i ] ; 2 uses
  %.257 = phi double [ %.05580, %bb.c ], [ %.156, %bb.i ] ; 2 uses
  %.254 = phi i1 [ %.05281, %bb.c ], [ %.15371, %bb.i ]
  %.2 = phi i32 [ %.05182, %bb.c ], [ %.173, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !4

bb.k:                                             ; preds = %bb.b
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l, %bb.k
  %.061 = phi double [ %.257, %bb.l ], [ 1.800000e+02, %bb.k ], [ %.5, %bb.b ]
  ret double %.061
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @proj_trans_bounds_3D(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr nofree noundef captures(none) initializes((0, 8)) %9, ptr nofree noundef captures(none) initializes((0, 8)) %10, ptr nofree noundef captures(none) initializes((0, 8)) %11, ptr nofree noundef captures(none) initializes((0, 8)) %12, ptr nofree noundef captures(none) initializes((0, 8)) %13, ptr nofree noundef captures(none) initializes((0, 8)) %14, i32 noundef %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %struct.PJ_PROJ_INFO, align 8      ; 5 uses
  store double +inf, ptr %9, align 8, !tbaa !14
  store double +inf, ptr %10, align 8, !tbaa !14
  store double +inf, ptr %11, align 8, !tbaa !14
  store double +inf, ptr %12, align 8, !tbaa !14
  store double +inf, ptr %13, align 8, !tbaa !14
  store double +inf, ptr %14, align 8, !tbaa !14
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef null, ptr noundef nonnull @.str)
  %i.b = tail call i32 @proj_errno_set(ptr noundef null, i32 noundef 1027) ; 0 uses
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %15, 10000
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  %i.c = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %bb.ck

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @proj_pj_info(ptr dead_on_unwind nonnull writable sret(%struct.PJ_PROJ_INFO) align 8 %16, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %16, align 8, !tbaa !18    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.2)
  %i.f = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.g:                                             ; preds = %bb.e
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.3) #17
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond4 = or i1 %i.i, %i.h
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %3, ptr %9, align 8, !tbaa !14
  store double %6, ptr %12, align 8, !tbaa !14
  store double %4, ptr %10, align 8, !tbaa !14
  store double %7, ptr %13, align 8, !tbaa !14
  store double %5, ptr %11, align 8, !tbaa !14
  store double %8, ptr %14, align 8, !tbaa !14
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.i:                                             ; preds = %bb.g
  %i.j = call i32 @proj_degree_output(ptr noundef nonnull %1, i32 noundef %2)
  %i.k = icmp ne i32 %i.j, 0                      ; 4 uses
  %i.l = call i32 @proj_degree_input(ptr noundef nonnull %1, i32 noundef %2)
  %.not470 = icmp ne i32 %i.l, 0                  ; 4 uses
  %i.m = icmp samesign ult i32 %15, 2
  %or.cond6 = and i1 %i.m, %i.k
  br i1 %or.cond6, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
  %i.n = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.k:                                             ; preds = %bb.i
  %i.o = add nuw nsw i32 %15, 1                   ; 10 uses
  %i.p = icmp eq i32 %2, 1
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = call ptr @proj_get_source_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

bb.m:                                             ; preds = %bb.k
  %i.r = call ptr @proj_get_target_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit: ; preds = %bb.l, %bb.m
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
  %i.aw = ptrtoaddr ptr %i.aj to i64              ; 28 uses
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
  br i1 %.1426, label %.thread1138, label %.thread1144.invoke

bb.ae:                                            ; preds = %bb.ac
  %i.bg = fsub double %6, %3
  %i.bh = uitofp nneg i32 %i.o to double
  %i.bi = fdiv double %i.bg, %i.bh                ; 2 uses
  %i.bj = fcmp olt double %7, %4
  %or.cond493 = and i1 %i.bj, %.not470
  br i1 %or.cond493, label %bb.af, label %bb.ah

.thread1138:                                      ; preds = %bb.ad
  %i.bk = fsub double %6, %3
  %i.bl = fadd double %i.bk, 3.600000e+02
  %i.bm = uitofp nneg i32 %i.o to double
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = fcmp olt double %7, %4
  %or.cond4931140 = and i1 %i.bo, %.not470
  br i1 %or.cond4931140, label %.thread1144.invoke, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %.1426, label %.thread1144.invoke, label %bb.ag

.thread1144.invoke:                               ; preds = %bb.af, %.thread1138, %bb.ad
  invoke void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %.thread953.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %.thread1144.invoke
  %i.bp = invoke i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027)
          to label %.loopexit979 unwind label %.thread953.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bq = fsub double %7, %4
  %i.br = fadd double %i.bq, 3.600000e+02
  br label %bb.ai

bb.ah:                                            ; preds = %.thread1138, %bb.ae
  %.04321142 = phi double [ %i.bn, %.thread1138 ], [ %i.bi, %bb.ae ]
  %i.bs = fsub double %7, %4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink = phi double [ %i.bs, %bb.ah ], [ %i.br, %bb.ag ]
  %.04321141 = phi double [ %.04321142, %bb.ah ], [ %i.bi, %bb.ag ] ; 14 uses
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
  %i.by = zext nneg i32 %i.o to i64               ; 5 uses
  %i.bz = zext nneg i32 %i.bv to i64              ; 3 uses
  %i.ca = zext nneg i32 %i.bw to i64              ; 3 uses
  %17 = add nuw nsw i32 %15, 1                    ; 2 uses
  %i.cb = call i32 @llvm.umax.i32(i32 %15, i32 2)
  %wide.trip.count = zext nneg i32 %17 to i64     ; 7 uses
  %wide.trip.count1078 = zext nneg i32 %17 to i64 ; 2 uses
  %i.cc = shl nuw nsw i64 %wide.trip.count, 3     ; 20 uses
  %i.cd = add i64 %i.cc, %i.aw
  %i.ce = shl nuw nsw i64 %i.bz, 3                ; 20 uses
  %i.cf = add i64 %i.ce, %i.aw
  %i.cg = shl nuw nsw i64 %i.ca, 3                ; 20 uses
  %i.ch = add i64 %i.cg, %i.aw
  %i.ci = add i64 %i.cc, %i.aw
  %i.cj = add i64 %i.ce, %i.aw
  %i.ck = add i64 %i.cg, %i.aw
  %i.cl = sub i64 %i.cc, %i.aw
  %i.cm = sub i64 %i.cc, %i.aw
  %i.cn = sub i64 %i.ce, %i.aw
  %i.co = sub i64 %i.ce, %i.aw
  %i.cp = sub i64 %i.cg, %i.aw
  %i.cq = sub i64 %i.cg, %i.aw
  %i.cr = add i64 %i.ce, %i.aw
  %i.cs = add i64 %i.cg, %i.aw
  %i.ct = add i64 %i.ce, %i.aw
  %i.cu = add i64 %i.cg, %i.aw
  %i.cv = add i64 %i.cc, %i.aw
  %i.cw = sub i64 %i.ce, %i.cv
  %i.cx = add i64 %i.cc, %i.aw
  %i.cy = sub i64 %i.ce, %i.cx
  %i.cz = add i64 %i.cc, %i.aw
  %i.da = sub i64 %i.cg, %i.cz
  %i.db = add i64 %i.cc, %i.aw
  %i.dc = sub i64 %i.cg, %i.db
  %i.dd = add i64 %i.cg, %i.aw
  %i.de = add i64 %i.cg, %i.aw
  %i.df = add i64 %i.ce, %i.aw
  %i.dg = sub i64 %i.cg, %i.df
  %i.dh = add i64 %i.ce, %i.aw
  %i.di = sub i64 %i.cg, %i.dh
  %i.dj = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.dk = add nsw i64 %i.ab, -2                   ; 10 uses
  %i.dl = zext nneg i32 %15 to i64
  %min.iters.check1291 = icmp ult i32 %15, 25
  %invariant.op = add i64 %i.cl, -1
  %invariant.op1766 = add i64 %i.cm, -1
  %invariant.op1768 = add i64 %i.cn, -1
  %invariant.op1770 = add i64 %i.co, -1
  %invariant.op1772 = add i64 %i.cp, -1
  %invariant.op1774 = add i64 %i.cq, -1
  %i.dm = sub nsw i64 %i.cc, %i.ce
  %diff.check1248 = icmp ugt i64 %i.dm, -16
  %invariant.op1776 = sub i64 %i.cc, %i.cr
  %i.dn = sub nsw i64 %i.cc, %i.cg
  %diff.check1254 = icmp ugt i64 %i.dn, -16
  %invariant.op1778 = sub i64 %i.cc, %i.cs
  %invariant.op1780 = sub i64 %i.cc, %i.ct
  %invariant.op1782 = sub i64 %i.cc, %i.cu
  %invariant.op1784 = add i64 %i.cw, -1
  %invariant.op1786 = add i64 %i.cy, -1
  %invariant.op1788 = add i64 %i.da, -1
  %invariant.op1790 = add i64 %i.dc, -1
  %i.do = sub nsw i64 %i.ce, %i.cg
  %diff.check1276 = icmp ugt i64 %i.do, -16
  %invariant.op1792 = sub i64 %i.ce, %i.dd
  %invariant.op1794 = sub i64 %i.ce, %i.de
  %invariant.op1796 = add i64 %i.dg, -1
  %invariant.op1798 = add i64 %i.di, -1
  %n.vec1293 = and i64 %wide.trip.count, 32766    ; 3 uses
  %broadcast.splatinsert1296 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1297 = shufflevector <2 x double> %broadcast.splatinsert1296, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1298 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1299 = shufflevector <2 x double> %broadcast.splatinsert1298, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1300 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1301 = shufflevector <2 x double> %broadcast.splatinsert1300, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1302 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1303 = shufflevector <2 x double> %broadcast.splatinsert1302, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1304 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1305 = shufflevector <2 x double> %broadcast.splatinsert1304, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1306 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1307 = shufflevector <2 x double> %broadcast.splatinsert1306, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1314 = icmp eq i64 %n.vec1293, %wide.trip.count
  %i.dp = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %.04321141, i64 1 ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %7, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %3, i64 1
  %i.dt = insertelement <2 x double> poison, double %4, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %6, i64 1
  %xtraiter = and i64 %i.dj, 3                    ; 3 uses
  %i.dv = icmp ult i64 %i.dk, 3
  %unroll_iter = and i64 %i.dj, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1616 = icmp ne i64 %xtraiter, 0
  %xtraiter1618 = and i64 %i.dj, 1
  %i.dw = icmp eq i64 %i.dk, 0
  %unroll_iter1623 = and i64 %i.dj, -2
  %lcmp.mod1620.not = icmp eq i64 %xtraiter1618, 0
  %lcmp.mod1622 = trunc i64 %i.dj to i1
  %xtraiter1626 = and i64 %i.dj, 3                ; 3 uses
  %i.dx = icmp ult i64 %i.dk, 3
  %unroll_iter1631 = and i64 %i.dj, -4
  %lcmp.mod1628.not = icmp eq i64 %xtraiter1626, 0
  %lcmp.mod1630 = icmp ne i64 %xtraiter1626, 0
  %xtraiter1634 = and i64 %i.dj, 1
  %i.dy = icmp eq i64 %i.dk, 0
  %unroll_iter1639 = and i64 %i.dj, -2
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1634, 0
  %lcmp.mod1638 = trunc i64 %i.dj to i1
  %xtraiter1642 = and i64 %i.dj, 3                ; 3 uses
  %i.dz = icmp ult i64 %i.dk, 3
  %unroll_iter1647 = and i64 %i.dj, -4
  %lcmp.mod1644.not = icmp eq i64 %xtraiter1642, 0
  %lcmp.mod1646 = icmp ne i64 %xtraiter1642, 0
  %xtraiter1650 = and i64 %i.dj, 1
  %i.ea = icmp eq i64 %i.dk, 0
  %unroll_iter1655 = and i64 %i.dj, -2
  %lcmp.mod1652.not = icmp eq i64 %xtraiter1650, 0
  %lcmp.mod1654 = trunc i64 %i.dj to i1
  %xtraiter1659 = and i64 %i.dj, 1
  %i.eb = icmp eq i64 %i.dk, 0
  %unroll_iter1664 = and i64 %i.dj, -2
  %lcmp.mod1661.not = icmp eq i64 %xtraiter1659, 0
  %lcmp.mod1663 = trunc i64 %i.dj to i1
  %xtraiter1668 = and i64 %i.dj, 3                ; 3 uses
  %i.ec = icmp ult i64 %i.dk, 3
  %unroll_iter1673 = and i64 %i.dj, -4
  %lcmp.mod1670.not = icmp eq i64 %xtraiter1668, 0
  %lcmp.mod1672 = icmp ne i64 %xtraiter1668, 0
  %xtraiter1677 = and i64 %i.dj, 3                ; 3 uses
  %i.ed = icmp ult i64 %i.dk, 3
  %unroll_iter1682 = and i64 %i.dj, -4
  %lcmp.mod1679.not = icmp eq i64 %xtraiter1677, 0
  %lcmp.mod1681 = icmp ne i64 %xtraiter1677, 0
  %xtraiter1685 = and i64 %i.dj, 1
  %i.ee = icmp eq i64 %i.dk, 0
  %unroll_iter1690 = and i64 %i.dj, -2
  %lcmp.mod1687.not = icmp eq i64 %xtraiter1685, 0
  %lcmp.mod1689 = trunc i64 %i.dj to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %wide.trip.count, 32764        ; 3 uses
  %broadcast.splatinsert1192 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1193 = shufflevector <2 x double> %broadcast.splatinsert1192, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1194 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1195 = shufflevector <2 x double> %broadcast.splatinsert1194, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter1692 = and i64 %wide.trip.count, 1
  %lcmp.mod1693.not = icmp eq i64 %xtraiter1692, 0
  br label %.lr.ph.preheader

.lr.ph1035.preheader:                             ; preds = %.lr.ph1026.1, %middle.block1487
  %indvars.iv.next1103.1.lcssa = phi i64 [ %i.jq, %middle.block1487 ], [ %indvars.iv.next1103.1, %.lr.ph1026.1 ] ; 3 uses
  %i.ef = fsub double %8, %5
  %i.eg = uitofp nneg i32 %i.o to double
  %i.eh = fdiv double %i.ef, %i.eg                ; 8 uses
  %min.iters.check1492 = icmp ult i32 %15, 3
  br i1 %min.iters.check1492, label %.lr.ph1035.preheader1584, label %vector.ph1493

vector.ph1493:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1494 = and i64 %i.fk, 32764               ; 4 uses
  %i.ei = add i64 %indvars.iv.next1103.1.lcssa, %n.vec1494 ; 2 uses
  %i.ej = trunc nuw nsw i64 %n.vec1494 to i32
  %broadcast.splatinsert1495 = insertelement <2 x double> poison, double %i.eh, i64 0
  %broadcast.splat1496 = shufflevector <2 x double> %broadcast.splatinsert1495, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1497 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1498 = shufflevector <2 x double> %broadcast.splatinsert1497, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1499 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1500 = shufflevector <2 x double> %broadcast.splatinsert1499, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1501 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1502 = shufflevector <2 x double> %broadcast.splatinsert1501, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1493
  %index1504 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1507, %vector.body1503 ] ; 2 uses
  %vec.ind1505 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1493 ], [ %vec.ind.next1508, %vector.body1503 ] ; 3 uses
  %step.add1506 = add nuw <2 x i32> %vec.ind1505, splat (i32 2)
  %i.ek = add i64 %indvars.iv.next1103.1.lcssa, %index1504 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %broadcast.splat1498, ptr %i.el, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1498, ptr %i.em, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ek ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x double> %broadcast.splat1500, ptr %i.en, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1500, ptr %i.eo, align 8, !tbaa !14
  %i.ep = uitofp nneg <2 x i32> %vec.ind1505 to <2 x double>
  %i.eq = uitofp nneg <2 x i32> %step.add1506 to <2 x double>
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %broadcast.splat1496, <2 x double> %broadcast.splat1502)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ek ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> %i.er, ptr %i.et, align 8, !tbaa !14
  store <2 x double> %i.es, ptr %i.eu, align 8, !tbaa !14
  %index.next1507 = add nuw i64 %index1504, 4     ; 2 uses
  %vec.ind.next1508 = add nuw <2 x i32> %vec.ind1505, splat (i32 4)
  %i.ev = icmp eq i64 %index.next1507, %n.vec1494
  br i1 %i.ev, label %middle.block1509, label %vector.body1503, !llvm.loop !44

middle.block1509:                                 ; preds = %vector.body1503
  %cmp.n1510 = icmp eq i64 %n.vec1494, %i.fk
  br i1 %cmp.n1510, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1584

.lr.ph1035.preheader1584:                         ; preds = %.lr.ph1035.preheader, %middle.block1509
  %indvars.iv1110.ph = phi i64 [ %indvars.iv.next1103.1.lcssa, %.lr.ph1035.preheader ], [ %i.ei, %middle.block1509 ]
  %.04161033.ph = phi i32 [ 0, %.lr.ph1035.preheader ], [ %i.ej, %middle.block1509 ]
  br label %.lr.ph1035

.lr.ph1012.preheader:                             ; preds = %bb.ai
  %18 = add nuw nsw i32 %15, 1                    ; 2 uses
  %wide.trip.count1108 = zext nneg i32 %18 to i64 ; 3 uses
  %min.iters.check1317 = icmp ult i32 %15, 3
  br i1 %min.iters.check1317, label %.lr.ph1012.preheader1600, label %vector.ph1318

vector.ph1318:                                    ; preds = %.lr.ph1012.preheader
  %n.vec1319 = and i64 %wide.trip.count1108, 32764 ; 3 uses
  %broadcast.splatinsert1320 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1321 = shufflevector <2 x double> %broadcast.splatinsert1320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1322 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1323 = shufflevector <2 x double> %broadcast.splatinsert1322, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1324 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1325 = shufflevector <2 x double> %broadcast.splatinsert1324, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1326 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1327 = shufflevector <2 x double> %broadcast.splatinsert1326, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1318
  %index1329 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1332, %vector.body1328 ] ; 4 uses
  %vec.ind1330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1318 ], [ %vec.ind.next1333, %vector.body1328 ] ; 3 uses
  %step.add1331 = add <2 x i32> %vec.ind1330, splat (i32 2)
  %i.ew = uitofp nneg <2 x i32> %vec.ind1330 to <2 x double>
  %i.ex = uitofp nneg <2 x i32> %step.add1331 to <2 x double>
  %i.ey = fneg <2 x double> %i.ew
  %i.ez = fneg <2 x double> %i.ex
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %broadcast.splat1321, <2 x double> %broadcast.splat1323)
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %broadcast.splat1321, <2 x double> %broadcast.splat1323)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1329 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> %i.fa, ptr %i.fc, align 8, !tbaa !14
  store <2 x double> %i.fb, ptr %i.fd, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1329 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> %broadcast.splat1325, ptr %i.fe, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1325, ptr %i.ff, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1329 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x double> %broadcast.splat1327, ptr %i.fg, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1327, ptr %i.fh, align 8, !tbaa !14
  %index.next1332 = add nuw i64 %index1329, 4     ; 2 uses
  %vec.ind.next1333 = add <2 x i32> %vec.ind1330, splat (i32 4)
  %i.fi = icmp eq i64 %index.next1332, %n.vec1319
  br i1 %i.fi, label %middle.block1334, label %vector.body1328, !llvm.loop !45

middle.block1334:                                 ; preds = %vector.body1328
  %cmp.n1335 = icmp eq i64 %n.vec1319, %wide.trip.count1108
  br i1 %cmp.n1335, label %.lr.ph1016.preheader, label %.lr.ph1012.preheader1600

.lr.ph1012.preheader1600:                         ; preds = %.lr.ph1012.preheader, %middle.block1334
  %indvars.iv1087.ph = phi i64 [ 0, %.lr.ph1012.preheader ], [ %n.vec1319, %middle.block1334 ]
  br label %.lr.ph1012

.lr.ph1016.preheader:                             ; preds = %.lr.ph1012, %middle.block1334
  %i.fj = zext nneg i32 %18 to i64                ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.fk = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1338 = icmp ult i32 %15, 3
  br i1 %min.iters.check1338, label %.lr.ph1016.preheader1598, label %vector.ph1339

vector.ph1339:                                    ; preds = %.lr.ph1016.preheader
  %n.vec1340 = and i64 %i.fk, 32764               ; 4 uses
  %i.fl = add nuw nsw i64 %n.vec1340, %i.fj       ; 2 uses
  %i.fm = trunc nuw nsw i64 %n.vec1340 to i32
  %broadcast.splatinsert1341 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1342 = shufflevector <2 x double> %broadcast.splatinsert1341, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1343 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1344 = shufflevector <2 x double> %broadcast.splatinsert1343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1345 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1346 = shufflevector <2 x double> %broadcast.splatinsert1345, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1347 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1348 = shufflevector <2 x double> %broadcast.splatinsert1347, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1339
  %index1350 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1353, %vector.body1349 ] ; 2 uses
  %vec.ind1351 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1339 ], [ %vec.ind.next1354, %vector.body1349 ] ; 3 uses
  %step.add1352 = add nuw <2 x i32> %vec.ind1351, splat (i32 2)
  %i.fn = add nuw i64 %index1350, %i.fj           ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %broadcast.splat1342, ptr %i.fo, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1342, ptr %i.fp, align 8, !tbaa !14
  %i.fq = uitofp nneg <2 x i32> %vec.ind1351 to <2 x double>
  %i.fr = uitofp nneg <2 x i32> %step.add1352 to <2 x double>
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %broadcast.splat1344, <2 x double> %broadcast.splat1346)
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %broadcast.splat1344, <2 x double> %broadcast.splat1346)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.fn ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x double> %i.fs, ptr %i.fu, align 8, !tbaa !14
  store <2 x double> %i.ft, ptr %i.fv, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.fn ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %broadcast.splat1348, ptr %i.fw, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1348, ptr %i.fx, align 8, !tbaa !14
  %index.next1353 = add nuw i64 %index1350, 4     ; 2 uses
  %vec.ind.next1354 = add nuw <2 x i32> %vec.ind1351, splat (i32 4)
  %i.fy = icmp eq i64 %index.next1353, %n.vec1340
  br i1 %i.fy, label %middle.block1355, label %vector.body1349, !llvm.loop !46

middle.block1355:                                 ; preds = %vector.body1349
  %cmp.n1356 = icmp eq i64 %n.vec1340, %i.fk
  br i1 %cmp.n1356, label %.lr.ph1021.preheader, label %.lr.ph1016.preheader1598

.lr.ph1016.preheader1598:                         ; preds = %.lr.ph1016.preheader, %middle.block1355
  %indvars.iv1092.ph = phi i64 [ %i.fj, %.lr.ph1016.preheader ], [ %i.fl, %middle.block1355 ]
  %.04191015.ph = phi i32 [ 0, %.lr.ph1016.preheader ], [ %i.fm, %middle.block1355 ]
  br label %.lr.ph1016

.lr.ph1012:                                       ; preds = %.lr.ph1012.preheader1600, %.lr.ph1012
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %.lr.ph1012 ], [ %indvars.iv1087.ph, %.lr.ph1012.preheader1600 ] ; 5 uses
  %indvars1107 = trunc i64 %indvars.iv1087 to i32
  %i.fz = uitofp nneg i32 %indvars1107 to double
  %i.ga = fneg double %i.fz
  %i.gb = call double @llvm.fmuladd.f64(double %i.ga, double %i.bu, double %7)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1087
  store double %i.gb, ptr %i.gc, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1087
  store double %3, ptr %i.gd, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1087
  store double %5, ptr %i.ge, align 8, !tbaa !14
  %indvars.iv.next1088 = add nuw nsw i64 %indvars.iv1087, 1 ; 2 uses
  %exitcond1109.not = icmp eq i64 %indvars.iv.next1088, %wide.trip.count1108
  br i1 %exitcond1109.not, label %.lr.ph1016.preheader, label %.lr.ph1012, !llvm.loop !47

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader1598, %.lr.ph1016
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %.lr.ph1016 ], [ %indvars.iv1092.ph, %.lr.ph1016.preheader1598 ] ; 4 uses
  %.04191015 = phi i32 [ %i.gk, %.lr.ph1016 ], [ %.04191015.ph, %.lr.ph1016.preheader1598 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1092
  store double %4, ptr %i.gf, align 8, !tbaa !14
  %i.gg = uitofp nneg i32 %.04191015 to double
  %i.gh = call double @llvm.fmuladd.f64(double %i.gg, double %.04321141, double %3)
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1092
  store double %i.gh, ptr %i.gi, align 8, !tbaa !14
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1092
  store double %5, ptr %i.gj, align 8, !tbaa !14
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 1 ; 2 uses
  %i.gk = add nuw i32 %.04191015, 1
  %exitcond1096.not.a = icmp eq i32 %.04191015, %15
  br i1 %exitcond1096.not.a, label %.lr.ph1021.preheader, label %.lr.ph1016, !llvm.loop !48

.lr.ph1021.preheader:                             ; preds = %.lr.ph1016, %middle.block1355
  %indvars.iv.next1093.lcssa = phi i64 [ %i.fl, %middle.block1355 ], [ %indvars.iv.next1093, %.lr.ph1016 ] ; 3 uses
  %min.iters.check1360 = icmp ult i32 %15, 3
  br i1 %min.iters.check1360, label %.lr.ph1021.preheader1596, label %vector.ph1361

vector.ph1361:                                    ; preds = %.lr.ph1021.preheader
  %n.vec1362 = and i64 %i.fk, 32764               ; 4 uses
  %i.gl = add i64 %indvars.iv.next1093.lcssa, %n.vec1362 ; 2 uses
  %i.gm = trunc nuw nsw i64 %n.vec1362 to i32
  %broadcast.splatinsert1363 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1364 = shufflevector <2 x double> %broadcast.splatinsert1363, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1365 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1366 = shufflevector <2 x double> %broadcast.splatinsert1365, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1367 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1368 = shufflevector <2 x double> %broadcast.splatinsert1367, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1369 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1370 = shufflevector <2 x double> %broadcast.splatinsert1369, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1361
  %index1372 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1375, %vector.body1371 ] ; 2 uses
  %vec.ind1373 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1361 ], [ %vec.ind.next1376, %vector.body1371 ] ; 3 uses
  %step.add1374 = add nuw <2 x i32> %vec.ind1373, splat (i32 2)
  %i.gn = add nuw i64 %indvars.iv.next1093.lcssa, %index1372 ; 3 uses
  %i.go = uitofp nneg <2 x i32> %vec.ind1373 to <2 x double>
  %i.gp = uitofp nneg <2 x i32> %step.add1374 to <2 x double>
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %broadcast.splat1364, <2 x double> %broadcast.splat1366)
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %broadcast.splat1364, <2 x double> %broadcast.splat1366)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gn ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <2 x double> %i.gq, ptr %i.gs, align 8, !tbaa !14
  store <2 x double> %i.gr, ptr %i.gt, align 8, !tbaa !14
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gn ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <2 x double> %broadcast.splat1368, ptr %i.gu, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1368, ptr %i.gv, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.gn ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <2 x double> %broadcast.splat1370, ptr %i.gw, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1370, ptr %i.gx, align 8, !tbaa !14
  %index.next1375 = add nuw i64 %index1372, 4     ; 2 uses
  %vec.ind.next1376 = add nuw <2 x i32> %vec.ind1373, splat (i32 4)
  %i.gy = icmp eq i64 %index.next1375, %n.vec1362
  br i1 %i.gy, label %middle.block1377, label %vector.body1371, !llvm.loop !49

middle.block1377:                                 ; preds = %vector.body1371
  %cmp.n1378 = icmp eq i64 %n.vec1362, %i.fk
  br i1 %cmp.n1378, label %.lr.ph1026.preheader, label %.lr.ph1021.preheader1596

.lr.ph1021.preheader1596:                         ; preds = %.lr.ph1021.preheader, %middle.block1377
  %indvars.iv1097.ph.a = phi i64 [ %indvars.iv.next1093.lcssa, %.lr.ph1021.preheader ], [ %i.gl, %middle.block1377 ]
  %.04181020.ph = phi i32 [ 0, %.lr.ph1021.preheader ], [ %i.gm, %middle.block1377 ]
  br label %.lr.ph1021

.lr.ph1021:                                       ; preds = %.lr.ph1021.preheader1596, %.lr.ph1021
  %indvars.iv1097.a = phi i64 [ %indvars.iv.next1098.a, %.lr.ph1021 ], [ %indvars.iv1097.ph.a, %.lr.ph1021.preheader1596 ] ; 4 uses
  %.04181020 = phi i32 [ %i.he, %.lr.ph1021 ], [ %.04181020.ph, %.lr.ph1021.preheader1596 ] ; 3 uses
  %i.gz = uitofp nneg i32 %.04181020 to double
  %i.ha = call double @llvm.fmuladd.f64(double %i.gz, double %i.bu, double %4)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1097.a
  store double %i.ha, ptr %i.hb, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1097.a
  store double %6, ptr %i.hc, align 8, !tbaa !14
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1097.a
  store double %5, ptr %i.hd, align 8, !tbaa !14
  %indvars.iv.next1098.a = add nuw nsw i64 %indvars.iv1097.a, 1 ; 2 uses
  %i.he = add nuw i32 %.04181020, 1
  %exitcond1101.not = icmp eq i32 %.04181020, %15
  br i1 %exitcond1101.not, label %.lr.ph1026.preheader, label %.lr.ph1021, !llvm.loop !50

.lr.ph1026.preheader:                             ; preds = %.lr.ph1021, %middle.block1377
  %indvars.iv.next1098.lcssa.a = phi i64 [ %i.gl, %middle.block1377 ], [ %indvars.iv.next1098.a, %.lr.ph1021 ] ; 3 uses
  %min.iters.check1382 = icmp ult i32 %15, 3
  br i1 %min.iters.check1382, label %.lr.ph1026.preheader1594, label %vector.ph1383

vector.ph1383:                                    ; preds = %.lr.ph1026.preheader
  %n.vec1384 = and i64 %i.fk, 32764               ; 4 uses
  %i.hf = add i64 %indvars.iv.next1098.lcssa.a, %n.vec1384 ; 2 uses
  %i.hg = trunc nuw nsw i64 %n.vec1384 to i32
  %broadcast.splatinsert1385 = insertelement <2 x double> poison, double %7, i64 0
  %broadcast.splat1386 = shufflevector <2 x double> %broadcast.splatinsert1385, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1387 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1388 = shufflevector <2 x double> %broadcast.splatinsert1387, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1389 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1390 = shufflevector <2 x double> %broadcast.splatinsert1389, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1391 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1392 = shufflevector <2 x double> %broadcast.splatinsert1391, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1383
  %index1394 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1397, %vector.body1393 ] ; 2 uses
  %vec.ind1395 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1383 ], [ %vec.ind.next1398, %vector.body1393 ] ; 3 uses
  %step.add1396 = add nuw <2 x i32> %vec.ind1395, splat (i32 2)
  %i.hh = add nuw i64 %indvars.iv.next1098.lcssa.a, %index1394 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <2 x double> %broadcast.splat1386, ptr %i.hi, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1386, ptr %i.hj, align 8, !tbaa !14
  %i.hk = uitofp nneg <2 x i32> %vec.ind1395 to <2 x double>
  %i.hl = uitofp nneg <2 x i32> %step.add1396 to <2 x double>
  %i.hm = fneg <2 x double> %i.hk
  %i.hn = fneg <2 x double> %i.hl
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %broadcast.splat1388, <2 x double> %broadcast.splat1390)
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %broadcast.splat1388, <2 x double> %broadcast.splat1390)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.hh ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <2 x double> %i.ho, ptr %i.hq, align 8, !tbaa !14
  store <2 x double> %i.hp, ptr %i.hr, align 8, !tbaa !14
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.hh ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x double> %broadcast.splat1392, ptr %i.hs, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1392, ptr %i.ht, align 8, !tbaa !14
  %index.next1397 = add nuw i64 %index1394, 4     ; 2 uses
  %vec.ind.next1398 = add nuw <2 x i32> %vec.ind1395, splat (i32 4)
  %i.hu = icmp eq i64 %index.next1397, %n.vec1384
  br i1 %i.hu, label %middle.block1399, label %vector.body1393, !llvm.loop !51

middle.block1399:                                 ; preds = %vector.body1393
  %cmp.n1400 = icmp eq i64 %n.vec1384, %i.fk
  br i1 %cmp.n1400, label %.lr.ph1012.1.preheader, label %.lr.ph1026.preheader1594

.lr.ph1026.preheader1594:                         ; preds = %.lr.ph1026.preheader, %middle.block1399
  %indvars.iv1102.ph = phi i64 [ %indvars.iv.next1098.lcssa.a, %.lr.ph1026.preheader ], [ %i.hf, %middle.block1399 ]
  %.04171025.ph = phi i32 [ 0, %.lr.ph1026.preheader ], [ %i.hg, %middle.block1399 ]
  br label %.lr.ph1026

.lr.ph1012.1:                                     ; preds = %.lr.ph1012.1.preheader1592, %.lr.ph1012.1
  %indvars.iv1087.1 = phi i64 [ %indvars.iv.next1088.1, %.lr.ph1012.1 ], [ %indvars.iv1087.1.ph, %.lr.ph1012.1.preheader1592 ] ; 4 uses
  %.04201010.1 = phi i32 [ %i.ib, %.lr.ph1012.1 ], [ %.04201010.1.ph, %.lr.ph1012.1.preheader1592 ] ; 3 uses
  %i.hv = uitofp nneg i32 %.04201010.1 to double
  %i.hw = fneg double %i.hv
  %i.hx = call double @llvm.fmuladd.f64(double %i.hw, double %i.bu, double %7)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1087.1
  store double %i.hx, ptr %i.hy, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1087.1
  store double %3, ptr %i.hz, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1087.1
  store double %8, ptr %i.ia, align 8, !tbaa !14
  %indvars.iv.next1088.1 = add nsw i64 %indvars.iv1087.1, 1 ; 2 uses
  %i.ib = add nuw i32 %.04201010.1, 1
  %exitcond1091.1.not = icmp eq i32 %.04201010.1, %15
  br i1 %exitcond1091.1.not, label %.lr.ph1016.1.preheader, label %.lr.ph1012.1, !llvm.loop !52

.lr.ph1016.1.preheader:                           ; preds = %.lr.ph1012.1, %middle.block1421
  %indvars.iv.next1088.1.lcssa = phi i64 [ %i.ku, %middle.block1421 ], [ %indvars.iv.next1088.1, %.lr.ph1012.1 ] ; 3 uses
  %min.iters.check1426 = icmp ult i32 %15, 3
  br i1 %min.iters.check1426, label %.lr.ph1016.1.preheader1590, label %vector.ph1427

vector.ph1427:                                    ; preds = %.lr.ph1016.1.preheader
  %n.vec1428 = and i64 %i.fk, 32764               ; 4 uses
  %i.ic = add i64 %indvars.iv.next1088.1.lcssa, %n.vec1428 ; 2 uses
  %i.id = trunc nuw nsw i64 %n.vec1428 to i32
  %broadcast.splatinsert1429 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1430 = shufflevector <2 x double> %broadcast.splatinsert1429, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1431 = insertelement <2 x double> poison, double %.04321141, i64 0
  %broadcast.splat1432 = shufflevector <2 x double> %broadcast.splatinsert1431, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1433 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1434 = shufflevector <2 x double> %broadcast.splatinsert1433, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1435 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1436 = shufflevector <2 x double> %broadcast.splatinsert1435, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1437

vector.body1437:                                  ; preds = %vector.body1437, %vector.ph1427
  %index1438 = phi i64 [ 0, %vector.ph1427 ], [ %index.next1441, %vector.body1437 ] ; 2 uses
  %vec.ind1439 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1427 ], [ %vec.ind.next1442, %vector.body1437 ] ; 3 uses
  %step.add1440 = add nuw <2 x i32> %vec.ind1439, splat (i32 2)
  %i.ie = add i64 %indvars.iv.next1088.1.lcssa, %index1438 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <2 x double> %broadcast.splat1430, ptr %i.if, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1430, ptr %i.ig, align 8, !tbaa !14
  %i.ih = uitofp nneg <2 x i32> %vec.ind1439 to <2 x double>
  %i.ii = uitofp nneg <2 x i32> %step.add1440 to <2 x double>
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %broadcast.splat1432, <2 x double> %broadcast.splat1434)
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %broadcast.splat1432, <2 x double> %broadcast.splat1434)
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ie ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x double> %i.ij, ptr %i.il, align 8, !tbaa !14
  store <2 x double> %i.ik, ptr %i.im, align 8, !tbaa !14
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ie ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store <2 x double> %broadcast.splat1436, ptr %i.in, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1436, ptr %i.io, align 8, !tbaa !14
  %index.next1441 = add nuw i64 %index1438, 4     ; 2 uses
  %vec.ind.next1442 = add nuw <2 x i32> %vec.ind1439, splat (i32 4)
  %i.ip = icmp eq i64 %index.next1441, %n.vec1428
  br i1 %i.ip, label %middle.block1443, label %vector.body1437, !llvm.loop !53

middle.block1443:                                 ; preds = %vector.body1437
  %cmp.n1444 = icmp eq i64 %n.vec1428, %i.fk
  br i1 %cmp.n1444, label %.lr.ph1021.1.preheader, label %.lr.ph1016.1.preheader1590

.lr.ph1016.1.preheader1590:                       ; preds = %.lr.ph1016.1.preheader, %middle.block1443
  %indvars.iv1092.1.ph = phi i64 [ %indvars.iv.next1088.1.lcssa, %.lr.ph1016.1.preheader ], [ %i.ic, %middle.block1443 ]
  %.04191015.1.ph = phi i32 [ 0, %.lr.ph1016.1.preheader ], [ %i.id, %middle.block1443 ]
  br label %.lr.ph1016.1

.lr.ph1016.1:                                     ; preds = %.lr.ph1016.1.preheader1590, %.lr.ph1016.1
  %indvars.iv1092.1 = phi i64 [ %indvars.iv.next1093.1, %.lr.ph1016.1 ], [ %indvars.iv1092.1.ph, %.lr.ph1016.1.preheader1590 ] ; 4 uses
  %.04191015.1 = phi i32 [ %i.iv, %.lr.ph1016.1 ], [ %.04191015.1.ph, %.lr.ph1016.1.preheader1590 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv1092.1
  store double %4, ptr %i.iq, align 8, !tbaa !14
  %i.ir = uitofp nneg i32 %.04191015.1 to double
  %i.is = call double @llvm.fmuladd.f64(double %i.ir, double %.04321141, double %3)
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv1092.1
  store double %i.is, ptr %i.it, align 8, !tbaa !14
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1092.1
  store double %8, ptr %i.iu, align 8, !tbaa !14
  %indvars.iv.next1093.1 = add nsw i64 %indvars.iv1092.1, 1 ; 2 uses
  %i.iv = add nuw i32 %.04191015.1, 1
  %exitcond1096.1.not.a = icmp eq i32 %.04191015.1, %15
  br i1 %exitcond1096.1.not.a, label %.lr.ph1021.1.preheader, label %.lr.ph1016.1, !llvm.loop !54

.lr.ph1021.1.preheader:                           ; preds = %.lr.ph1016.1, %middle.block1443
  %indvars.iv.next1093.1.lcssa = phi i64 [ %i.ic, %middle.block1443 ], [ %indvars.iv.next1093.1, %.lr.ph1016.1 ] ; 3 uses
  %min.iters.check1448 = icmp ult i32 %15, 3
  br i1 %min.iters.check1448, label %.lr.ph1021.1.preheader1588, label %vector.ph1449

vector.ph1449:                                    ; preds = %.lr.ph1021.1.preheader
  %n.vec1450 = and i64 %i.fk, 32764               ; 4 uses
  %i.iw = add i64 %indvars.iv.next1093.1.lcssa, %n.vec1450 ; 2 uses
  %i.ix = trunc nuw nsw i64 %n.vec1450 to i32
  %broadcast.splatinsert1451 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat1452 = shufflevector <2 x double> %broadcast.splatinsert1451, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1453 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat1454 = shufflevector <2 x double> %broadcast.splatinsert1453, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1455 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat1456 = shufflevector <2 x double> %broadcast.splatinsert1455, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1457 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat1458 = shufflevector <2 x double> %broadcast.splatinsert1457, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1449
  %index1460 = phi i64 [ 0, %vector.ph1449 ], [ %index.next1463, %vector.body1459 ] ; 2 uses
  %vec.ind1461 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1449 ], [ %vec.ind.next1464, %vector.body1459 ] ; 3 uses
  %step.add1462 = add nuw <2 x i32> %vec.ind1461, splat (i32 2)
  %i.iy = add i64 %indvars.iv.next1093.1.lcssa, %index1460 ; 3 uses
  %i.iz = uitofp nneg <2 x i32> %vec.ind1461 to <2 x double>
  %i.ja = uitofp nneg <2 x i32> %step.add1462 to <2 x double>
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %broadcast.splat1452, <2 x double> %broadcast.splat1454)
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %broadcast.splat1452, <2 x double> %broadcast.splat1454)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.iy ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <2 x double> %i.jb, ptr %i.jd, align 8, !tbaa !14
  store <2 x double> %i.jc, ptr %i.je, align 8, !tbaa !14
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.iy ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <2 x double> %broadcast.splat1456, ptr %i.jf, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1456, ptr %i.jg, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.iy ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <2 x double> %broadcast.splat1458, ptr %i.jh, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1458, ptr %i.ji, align 8, !tbaa !14
  %index.next1463 = add nuw i64 %index1460, 4     ; 2 uses
  %vec.ind.next1464 = add nuw <2 x i32> %vec.ind1461, splat (i32 4)
  %i.jj = icmp eq i64 %index.next1463, %n.vec1450
  br i1 %i.jj, label %middle.block1465, label %vector.body1459, !llvm.loop !55

middle.block1465:                                 ; preds = %vector.body1459
  %cmp.n1466 = icmp eq i64 %n.vec1450, %i.fk
  br i1 %cmp.n1466, label %.lr.ph1026.1.preheader, label %.lr.ph1021.1.preheader1588

.lr.ph1021.1.preheader1588:                       ; preds = %.lr.ph1021.1.preheader, %middle.block1465
  %indvars.iv1097.1.ph.a = phi i64 [ %indvars.iv.next1093.1.lcssa, %.lr.ph1021.1.preheader ], [ %i.iw, %middle.block1465 ]
  %.04181020.1.ph = phi i32 [ 0, %.lr.ph1021.1.preheader ], [ %i.ix, %middle.block1465 ]
  br label %.lr.ph1021.1

end_hunk_1
begin_hunk_2_@proj_trans_bounds_3D:bb.a
  %conflict.rdx1229 = or i1 %conflict.rdx1227, %diff.check1228
  %i.tn = sub i64 %.sroa.0845.110031199, %i.cj
  %diff.check1230 = icmp ugt i64 %i.tn, -16
  %conflict.rdx1231 = or i1 %conflict.rdx1229, %diff.check1230
  %i.to = add i64 %i.cg, %.sroa.0807.110051200
  %i.tp = sub i64 %.sroa.0845.110031199, %i.to
  %diff.check1232 = icmp ugt i64 %i.tp, -16
  %conflict.rdx1233 = or i1 %conflict.rdx1231, %diff.check1232
  %i.tq = sub i64 %.sroa.0845.110031199, %i.ck
  %diff.check1234 = icmp ugt i64 %i.tq, -16
  %conflict.rdx1235 = or i1 %conflict.rdx1233, %diff.check1234
  %.reass = add i64 %.sroa.0807.110051200, %invariant.op
  %diff.check1236 = icmp ult i64 %.reass, 15
  %conflict.rdx1237 = or i1 %conflict.rdx1235, %diff.check1236
  %.reass1767 = add i64 %.sroa.0845.110031199, %invariant.op1766
  %diff.check1238 = icmp ult i64 %.reass1767, 15
  %conflict.rdx1239 = or i1 %conflict.rdx1237, %diff.check1238
  %.reass1769 = add i64 %.sroa.0807.110051200, %invariant.op1768
  %diff.check1240 = icmp ult i64 %.reass1769, 15
  %conflict.rdx1241 = or i1 %conflict.rdx1239, %diff.check1240
  %.reass1771 = add i64 %.sroa.0845.110031199, %invariant.op1770
  %diff.check1242 = icmp ult i64 %.reass1771, 15
  %conflict.rdx1243 = or i1 %conflict.rdx1241, %diff.check1242
  %.reass1773 = add i64 %.sroa.0807.110051200, %invariant.op1772
  %diff.check1244 = icmp ult i64 %.reass1773, 15
  %conflict.rdx1245 = or i1 %conflict.rdx1243, %diff.check1244
  %.reass1775 = add i64 %.sroa.0845.110031199, %invariant.op1774
  %diff.check1246 = icmp ult i64 %.reass1775, 15
  %conflict.rdx1247 = or i1 %conflict.rdx1245, %diff.check1246
  %conflict.rdx1249 = or i1 %conflict.rdx1247, %diff.check1248
  %i.tr = add i64 %i.ce, %.sroa.0845.110031199
  %i.ts = add i64 %i.cc, %.sroa.0807.110051200
  %i.tt = sub i64 %i.ts, %i.tr
  %diff.check1250 = icmp ugt i64 %i.tt, -16
  %conflict.rdx1251 = or i1 %conflict.rdx1249, %diff.check1250
  %.reass1777 = add i64 %.sroa.0807.110051200, %invariant.op1776
  %diff.check1252 = icmp ugt i64 %.reass1777, -16
  %conflict.rdx1253 = or i1 %conflict.rdx1251, %diff.check1252
  %conflict.rdx1255 = or i1 %conflict.rdx1253, %diff.check1254
  %i.tu = add i64 %i.cg, %.sroa.0845.110031199
  %i.tv = add i64 %i.cc, %.sroa.0807.110051200
  %i.tw = sub i64 %i.tv, %i.tu
  %diff.check1256 = icmp ugt i64 %i.tw, -16
  %conflict.rdx1257 = or i1 %conflict.rdx1255, %diff.check1256
  %.reass1779 = add i64 %.sroa.0807.110051200, %invariant.op1778
  %diff.check1258 = icmp ugt i64 %.reass1779, -16
  %conflict.rdx1259 = or i1 %conflict.rdx1257, %diff.check1258
  %i.tx = add i64 %i.ce, %.sroa.0807.110051200
  %i.ty = add i64 %i.cc, %.sroa.0845.110031199
  %i.tz = sub i64 %i.ty, %i.tx
  %diff.check1260 = icmp ugt i64 %i.tz, -16
  %conflict.rdx1261 = or i1 %conflict.rdx1259, %diff.check1260
  %.reass1781 = add i64 %.sroa.0845.110031199, %invariant.op1780
  %diff.check1262 = icmp ugt i64 %.reass1781, -16
  %conflict.rdx1263 = or i1 %conflict.rdx1261, %diff.check1262
  %i.ua = add i64 %i.cg, %.sroa.0807.110051200
  %i.ub = add i64 %i.cc, %.sroa.0845.110031199
  %i.uc = sub i64 %i.ub, %i.ua
  %diff.check1264 = icmp ugt i64 %i.uc, -16
  %conflict.rdx1265 = or i1 %conflict.rdx1263, %diff.check1264
  %.reass1783 = add i64 %.sroa.0845.110031199, %invariant.op1782
  %diff.check1266 = icmp ugt i64 %.reass1783, -16
  %conflict.rdx1267 = or i1 %conflict.rdx1265, %diff.check1266
  %.reass1785 = add i64 %.sroa.0807.110051200, %invariant.op1784
  %diff.check1268 = icmp ult i64 %.reass1785, 15
  %conflict.rdx1269 = or i1 %conflict.rdx1267, %diff.check1268
  %.reass1787 = add i64 %.sroa.0845.110031199, %invariant.op1786
  %diff.check1270 = icmp ult i64 %.reass1787, 15
  %conflict.rdx1271 = or i1 %conflict.rdx1269, %diff.check1270
  %.reass1789 = add i64 %.sroa.0807.110051200, %invariant.op1788
  %diff.check1272 = icmp ult i64 %.reass1789, 15
  %conflict.rdx1273 = or i1 %conflict.rdx1271, %diff.check1272
  %.reass1791 = add i64 %.sroa.0845.110031199, %invariant.op1790
  %diff.check1274 = icmp ult i64 %.reass1791, 15
  %conflict.rdx1275 = or i1 %conflict.rdx1273, %diff.check1274
  %conflict.rdx1277 = or i1 %conflict.rdx1275, %diff.check1276
  %i.ud = add i64 %i.cg, %.sroa.0845.110031199
  %i.ue = add i64 %i.ce, %.sroa.0807.110051200
  %i.uf = sub i64 %i.ue, %i.ud
  %diff.check1278 = icmp ugt i64 %i.uf, -16
  %conflict.rdx1279 = or i1 %conflict.rdx1277, %diff.check1278
  %.reass1793 = add i64 %.sroa.0807.110051200, %invariant.op1792
  %diff.check1280 = icmp ugt i64 %.reass1793, -16
  %conflict.rdx1281 = or i1 %conflict.rdx1279, %diff.check1280
  %i.ug = add i64 %i.cg, %.sroa.0807.110051200
  %i.uh = add i64 %i.ce, %.sroa.0845.110031199
  %i.ui = sub i64 %i.uh, %i.ug
  %diff.check1282 = icmp ugt i64 %i.ui, -16
  %conflict.rdx1283 = or i1 %conflict.rdx1281, %diff.check1282
  %.reass1795 = add i64 %.sroa.0845.110031199, %invariant.op1794
  %diff.check1284 = icmp ugt i64 %.reass1795, -16
  %conflict.rdx1285 = or i1 %conflict.rdx1283, %diff.check1284
  %.reass1797 = add i64 %.sroa.0807.110051200, %invariant.op1796
  %diff.check1286 = icmp ult i64 %.reass1797, 15
  %conflict.rdx1287 = or i1 %conflict.rdx1285, %diff.check1286
  %.reass1799 = add i64 %.sroa.0845.110031199, %invariant.op1798
  %diff.check1288 = icmp ult i64 %.reass1799, 15
  %conflict.rdx1289 = or i1 %conflict.rdx1287, %diff.check1288
  br i1 %conflict.rdx1289, label %.lr.ph.preheader1601, label %vector.ph1292

vector.ph1292:                                    ; preds = %vector.memcheck1198
  %broadcast.splatinsert1294 = insertelement <2 x double> poison, double %i.sv, i64 0
  %broadcast.splat1295 = shufflevector <2 x double> %broadcast.splatinsert1294, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1292
  %index1309 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1311, %vector.body1308 ] ; 7 uses
  %vec.ind1310 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1292 ], [ %vec.ind.next1312, %vector.body1308 ] ; 2 uses
  %i.uj = uitofp nneg <2 x i32> %vec.ind1310 to <2 x double> ; 3 uses
  %i.uk = fneg <2 x double> %i.uj                 ; 2 uses
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> %broadcast.splat1297, <2 x double> %broadcast.splat1299)
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %index1309
  store <2 x double> %i.ul, ptr %i.um, align 8, !tbaa !14
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %index1309
  store <2 x double> %broadcast.splat1301, ptr %i.un, align 8, !tbaa !14
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1309
  store <2 x double> %broadcast.splat1295, ptr %i.uo, align 8, !tbaa !14
  %i.up = add nuw nsw i64 %index1309, %i.by       ; 3 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.up
  store <2 x double> %broadcast.splat1303, ptr %i.uq, align 8, !tbaa !14
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uj, <2 x double> %broadcast.splat1305, <2 x double> %broadcast.splat1301)
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.up
  store <2 x double> %i.ur, ptr %i.us, align 8, !tbaa !14
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.up
  store <2 x double> %broadcast.splat1295, ptr %i.ut, align 8, !tbaa !14
  %i.uu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uj, <2 x double> %broadcast.splat1297, <2 x double> %broadcast.splat1303)
  %i.uv = add nuw nsw i64 %index1309, %i.bz       ; 3 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uv
  store <2 x double> %i.uu, ptr %i.uw, align 8, !tbaa !14
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uv
  store <2 x double> %broadcast.splat1307, ptr %i.ux, align 8, !tbaa !14
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uv
  store <2 x double> %broadcast.splat1295, ptr %i.uy, align 8, !tbaa !14
  %i.uz = add nuw nsw i64 %index1309, %i.ca       ; 3 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uz
  store <2 x double> %broadcast.splat1299, ptr %i.va, align 8, !tbaa !14
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uk, <2 x double> %broadcast.splat1305, <2 x double> %broadcast.splat1307)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uz
  store <2 x double> %i.vb, ptr %i.vc, align 8, !tbaa !14
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uz
  store <2 x double> %broadcast.splat1295, ptr %i.vd, align 8, !tbaa !14
  %index.next1311 = add nuw i64 %index1309, 2     ; 2 uses
  %vec.ind.next1312 = add <2 x i32> %vec.ind1310, splat (i32 2)
  %i.ve = icmp eq i64 %index.next1311, %n.vec1293
  br i1 %i.ve, label %middle.block1313, label %vector.body1308, !llvm.loop !71

middle.block1313:                                 ; preds = %vector.body1308
  br i1 %cmp.n1314, label %._crit_edge, label %.lr.ph.preheader1601

.lr.ph.preheader1601:                             ; preds = %vector.memcheck1198, %.lr.ph.preheader, %middle.block1313
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1198 ], [ 0, %.lr.ph.preheader ], [ %n.vec1293, %middle.block1313 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1313
  %i.vf = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.11003, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %.sroa.0807.11005, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.at unwind label %.thread953.loopexit.split-lp.loopexit ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader1601, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1601 ] ; 8 uses
  %i.vg = trunc nuw nsw i64 %indvars.iv to i32
  %i.vh = uitofp nneg i32 %i.vg to double         ; 3 uses
  %i.vi = fneg double %i.vh                       ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv
  store double %3, ptr %i.vk, align 8, !tbaa !14
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.vm = add nuw nsw i64 %indvars.iv, %i.by      ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vm
  %i.vo = insertelement <2 x double> poison, double %i.vi, i64 0
  %i.vp = insertelement <2 x double> %i.vo, double %i.vh, i64 1
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vp, <2 x double> %i.dq, <2 x double> %i.ds) ; 2 uses
  %i.vr = extractelement <2 x double> %i.vq, i64 0
  store double %i.vr, ptr %i.vj, align 8, !tbaa !14
  store double %i.sv, ptr %i.vl, align 8, !tbaa !14
  store double %4, ptr %i.vn, align 8, !tbaa !14
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vm
  %i.vt = extractelement <2 x double> %i.vq, i64 1
  store double %i.vt, ptr %i.vs, align 8, !tbaa !14
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vm
  store double %i.sv, ptr %i.vu, align 8, !tbaa !14
  %i.vv = add nuw nsw i64 %indvars.iv, %i.bz      ; 3 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vv
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vv
  store double %6, ptr %i.vx, align 8, !tbaa !14
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vv
  %i.vz = add nuw nsw i64 %indvars.iv, %i.ca      ; 3 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.vz
  %i.wb = insertelement <2 x double> poison, double %i.vh, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.vi, i64 1
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.dq, <2 x double> %i.du) ; 2 uses
  %i.we = extractelement <2 x double> %i.wd, i64 0
  store double %i.we, ptr %i.vw, align 8, !tbaa !14
  store double %i.sv, ptr %i.vy, align 8, !tbaa !14
  store double %7, ptr %i.wa, align 8, !tbaa !14
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.vz
  %i.wg = extractelement <2 x double> %i.wd, i64 1
  store double %i.wg, ptr %i.wf, align 8, !tbaa !14
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.vz
  store double %i.sv, ptr %i.wh, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.at:                                            ; preds = %._crit_edge
  br i1 %or.cond8, label %bb.au, label %.thread883

bb.au:                                            ; preds = %bb.at
  br i1 %i.k, label %.thread883, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.wi = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.av, %.new
  %indvars.iv.i545 = phi i64 [ %indvars.iv.next.i548.3, %.new ], [ 1, %bb.av ] ; 5 uses
  %.0911.i546 = phi double [ %.1.i547.3, %.new ], [ %i.wi, %bb.av ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.av ]
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !14 ; 2 uses
  %i.wl = fcmp olt double %i.wk, %.0911.i546
  %.1.i547 = select i1 %i.wl, double %i.wk, double %.0911.i546 ; 2 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !14 ; 2 uses
  %i.wp = fcmp olt double %i.wo, %.1.i547
  %.1.i547.1 = select i1 %i.wp, double %i.wo, double %.1.i547 ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !14 ; 2 uses
  %i.wt = fcmp olt double %i.ws, %.1.i547.1
  %.1.i547.2 = select i1 %i.wt, double %i.ws, double %.1.i547.1 ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !14 ; 2 uses
  %i.wx = fcmp olt double %i.ww, %.1.i547.2
  %.1.i547.3 = select i1 %i.wx, double %i.ww, double %.1.i547.2 ; 3 uses
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i545, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.av
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.av ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.wi, %bb.av ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1616)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.aw ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aw ]
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545.epil
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !14 ; 2 uses
  %i.xa = fcmp olt double %i.wz, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.xa, double %i.wz, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.aw, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.aw, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %i.xb = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.xc = fcmp olt double %.1.i547.lcssa, %i.xb
  %.sroa.speculated751 = select i1 %i.xc, double %.1.i547.lcssa, double %i.xb
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.xd = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dw, label %.epil.preheader1617, label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550, %_ZL10simple_minPKdi.exit550.new
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ], [ 1, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %.01316.i554 = phi double [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ], [ %i.xd, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %niter1624 = phi i64 [ %niter1624.next.1, %_ZL10simple_minPKdi.exit550.new ], [ 0, %_ZL10simple_minPKdi.exit550 ]
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !14 ; 3 uses
  %i.xg = fcmp ogt double %i.xf, %.01316.i554
  %i.xh = fcmp oeq double %.01316.i554, +inf
  %or.cond.i555 = or i1 %i.xh, %i.xg
  %i.xi = fcmp une double %i.xf, +inf
  %or.cond15.i556 = and i1 %i.xi, %or.cond.i555
  %.1.i557 = select i1 %or.cond15.i556, double %i.xf, double %.01316.i554 ; 3 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !14 ; 3 uses
  %i.xm = fcmp ogt double %i.xl, %.1.i557
  %i.xn = fcmp oeq double %.1.i557, +inf
  %or.cond.i555.1 = or i1 %i.xn, %i.xm
  %i.xo = fcmp une double %i.xl, +inf
  %or.cond15.i556.1 = and i1 %i.xo, %or.cond.i555.1
  %.1.i557.1 = select i1 %or.cond15.i556.1, double %i.xl, double %.1.i557 ; 3 uses
  %indvars.iv.next.i558.1 = add nuw nsw i64 %indvars.iv.i553, 2 ; 2 uses
  %niter1624.next.1 = add nuw i64 %niter1624, 2   ; 2 uses
  %niter1624.ncmp.1 = icmp eq i64 %niter1624.next.1, %unroll_iter1623
  br i1 %niter1624.ncmp.1, label %_ZL10simple_maxPKdi.exit560.unr-lcssa, label %_ZL10simple_minPKdi.exit550.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit560.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit550.new
  br i1 %lcmp.mod1620.not, label %_ZL10simple_maxPKdi.exit560, label %.epil.preheader1617

.epil.preheader1617:                              ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %_ZL10simple_minPKdi.exit550
  %indvars.iv.i553.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit550 ], [ %indvars.iv.next.i558.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ]
  %.01316.i554.epil.init = phi double [ %i.xd, %_ZL10simple_minPKdi.exit550 ], [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1622)
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553.epil.init
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !14 ; 3 uses
  %i.xr = fcmp ogt double %i.xq, %.01316.i554.epil.init
  %i.xs = fcmp oeq double %.01316.i554.epil.init, +inf
  %or.cond.i555.epil = or i1 %i.xs, %i.xr
  %i.xt = fcmp une double %i.xq, +inf
  %or.cond15.i556.epil = and i1 %i.xt, %or.cond.i555.epil
  %.1.i557.epil = select i1 %or.cond15.i556.epil, double %i.xq, double %.01316.i554.epil.init
  br label %_ZL10simple_maxPKdi.exit560

_ZL10simple_maxPKdi.exit560:                      ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %.epil.preheader1617
  %.1.i557.lcssa = phi double [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ], [ %.1.i557.epil, %.epil.preheader1617 ] ; 2 uses
  %i.xu = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.xv = fcmp olt double %i.xu, %.1.i557.lcssa
  %.sroa.speculated747 = select i1 %i.xv, double %.1.i557.lcssa, double %i.xu
  store double %.sroa.speculated747, ptr %12, align 8, !tbaa !14
  %i.xw = load double, ptr %.sroa.0807.11005, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dx, label %.epil.preheader1625, label %_ZL10simple_maxPKdi.exit560.new

_ZL10simple_maxPKdi.exit560.new:                  ; preds = %_ZL10simple_maxPKdi.exit560, %_ZL10simple_maxPKdi.exit560.new
  %indvars.iv.i563 = phi i64 [ %indvars.iv.next.i566.3, %_ZL10simple_maxPKdi.exit560.new ], [ 1, %_ZL10simple_maxPKdi.exit560 ] ; 5 uses
  %.0911.i564 = phi double [ %.1.i565.3, %_ZL10simple_maxPKdi.exit560.new ], [ %i.xw, %_ZL10simple_maxPKdi.exit560 ] ; 2 uses
  %niter1632 = phi i64 [ %niter1632.next.3, %_ZL10simple_maxPKdi.exit560.new ], [ 0, %_ZL10simple_maxPKdi.exit560 ]
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !14 ; 2 uses
  %i.xz = fcmp olt double %i.xy, %.0911.i564
  %.1.i565 = select i1 %i.xz, double %i.xy, double %.0911.i564 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !14 ; 2 uses
  %i.yd = fcmp olt double %i.yc, %.1.i565
  %.1.i565.1 = select i1 %i.yd, double %i.yc, double %.1.i565 ; 2 uses
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !14 ; 2 uses
  %i.yh = fcmp olt double %i.yg, %.1.i565.1
  %.1.i565.2 = select i1 %i.yh, double %i.yg, double %.1.i565.1 ; 2 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !14 ; 2 uses
  %i.yl = fcmp olt double %i.yk, %.1.i565.2
  %.1.i565.3 = select i1 %i.yl, double %i.yk, double %.1.i565.2 ; 3 uses
  %indvars.iv.next.i566.3 = add nuw nsw i64 %indvars.iv.i563, 4 ; 2 uses
  %niter1632.next.3 = add nuw i64 %niter1632, 4   ; 2 uses
  %niter1632.ncmp.3 = icmp eq i64 %niter1632.next.3, %unroll_iter1631
  br i1 %niter1632.ncmp.3, label %_ZL10simple_minPKdi.exit568.unr-lcssa, label %_ZL10simple_maxPKdi.exit560.new, !llvm.loop !0

_ZL10simple_minPKdi.exit568.unr-lcssa:            ; preds = %_ZL10simple_maxPKdi.exit560.new
  br i1 %lcmp.mod1628.not, label %_ZL10simple_minPKdi.exit568, label %.epil.preheader1625

.epil.preheader1625:                              ; preds = %_ZL10simple_minPKdi.exit568.unr-lcssa, %_ZL10simple_maxPKdi.exit560
  %indvars.iv.i563.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit560 ], [ %indvars.iv.next.i566.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  %.0911.i564.epil.init = phi double [ %i.xw, %_ZL10simple_maxPKdi.exit560 ], [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1630)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader1625
  %indvars.iv.i563.epil = phi i64 [ %indvars.iv.i563.epil.init, %.epil.preheader1625 ], [ %indvars.iv.next.i566.epil, %bb.ax ] ; 2 uses
  %.0911.i564.epil = phi double [ %.0911.i564.epil.init, %.epil.preheader1625 ], [ %.1.i565.epil, %bb.ax ] ; 2 uses
  %epil.iter1627 = phi i64 [ 0, %.epil.preheader1625 ], [ %epil.iter1627.next, %bb.ax ]
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i563.epil
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !14 ; 2 uses
  %i.yo = fcmp olt double %i.yn, %.0911.i564.epil
  %.1.i565.epil = select i1 %i.yo, double %i.yn, double %.0911.i564.epil ; 2 uses
  %indvars.iv.next.i566.epil = add nuw nsw i64 %indvars.iv.i563.epil, 1
  %epil.iter1627.next = add i64 %epil.iter1627, 1 ; 2 uses
  %epil.iter1627.cmp.not = icmp eq i64 %epil.iter1627.next, %xtraiter1626
  br i1 %epil.iter1627.cmp.not, label %_ZL10simple_minPKdi.exit568, label %bb.ax, !llvm.loop !74

_ZL10simple_minPKdi.exit568:                      ; preds = %bb.ax, %_ZL10simple_minPKdi.exit568.unr-lcssa
  %.1.i565.lcssa = phi double [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ], [ %.1.i565.epil, %bb.ax ] ; 2 uses
  %i.yp = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.yq = fcmp olt double %.1.i565.lcssa, %i.yp
  %.sroa.speculated743 = select i1 %i.yq, double %.1.i565.lcssa, double %i.yp
  store double %.sroa.speculated743, ptr %10, align 8, !tbaa !14
  %i.yr = load double, ptr %.sroa.0807.11005, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dy, label %.epil.preheader1633, label %_ZL10simple_minPKdi.exit568.new

_ZL10simple_minPKdi.exit568.new:                  ; preds = %_ZL10simple_minPKdi.exit568, %_ZL10simple_minPKdi.exit568.new
  %indvars.iv.i571 = phi i64 [ %indvars.iv.next.i576.1, %_ZL10simple_minPKdi.exit568.new ], [ 1, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %.01316.i572 = phi double [ %.1.i575.1, %_ZL10simple_minPKdi.exit568.new ], [ %i.yr, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %niter1640 = phi i64 [ %niter1640.next.1, %_ZL10simple_minPKdi.exit568.new ], [ 0, %_ZL10simple_minPKdi.exit568 ]
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i571
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !14 ; 3 uses
  %i.yu = fcmp ogt double %i.yt, %.01316.i572
  %i.yv = fcmp oeq double %.01316.i572, +inf
  %or.cond.i573 = or i1 %i.yv, %i.yu
  %i.yw = fcmp une double %i.yt, +inf
  %or.cond15.i574 = and i1 %i.yw, %or.cond.i573
  %.1.i575 = select i1 %or.cond15.i574, double %i.yt, double %.01316.i572 ; 3 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv.i571
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !14 ; 3 uses
  %i.za = fcmp ogt double %i.yz, %.1.i575
  %i.zb = fcmp oeq double %.1.i575, +inf
  %or.cond.i573.1 = or i1 %i.zb, %i.za
end_hunk_2
begin_hunk_3_@proj_trans_bounds_3D:bb.a
  %niter1683.next.3 = add nuw i64 %niter1683, 4   ; 2 uses
  %niter1683.ncmp.3 = icmp eq i64 %niter1683.next.3, %unroll_iter1682
  br i1 %niter1683.ncmp.3, label %_ZL10simple_minPKdi.exit646.unr-lcssa, label %.new1675, !llvm.loop !0

_ZL10simple_minPKdi.exit646.unr-lcssa:            ; preds = %.new1675
  br i1 %lcmp.mod1679.not, label %_ZL10simple_minPKdi.exit646, label %.epil.preheader1676

.epil.preheader1676:                              ; preds = %_ZL10simple_minPKdi.exit646.unr-lcssa, %bb.by
  %indvars.iv.i641.epil.init = phi i64 [ 1, %bb.by ], [ %indvars.iv.next.i644.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  %.0911.i642.epil.init = phi double [ %i.aff, %bb.by ], [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1681)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader1676
  %indvars.iv.i641.epil = phi i64 [ %indvars.iv.i641.epil.init, %.epil.preheader1676 ], [ %indvars.iv.next.i644.epil, %bb.bz ] ; 2 uses
  %.0911.i642.epil = phi double [ %.0911.i642.epil.init, %.epil.preheader1676 ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %epil.iter1678 = phi i64 [ 0, %.epil.preheader1676 ], [ %epil.iter1678.next, %bb.bz ]
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641.epil
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !14 ; 2 uses
  %i.afx = fcmp olt double %i.afw, %.0911.i642.epil
  %.1.i643.epil = select i1 %i.afx, double %i.afw, double %.0911.i642.epil ; 2 uses
  %indvars.iv.next.i644.epil = add nuw nsw i64 %indvars.iv.i641.epil, 1
  %epil.iter1678.next = add i64 %epil.iter1678, 1 ; 2 uses
  %epil.iter1678.cmp.not = icmp eq i64 %epil.iter1678.next, %xtraiter1677
  br i1 %epil.iter1678.cmp.not, label %_ZL10simple_minPKdi.exit646, label %bb.bz, !llvm.loop !77

_ZL10simple_minPKdi.exit646:                      ; preds = %bb.bz, %_ZL10simple_minPKdi.exit646.unr-lcssa
  %.1.i643.lcssa = phi double [ %.1.i643.3, %_ZL10simple_minPKdi.exit646.unr-lcssa ], [ %.1.i643.epil, %bb.bz ] ; 2 uses
  %i.afy = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.afz = fcmp olt double %.1.i643.lcssa, %i.afy
  %.sroa.speculated711 = select i1 %i.afz, double %.1.i643.lcssa, double %i.afy
  store double %.sroa.speculated711, ptr %11, align 8, !tbaa !14
  br i1 %i.ee, label %.epil.preheader1684, label %_ZL10simple_minPKdi.exit646.new

_ZL10simple_minPKdi.exit646.new:                  ; preds = %_ZL10simple_minPKdi.exit646, %_ZL10simple_minPKdi.exit646.new
  %indvars.iv.i649 = phi i64 [ %indvars.iv.next.i654.1, %_ZL10simple_minPKdi.exit646.new ], [ 1, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %.01316.i650 = phi double [ %.1.i653.1, %_ZL10simple_minPKdi.exit646.new ], [ %i.aff, %_ZL10simple_minPKdi.exit646 ] ; 3 uses
  %niter1691 = phi i64 [ %niter1691.next.1, %_ZL10simple_minPKdi.exit646.new ], [ 0, %_ZL10simple_minPKdi.exit646 ]
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !14 ; 3 uses
  %i.agc = fcmp ogt double %i.agb, %.01316.i650
  %i.agd = fcmp oeq double %.01316.i650, +inf
  %or.cond.i651 = or i1 %i.agd, %i.agc
  %i.age = fcmp une double %i.agb, +inf
  %or.cond15.i652 = and i1 %i.age, %or.cond.i651
  %.1.i653 = select i1 %or.cond15.i652, double %i.agb, double %.01316.i650 ; 3 uses
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !14 ; 3 uses
  %i.agi = fcmp ogt double %i.agh, %.1.i653
  %i.agj = fcmp oeq double %.1.i653, +inf
  %or.cond.i651.1 = or i1 %i.agj, %i.agi
  %i.agk = fcmp une double %i.agh, +inf
  %or.cond15.i652.1 = and i1 %i.agk, %or.cond.i651.1
  %.1.i653.1 = select i1 %or.cond15.i652.1, double %i.agh, double %.1.i653 ; 3 uses
  %indvars.iv.next.i654.1 = add nuw nsw i64 %indvars.iv.i649, 2 ; 2 uses
  %niter1691.next.1 = add nuw i64 %niter1691, 2   ; 2 uses
  %niter1691.ncmp.1 = icmp eq i64 %niter1691.next.1, %unroll_iter1690
  br i1 %niter1691.ncmp.1, label %_ZL10simple_maxPKdi.exit656.unr-lcssa, label %_ZL10simple_minPKdi.exit646.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit656.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit646.new
  br i1 %lcmp.mod1687.not, label %_ZL10simple_maxPKdi.exit656, label %.epil.preheader1684

.epil.preheader1684:                              ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %_ZL10simple_minPKdi.exit646
  %indvars.iv.i649.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit646 ], [ %indvars.iv.next.i654.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ]
  %.01316.i650.epil.init = phi double [ %i.aff, %_ZL10simple_minPKdi.exit646 ], [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1689)
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i649.epil.init
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !14 ; 3 uses
  %i.agn = fcmp ogt double %i.agm, %.01316.i650.epil.init
  %i.ago = fcmp oeq double %.01316.i650.epil.init, +inf
  %or.cond.i651.epil = or i1 %i.ago, %i.agn
  %i.agp = fcmp une double %i.agm, +inf
  %or.cond15.i652.epil = and i1 %i.agp, %or.cond.i651.epil
  %.1.i653.epil = select i1 %or.cond15.i652.epil, double %i.agm, double %.01316.i650.epil.init
  br label %_ZL10simple_maxPKdi.exit656

_ZL10simple_maxPKdi.exit656:                      ; preds = %_ZL10simple_maxPKdi.exit656.unr-lcssa, %.epil.preheader1684
  %.1.i653.lcssa = phi double [ %.1.i653.1, %_ZL10simple_maxPKdi.exit656.unr-lcssa ], [ %.1.i653.epil, %.epil.preheader1684 ] ; 2 uses
  %i.agq = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.agr = fcmp olt double %i.agq, %.1.i653.lcssa
  %.sroa.speculated = select i1 %i.agr, double %.1.i653.lcssa, double %i.agq
  store double %.sroa.speculated, ptr %14, align 8, !tbaa !14
  br i1 %or.cond8, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZL10simple_maxPKdi.exit656
  %i.ags = load double, ptr %9, align 8, !tbaa !14
  %i.agt = load double, ptr %10, align 8, !tbaa !14
  store double %i.agt, ptr %9, align 8, !tbaa !14
  store double %i.ags, ptr %10, align 8, !tbaa !14
  %i.agu = load double, ptr %12, align 8, !tbaa !14
  %i.agv = load double, ptr %13, align 8, !tbaa !14
  store double %i.agv, ptr %12, align 8, !tbaa !14
  store double %i.agu, ptr %13, align 8, !tbaa !14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZL10simple_maxPKdi.exit656
  br i1 %.0410, label %.loopexit, label %.preheader975.preheader

.preheader975.preheader:                          ; preds = %bb.cb
  %i.agw = sub i64 %.sroa.0845.28901188, %.sroa.0807.28971187
  %diff.check = icmp ugt i64 %i.agw, -32
  %i.agx = sub i64 %.sroa.0845.28901188, %i.aw
  %diff.check1189.a = icmp ugt i64 %i.agx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1189.a
  %i.agy = sub i64 %.sroa.0807.28971187, %i.aw
  %diff.check1190 = icmp ugt i64 %i.agy, -32
  %conflict.rdx1191 = or i1 %conflict.rdx, %diff.check1190
  %broadcast.splatinsert1196 = insertelement <2 x double> poison, double %i.sv, i64 0
  %broadcast.splat1197 = shufflevector <2 x double> %broadcast.splatinsert1196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader975

.preheader975:                                    ; preds = %.preheader975.preheader, %._crit_edge1001
  %.04091002 = phi i32 [ %i.aig, %._crit_edge1001 ], [ 1, %.preheader975.preheader ] ; 2 uses
  %i.agz = uitofp nneg i32 %.04091002 to double
  %i.aha = call double @llvm.fmuladd.f64(double %i.agz, double %i.bu, double %4) ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx1191
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader975
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aha, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ahb = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ahc = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ahd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahb, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.ahe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahc, <2 x double> %broadcast.splat1193, <2 x double> %broadcast.splat1195)
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %index ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  store <2 x double> %i.ahd, ptr %i.ahf, align 8, !tbaa !14
  store <2 x double> %i.ahe, ptr %i.ahg, align 8, !tbaa !14
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %index ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ahh, align 8, !tbaa !14
  store <2 x double> %broadcast.splat, ptr %i.ahi, align 8, !tbaa !14
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  store <2 x double> %broadcast.splat1197, ptr %i.ahj, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1197, ptr %i.ahk, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.ahl = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahl, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge997, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader975, %middle.block
  %indvars.iv1074.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader975 ] ; 7 uses
  br i1 %lcmp.mod1693.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ahm = trunc nuw nsw i64 %indvars.iv1074.ph to i32
  %i.ahn = uitofp nneg i32 %i.ahm to double
  %i.aho = call double @llvm.fmuladd.f64(double %i.ahn, double %.04321141, double %3)
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074.ph
  store double %i.aho, ptr %i.ahp, align 8, !tbaa !14
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074.ph
  store double %i.aha, ptr %i.ahq, align 8, !tbaa !14
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074.ph
  store double %i.sv, ptr %i.ahr, align 8, !tbaa !14
  %indvars.iv.next1075.prol = or disjoint i64 %indvars.iv1074.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1074.unr = phi i64 [ %indvars.iv1074.ph, %scalar.ph.preheader ], [ %indvars.iv.next1075.prol, %scalar.ph.prol ]
  %i.ahs = icmp eq i64 %indvars.iv1074.ph, %i.dl
  br i1 %i.ahs, label %._crit_edge997, label %scalar.ph

._crit_edge997:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aht = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.2890, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %.sroa.0807.2897, i64 noundef 8, i64 noundef %i.by, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.by, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph1000 unwind label %.thread953.loopexit ; 0 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075.1, %scalar.ph ], [ %indvars.iv1074.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ahu = trunc nuw nsw i64 %indvars.iv1074 to i32
  %i.ahv = uitofp nneg i32 %i.ahu to double
  %i.ahw = call double @llvm.fmuladd.f64(double %i.ahv, double %.04321141, double %3)
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1074
  store double %i.ahw, ptr %i.ahx, align 8, !tbaa !14
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1074
  store double %i.aha, ptr %i.ahy, align 8, !tbaa !14
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1074
  store double %i.sv, ptr %i.ahz, align 8, !tbaa !14
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 4 uses
  %i.aia = trunc nuw nsw i64 %indvars.iv.next1075 to i32
  %i.aib = uitofp nneg i32 %i.aia to double
  %i.aic = call double @llvm.fmuladd.f64(double %i.aib, double %.04321141, double %3)
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv.next1075
  store double %i.aic, ptr %i.aid, align 8, !tbaa !14
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv.next1075
  store double %i.aha, ptr %i.aie, align 8, !tbaa !14
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next1075
  store double %i.sv, ptr %i.aif, align 8, !tbaa !14
  %indvars.iv.next1075.1 = add nuw nsw i64 %indvars.iv1074, 2 ; 2 uses
  %exitcond1079.not.1 = icmp eq i64 %indvars.iv.next1075.1, %wide.trip.count1078
  br i1 %exitcond1079.not.1, label %._crit_edge997, label %scalar.ph, !llvm.loop !79

._crit_edge1001:                                  ; preds = %bb.ce
  %i.aig = add nuw nsw i32 %.04091002, 1          ; 2 uses
  %exitcond1086.not = icmp eq i32 %i.aig, %i.cb
  br i1 %exitcond1086.not, label %.loopexit, label %.preheader975, !llvm.loop !80

.lr.ph1000:                                       ; preds = %._crit_edge997, %bb.ce
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %bb.ce ], [ 0, %._crit_edge997 ] ; 4 uses
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2890, i64 %indvars.iv1080 ; 2 uses
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !14 ; 3 uses
  %i.aij = call double @llvm.fabs.f64(double %i.aii)
  %i.aik = fcmp ueq double %i.aij, +inf
  br i1 %i.aik, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1000
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2897, i64 %indvars.iv1080 ; 3 uses
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !14
  %i.ain = call double @llvm.fabs.f64(double %i.aim)
  %i.aio = fcmp ueq double %i.ain, +inf
  br i1 %i.aio, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aip = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.aiq = fcmp olt double %i.aii, %i.aip
  %i.air = select i1 %i.aiq, double %i.aii, double %i.aip
  store double %i.air, ptr %9, align 8, !tbaa !14
  %i.ais = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ait = load double, ptr %i.aih, align 8, !tbaa !14 ; 2 uses
  %i.aiu = fcmp olt double %i.ais, %i.ait
  %i.aiv = select i1 %i.aiu, double %i.ait, double %i.ais
  store double %i.aiv, ptr %12, align 8, !tbaa !14
  %i.aiw = load double, ptr %i.ail, align 8, !tbaa !14 ; 2 uses
  %i.aix = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.aiy = fcmp olt double %i.aiw, %i.aix
  %i.aiz = select i1 %i.aiy, double %i.aiw, double %i.aix
  store double %i.aiz, ptr %10, align 8, !tbaa !14
  %i.aja = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.ajb = load double, ptr %i.ail, align 8, !tbaa !14 ; 2 uses
  %i.ajc = fcmp olt double %i.aja, %i.ajb
  %i.ajd = select i1 %i.ajc, double %i.ajb, double %i.aja
  store double %i.ajd, ptr %13, align 8, !tbaa !14
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv1080
  %i.ajf = load double, ptr %i.aje, align 8, !tbaa !14 ; 4 uses
  %i.ajg = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.ajh = fcmp olt double %i.ajf, %i.ajg
  %i.aji = select i1 %i.ajh, double %i.ajf, double %i.ajg
  store double %i.aji, ptr %11, align 8, !tbaa !14
  %i.ajj = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.ajk = fcmp olt double %i.ajj, %i.ajf
  %i.ajl = select i1 %i.ajk, double %i.ajf, double %i.ajj
  store double %i.ajl, ptr %14, align 8, !tbaa !14
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1000, %bb.cc, %bb.cd
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %exitcond1084.not = icmp eq i64 %indvars.iv.next1081, %wide.trip.count1078
  br i1 %exitcond1084.not, label %._crit_edge1001, label %.lr.ph1000, !llvm.loop !81

.loopexit:                                        ; preds = %._crit_edge1001, %bb.cb
  br i1 %i.su, label %.lr.ph.preheader, label %.loopexit979, !llvm.loop !82

.loopexit979:                                     ; preds = %.loopexit, %.invoke, %bb.z, %_ZL10simple_maxPKdi.exit542, %bb.w
  %.sroa.0845.4.ph = phi ptr [ %i.ad, %bb.w ], [ %i.ad, %.invoke ], [ %i.ad, %bb.z ], [ %i.ad, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0845.2890, %.loopexit ]
  %.sroa.43.4.ph = phi ptr [ %i.af, %bb.w ], [ %i.af, %.invoke ], [ %i.af, %bb.z ], [ %i.af, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.43.2894, %.loopexit ]
  %.sroa.0807.4.ph = phi ptr [ %i.ag, %bb.w ], [ %i.ag, %.invoke ], [ %i.ag, %bb.z ], [ %i.ag, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.0807.2897, %.loopexit ]
  %.sroa.45.4.ph = phi ptr [ %i.ai, %bb.w ], [ %i.ai, %.invoke ], [ %i.ai, %bb.z ], [ %i.ai, %_ZL10simple_maxPKdi.exit542 ], [ %.sroa.45.2900, %.loopexit ]
  %.4449.ph = phi i32 [ 0, %bb.w ], [ 0, %.invoke ], [ 0, %bb.z ], [ 1, %_ZL10simple_maxPKdi.exit542 ], [ 1, %.loopexit ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.r, %.loopexit979
  %.4449921 = phi i32 [ %.4449.ph, %.loopexit979 ], [ 0, %bb.r ] ; 2 uses
  %.sroa.45.4917 = phi ptr [ %.sroa.45.4.ph, %.loopexit979 ], [ %.sroa.45.0, %bb.r ]
  %.sroa.0807.4915 = phi ptr [ %.sroa.0807.4.ph, %.loopexit979 ], [ %.sroa.0807.0, %bb.r ] ; 3 uses
  %.sroa.43.4913 = phi ptr [ %.sroa.43.4.ph, %.loopexit979 ], [ %.sroa.43.0, %bb.r ]
  %.sroa.0845.4911 = phi ptr [ %.sroa.0845.4.ph, %.loopexit979 ], [ %.sroa.0845.0, %bb.r ] ; 3 uses
  %.not.i.i.i664 = icmp eq ptr %.sroa.0807.4915, null
  br i1 %.not.i.i.i664, label %_ZNSt6vectorIdSaIdEED2Ev.exit665, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ajm = ptrtoint ptr %.sroa.45.4917 to i64
  %i.ajn = ptrtoint ptr %.sroa.0807.4915 to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.4915, i64 noundef %i.ajo) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit665

_ZNSt6vectorIdSaIdEED2Ev.exit665:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.cf
  %.not.i.i.i666 = icmp eq ptr %.sroa.0845.4911, null
  br i1 %.not.i.i.i666, label %_ZNSt6vectorIdSaIdEED2Ev.exit667, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit665
  %i.ajp = ptrtoint ptr %.sroa.43.4913 to i64
  %i.ajq = ptrtoint ptr %.sroa.0845.4911 to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.4911, i64 noundef %i.ajr) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

.thread953.loopexit:                              ; preds = %._crit_edge997
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.thread953.loopexit.split-lp.loopexit:            ; preds = %._crit_edge
  %lpad.loopexit980 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

.thread953.loopexit.split-lp.loopexit.split-lp:   ; preds = %.thread1144.invoke, %.invoke, %._crit_edge1051, %bb.ab, %bb.aa, %bb.y, %bb.v, %bb.u
  %lpad.loopexit.split-lp981 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread

_ZNSt6vectorIdSaIdEED2Ev.exit669.thread:          ; preds = %.thread953.loopexit, %.thread953.loopexit.split-lp.loopexit.split-lp, %.thread953.loopexit.split-lp.loopexit
  %.sroa.0845.3.ph = phi ptr [ %.sroa.0845.2890, %.thread953.loopexit ], [ %.sroa.0845.11003, %.thread953.loopexit.split-lp.loopexit ], [ %i.ad, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.43.3.ph = phi ptr [ %.sroa.43.2894, %.thread953.loopexit ], [ %.sroa.43.11004, %.thread953.loopexit.split-lp.loopexit ], [ %i.af, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0807.3.ph = phi ptr [ %.sroa.0807.2897, %.thread953.loopexit ], [ %.sroa.0807.11005, %.thread953.loopexit.split-lp.loopexit ], [ %i.ag, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.45.3.ph = phi ptr [ %.sroa.45.2900, %.thread953.loopexit ], [ %.sroa.45.11006, %.thread953.loopexit.split-lp.loopexit ], [ %i.ai, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread953.loopexit ], [ %lpad.loopexit980, %.thread953.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp981, %.thread953.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ac) #19
  br label %bb.ci

bb.ch:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit669

_ZNSt6vectorIdSaIdEED2Ev.exit669:                 ; preds = %bb.o, %bb.s, %bb.ch
  %.merged935 = phi { ptr, i32 } [ %i.av, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.ch ], [ %i.ak, %bb.o ] ; 2 uses
  %.not.i.i.i670 = icmp eq ptr %.sroa.0807.0, null
  br i1 %.not.i.i.i670, label %_ZNSt6vectorIdSaIdEED2Ev.exit671, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit669
  %.sroa.0845.59311158.a = phi ptr [ %.sroa.0845.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.0845.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.sroa.43.59321156.a = phi ptr [ %.sroa.43.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.43.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.sroa.0807.59331155 = phi ptr [ %.sroa.0807.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.0807.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ] ; 2 uses
  %.sroa.45.59341154 = phi ptr [ %.sroa.45.3.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.sroa.45.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %.merged9351152.a = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIdSaIdEED2Ev.exit669.thread ], [ %.merged935, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ]
  %i.ajs = ptrtoint ptr %.sroa.45.59341154 to i64
  %i.ajt = ptrtoint ptr %.sroa.0807.59331155 to i64
  %i.aju = sub i64 %i.ajs, %i.ajt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.59331155, i64 noundef %i.aju) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit671

_ZNSt6vectorIdSaIdEED2Ev.exit671:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit669, %bb.ci
  %.sroa.0845.59311159 = phi ptr [ %.sroa.0845.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.0845.59311158.a, %bb.ci ] ; 3 uses
  %.sroa.43.59321157 = phi ptr [ %.sroa.43.0, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.sroa.43.59321156.a, %bb.ci ]
  %.merged9351153 = phi { ptr, i32 } [ %.merged935, %_ZNSt6vectorIdSaIdEED2Ev.exit669 ], [ %.merged9351152.a, %bb.ci ]
  %.not.i.i.i672 = icmp eq ptr %.sroa.0845.59311159, null
  br i1 %.not.i.i.i672, label %_ZNSt6vectorIdSaIdEED2Ev.exit673, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit671
  %i.ajv = ptrtoint ptr %.sroa.43.59321157 to i64
  %i.ajw = ptrtoint ptr %.sroa.0845.59311159 to i64
  %i.ajx = sub i64 %i.ajv, %i.ajw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0845.59311159, i64 noundef %i.ajx) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit673

_ZNSt6vectorIdSaIdEED2Ev.exit673:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit671, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  resume { ptr, i32 } %.merged9351153

_ZNSt6vectorIdSaIdEED2Ev.exit667:                 ; preds = %bb.cg, %_ZNSt6vectorIdSaIdEED2Ev.exit665, %bb.j, %bb.h, %bb.f
  %.6451 = phi i32 [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ %.4449921, %_ZNSt6vectorIdSaIdEED2Ev.exit665 ], [ %.4449921, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit667, %bb.d, %bb.b
  %.7452 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.6451, %_ZNSt6vectorIdSaIdEED2Ev.exit667 ]
  ret i32 %.7452

bb.cl:                                            ; preds = %bb.s
  %i.ajy = landingpad { ptr, i32 }
          catch ptr null
  %i.ajz = extractvalue { ptr, i32 } %i.ajy, 0
  call void @__clang_call_terminate(ptr %i.ajz) #20
  unreachable
}

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #1

declare ptr @proj_as_proj_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8internal9ends_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare void @_Z22proj_context_log_debugP6pj_ctxPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @proj_crs_get_sub_crs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @proj_crs_get_coordinate_system(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @proj_cs_get_axis_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @proj_get_target_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans_bounds?download=true
inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZL16antimeridian_maxPKdi:bb.a
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
  %i.o = add nuw nsw i32 %15, 1                   ; 12 uses
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
  %17 = sub i64 %i.cc, %i.aw                      ; 2 uses
  %i.cd = shl nuw nsw i64 %i.bz, 3                ; 10 uses
  %18 = sub i64 %17, %i.cd                        ; 2 uses
  %19 = add i64 %i.cc, %i.aw
  %20 = sub i64 %19, %i.cd                        ; 2 uses
  %21 = sub nsw i64 %i.cc, %i.cd                  ; 3 uses
  %i.ce = shl nuw nsw i64 %i.by, 3                ; 10 uses
  %22 = sub i64 %17, %i.ce                        ; 2 uses
  %23 = add i64 %i.ce, %i.aw
  %24 = sub i64 %i.cd, %23                        ; 2 uses
  %25 = add i64 %i.cc, %i.aw
  %26 = sub i64 %25, %i.ce                        ; 2 uses
  %27 = sub nsw i64 %i.cc, %i.ce                  ; 3 uses
  %28 = add i64 %i.cd, %i.aw
  %29 = sub i64 %28, %i.ce                        ; 2 uses
  %30 = sub nsw i64 %i.cd, %i.ce                  ; 3 uses
  %31 = sub i64 %i.cc, %i.aw                      ; 2 uses
  %32 = sub i64 %i.cd, %i.aw                      ; 2 uses
  %33 = sub i64 %i.ce, %i.aw                      ; 2 uses
  %34 = add i64 %i.cc, %i.aw                      ; 2 uses
  %35 = add i64 %i.cd, %i.aw                      ; 2 uses
  %36 = add i64 %i.ce, %i.aw                      ; 2 uses
  %i.cf = add nsw i64 %i.ab, -1                   ; 25 uses
  %i.cg = add nsw i64 %i.ab, -2                   ; 10 uses
  %i.ch = zext nneg i32 %15 to i64
  %min.iters.check1297 = icmp ult i32 %15, 25
  %invariant.op = add i64 %33, -1
  %invariant.op1862 = add i64 %33, -1
  %invariant.op1864 = add i64 %32, -1
  %invariant.op1866 = add i64 %32, -1
  %invariant.op1868 = add i64 %31, -1
  %invariant.op1870 = add i64 %31, -1
  %diff.check1346 = icmp ult i64 %30, 16
  %invariant.op1872 = add i64 %30, -1
  %diff.check1352 = icmp ult i64 %27, 16
  %invariant.op1874 = add i64 %27, -1
  %invariant.op1876 = add i64 %30, -1
  %invariant.op1878 = add i64 %27, -1
  %invariant.op1880 = add i64 %24, -1
  %i.ci = add i64 %24, -1
  %i.cj = add i64 %22, -1
  %i.ck = add i64 %22, -1
  %37 = add nsw i64 %21, -1
  %diff.check1374 = icmp ult i64 %37, 15
  %invariant.op1888 = add i64 %21, -1
  %invariant.op1890 = add i64 %21, -1
  %invariant.op1892 = add i64 %18, -1
  %invariant.op1894 = add i64 %18, -1
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
  %i.cl = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %.04321140, i64 1 ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %7, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %3, i64 1
  %i.cp = insertelement <2 x double> poison, double %4, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %6, i64 1
  %xtraiter = and i64 %i.cf, 3                    ; 3 uses
  %i.cr = icmp ult i64 %i.cg, 3
  %unroll_iter = and i64 %i.cf, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1712 = icmp ne i64 %xtraiter, 0
  %xtraiter1714 = and i64 %i.cf, 1
  %i.cs = icmp eq i64 %i.cg, 0
  %unroll_iter1719 = and i64 %i.cf, -2
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  %lcmp.mod1718 = trunc i64 %i.cf to i1
  %xtraiter1722 = and i64 %i.cf, 3                ; 3 uses
  %i.ct = icmp ult i64 %i.cg, 3
  %unroll_iter1727 = and i64 %i.cf, -4
  %lcmp.mod1724.not = icmp eq i64 %xtraiter1722, 0
  %lcmp.mod1726 = icmp ne i64 %xtraiter1722, 0
  %xtraiter1730 = and i64 %i.cf, 1
  %i.cu = icmp eq i64 %i.cg, 0
  %unroll_iter1735 = and i64 %i.cf, -2
  %lcmp.mod1732.not = icmp eq i64 %xtraiter1730, 0
  %lcmp.mod1734 = trunc i64 %i.cf to i1
  %xtraiter1738 = and i64 %i.cf, 3                ; 3 uses
  %i.cv = icmp ult i64 %i.cg, 3
  %unroll_iter1743 = and i64 %i.cf, -4
  %lcmp.mod1740.not = icmp eq i64 %xtraiter1738, 0
  %lcmp.mod1742 = icmp ne i64 %xtraiter1738, 0
  %xtraiter1746 = and i64 %i.cf, 1
  %i.cw = icmp eq i64 %i.cg, 0
  %unroll_iter1751 = and i64 %i.cf, -2
  %lcmp.mod1748.not = icmp eq i64 %xtraiter1746, 0
  %lcmp.mod1750 = trunc i64 %i.cf to i1
  %xtraiter1755 = and i64 %i.cf, 1
  %i.cx = icmp eq i64 %i.cg, 0
  %unroll_iter1760 = and i64 %i.cf, -2
  %lcmp.mod1757.not = icmp eq i64 %xtraiter1755, 0
  %lcmp.mod1759 = trunc i64 %i.cf to i1
  %xtraiter1764 = and i64 %i.cf, 3                ; 3 uses
  %i.cy = icmp ult i64 %i.cg, 3
  %unroll_iter1769 = and i64 %i.cf, -4
  %lcmp.mod1766.not = icmp eq i64 %xtraiter1764, 0
  %lcmp.mod1768 = icmp ne i64 %xtraiter1764, 0
  %xtraiter1773 = and i64 %i.cf, 3                ; 3 uses
  %i.cz = icmp ult i64 %i.cg, 3
  %unroll_iter1778 = and i64 %i.cf, -4
  %lcmp.mod1775.not = icmp eq i64 %xtraiter1773, 0
  %lcmp.mod1777 = icmp ne i64 %xtraiter1773, 0
  %xtraiter1781 = and i64 %i.cf, 1
  %i.da = icmp eq i64 %i.cg, 0
  %unroll_iter1786 = and i64 %i.cf, -2
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1781, 0
  %lcmp.mod1785 = trunc i64 %i.cf to i1
  %min.iters.check = icmp ult i32 %15, 3
  %n.vec = and i64 %i.by, 32764                   ; 3 uses
  %broadcast.splatinsert1196 = insertelement <2 x double> poison, double %.04321140, i64 0
  %broadcast.splat1197 = shufflevector <2 x double> %broadcast.splatinsert1196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1198 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1199 = shufflevector <2 x double> %broadcast.splatinsert1198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.by
  %xtraiter1788 = and i64 %i.by, 1
  %lcmp.mod1789.not = icmp eq i64 %xtraiter1788, 0
  br label %.lr.ph.preheader

.lr.ph1035.preheader:                             ; preds = %.lr.ph1026.1, %middle.block1583
  %indvars.iv.next1098.1.lcssa = phi i64 [ %i.im, %middle.block1583 ], [ %indvars.iv.next1098.1, %.lr.ph1026.1 ] ; 3 uses
  %i.db = fsub double %8, %5
  %i.dc = uitofp nneg i32 %i.o to double
  %i.dd = fdiv double %i.db, %i.dc                ; 8 uses
  %min.iters.check1588 = icmp ult i32 %15, 3
  br i1 %min.iters.check1588, label %.lr.ph1035.preheader1680, label %vector.ph1589

vector.ph1589:                                    ; preds = %.lr.ph1035.preheader
  %n.vec1590 = and i64 %i.eg, 32764               ; 4 uses
  %i.de = add i64 %indvars.iv.next1098.1.lcssa, %n.vec1590 ; 2 uses
  %i.df = trunc nuw nsw i64 %n.vec1590 to i32
  %broadcast.splatinsert1591 = insertelement <2 x double> poison, double %i.dd, i64 0
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
  %i.dg = add i64 %indvars.iv.next1098.1.lcssa, %index1600 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %broadcast.splat1594, ptr %i.dh, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1594, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %broadcast.splat1596, ptr %i.dj, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1596, ptr %i.dk, align 8, !tbaa !14
  %i.dl = uitofp nneg <2 x i32> %vec.ind1601 to <2 x double>
  %i.dm = uitofp nneg <2 x i32> %step.add1602 to <2 x double>
  %i.dn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %broadcast.splat1592, <2 x double> %broadcast.splat1598)
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %broadcast.splat1592, <2 x double> %broadcast.splat1598)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.dg ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x double> %i.dn, ptr %i.dp, align 8, !tbaa !14
  store <2 x double> %i.do, ptr %i.dq, align 8, !tbaa !14
  %index.next1603 = add nuw i64 %index1600, 4     ; 2 uses
  %vec.ind.next1604 = add nuw <2 x i32> %vec.ind1601, splat (i32 4)
  %i.dr = icmp eq i64 %index.next1603, %n.vec1590
  br i1 %i.dr, label %middle.block1605, label %vector.body1599, !llvm.loop !44

middle.block1605:                                 ; preds = %vector.body1599
  %cmp.n1606 = icmp eq i64 %n.vec1590, %i.eg
  br i1 %cmp.n1606, label %.lr.ph1040.preheader, label %.lr.ph1035.preheader1680

.lr.ph1035.preheader1680:                         ; preds = %.lr.ph1035.preheader, %middle.block1605
  %indvars.iv1104.ph = phi i64 [ %indvars.iv.next1098.1.lcssa, %.lr.ph1035.preheader ], [ %i.de, %middle.block1605 ]
  %.04161033.ph = phi i32 [ 0, %.lr.ph1035.preheader ], [ %i.df, %middle.block1605 ]
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
  %i.ds = uitofp nneg <2 x i32> %vec.ind1426 to <2 x double>
  %i.dt = uitofp nneg <2 x i32> %step.add1427 to <2 x double>
  %i.du = fneg <2 x double> %i.ds
  %i.dv = fneg <2 x double> %i.dt
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %broadcast.splat1417, <2 x double> %broadcast.splat1419)
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %broadcast.splat1417, <2 x double> %broadcast.splat1419)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index1425 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %i.dw, ptr %i.dy, align 8, !tbaa !14
  store <2 x double> %i.dx, ptr %i.dz, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index1425 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <2 x double> %broadcast.splat1421, ptr %i.ea, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1421, ptr %i.eb, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1425 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x double> %broadcast.splat1423, ptr %i.ec, align 8, !tbaa !14
  store <2 x double> %broadcast.splat1423, ptr %i.ed, align 8, !tbaa !14
  %index.next1428 = add nuw i64 %index1425, 4     ; 2 uses
  %vec.ind.next1429 = add <2 x i32> %vec.ind1426, splat (i32 4)
  %i.ee = icmp eq i64 %index.next1428, %n.vec1415
  br i1 %i.ee, label %middle.block1430, label %vector.body1424, !llvm.loop !45

middle.block1430:                                 ; preds = %vector.body1424
  %cmp.n1431 = icmp eq i64 %n.vec1415, %wide.trip.count1102
  br i1 %cmp.n1431, label %.lr.ph1016.preheader, label %.lr.ph1012.preheader1696

.lr.ph1012.preheader1696:                         ; preds = %.lr.ph1012.preheader, %middle.block1430
  %indvars.iv1085.ph = phi i64 [ 0, %.lr.ph1012.preheader ], [ %n.vec1415, %middle.block1430 ]
  br label %.lr.ph1012

.lr.ph1016.preheader:                             ; preds = %.lr.ph1012, %middle.block1430
  %i.ef = zext nneg i32 %i.o to i64               ; 3 uses
  %narrow = add nuw nsw i32 %15, 1
  %i.eg = zext nneg i32 %narrow to i64            ; 22 uses
  %min.iters.check1434 = icmp ult i32 %15, 3
  br i1 %min.iters.check1434, label %.lr.ph1016.preheader1694, label %vector.ph1435

vector.ph1435:                                    ; preds = %.lr.ph1016.preheader
  %n.vec1436 = and i64 %i.eg, 32764               ; 4 uses
  %i.eh = add nuw nsw i64 %n.vec1436, %i.ef       ; 2 uses
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %indvars.iv.next.i514.epil = add nuw nsw i64 %indvars.iv.i511.epil, 1
  %epil.iter1809.next = add i64 %epil.iter1809, 1 ; 2 uses
  %epil.iter1809.cmp.not = icmp eq i64 %epil.iter1809.next, %xtraiter1808
  br i1 %epil.iter1809.cmp.not, label %_ZL10simple_minPKdi.exit516, label %bb.ap, !llvm.loop !70

_ZL10simple_minPKdi.exit516:                      ; preds = %bb.ap, %_ZL10simple_minPKdi.exit516.unr-lcssa
  %.1.i513.lcssa = phi double [ %.1.i513.3, %_ZL10simple_minPKdi.exit516.unr-lcssa ], [ %.1.i513.epil, %bb.ap ] ; 2 uses
  %i.pj = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %i.pk = fcmp olt double %.1.i513.lcssa, %i.pj
  %.sroa.speculated767 = select i1 %i.pk, double %.1.i513.lcssa, double %i.pj
  store double %.sroa.speculated767, ptr %11, align 8, !tbaa !14
  %xtraiter1816 = and i64 %i.mw, 1
  %i.pl = icmp eq i64 %i.mx, 0
  br i1 %i.pl, label %.epil.preheader1815, label %_ZL10simple_minPKdi.exit516.new

_ZL10simple_minPKdi.exit516.new:                  ; preds = %_ZL10simple_minPKdi.exit516
  %unroll_iter1821 = and i64 %i.mw, -2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %_ZL10simple_minPKdi.exit516.new
  %indvars.iv.i519 = phi i64 [ 1, %_ZL10simple_minPKdi.exit516.new ], [ %indvars.iv.next.i521.1, %bb.aq ] ; 3 uses
  %.01316.i = phi double [ %i.mv, %_ZL10simple_minPKdi.exit516.new ], [ %.1.i520.1, %bb.aq ] ; 3 uses
  %niter1822 = phi i64 [ 0, %_ZL10simple_minPKdi.exit516.new ], [ %niter1822.next.1, %bb.aq ]
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !14 ; 3 uses
  %i.po = fcmp ogt double %i.pn, %.01316.i
  %i.pp = fcmp oeq double %.01316.i, +inf
  %or.cond.i = or i1 %i.pp, %i.po
  %i.pq = fcmp une double %i.pn, +inf
  %or.cond15.i = and i1 %i.pq, %or.cond.i
  %.1.i520 = select i1 %or.cond15.i, double %i.pn, double %.01316.i ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !14 ; 3 uses
  %i.pu = fcmp ogt double %i.pt, %.1.i520
  %i.pv = fcmp oeq double %.1.i520, +inf
  %or.cond.i.1 = or i1 %i.pv, %i.pu
  %i.pw = fcmp une double %i.pt, +inf
  %or.cond15.i.1 = and i1 %i.pw, %or.cond.i.1
  %.1.i520.1 = select i1 %or.cond15.i.1, double %i.pt, double %.1.i520 ; 3 uses
  %indvars.iv.next.i521.1 = add nuw nsw i64 %indvars.iv.i519, 2 ; 2 uses
  %niter1822.next.1 = add nuw i64 %niter1822, 2   ; 2 uses
  %niter1822.ncmp.1 = icmp eq i64 %niter1822.next.1, %unroll_iter1821
  br i1 %niter1822.ncmp.1, label %_ZL10simple_maxPKdi.exit.unr-lcssa, label %bb.aq, !llvm.loop !1

_ZL10simple_maxPKdi.exit.unr-lcssa:               ; preds = %bb.aq
  %lcmp.mod1818.not = icmp eq i64 %xtraiter1816, 0
  br i1 %lcmp.mod1818.not, label %_ZL10simple_maxPKdi.exit, label %.epil.preheader1815

.epil.preheader1815:                              ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa, %_ZL10simple_minPKdi.exit516
  %indvars.iv.i519.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit516 ], [ %indvars.iv.next.i521.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ]
  %.01316.i.epil.init = phi double [ %i.mv, %_ZL10simple_minPKdi.exit516 ], [ %.1.i520.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod1820 = trunc i64 %i.mw to i1
  call void @llvm.assume(i1 %lcmp.mod1820)
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i519.epil.init
  %i.py = load double, ptr %i.px, align 8, !tbaa !14 ; 3 uses
  %i.pz = fcmp ogt double %i.py, %.01316.i.epil.init
  %i.qa = fcmp oeq double %.01316.i.epil.init, +inf
  %or.cond.i.epil = or i1 %i.qa, %i.pz
  %i.qb = fcmp une double %i.py, +inf
  %or.cond15.i.epil = and i1 %i.qb, %or.cond.i.epil
  %.1.i520.epil = select i1 %or.cond15.i.epil, double %i.py, double %.01316.i.epil.init
  br label %_ZL10simple_maxPKdi.exit

_ZL10simple_maxPKdi.exit:                         ; preds = %_ZL10simple_maxPKdi.exit.unr-lcssa, %.epil.preheader1815
  %.1.i520.lcssa = phi double [ %.1.i520.1, %_ZL10simple_maxPKdi.exit.unr-lcssa ], [ %.1.i520.epil, %.epil.preheader1815 ] ; 2 uses
  %i.qc = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.qd = fcmp olt double %i.qc, %.1.i520.lcssa
  %.sroa.speculated763 = select i1 %i.qd, double %.1.i520.lcssa, double %i.qc
  store double %.sroa.speculated763, ptr %12, align 8, !tbaa !14
  %xtraiter1824 = and i64 %i.mw, 1
  %i.qe = icmp eq i64 %i.mx, 0
  br i1 %i.qe, label %.epil.preheader1823, label %_ZL10simple_maxPKdi.exit.new

_ZL10simple_maxPKdi.exit.new:                     ; preds = %_ZL10simple_maxPKdi.exit
  %unroll_iter1829 = and i64 %i.mw, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %_ZL10simple_maxPKdi.exit.new
  %indvars.iv.i525 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit.new ], [ %indvars.iv.next.i530.1, %bb.ar ] ; 3 uses
  %.01316.i526 = phi double [ %i.nt, %_ZL10simple_maxPKdi.exit.new ], [ %.1.i529.1, %bb.ar ] ; 3 uses
  %niter1830 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit.new ], [ %niter1830.next.1, %bb.ar ]
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !14 ; 3 uses
  %i.qh = fcmp ogt double %i.qg, %.01316.i526
  %i.qi = fcmp oeq double %.01316.i526, +inf
  %or.cond.i527 = or i1 %i.qi, %i.qh
  %i.qj = fcmp une double %i.qg, +inf
  %or.cond15.i528 = and i1 %i.qj, %or.cond.i527
  %.1.i529 = select i1 %or.cond15.i528, double %i.qg, double %.01316.i526 ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !14 ; 3 uses
  %i.qn = fcmp ogt double %i.qm, %.1.i529
  %i.qo = fcmp oeq double %.1.i529, +inf
  %or.cond.i527.1 = or i1 %i.qo, %i.qn
  %i.qp = fcmp une double %i.qm, +inf
  %or.cond15.i528.1 = and i1 %i.qp, %or.cond.i527.1
  %.1.i529.1 = select i1 %or.cond15.i528.1, double %i.qm, double %.1.i529 ; 3 uses
  %indvars.iv.next.i530.1 = add nuw nsw i64 %indvars.iv.i525, 2 ; 2 uses
  %niter1830.next.1 = add nuw i64 %niter1830, 2   ; 2 uses
  %niter1830.ncmp.1 = icmp eq i64 %niter1830.next.1, %unroll_iter1829
  br i1 %niter1830.ncmp.1, label %_ZL10simple_maxPKdi.exit532.unr-lcssa, label %bb.ar, !llvm.loop !1

_ZL10simple_maxPKdi.exit532.unr-lcssa:            ; preds = %bb.ar
  %lcmp.mod1826.not = icmp eq i64 %xtraiter1824, 0
  br i1 %lcmp.mod1826.not, label %_ZL10simple_maxPKdi.exit532, label %.epil.preheader1823

.epil.preheader1823:                              ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %_ZL10simple_maxPKdi.exit
  %indvars.iv.i525.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit ], [ %indvars.iv.next.i530.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ]
  %.01316.i526.epil.init = phi double [ %i.nt, %_ZL10simple_maxPKdi.exit ], [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ] ; 3 uses
  %lcmp.mod1828 = trunc i64 %i.mw to i1
  call void @llvm.assume(i1 %lcmp.mod1828)
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i525.epil.init
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !14 ; 3 uses
  %i.qs = fcmp ogt double %i.qr, %.01316.i526.epil.init
  %i.qt = fcmp oeq double %.01316.i526.epil.init, +inf
  %or.cond.i527.epil = or i1 %i.qt, %i.qs
  %i.qu = fcmp une double %i.qr, +inf
  %or.cond15.i528.epil = and i1 %i.qu, %or.cond.i527.epil
  %.1.i529.epil = select i1 %or.cond15.i528.epil, double %i.qr, double %.01316.i526.epil.init
  br label %_ZL10simple_maxPKdi.exit532

_ZL10simple_maxPKdi.exit532:                      ; preds = %_ZL10simple_maxPKdi.exit532.unr-lcssa, %.epil.preheader1823
  %.1.i529.lcssa = phi double [ %.1.i529.1, %_ZL10simple_maxPKdi.exit532.unr-lcssa ], [ %.1.i529.epil, %.epil.preheader1823 ] ; 2 uses
  %i.qv = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.qw = fcmp olt double %i.qv, %.1.i529.lcssa
  %.sroa.speculated759 = select i1 %i.qw, double %.1.i529.lcssa, double %i.qv
  store double %.sroa.speculated759, ptr %13, align 8, !tbaa !14
  %xtraiter1832 = and i64 %i.mw, 1
  %i.qx = icmp eq i64 %i.mx, 0
  br i1 %i.qx, label %.epil.preheader1831, label %_ZL10simple_maxPKdi.exit532.new

_ZL10simple_maxPKdi.exit532.new:                  ; preds = %_ZL10simple_maxPKdi.exit532
  %unroll_iter1837 = and i64 %i.mw, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %_ZL10simple_maxPKdi.exit532.new
  %indvars.iv.i535 = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532.new ], [ %indvars.iv.next.i540.1, %bb.as ] ; 3 uses
  %.01316.i536 = phi double [ %i.op, %_ZL10simple_maxPKdi.exit532.new ], [ %.1.i539.1, %bb.as ] ; 3 uses
  %niter1838 = phi i64 [ 0, %_ZL10simple_maxPKdi.exit532.new ], [ %niter1838.next.1, %bb.as ]
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !14 ; 3 uses
  %i.ra = fcmp ogt double %i.qz, %.01316.i536
  %i.rb = fcmp oeq double %.01316.i536, +inf
  %or.cond.i537 = or i1 %i.rb, %i.ra
  %i.rc = fcmp une double %i.qz, +inf
  %or.cond15.i538 = and i1 %i.rc, %or.cond.i537
  %.1.i539 = select i1 %or.cond15.i538, double %i.qz, double %.01316.i536 ; 3 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load double, ptr %i.re, align 8, !tbaa !14 ; 3 uses
  %i.rg = fcmp ogt double %i.rf, %.1.i539
  %i.rh = fcmp oeq double %.1.i539, +inf
  %or.cond.i537.1 = or i1 %i.rh, %i.rg
  %i.ri = fcmp une double %i.rf, +inf
  %or.cond15.i538.1 = and i1 %i.ri, %or.cond.i537.1
  %.1.i539.1 = select i1 %or.cond15.i538.1, double %i.rf, double %.1.i539 ; 3 uses
  %indvars.iv.next.i540.1 = add nuw nsw i64 %indvars.iv.i535, 2 ; 2 uses
  %niter1838.next.1 = add nuw i64 %niter1838, 2   ; 2 uses
  %niter1838.ncmp.1 = icmp eq i64 %niter1838.next.1, %unroll_iter1837
  br i1 %niter1838.ncmp.1, label %_ZL10simple_maxPKdi.exit542.unr-lcssa, label %bb.as, !llvm.loop !1

_ZL10simple_maxPKdi.exit542.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod1834.not = icmp eq i64 %xtraiter1832, 0
  br i1 %lcmp.mod1834.not, label %_ZL10simple_maxPKdi.exit542, label %.epil.preheader1831

.epil.preheader1831:                              ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %_ZL10simple_maxPKdi.exit532
  %indvars.iv.i535.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit532 ], [ %indvars.iv.next.i540.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ]
  %.01316.i536.epil.init = phi double [ %i.op, %_ZL10simple_maxPKdi.exit532 ], [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ] ; 3 uses
  %lcmp.mod1836 = trunc i64 %i.mw to i1
  call void @llvm.assume(i1 %lcmp.mod1836)
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i535.epil.init
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !14 ; 3 uses
  %i.rl = fcmp ogt double %i.rk, %.01316.i536.epil.init
  %i.rm = fcmp oeq double %.01316.i536.epil.init, +inf
  %or.cond.i537.epil = or i1 %i.rm, %i.rl
  %i.rn = fcmp une double %i.rk, +inf
  %or.cond15.i538.epil = and i1 %i.rn, %or.cond.i537.epil
  %.1.i539.epil = select i1 %or.cond15.i538.epil, double %i.rk, double %.01316.i536.epil.init
  br label %_ZL10simple_maxPKdi.exit542

_ZL10simple_maxPKdi.exit542:                      ; preds = %_ZL10simple_maxPKdi.exit542.unr-lcssa, %.epil.preheader1831
  %.1.i539.lcssa = phi double [ %.1.i539.1, %_ZL10simple_maxPKdi.exit542.unr-lcssa ], [ %.1.i539.epil, %.epil.preheader1831 ] ; 2 uses
  %i.ro = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.rp = fcmp olt double %i.ro, %.1.i539.lcssa
  %.sroa.speculated755 = select i1 %i.rp, double %.1.i539.lcssa, double %i.ro
  store double %.sroa.speculated755, ptr %14, align 8, !tbaa !14
  br label %.loopexit979

.lr.ph.preheader:                                 ; preds = %.loopexit, %.preheader978
  %i.rq = phi i1 [ true, %.preheader978 ], [ false, %.loopexit ] ; 2 uses
  %.sroa.45.11006 = phi ptr [ %i.ai, %.preheader978 ], [ %.sroa.45.2900, %.loopexit ] ; 4 uses
  %.sroa.0807.11005 = phi ptr [ %i.ag, %.preheader978 ], [ %.sroa.0807.2897, %.loopexit ] ; 24 uses
  %.sroa.43.11004 = phi ptr [ %i.af, %.preheader978 ], [ %.sroa.43.2894, %.loopexit ] ; 4 uses
  %.sroa.0845.11003 = phi ptr [ %i.ad, %.preheader978 ], [ %.sroa.0845.2890, %.loopexit ] ; 24 uses
  %i.rr = select i1 %i.rq, double %5, double %8   ; 9 uses
  br i1 %min.iters.check1297, label %.lr.ph.preheader1697, label %vector.memcheck1298

vector.memcheck1298:                              ; preds = %.lr.ph.preheader
  %.sroa.0807.110051295 = ptrtoaddr ptr %.sroa.0807.11005 to i64 ; 21 uses
  %.sroa.0845.110031294 = ptrtoaddr ptr %.sroa.0845.11003 to i64 ; 21 uses
  %i.rs = sub i64 %.sroa.0845.110031294, %.sroa.0807.110051295 ; 4 uses
  %38 = add i64 %i.rs, -1
  %diff.check1299 = icmp ult i64 %38, 15
  %i.rt = sub i64 %.sroa.0807.110051295, %i.aw
  %diff.check1300 = icmp ugt i64 %i.rt, -16
  %conflict.rdx1301 = or i1 %diff.check1299, %diff.check1300
  %i.ru = add i64 %i.ce, %.sroa.0845.110031294
  %i.rv = sub i64 %.sroa.0807.110051295, %i.ru
  %diff.check1304 = icmp ugt i64 %i.rv, -16
  %conflict.rdx1305 = or i1 %conflict.rdx1301, %diff.check1304
  %i.rw = sub i64 %.sroa.0807.110051295, %36
  %diff.check1306 = icmp ugt i64 %i.rw, -16
  %conflict.rdx1307 = or i1 %conflict.rdx1305, %diff.check1306
  %i.rx = add i64 %i.cd, %.sroa.0845.110031294
  %i.ry = sub i64 %.sroa.0807.110051295, %i.rx
  %diff.check1310 = icmp ugt i64 %i.ry, -16
  %conflict.rdx1311 = or i1 %conflict.rdx1307, %diff.check1310
  %i.rz = sub i64 %.sroa.0807.110051295, %35
  %diff.check1312 = icmp ugt i64 %i.rz, -16
  %conflict.rdx1313 = or i1 %conflict.rdx1311, %diff.check1312
  %i.sa = add i64 %i.cc, %.sroa.0845.110031294
  %i.sb = sub i64 %.sroa.0807.110051295, %i.sa
  %diff.check1316 = icmp ugt i64 %i.sb, -16
  %conflict.rdx1317 = or i1 %conflict.rdx1313, %diff.check1316
  %i.sc = sub i64 %.sroa.0807.110051295, %34
  %diff.check1318 = icmp ugt i64 %i.sc, -16
  %conflict.rdx1319 = or i1 %conflict.rdx1317, %diff.check1318
  %i.sd = sub i64 %.sroa.0845.110031294, %i.aw
  %diff.check1320 = icmp ugt i64 %i.sd, -16
  %conflict.rdx1321 = or i1 %conflict.rdx1319, %diff.check1320
  %i.se = add i64 %i.ce, %.sroa.0807.110051295
  %i.sf = sub i64 %.sroa.0845.110031294, %i.se
  %diff.check1322 = icmp ugt i64 %i.sf, -16
  %conflict.rdx1323 = or i1 %conflict.rdx1321, %diff.check1322
  %i.sg = sub i64 %.sroa.0845.110031294, %36
  %diff.check1324 = icmp ugt i64 %i.sg, -16
  %conflict.rdx1325 = or i1 %conflict.rdx1323, %diff.check1324
  %i.sh = add i64 %i.cd, %.sroa.0807.110051295
  %i.si = sub i64 %.sroa.0845.110031294, %i.sh
  %diff.check1326 = icmp ugt i64 %i.si, -16
  %conflict.rdx1327 = or i1 %conflict.rdx1325, %diff.check1326
  %i.sj = sub i64 %.sroa.0845.110031294, %35
  %diff.check1328 = icmp ugt i64 %i.sj, -16
  %conflict.rdx1329 = or i1 %conflict.rdx1327, %diff.check1328
  %i.sk = add i64 %i.cc, %.sroa.0807.110051295
  %i.sl = sub i64 %.sroa.0845.110031294, %i.sk
  %diff.check1330 = icmp ugt i64 %i.sl, -16
  %conflict.rdx1331 = or i1 %conflict.rdx1329, %diff.check1330
  %i.sm = sub i64 %.sroa.0845.110031294, %34
  %diff.check1332 = icmp ugt i64 %i.sm, -16
  %conflict.rdx1333 = or i1 %conflict.rdx1331, %diff.check1332
  %.reass = add i64 %.sroa.0807.110051295, %invariant.op
  %diff.check1334 = icmp ult i64 %.reass, 15
  %conflict.rdx1335 = or i1 %conflict.rdx1333, %diff.check1334
  %.reass1863 = add i64 %.sroa.0845.110031294, %invariant.op1862
  %diff.check1336 = icmp ult i64 %.reass1863, 15
  %conflict.rdx1337 = or i1 %conflict.rdx1335, %diff.check1336
  %i.sn = add i64 %.sroa.0807.110051295, %invariant.op1864
  %diff.check1338 = icmp ult i64 %i.sn, 15
  %conflict.rdx1339 = or i1 %conflict.rdx1337, %diff.check1338
  %i.so = add i64 %.sroa.0845.110031294, %invariant.op1866
  %diff.check1340 = icmp ult i64 %i.so, 15
  %conflict.rdx1341 = or i1 %conflict.rdx1339, %diff.check1340
  %i.sp = add i64 %.sroa.0807.110051295, %invariant.op1868
  %diff.check1342 = icmp ult i64 %i.sp, 15
  %conflict.rdx1343 = or i1 %conflict.rdx1341, %diff.check1342
  %i.sq = add i64 %.sroa.0845.110031294, %invariant.op1870
  %diff.check1344 = icmp ult i64 %i.sq, 15
  %conflict.rdx1345 = or i1 %conflict.rdx1343, %diff.check1344
  %conflict.rdx1347 = or i1 %conflict.rdx1345, %diff.check1346
  %.reass1873 = add i64 %i.rs, %invariant.op1872
  %diff.check1348 = icmp ult i64 %.reass1873, 15
  %conflict.rdx1349 = or i1 %conflict.rdx1347, %diff.check1348
  %i.sr = sub i64 %.sroa.0807.110051295, %29
  %diff.check1350 = icmp ugt i64 %i.sr, -16
  %conflict.rdx1351 = or i1 %conflict.rdx1349, %diff.check1350
  %conflict.rdx1353 = or i1 %conflict.rdx1351, %diff.check1352
  %.reass1875 = add i64 %i.rs, %invariant.op1874
  %diff.check1354 = icmp ult i64 %.reass1875, 15
  %conflict.rdx1355 = or i1 %conflict.rdx1353, %diff.check1354
  %i.ss = sub i64 %.sroa.0807.110051295, %26
  %diff.check1356 = icmp ugt i64 %i.ss, -16
  %conflict.rdx1357 = or i1 %conflict.rdx1355, %diff.check1356
  %i.st = sub i64 %.sroa.0807.110051295, %.sroa.0845.110031294 ; 3 uses
  %.reass1877 = add i64 %i.st, %invariant.op1876
  %diff.check1358 = icmp ult i64 %.reass1877, 15
  %conflict.rdx1359 = or i1 %conflict.rdx1357, %diff.check1358
  %i.su = sub i64 %.sroa.0845.110031294, %29
  %diff.check1360 = icmp ugt i64 %i.su, -16
  %conflict.rdx1361 = or i1 %conflict.rdx1359, %diff.check1360
  %.reass1879 = add i64 %i.st, %invariant.op1878
  %diff.check1362 = icmp ult i64 %.reass1879, 15
  %conflict.rdx1363 = or i1 %conflict.rdx1361, %diff.check1362
  %i.sv = sub i64 %.sroa.0845.110031294, %26
  %diff.check1364 = icmp ugt i64 %i.sv, -16
  %conflict.rdx1365 = or i1 %conflict.rdx1363, %diff.check1364
  %.reass1881 = add i64 %.sroa.0807.110051295, %invariant.op1880
  %diff.check1366 = icmp ult i64 %.reass1881, 15
  %conflict.rdx1367 = or i1 %conflict.rdx1365, %diff.check1366
  %.reass1883 = add i64 %.sroa.0845.110031294, %i.ci
  %diff.check1368 = icmp ult i64 %.reass1883, 15
  %conflict.rdx1369 = or i1 %conflict.rdx1367, %diff.check1368
  %.reass1885 = add i64 %.sroa.0807.110051295, %i.cj
  %diff.check1370 = icmp ult i64 %.reass1885, 15
  %conflict.rdx1371 = or i1 %conflict.rdx1369, %diff.check1370
  %.reass1887 = add i64 %.sroa.0845.110031294, %i.ck
  %diff.check1372 = icmp ult i64 %.reass1887, 15
  %conflict.rdx1373 = or i1 %conflict.rdx1371, %diff.check1372
  %conflict.rdx1375 = or i1 %conflict.rdx1373, %diff.check1374
  %.reass1889 = add i64 %i.rs, %invariant.op1888
  %diff.check1376 = icmp ult i64 %.reass1889, 15
  %conflict.rdx1377 = or i1 %conflict.rdx1375, %diff.check1376
  %i.sw = sub i64 %.sroa.0807.110051295, %20
  %diff.check1378 = icmp ugt i64 %i.sw, -16
  %conflict.rdx1379 = or i1 %conflict.rdx1377, %diff.check1378
  %.reass1891 = add i64 %i.st, %invariant.op1890
  %diff.check1380 = icmp ult i64 %.reass1891, 15
  %conflict.rdx1381 = or i1 %conflict.rdx1379, %diff.check1380
  %i.sx = sub i64 %.sroa.0845.110031294, %20
  %diff.check1382 = icmp ugt i64 %i.sx, -16
  %conflict.rdx1383 = or i1 %conflict.rdx1381, %diff.check1382
  %.reass1893 = add i64 %.sroa.0807.110051295, %invariant.op1892
  %diff.check1384 = icmp ult i64 %.reass1893, 15
  %conflict.rdx1385 = or i1 %conflict.rdx1383, %diff.check1384
  %.reass1895 = add i64 %.sroa.0845.110031294, %invariant.op1894
  %diff.check1386 = icmp ult i64 %.reass1895, 15
  %conflict.rdx1387 = or i1 %conflict.rdx1385, %diff.check1386
  br i1 %conflict.rdx1387, label %.lr.ph.preheader1697, label %vector.ph1388

vector.ph1388:                                    ; preds = %vector.memcheck1298
  %broadcast.splatinsert1390 = insertelement <2 x double> poison, double %i.rr, i64 0
  %broadcast.splat1391 = shufflevector <2 x double> %broadcast.splatinsert1390, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1388
  %index1405 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1407, %vector.body1404 ] ; 7 uses
  %vec.ind1406 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1388 ], [ %vec.ind.next1408, %vector.body1404 ] ; 2 uses
  %i.sy = uitofp nneg <2 x i32> %vec.ind1406 to <2 x double> ; 3 uses
  %i.sz = fneg <2 x double> %i.sy                 ; 2 uses
  %i.ta = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %broadcast.splat1393, <2 x double> %broadcast.splat1395)
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %index1405
  store <2 x double> %i.ta, ptr %i.tb, align 8, !tbaa !14
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %index1405
  store <2 x double> %broadcast.splat1397, ptr %i.tc, align 8, !tbaa !14
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index1405
  store <2 x double> %broadcast.splat1391, ptr %i.td, align 8, !tbaa !14
  %i.te = add nuw nsw i64 %index1405, %i.by       ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.te
  store <2 x double> %broadcast.splat1399, ptr %i.tf, align 8, !tbaa !14
  %i.tg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %broadcast.splat1401, <2 x double> %broadcast.splat1397)
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.te
  store <2 x double> %i.tg, ptr %i.th, align 8, !tbaa !14
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.te
  store <2 x double> %broadcast.splat1391, ptr %i.ti, align 8, !tbaa !14
  %i.tj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %broadcast.splat1393, <2 x double> %broadcast.splat1399)
  %i.tk = add nuw nsw i64 %index1405, %i.bz       ; 3 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.tk
  store <2 x double> %i.tj, ptr %i.tl, align 8, !tbaa !14
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.tk
  store <2 x double> %broadcast.splat1403, ptr %i.tm, align 8, !tbaa !14
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.tk
  store <2 x double> %broadcast.splat1391, ptr %i.tn, align 8, !tbaa !14
  %i.to = add nuw nsw i64 %index1405, %i.ca       ; 3 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.to
  store <2 x double> %broadcast.splat1395, ptr %i.tp, align 8, !tbaa !14
  %i.tq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %broadcast.splat1401, <2 x double> %broadcast.splat1403)
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.to
  store <2 x double> %i.tq, ptr %i.tr, align 8, !tbaa !14
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.to
  store <2 x double> %broadcast.splat1391, ptr %i.ts, align 8, !tbaa !14
  %index.next1407 = add nuw i64 %index1405, 2     ; 2 uses
  %vec.ind.next1408 = add <2 x i32> %vec.ind1406, splat (i32 2)
  %i.tt = icmp eq i64 %index.next1407, %n.vec1389
  br i1 %i.tt, label %middle.block1409, label %vector.body1404, !llvm.loop !71

middle.block1409:                                 ; preds = %vector.body1404
  br i1 %cmp.n1410, label %._crit_edge, label %.lr.ph.preheader1697

.lr.ph.preheader1697:                             ; preds = %vector.memcheck1298, %.lr.ph.preheader, %middle.block1409
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1298 ], [ 0, %.lr.ph.preheader ], [ %n.vec1389, %middle.block1409 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1409
  %i.tu = invoke i64 @proj_trans_generic(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %.sroa.0845.11003, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %.sroa.0807.11005, i64 noundef 8, i64 noundef %i.ab, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i64 noundef 0)
          to label %bb.at unwind label %.thread953.loopexit.split-lp.loopexit ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader1697, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1697 ] ; 8 uses
  %i.tv = trunc nuw nsw i64 %indvars.iv to i32
  %i.tw = uitofp nneg i32 %i.tv to double         ; 3 uses
  %i.tx = fneg double %i.tw                       ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %indvars.iv
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv
  store double %3, ptr %i.tz, align 8, !tbaa !14
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ub = add nuw nsw i64 %indvars.iv, %i.by      ; 3 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.ub
  %i.ud = insertelement <2 x double> poison, double %i.tx, i64 0
  %i.ue = insertelement <2 x double> %i.ud, double %i.tw, i64 1
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.cm, <2 x double> %i.co) ; 2 uses
  %i.ug = extractelement <2 x double> %i.uf, i64 0
  store double %i.ug, ptr %i.ty, align 8, !tbaa !14
  store double %i.rr, ptr %i.ua, align 8, !tbaa !14
  store double %4, ptr %i.uc, align 8, !tbaa !14
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.ub
  %i.ui = extractelement <2 x double> %i.uf, i64 1
  store double %i.ui, ptr %i.uh, align 8, !tbaa !14
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ub
  store double %i.rr, ptr %i.uj, align 8, !tbaa !14
  %i.uk = add nuw nsw i64 %indvars.iv, %i.bz      ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uk
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uk
  store double %6, ptr %i.um, align 8, !tbaa !14
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uk
  %i.uo = add nuw nsw i64 %indvars.iv, %i.ca      ; 3 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11005, i64 %i.uo
  %i.uq = insertelement <2 x double> poison, double %i.tw, i64 0
  %i.ur = insertelement <2 x double> %i.uq, double %i.tx, i64 1
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.cm, <2 x double> %i.cq) ; 2 uses
  %i.ut = extractelement <2 x double> %i.us, i64 0
  store double %i.ut, ptr %i.ul, align 8, !tbaa !14
  store double %i.rr, ptr %i.un, align 8, !tbaa !14
  store double %7, ptr %i.up, align 8, !tbaa !14
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %i.uo
  %i.uv = extractelement <2 x double> %i.us, i64 1
  store double %i.uv, ptr %i.uu, align 8, !tbaa !14
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.uo
  store double %i.rr, ptr %i.uw, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.at:                                            ; preds = %._crit_edge
  br i1 %or.cond8, label %bb.au, label %.thread883

bb.au:                                            ; preds = %bb.at
  br i1 %i.k, label %.thread883, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ux = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.cr, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.av, %.new
  %indvars.iv.i545 = phi i64 [ %indvars.iv.next.i548.3, %.new ], [ 1, %bb.av ] ; 5 uses
  %.0911.i546 = phi double [ %.1.i547.3, %.new ], [ %i.ux, %bb.av ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.av ]
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !14 ; 2 uses
  %i.va = fcmp olt double %i.uz, %.0911.i546
  %.1.i547 = select i1 %i.va, double %i.uz, double %.0911.i546 ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !14 ; 2 uses
  %i.ve = fcmp olt double %i.vd, %.1.i547
  %.1.i547.1 = select i1 %i.ve, double %i.vd, double %.1.i547 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !14 ; 2 uses
  %i.vi = fcmp olt double %i.vh, %.1.i547.1
  %.1.i547.2 = select i1 %i.vi, double %i.vh, double %.1.i547.1 ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !14 ; 2 uses
  %i.vm = fcmp olt double %i.vl, %.1.i547.2
  %.1.i547.3 = select i1 %i.vm, double %i.vl, double %.1.i547.2 ; 3 uses
  %indvars.iv.next.i548.3 = add nuw nsw i64 %indvars.iv.i545, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.av
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.av ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.ux, %bb.av ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1712)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.aw ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aw ]
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i545.epil
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !14 ; 2 uses
  %i.vp = fcmp olt double %i.vo, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.vp, double %i.vo, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.aw, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.aw, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.aw ] ; 2 uses
  %i.vq = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.vr = fcmp olt double %.1.i547.lcssa, %i.vq
  %.sroa.speculated751 = select i1 %i.vr, double %.1.i547.lcssa, double %i.vq
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.vs = load double, ptr %.sroa.0845.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.cs, label %.epil.preheader1713, label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550, %_ZL10simple_minPKdi.exit550.new
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ], [ 1, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %.01316.i554 = phi double [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ], [ %i.vs, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %niter1720 = phi i64 [ %niter1720.next.1, %_ZL10simple_minPKdi.exit550.new ], [ 0, %_ZL10simple_minPKdi.exit550 ]
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !14 ; 3 uses
  %i.vv = fcmp ogt double %i.vu, %.01316.i554
  %i.vw = fcmp oeq double %.01316.i554, +inf
  %or.cond.i555 = or i1 %i.vw, %i.vv
  %i.vx = fcmp une double %i.vu, +inf
  %or.cond15.i556 = and i1 %i.vx, %or.cond.i555
  %.1.i557 = select i1 %or.cond15.i556, double %i.vu, double %.01316.i554 ; 3 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11003, i64 %indvars.iv.i553
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !14 ; 3 uses
  %i.wb = fcmp ogt double %i.wa, %.1.i557
  %i.wc = fcmp oeq double %.1.i557, +inf
  %or.cond.i555.1 = or i1 %i.wc, %i.wb
  %i.wd = fcmp une double %i.wa, +inf
  %or.cond15.i556.1 = and i1 %i.wd, %or.cond.i555.1
  %.1.i557.1 = select i1 %or.cond15.i556.1, double %i.wa, double %.1.i557 ; 3 uses
  %indvars.iv.next.i558.1 = add nuw nsw i64 %indvars.iv.i553, 2 ; 2 uses
  %niter1720.next.1 = add nuw i64 %niter1720, 2   ; 2 uses
  %niter1720.ncmp.1 = icmp eq i64 %niter1720.next.1, %unroll_iter1719
  br i1 %niter1720.ncmp.1, label %_ZL10simple_maxPKdi.exit560.unr-lcssa, label %_ZL10simple_minPKdi.exit550.new, !llvm.loop !1
end_hunk_1

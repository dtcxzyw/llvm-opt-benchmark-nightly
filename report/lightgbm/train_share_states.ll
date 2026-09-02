Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/train_share_states?download=true
inline.NumInlined: 659
inline.NumDeleted: 262
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM18MultiValBinWrapperC2EPNS_11MultiValBinEiRKSt6vectorIiSaIiEEi:bb.a
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %4, ptr %i.bf, align 4, !tbaa !192
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.l
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ]
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.n
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.o
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.p
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !70  ; 3 uses
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #3, !inline_history !186
  br label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit16, %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !70  ; 3 uses
  %.not.i17 = icmp eq ptr %i.cc, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #3, !inline_history !186
  br label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i18
  resume { ptr, i32 } %.pn
}

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM18MultiValBinWrapper9InitTrainERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8LightGBM18MultiValBinWrapper21CopyMultiValBinSubsetERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, i32 noundef %5)
  %i.c = load i8, ptr %0, align 8, !tbaa !31, !range !32, !noundef !33
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64, !range !32, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.h, %bb.d ], [ %i.a, %bb.c ]
  %i.i = load ptr, ptr %.in, align 8, !tbaa !70   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !50
  %i.o = add nsw i32 %i.m, 31
  %i.p = sdiv i32 %i.o, 32
  %i.q = shl nsw i32 %i.p, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.q, ptr %i.r, align 8, !tbaa !37
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef double %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.w = load i32, ptr %i.n, align 4, !tbaa !50
  %i.x = sitofp i32 %i.w to float
  %i.y = fmul nnan float %i.x, 3.000000e-01
  %i.z = fpext float %i.y to double
  %i.aa = fadd double %i.v, f0x38AA95A5C0000000
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fptosi double %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 31)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 1023)
  %.sroa.speculated = add nuw nsw i32 %i.af, 1
  store i32 %.sroa.speculated, ptr %i.ad, align 4, !tbaa !193
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM18MultiValBinWrapper21CopyMultiValBinSubsetERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii(ptr nofree noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.2", align 8     ; 14 uses
  %7 = alloca %"class.std::vector", align 8       ; 16 uses
  %8 = alloca %"class.std::vector", align 8       ; 16 uses
  %9 = alloca %"class.std::vector", align 8       ; 14 uses
  %10 = alloca %"class.std::vector", align 8      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not438642 = icmp eq ptr %i.b, %i.d
  br i1 %.not438642, label %._crit_edge651.thread, label %.lr.ph650

.lr.ph650:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.b

._crit_edge651:                                   ; preds = %.loopexit507
  %i.g = fmul double %.2160, 6.000000e-01
  %i.h = fcmp ult double %.4165, %i.g
  br i1 %i.h, label %bb.ad, label %._crit_edge651.thread

bb.b:                                             ; preds = %.lr.ph650, %.loopexit507
  %i.i = phi ptr [ null, %.lr.ph650 ], [ %i.eb, %.loopexit507 ] ; 5 uses
  %i.j = phi ptr [ null, %.lr.ph650 ], [ %i.ec, %.loopexit507 ] ; 9 uses
  %i.k = phi ptr [ null, %.lr.ph650 ], [ %i.ed, %.loopexit507 ] ; 7 uses
  %i.l = phi ptr [ null, %.lr.ph650 ], [ %i.ee, %.loopexit507 ] ; 7 uses
  %.0153648 = phi i32 [ 0, %.lr.ph650 ], [ %.4157, %.loopexit507 ] ; 5 uses
  %.0158647 = phi double [ 0.000000e+00, %.lr.ph650 ], [ %.2160, %.loopexit507 ] ; 3 uses
  %.0161646 = phi double [ 0.000000e+00, %.lr.ph650 ], [ %.4165, %.loopexit507 ] ; 5 uses
  %.sroa.0424.0645 = phi ptr [ %i.b, %.lr.ph650 ], [ %i.ef, %.loopexit507 ] ; 2 uses
  %.0435643 = phi i32 [ 0, %.lr.ph650 ], [ %.2437, %.loopexit507 ] ; 5 uses
  %i.m = load i32, ptr %.sroa.0424.0645, align 4, !tbaa !42
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42   ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !76     ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load i8, ptr %i.u, align 8, !tbaa !97, !range !32, !noundef !33
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load i32, ptr %i.t, align 8, !tbaa !98   ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  br i1 %i.w, label %.preheader506, label %.preheader513

.preheader513:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader513
  %i.z = load ptr, ptr %3, align 8, !tbaa !199
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 3 uses
  %i.ac = sext i32 %i.q to i64
  %invariant.gep = getelementptr i8, ptr %i.z, i64 %i.ac ; 3 uses
  %i.ad = icmp eq i32 %i.x, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %11 = and i32 %i.x, 2147483646
  %unroll_iter = zext nneg i32 %11 to i64
  br label %bb.j

.preheader506:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph637.preheader, label %.loopexit507

.lr.ph637.preheader:                              ; preds = %.preheader506
  %i.ae = sext i32 %i.q to i64
  br label %.lr.ph637

.lr.ph637:                                        ; preds = %.lr.ph637.preheader, %bb.i
  %.pre704 = phi ptr [ %i.r, %.lr.ph637.preheader ], [ %.pre705, %bb.i ] ; 2 uses
  %i.af = phi ptr [ %i.r, %.lr.ph637.preheader ], [ %i.br, %bb.i ]
  %i.ag = phi ptr [ %i.i, %.lr.ph637.preheader ], [ %i.bs, %bb.i ] ; 4 uses
  %i.ah = phi ptr [ %i.j, %.lr.ph637.preheader ], [ %i.bt, %bb.i ] ; 6 uses
  %i.ai = phi ptr [ %i.k, %.lr.ph637.preheader ], [ %i.bu, %bb.i ]
  %i.aj = phi ptr [ %i.l, %.lr.ph637.preheader ], [ %i.bv, %bb.i ] ; 4 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph637.preheader ], [ %indvars.iv.next691, %bb.i ] ; 3 uses
  %i.ak = phi ptr [ %i.t, %.lr.ph637.preheader ], [ %i.bz, %bb.i ]
  %.1154635 = phi i32 [ %.0153648, %.lr.ph637.preheader ], [ %.2155, %bb.i ] ; 2 uses
  %.1159634 = phi double [ %.0158647, %.lr.ph637.preheader ], [ %i.bw, %bb.i ]
  %.1162633 = phi double [ %.0161646, %.lr.ph637.preheader ], [ %.2163, %bb.i ] ; 2 uses
  %.1436631 = phi i32 [ %.0435643, %.lr.ph637.preheader ], [ %i.bx, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv690
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !117
  %i.ar = fsub double 1.000000e+00, %i.aq         ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !199
  %i.at = getelementptr i8, ptr %i.as, i64 %indvars.iv690
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ae
  %i.av = load i8, ptr %i.au, align 1, !tbaa !53
  %.not177 = icmp eq i8 %i.av, 0
  br i1 %.not177, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph637
  %.not.i = icmp eq ptr %i.aj, %i.ag
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.1436631, ptr %i.aj, align 4, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = ptrtoint ptr %i.ag to i64
  %i.ay = ptrtoint ptr %i.ah to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 6 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
          to label %.noexc unwind label %.loopexit.split-lp509

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #22
          to label %.noexc183 unwind label %.loopexit508 ; 5 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %.1436631, ptr %i.bi, align 4, !tbaa !42
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc183
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.ah, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc183
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.az) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bh, ptr %6, align 8, !tbaa !67
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !68
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !76
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d
  %.pre = phi ptr [ %.pre.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre704, %bb.d ] ; 2 uses
  %i.bm = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.bn = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ah, %bb.d ]
  %i.bo = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aw, %bb.d ]
  %i.bp = add nsw i32 %.1154635, 1
  %i.bq = fadd double %.1162633, %i.ar
  br label %bb.i

.loopexit508:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit510 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp509:                            ; preds = %bb.f
  %lpad.loopexit.split-lp511 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.lr.ph637
  %.pre705 = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.pre704, %.lr.ph637 ]
  %i.br = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.af, %.lr.ph637 ] ; 2 uses
  %i.bs = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ag, %.lr.ph637 ] ; 2 uses
  %i.bt = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ah, %.lr.ph637 ] ; 2 uses
  %i.bu = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ai, %.lr.ph637 ] ; 2 uses
  %i.bv = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.aj, %.lr.ph637 ] ; 2 uses
  %.2163 = phi double [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.1162633, %.lr.ph637 ] ; 2 uses
  %.2155 = phi i32 [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.1154635, %.lr.ph637 ] ; 2 uses
  %i.bw = fadd double %.1159634, %i.ar            ; 2 uses
  %i.bx = add nsw i32 %.1436631, 1                ; 2 uses
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.n
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !98
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next691, %i.cb
  br i1 %i.cc, label %.lr.ph637, label %.loopexit507, !llvm.loop !194

._crit_edge.unr-lcssa:                            ; preds = %bb.j
  %12 = trunc i32 %i.x to i1
  br i1 %12, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0136628.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cy, %._crit_edge.unr-lcssa ]
  %.0137627.epil.init = phi i1 [ false, %.lr.ph ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod950 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod950)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.cd = load i8, ptr %gep.epil, align 1, !tbaa !53
  %.not176.epil = icmp ne i8 %i.cd, 0
  %spec.select.epil = select i1 %.not176.epil, i1 true, i1 %.0137627.epil.init
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.epil.init
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !117
  %i.ci = fsub double 1.000000e+00, %i.ch
  %i.cj = fadd double %.0136628.epil.init, %i.ci
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i1 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %.lcssa940 = phi double [ %i.cy, %._crit_edge.unr-lcssa ], [ %i.cj, %.epil.preheader ] ; 3 uses
  br i1 %spec.select.lcssa, label %bb.k, label %._crit_edge.thread

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 4 uses
  %.0136628 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.cy, %bb.j ]
  %.0137627 = phi i1 [ false, %.lr.ph.new ], [ %spec.select.1, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ck = load i8, ptr %gep, align 1, !tbaa !53
  %.not176 = icmp ne i8 %i.ck, 0
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !101
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !117
  %i.cp = fsub double 1.000000e+00, %i.co
  %i.cq = fadd double %.0136628, %i.cp
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.cr = load i8, ptr %gep.1, align 1, !tbaa !53
  %.not176.1 = icmp ne i8 %i.cr, 0
  %i.cs = select i1 %.not176.1, i1 true, i1 %.not176
  %spec.select.1 = select i1 %i.cs, i1 true, i1 %.0137627 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !101
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !117
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fadd double %i.cq, %i.cx                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.j, !llvm.loop !195

bb.k:                                             ; preds = %._crit_edge
  %.not.i184 = icmp eq ptr %i.l, %i.k
  br i1 %.not.i184, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.0435643, ptr %i.l, align 4, !tbaa !42
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store ptr %i.cz, ptr %i.e, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193

bb.m:                                             ; preds = %bb.k
  %i.da = ptrtoint ptr %i.k to i64
  %i.db = ptrtoint ptr %i.j to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775804
  br i1 %i.dd, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i185

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
          to label %.noexc191 unwind label %.loopexit.split-lp515

.noexc191:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i185: ; preds = %bb.m
  %i.de = ashr exact i64 %i.dc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i186 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i186, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %i.di = select i1 %i.dg, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i187 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i187)
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #22
          to label %.noexc192 unwind label %.loopexit514 ; 5 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i185
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i32 %.0435643, ptr %i.dl, align 4, !tbaa !42
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i188

bb.o:                                             ; preds = %.noexc192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.j, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i188

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i188: ; preds = %bb.o, %.noexc192
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %.not.i17.i.i189 = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i189, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i188
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.dc) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i188
  store ptr %i.dk, ptr %6, align 8, !tbaa !67
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di ; 3 uses
  store ptr %i.do, ptr %i.f, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193

_ZNSt6vectorIiSaIiEE9push_backERKi.exit193:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190, %bb.l
  %i.dp = phi ptr [ %i.do, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190 ], [ %i.i, %bb.l ]
  %i.dq = phi ptr [ %i.dk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190 ], [ %i.j, %bb.l ]
  %i.dr = phi ptr [ %i.do, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190 ], [ %i.k, %bb.l ]
  %i.ds = phi ptr [ %i.dn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i190 ], [ %i.cz, %bb.l ]
  %i.dt = add nsw i32 %.0153648, 1
  %i.du = fadd double %.0161646, %.lcssa940
  br label %._crit_edge.thread

.loopexit514:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i185
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp515:                            ; preds = %bb.n
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

._crit_edge.thread:                               ; preds = %.preheader513, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193, %._crit_edge
  %.0136.lcssa821 = phi double [ %.lcssa940, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %.lcssa940, %._crit_edge ], [ 0.000000e+00, %.preheader513 ]
  %i.dv = phi ptr [ %i.dp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %i.i, %._crit_edge ], [ %i.i, %.preheader513 ]
  %i.dw = phi ptr [ %i.dq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %i.j, %._crit_edge ], [ %i.j, %.preheader513 ]
  %i.dx = phi ptr [ %i.dr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %i.k, %._crit_edge ], [ %i.k, %.preheader513 ]
  %i.dy = phi ptr [ %i.ds, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %i.l, %._crit_edge ], [ %i.l, %.preheader513 ]
  %.3164 = phi double [ %i.du, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %.0161646, %._crit_edge ], [ %.0161646, %.preheader513 ]
  %.3156 = phi i32 [ %i.dt, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit193 ], [ %.0153648, %._crit_edge ], [ %.0153648, %.preheader513 ]
  %i.dz = fadd double %.0158647, %.0136.lcssa821
  %i.ea = add nsw i32 %.0435643, 1
  br label %.loopexit507

.loopexit507:                                     ; preds = %bb.i, %.preheader506, %._crit_edge.thread
  %i.eb = phi ptr [ %i.dv, %._crit_edge.thread ], [ %i.i, %.preheader506 ], [ %i.bs, %bb.i ]
  %i.ec = phi ptr [ %i.dw, %._crit_edge.thread ], [ %i.j, %.preheader506 ], [ %i.bt, %bb.i ] ; 2 uses
  %i.ed = phi ptr [ %i.dx, %._crit_edge.thread ], [ %i.k, %.preheader506 ], [ %i.bu, %bb.i ]
  %i.ee = phi ptr [ %i.dy, %._crit_edge.thread ], [ %i.l, %.preheader506 ], [ %i.bv, %bb.i ]
  %.2437 = phi i32 [ %i.ea, %._crit_edge.thread ], [ %.0435643, %.preheader506 ], [ %i.bx, %bb.i ] ; 2 uses
  %.4165 = phi double [ %.3164, %._crit_edge.thread ], [ %.0161646, %.preheader506 ], [ %.2163, %bb.i ] ; 4 uses
  %.2160 = phi double [ %i.dz, %._crit_edge.thread ], [ %.0158647, %.preheader506 ], [ %i.bw, %bb.i ] ; 2 uses
  %.4157 = phi i32 [ %.3156, %._crit_edge.thread ], [ %.0153648, %.preheader506 ], [ %.2155, %bb.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0424.0645, i64 4 ; 2 uses
  %.not438 = icmp eq ptr %i.ef, %i.d
  br i1 %.not438, label %._crit_edge651, label %bb.b

._crit_edge651.thread:                            ; preds = %bb.a, %._crit_edge651
  %.0435.lcssa818 = phi i32 [ %.2437, %._crit_edge651 ], [ 0, %bb.a ] ; 2 uses
  %i.eg = phi ptr [ %i.ec, %._crit_edge651 ], [ null, %bb.a ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !64, !range !32, !noundef !33
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.q, label %bb.en

bb.q:                                             ; preds = %._crit_edge651.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !65, !range !32, !noundef !33
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.en, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !70 ; 3 uses
  %.not.i194 = icmp eq ptr %i.eo, null
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !70 ; 5 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !72
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  br i1 %.not.i194, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.eu = invoke noundef i32 %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !70 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef double %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
end_hunk_0

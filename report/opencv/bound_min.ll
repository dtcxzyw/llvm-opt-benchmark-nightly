Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bound_min?download=true
inline.NumInlined: 484
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv3mcc9CBoundMinD2Ev:bb.a
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #13
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.h, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN2cv3mcc6CChartD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i) #14
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #13
  br label %_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3mcc6CChartESaIS2_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3mcc6CChartES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3mcc9CBoundMin9calculateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::mcc::CChart", align 8   ; 9 uses
  %2 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 56                  ; 14 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit251, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit
  %i.l = shl nsw i64 %i.k, 2                      ; 16 uses
  %i.m = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.m, label %.noexc, label %.lr.ph

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

.lr.ph:                                           ; preds = %bb.b
  %i.n = shl nsw i64 %i.k, 5                      ; 4 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #16 ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2cv3mcc6CChartC2ERKS1_.exit
  %.0134618 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZN2cv3mcc6CChartC2ERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %.0134618 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i.i, label %.noexc174, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp ugt i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #15
          to label %.noexc173 unwind label %.loopexit.split-lp

.noexc173:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #16
          to label %.noexc174 unwind label %.loopexit614

.noexc174:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.c
  %i.ac = phi ptr [ null, %bb.c ], [ %i.ab, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !11
  store ptr %i.ac, ptr %i.p, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !12
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !41  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not7.i.i.i.i.i.i, label %_ZN2cv3mcc6CChartC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc174, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc174 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %.noexc174 ] ; 2 uses
  %i.ag = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !20
  store i64 %i.ag, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv3mcc6CChartC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !24

_ZN2cv3mcc6CChartC2ERKS1_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc174
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc174 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  %.idx612 = shl nuw nsw i64 %.0134618, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false), !tbaa !20
  call void @_ZN2cv3mcc6CChartD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.al = add nuw i64 %.0134618, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.k
  br i1 %exitcond.not, label %.lr.ph622.preheader, label %bb.c, !llvm.loop !25

.lr.ph622.preheader:                              ; preds = %_ZN2cv3mcc6CChartC2ERKS1_.exit
  %xtraiter = and i64 %i.l, 4                     ; 2 uses
  %i.am = icmp ult i64 %i.l, 8
  br i1 %i.am, label %.lr.ph622.epil.preheader, label %.lr.ph622.preheader.new

.lr.ph622.preheader.new:                          ; preds = %.lr.ph622.preheader
  %unroll_iter = and i64 %i.l, 1152921504606846968
  br label %.lr.ph622

.loopexit614:                                     ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit614
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit614 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit269

.lr.ph626.preheader.unr-lcssa:                    ; preds = %.lr.ph622
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph626.preheader, label %.lr.ph622.epil.preheader

.lr.ph622.epil.preheader:                         ; preds = %.lr.ph626.preheader.unr-lcssa, %.lr.ph622.preheader
  %.0144621.epil.init = phi i64 [ 0, %.lr.ph622.preheader ], [ %i.ch, %.lr.ph626.preheader.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph622.preheader ], [ %i.cg, %.lr.ph626.preheader.unr-lcssa ]
  %lcmp.mod830 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod830)
  br label %.lr.ph622.epil

.lr.ph622.epil:                                   ; preds = %.lr.ph622.epil, %.lr.ph622.epil.preheader
  %.0144621.epil = phi i64 [ %i.ar, %.lr.ph622.epil ], [ %.0144621.epil.init, %.lr.ph622.epil.preheader ] ; 2 uses
  %i.an = phi <2 x float> [ %i.aq, %.lr.ph622.epil ], [ %.epil.init, %.lr.ph622.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph622.epil ], [ 0, %.lr.ph622.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621.epil
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !20
  %i.aq = fadd <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = add nuw i64 %.0144621.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.lr.ph626.preheader, label %.lr.ph622.epil, !llvm.loop !26

.lr.ph626.preheader:                              ; preds = %.lr.ph622.epil, %.lr.ph626.preheader.unr-lcssa
  %.lcssa827 = phi <2 x float> [ %i.cg, %.lr.ph626.preheader.unr-lcssa ], [ %i.aq, %.lr.ph622.epil ]
  %i.as = trunc i64 %i.k to i32
  %i.at = shl nsw i32 %i.as, 2
  %i.au = sitofp i32 %i.at to float
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x float> %.lcssa827, %i.aw      ; 5 uses
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph626.preheader
  %index = phi i64 [ 0, %.lr.ph626.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.az, align 4, !tbaa !20
  %interleaved.vec = fsub <4 x float> %wide.vec, %i.ay
  store <4 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %i.l
  br i1 %i.ba, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i, label %vector.body, !llvm.loop !27

.lr.ph622:                                        ; preds = %.lr.ph622, %.lr.ph622.preheader.new
  %.0144621 = phi i64 [ 0, %.lr.ph622.preheader.new ], [ %i.ch, %.lr.ph622 ] ; 9 uses
  %i.bb = phi <2 x float> [ zeroinitializer, %.lr.ph622.preheader.new ], [ %i.cg, %.lr.ph622 ]
  %niter = phi i64 [ 0, %.lr.ph622.preheader.new ], [ %niter.next.7, %.lr.ph622 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !20
  %i.be = fadd <2 x float> %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !20
  %i.bi = fadd <2 x float> %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !20
  %i.bm = fadd <2 x float> %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !20
  %i.bq = fadd <2 x float> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !20
  %i.bu = fadd <2 x float> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !20
  %i.by = fadd <2 x float> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !20
  %i.cc = fadd <2 x float> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0144621
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load <2 x float>, ptr %i.ce, align 4, !tbaa !20
  %i.cg = fadd <2 x float> %i.cc, %i.cf           ; 3 uses
  %i.ch = add nuw i64 %.0144621, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph626.preheader.unr-lcssa, label %.lr.ph622, !llvm.loop !28

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %vector.body
  %i.ci = mul nsw i64 %i.k, 48                    ; 11 uses
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #16
          to label %.lr.ph629.preheader unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread ; 10 uses

.lr.ph629.preheader:                              ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cj, i8 0, i64 %i.ci, i1 false), !tbaa !20
  br label %.lr.ph629

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %.lr.ph629
  %i.ck = shl nsw i64 %i.k, 4                     ; 7 uses
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #16
          to label %.lr.ph637 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit263.thread ; 13 uses

.lr.ph637:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.cl, align 4, !tbaa !45
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.ck, -4     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cm, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !45
  %min.iters.check758 = icmp ult i64 %i.k, 8
  %n.vec760 = and i64 %i.k, -8                    ; 3 uses
  %cmp.n778 = icmp eq i64 %i.k, %n.vec760
  br label %.lr.ph633.preheader

_ZNSt6vectorIiSaIiEED2Ev.exit265.thread:          ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit269

.lr.ph629:                                        ; preds = %.lr.ph629.preheader, %.lr.ph629
  %.0146628 = phi i64 [ %i.el, %.lr.ph629 ], [ 0, %.lr.ph629.preheader ] ; 2 uses
  %i.co = shl i64 %.0146628, 2                    ; 5 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = or disjoint i64 %i.co, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = or disjoint i64 %i.co, 2                ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = or disjoint i64 %i.co, 3                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !48 ; 3 uses
  %i.dc = load <2 x float>, ptr %i.cr, align 4, !tbaa !20 ; 6 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.co ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.df = load <2 x float>, ptr %i.cu, align 4, !tbaa !20 ; 7 uses
  %i.dg = insertelement <2 x float> %i.df, float %i.cq, i64 1
  %i.dh = fsub <2 x float> %i.dc, %i.dg
  store <2 x float> %i.dh, ptr %i.de, align 4, !tbaa !20
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cs ; 2 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dj = load <2 x float>, ptr %i.cx, align 4, !tbaa !20 ; 5 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.dl = fsub <2 x float> %i.df, %i.dk
  %i.dm = extractelement <2 x float> %i.dj, i64 0
  store <2 x float> %i.dl, ptr %i.di, align 4, !tbaa !20
  %i.dn = insertelement <2 x float> %i.df, float %i.db, i64 0
  %i.do = fsub <2 x float> %i.dj, %i.dn
  %i.dp = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cv ; 2 uses
  store <2 x float> %i.do, ptr %i.dq, align 4, !tbaa !20
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dr = fsub float %i.db, %i.dd
  %i.ds = fsub float %i.cq, %i.dp
  %i.dt = shufflevector <2 x float> %i.dc, <2 x float> %i.df, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float %i.dp, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.cq, i64 3 ; 2 uses
  %i.dw = fneg <4 x float> %i.dv
  %i.dx = shufflevector <2 x float> %i.dc, <2 x float> %i.df, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dy = insertelement <4 x float> %i.dx, float %i.dm, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.db, i64 3 ; 2 uses
  %i.ea = fmul <4 x float> %i.dz, %i.dw
  %i.eb = shufflevector <2 x float> %i.dc, <2 x float> %i.df, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> %i.dv, <4 x i32> <i32 7, i32 1, i32 2, i32 6>
  %i.ed = shufflevector <2 x float> %i.df, <2 x float> %i.dj, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 7, i32 4>
  %i.ef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ee, <4 x float> %i.ea) ; 4 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 0
  store float %i.eg, ptr %.sroa.571.0..sroa_idx, align 4, !tbaa !20
  %i.eh = extractelement <4 x float> %i.ef, i64 1
  store float %i.eh, ptr %.sroa.565.0..sroa_idx, align 4, !tbaa !20
  %i.ei = extractelement <4 x float> %i.ef, i64 2
  store float %i.ei, ptr %.sroa.559.0..sroa_idx, align 4, !tbaa !20
  %.sroa.0.0.vec.insert.i187 = insertelement <2 x float> poison, float %i.dr, i64 0
  %.sroa.0.4.vec.insert.i188 = insertelement <2 x float> %.sroa.0.0.vec.insert.i187, float %i.ds, i64 1
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cy ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i188, ptr %i.ej, align 4, !tbaa !20
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ek = extractelement <4 x float> %i.ef, i64 3
  store float %i.ek, ptr %.sroa.553.0..sroa_idx, align 4, !tbaa !20
  %i.el = add nuw i64 %.0146628, 1                ; 2 uses
  %exitcond667.not = icmp eq i64 %i.el, %i.k
  br i1 %exitcond667.not, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %.lr.ph629, !llvm.loop !29

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283: ; preds = %._crit_edge634
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #16
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread ; 8 uses

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread: ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit263

_ZNSt6vectorIiSaIiEED2Ev.exit263.thread:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit265.thread602

.lr.ph633.preheader:                              ; preds = %._crit_edge634, %.lr.ph637
  %.0143636 = phi i64 [ 0, %.lr.ph637 ], [ %i.fn, %._crit_edge634 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %.0143636 ; 3 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !50 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !51 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !52 ; 2 uses
  br i1 %min.iters.check758, label %.lr.ph633.preheader823, label %vector.ph759

vector.ph759:                                     ; preds = %.lr.ph633.preheader
  %broadcast.splatinsert761 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat762 = shufflevector <4 x float> %broadcast.splatinsert761, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert763 = insertelement <4 x float> poison, float %i.es, i64 0
  %broadcast.splat764 = shufflevector <4 x float> %broadcast.splatinsert763, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert765 = insertelement <4 x float> poison, float %i.eu, i64 0
  %broadcast.splat766 = shufflevector <4 x float> %broadcast.splatinsert765, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph759
  %index768 = phi i64 [ 0, %vector.ph759 ], [ %index.next776, %vector.body767 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph759 ], [ %i.fi, %vector.body767 ]
  %vec.phi769 = phi <4 x i32> [ zeroinitializer, %vector.ph759 ], [ %i.fj, %vector.body767 ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index768
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index768
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %wide.vec770 = load <8 x float>, ptr %i.ev, align 4, !tbaa !20 ; 2 uses
  %strided.vec771 = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec772 = shufflevector <8 x float> %wide.vec770, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec773 = load <8 x float>, ptr %i.ex, align 4, !tbaa !20 ; 2 uses
  %strided.vec774 = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec775 = shufflevector <8 x float> %wide.vec773, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ey = fmul <4 x float> %broadcast.splat764, %strided.vec772
  %i.ez = fmul <4 x float> %broadcast.splat764, %strided.vec775
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec771, <4 x float> %broadcast.splat762, <4 x float> %i.ey)
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec774, <4 x float> %broadcast.splat762, <4 x float> %i.ez)
  %i.fc = fadd <4 x float> %broadcast.splat766, %i.fa
  %i.fd = fadd <4 x float> %broadcast.splat766, %i.fb
  %i.fe = fcmp ole <4 x float> %i.fc, zeroinitializer
  %i.ff = fcmp ole <4 x float> %i.fd, zeroinitializer
  %i.fg = zext <4 x i1> %i.fe to <4 x i32>
  %i.fh = zext <4 x i1> %i.ff to <4 x i32>
  %i.fi = add <4 x i32> %vec.phi, %i.fg           ; 2 uses
  %i.fj = add <4 x i32> %vec.phi769, %i.fh        ; 2 uses
  %index.next776 = add nuw i64 %index768, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next776, %n.vec760
  br i1 %i.fk, label %middle.block777, label %vector.body767, !llvm.loop !30

middle.block777:                                  ; preds = %vector.body767
  %bin.rdx = add <4 x i32> %i.fj, %i.fi
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n778, label %._crit_edge634, label %.lr.ph633.preheader823

.lr.ph633.preheader823:                           ; preds = %.lr.ph633.preheader, %middle.block777
  %.0141631.ph = phi i64 [ 0, %.lr.ph633.preheader ], [ %n.vec760, %middle.block777 ]
  %.0142630.ph = phi i32 [ 0, %.lr.ph633.preheader ], [ %i.fl, %middle.block777 ]
  br label %.lr.ph633

._crit_edge634:                                   ; preds = %.lr.ph633, %middle.block777
  %.lcssa750 = phi i32 [ %i.fl, %middle.block777 ], [ %i.fx, %.lr.ph633 ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0143636
  store i32 %.lcssa750, ptr %i.fm, align 4, !tbaa !45
  %i.fn = add nuw i64 %.0143636, 1                ; 2 uses
  %exitcond671.not = icmp eq i64 %i.fn, %i.l
  br i1 %exitcond671.not, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283, label %.lr.ph633.preheader, !llvm.loop !31

.lr.ph633:                                        ; preds = %.lr.ph633.preheader823, %.lr.ph633
  %.0141631 = phi i64 [ %i.fy, %.lr.ph633 ], [ %.0141631.ph, %.lr.ph633.preheader823 ] ; 2 uses
  %.0142630 = phi i32 [ %i.fx, %.lr.ph633 ], [ %.0142630.ph, %.lr.ph633.preheader823 ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0141631 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !47
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !48
  %i.fs = fmul float %i.es, %i.fr
  %i.ft = call noundef float @llvm.fmuladd.f32(float %i.fp, float %i.eq, float %i.fs)
  %i.fu = fadd float %i.eu, %i.ft
  %i.fv = fcmp ole float %i.fu, 0.000000e+00
  %i.fw = zext i1 %i.fv to i32
  %i.fx = add nuw nsw i32 %.0142630, %i.fw        ; 2 uses
  %i.fy = add nuw i64 %.0141631, 1                ; 2 uses
  %exitcond669.not = icmp eq i64 %i.fy, %i.k
  br i1 %exitcond669.not, label %._crit_edge634, label %.lr.ph633, !llvm.loop !32

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302: ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i283
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.em, i8 0, i64 %i.ci, i1 false), !tbaa !20
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #16
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit261.thread732 ; 18 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i302
  store i32 0, ptr %i.fz, align 4, !tbaa !45
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ga, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !45
  %min.iters.check781 = icmp ult i64 %i.l, 8
  br i1 %min.iters.check781, label %scalar.ph780.preheader, label %vector.ph782

vector.ph782:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309
  %n.vec783 = and i64 %i.l, 1152921504606846968   ; 3 uses
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph782
  %index785 = phi i64 [ 0, %vector.ph782 ], [ %index.next786, %vector.body784 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph782 ], [ %vec.ind.next, %vector.body784 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index785 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <4 x i32> %vec.ind, ptr %i.gb, align 4, !tbaa !45
  store <4 x i32> %step.add, ptr %i.gc, align 4, !tbaa !45
  %index.next786 = add nuw i64 %index785, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gd = icmp eq i64 %index.next786, %n.vec783
  br i1 %i.gd, label %middle.block787, label %vector.body784, !llvm.loop !33

middle.block787:                                  ; preds = %vector.body784
  %cmp.n788 = icmp eq i64 %i.l, %n.vec783
  br i1 %cmp.n788, label %.lr.ph59.i.preheader, label %scalar.ph780.preheader

scalar.ph780.preheader:                           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309, %middle.block787
  %.04853.i.ph = phi i64 [ 0, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i309 ], [ %n.vec783, %middle.block787 ]
  br label %scalar.ph780

.lr.ph59.i.preheader:                             ; preds = %scalar.ph780, %middle.block787
  %i.ge = add nsw i64 %i.l, -2
  br label %.lr.ph59.i

scalar.ph780:                                     ; preds = %scalar.ph780.preheader, %scalar.ph780
  %.04853.i = phi i64 [ %i.gh, %scalar.ph780 ], [ %.04853.i.ph, %scalar.ph780.preheader ] ; 3 uses
  %i.gf = trunc i64 %.04853.i to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.04853.i
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !45
  %i.gh = add nuw i64 %.04853.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gh, %i.l
  br i1 %exitcond.not.i, label %.lr.ph59.i.preheader, label %scalar.ph780, !llvm.loop !34

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %._crit_edge.thread.i
  %.04758.i = phi i64 [ %i.gk, %._crit_edge.thread.i ], [ 0, %.lr.ph59.i.preheader ] ; 8 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.04758.i ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !45 ; 4 uses
  %i.gk = add nuw i64 %.04758.i, 1                ; 5 uses
  %i.gl = xor i64 %.04758.i, -1                   ; 2 uses
  %i.gm = add i64 %i.l, %i.gl                     ; 2 uses
  %min.iters.check791 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check791, label %.lr.ph57.i.preheader, label %vector.ph792

vector.ph792:                                     ; preds = %.lr.ph59.i
  %i.gn = and i64 %i.gl, 3                        ; 2 uses
  %n.vec793 = sub nuw i64 %i.gm, %i.gn            ; 2 uses
  %i.go = add i64 %i.gk, %n.vec793
  %broadcast.splatinsert794 = insertelement <2 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat795 = shufflevector <2 x i32> %broadcast.splatinsert794, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.gk
  br label %vector.body796

vector.body796:                                   ; preds = %vector.body796, %vector.ph792
  %index797 = phi i64 [ 0, %vector.ph792 ], [ %index.next805, %vector.body796 ] ; 2 uses
  %vec.ind798 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph792 ], [ %vec.ind.next806, %vector.body796 ] ; 3 uses
  %vec.phi799 = phi <2 x i32> [ %broadcast.splat795, %vector.ph792 ], [ %i.gw, %vector.body796 ] ; 2 uses
  %vec.phi800 = phi <2 x i32> [ %broadcast.splat795, %vector.ph792 ], [ %i.gx, %vector.body796 ] ; 2 uses
  %vec.phi801 = phi <2 x i64> [ poison, %vector.ph792 ], [ %i.gu, %vector.body796 ]
  %vec.phi802 = phi <2 x i64> [ poison, %vector.ph792 ], [ %i.gv, %vector.body796 ]
  %step.add803 = add nuw <2 x i64> %vec.ind798, splat (i64 2)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index797 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %wide.load = load <2 x i32>, ptr %i.gq, align 4, !tbaa !45 ; 2 uses
  %wide.load804 = load <2 x i32>, ptr %i.gr, align 4, !tbaa !45 ; 2 uses
  %i.gs = icmp slt <2 x i32> %wide.load, %vec.phi799
  %i.gt = icmp slt <2 x i32> %wide.load804, %vec.phi800
  %i.gu = select <2 x i1> %i.gs, <2 x i64> %vec.ind798, <2 x i64> %vec.phi801 ; 2 uses
  %i.gv = select <2 x i1> %i.gt, <2 x i64> %step.add803, <2 x i64> %vec.phi802 ; 2 uses
  %i.gw = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load, <2 x i32> %vec.phi799) ; 3 uses
  %i.gx = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %wide.load804, <2 x i32> %vec.phi800) ; 3 uses
  %index.next805 = add nuw i64 %index797, 4       ; 2 uses
  %vec.ind.next806 = add nuw <2 x i64> %vec.ind798, splat (i64 4)
  %i.gy = icmp eq i64 %index.next805, %n.vec793
  br i1 %i.gy, label %middle.block807, label %vector.body796, !llvm.loop !35

middle.block807:                                  ; preds = %vector.body796
  %rdx.minmax = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gw, <2 x i32> %i.gx)
  %i.gz = call i32 @llvm.vector.reduce.smin.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert808 = insertelement <2 x i32> poison, i32 %i.gz, i64 0
  %broadcast.splat809 = shufflevector <2 x i32> %broadcast.splatinsert808, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = icmp eq <2 x i32> %i.gw, %broadcast.splat809
  %i.hb = icmp eq <2 x i32> %i.gx, %broadcast.splat809
  %i.hc = select <2 x i1> %i.hb, <2 x i64> %i.gv, <2 x i64> splat (i64 -1) ; 2 uses
  %i.hd = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.gu, <2 x i64> %i.hc)
  %rdx.minmax810 = select <2 x i1> %i.ha, <2 x i64> %i.hd, <2 x i64> %i.hc
  %i.he = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax810)
  %i.hf = add i64 %i.gk, %i.he
  %i.hg = icmp eq i32 %i.gz, %i.gj
  %i.hh = select i1 %i.hg, i64 %.04758.i, i64 %i.hf ; 2 uses
  %cmp.n811 = icmp eq i64 %i.gn, 0
  br i1 %cmp.n811, label %._crit_edge.i, label %.lr.ph57.i.preheader

.lr.ph57.i.preheader:                             ; preds = %.lr.ph59.i, %middle.block807
  %.056.i.ph = phi i64 [ %i.gk, %.lr.ph59.i ], [ %i.go, %middle.block807 ]
  %.04455.i.ph = phi i32 [ %i.gj, %.lr.ph59.i ], [ %i.gz, %middle.block807 ]
  %.04554.i.ph = phi i64 [ %.04758.i, %.lr.ph59.i ], [ %i.hh, %middle.block807 ]
  br label %.lr.ph57.i

._crit_edge.i:                                    ; preds = %.lr.ph57.i, %middle.block807
  %.146.i.lcssa = phi i64 [ %i.hh, %middle.block807 ], [ %.146.i, %.lr.ph57.i ] ; 3 uses
  %i.hi = icmp eq i64 %.146.i.lcssa, %.04758.i
  br i1 %i.hi, label %._crit_edge.thread.i, label %bb.f

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader, %.lr.ph57.i
  %.056.i = phi i64 [ %i.hl, %.lr.ph57.i ], [ %.056.i.ph, %.lr.ph57.i.preheader ] ; 3 uses
  %.04455.i = phi i32 [ %.1.i, %.lr.ph57.i ], [ %.04455.i.ph, %.lr.ph57.i.preheader ] ; 2 uses
  %.04554.i = phi i64 [ %.146.i, %.lr.ph57.i ], [ %.04554.i.ph, %.lr.ph57.i.preheader ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.056.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !45 ; 2 uses
  %.not610 = icmp slt i32 %i.hk, %.04455.i
  %.146.i = select i1 %.not610, i64 %.056.i, i64 %.04554.i ; 2 uses
  %.1.i = call i32 @llvm.smin.i32(i32 %i.hk, i32 %.04455.i)
  %i.hl = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.hl, %i.l
  br i1 %exitcond60.not.i, label %._crit_edge.i, label %.lr.ph57.i, !llvm.loop !36

bb.f:                                             ; preds = %._crit_edge.i
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.146.i.lcssa ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !45
  store i32 %i.hn, ptr %i.gi, align 4, !tbaa !45
  store i32 %i.gj, ptr %i.hm, align 4, !tbaa !45
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.04758.i ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.146.i.lcssa ; 2 uses
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !45
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !45
  store i32 %i.hr, ptr %i.ho, align 4, !tbaa !45
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !45
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.f, %._crit_edge.i
  %exitcond672 = icmp eq i64 %.04758.i, %i.ge
  br i1 %exitcond672, label %.lr.ph640, label %.lr.ph59.i, !llvm.loop !37

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317: ; preds = %.lr.ph640
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #16
          to label %.lr.ph644 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit257.thread ; 22 uses

.lr.ph644:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317
  %i.ht = add i64 %i.ci, -12
  %i.hu = getelementptr i8, ptr %i.hs, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.hu, i8 0, i64 %i.ht, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hs, ptr noundef nonnull align 4 dereferenceable(12) %i.em, i64 12, i1 false), !tbaa.struct !53
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  br label %.backedge

.lr.ph640:                                        ; preds = %._crit_edge.thread.i, %.lr.ph640
  %.0140639 = phi i64 [ %i.ih, %.lr.ph640 ], [ 0, %._crit_edge.thread.i ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.0140639
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !45
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %.0140639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ia, ptr noundef nonnull align 4 dereferenceable(12) %i.hz, i64 12, i1 false), !tbaa.struct !53
  %i.ib = or disjoint i64 %.0140639, 1            ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !45
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ig, ptr noundef nonnull align 4 dereferenceable(12) %i.if, i64 12, i1 false), !tbaa.struct !53
  %i.ih = add nuw i64 %.0140639, 2                ; 2 uses
  %exitcond674.not.1 = icmp eq i64 %i.ih, %i.l
  br i1 %exitcond674.not.1, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317, label %.lr.ph640, !llvm.loop !38

._crit_edge645:                                   ; preds = %bb.m
  %i.ii = icmp slt i32 %.1138, 4
  br i1 %i.ii, label %bb.ab, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit257.thread:          ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i317
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph644
  %.0136643 = phi i64 [ 0, %.lr.ph644 ], [ %.0136643.be, %.backedge.backedge ] ; 5 uses
  %.0137642 = phi i32 [ 0, %.lr.ph644 ], [ %.0137642.be, %.backedge.backedge ] ; 7 uses
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %.0136643 ; 2 uses
  %.sroa.0416.0.copyload = load <2 x float>, ptr %i.ik, align 4, !tbaa !20 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !20 ; 3 uses
  %i.il = icmp sgt i32 %.0137642, 0
  br i1 %i.il, label %.lr.ph.i201, label %.loopexit

.lr.ph.i201:                                      ; preds = %.backedge
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.0416.0.copyload, i64 0
  %i.im = fpext float %.sroa.09.0.vec.extract.i to double ; 3 uses
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.0416.0.copyload, i64 1
  %i.in = fpext float %.sroa.09.4.vec.extract.i to double ; 3 uses
  %i.io = fmul double %i.in, %i.in
  %i.ip = call double @llvm.fmuladd.f64(double %i.im, double %i.im, double %i.io)
  %sqrt.i15.i = call noundef double @llvm.sqrt.f64(double %i.ip)
  %wide.trip.count = zext nneg i32 %.0137642 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i201
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph.i201 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %indvars.iv ; 3 uses
  %i.ir = load <2 x float>, ptr %i.iq, align 4, !tbaa !20
  %i.is = fpext <2 x float> %i.ir to <2 x double> ; 3 uses
  %i.it = insertelement <2 x double> %i.is, double %i.in, i64 0
  %i.iu = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = fmul <2 x double> %i.it, %i.iu
  %i.iw = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = insertelement <2 x double> %i.iw, double %i.im, i64 0
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.ix, <2 x double> %i.iv) ; 2 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 1
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.iz)
  %i.ja = fmul double %sqrt.i15.i, %sqrt.i.i
  %i.jb = extractelement <2 x double> %i.iy, i64 0
  %i.jc = fdiv double %i.jb, %i.ja
  %i.jd = call double @acos(double noundef %i.jc) #14
  %i.je = fcmp olt double %i.jd, 5.000000e-01
  br i1 %i.je, label %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond676.not, label %.loopexit, label %bb.g, !llvm.loop !39

.loopexit:                                        ; preds = %bb.h, %.backedge
  %i.jf = sext i32 %.0137642 to i64
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %i.jf ; 2 uses
  store <2 x float> %.sroa.0416.0.copyload, ptr %i.jg, align 4, !tbaa !20
  %.sroa.9.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx420, align 4, !tbaa !20
  %i.jh = add nsw i32 %.0137642, 1
  br label %bb.k

_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit: ; preds = %bb.g
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !52
  %i.jk = call noundef float @llvm.fabs.f32(float %i.jj)
  %i.jl = call noundef float @llvm.fabs.f32(float %.sroa.9.0.copyload)
  %i.jm = fcmp olt float %i.jk, %i.jl
  br i1 %i.jm, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0136643
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !45
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !45
  %i.jr = add i32 %i.jo, 1
  %i.js = sub i32 %i.jr, %i.jq
  %i.jt = icmp ult i32 %i.js, 3
  br i1 %i.jt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store <2 x float> %.sroa.0416.0.copyload, ptr %i.iq, align 4, !tbaa !20
  store float %.sroa.9.0.copyload, ptr %i.ji, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit, %bb.i, %bb.j, %.loopexit
  %.1138 = phi i32 [ %.0137642, %bb.j ], [ %.0137642, %bb.i ], [ %.0137642, %_ZN2cv3mcc9CBoundMin12validateLineERKSt6vectorINS_7Point3_IfEESaIS4_EES4_iRi.exit ], [ %i.jh, %.loopexit ] ; 3 uses
  %i.ju = icmp eq i32 %.1138, 4
  br i1 %i.ju, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0136643
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !45
  %i.jx = load i32, ptr %i.hv, align 4, !tbaa !45
  %i.jy = add i32 %i.jw, -3
  %i.jz = sub i32 %i.jy, %i.jx
  %i.ka = icmp ult i32 %i.jz, -5
  %i.kb = add nuw i64 %.0136643, 1                ; 2 uses
  %exitcond678.not708 = icmp eq i64 %i.kb, %i.l
  %or.cond = select i1 %i.ka, i1 true, i1 %exitcond678.not708
  br i1 %or.cond, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %bb.m
  %.0136643.be = phi i64 [ %i.kc, %bb.m ], [ %i.kb, %bb.l ]
  %.0137642.be = phi i32 [ %.1138, %bb.m ], [ 4, %bb.l ]
  br label %.backedge, !llvm.loop !40

bb.m:                                             ; preds = %bb.k
  %i.kc = add nuw i64 %.0136643, 1                ; 2 uses
  %exitcond678.not = icmp eq i64 %i.kc, %i.l
  br i1 %exitcond678.not, label %._crit_edge645, label %.backedge.backedge

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.l, %._crit_edge645
  %i.kd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
          to label %.noexc224 unwind label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit255 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !51
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !52 ; 2 uses
  %i.kj = fdiv float %i.kg, %i.ki
  %i.kk = fpext float %i.kj to double
  %i.kl = load float, ptr %i.hs, align 4, !tbaa !50
  %i.km = fdiv float %i.kl, %i.ki
  %i.kn = fpext float %i.km to double
  %i.ko = call double @atan2(double noundef %i.kk, double noundef %i.kn) #14
  %i.kp = fptrunc double %i.ko to float           ; 4 uses
  store float %i.kp, ptr %i.kd, align 4, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !51
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !52 ; 2 uses
  %i.kv = fdiv float %i.ks, %i.ku
  %i.kw = fpext float %i.kv to double
  %i.kx = load float, ptr %i.kq, align 4, !tbaa !50
  %i.ky = fdiv float %i.kx, %i.ku
  %i.kz = fpext float %i.ky to double
  %i.la = call double @atan2(double noundef %i.kw, double noundef %i.kz) #14
  %i.lb = fptrunc double %i.la to float           ; 4 uses
  store float %i.lb, ptr %i.ke, align 4, !tbaa !20
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hs, i64 28
  %i.le = load float, ptr %i.ld, align 4, !tbaa !51
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !52 ; 2 uses
  %i.lh = fdiv float %i.le, %i.lg
  %i.li = fpext float %i.lh to double
  %i.lj = load float, ptr %i.lc, align 4, !tbaa !50
  %i.lk = fdiv float %i.lj, %i.lg
  %i.ll = fpext float %i.lk to double
  %i.lm = call double @atan2(double noundef %i.li, double noundef %i.ll) #14
  %i.ln = fptrunc double %i.lm to float           ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  store float %i.ln, ptr %i.lo, align 4, !tbaa !20
  %i.lp = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  %i.lq = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !51
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hs, i64 44
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !52 ; 2 uses
  %i.lu = fdiv float %i.lr, %i.lt
  %i.lv = fpext float %i.lu to double
  %i.lw = load float, ptr %i.lp, align 4, !tbaa !50
  %i.lx = fdiv float %i.lw, %i.lt
  %i.ly = fpext float %i.lx to double
  %i.lz = call double @atan2(double noundef %i.lv, double noundef %i.ly) #14
  %i.ma = fptrunc double %i.lz to float           ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kd, i64 12 ; 3 uses
  store float %i.ma, ptr %i.mb, align 4, !tbaa !20
  %i.mc = icmp ult i64 %i.k, 2305843009213693952
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.fz, align 4
  %i.mg = fcmp ogt float %i.lb, %i.kp             ; 2 uses
  %.146.i220 = zext i1 %i.mg to i64
  %.1.i221 = select i1 %i.mg, float %i.lb, float %i.kp ; 2 uses
  %i.mh = fcmp uge float %.1.i221, %i.ln          ; 2 uses
  %.146.i220.1680 = select i1 %i.mh, i64 %.146.i220, i64 2
  %.1.i221.1681 = select i1 %i.mh, float %.1.i221, float %i.ln
  %i.mi = fcmp uge float %.1.i221.1681, %i.ma
  %.146.i220.2683 = select i1 %i.mi, i64 %.146.i220.1680, i64 3 ; 3 uses
  %i.mj = icmp eq i64 %.146.i220.2683, 0
  br i1 %i.mj, label %._crit_edge.thread.i213, label %bb.n

bb.n:                                             ; preds = %.noexc224
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.146.i220.2683 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !20
  store float %i.ml, ptr %i.kd, align 4, !tbaa !20
  store float %i.kp, ptr %i.mk, align 4, !tbaa !20
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.146.i220.2683 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !45
end_hunk_0

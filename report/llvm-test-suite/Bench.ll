Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Bench?download=true
inline.NumInlined: 217
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z15CrcInternalTestv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %.07.tr.i.1 = trunc i32 %i.x to i8
  %.narrow.i.1 = xor i8 %i.aa, %.07.tr.i.1
  %i.ab = zext i8 %.narrow.i.1 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = lshr i32 %i.x, 8
  %i.af = xor i32 %i.ad, %i.ae                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZL8CrcCalc1PKhj.exit, label %.lr.ph.i, !llvm.loop !2

_ZL8CrcCalc1PKhj.exit:                            ; preds = %.lr.ph.i
  %.not = icmp eq i32 %i.af, -688229492
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZL8CrcCalc1PKhj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi i32 [ 521288629, %bb.d ], [ %i.aq, %bb.e ] ; 2 uses
  %indvars.iv.i34 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i35.1, %bb.e ] ; 3 uses
  %i.ah = and i32 %.sroa.6.0, 65535
  %i.ai = mul nuw nsw i32 %i.ah, 18000
  %i.aj = lshr i32 %.sroa.6.0, 16
  %i.ak = add nuw nsw i32 %i.ai, %i.aj            ; 3 uses
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i34
  store i8 %i.al, ptr %i.am, align 1, !tbaa !24
  %i.an = and i32 %i.ak, 65535
  %i.ao = mul nuw nsw i32 %i.an, 18000
  %i.ap = lshr i32 %i.ak, 16
  %i.aq = add nuw nsw i32 %i.ao, %i.ap            ; 2 uses
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !24
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i34, 2 ; 2 uses
  %exitcond.not.i36.1 = icmp eq i64 %indvars.iv.next.i35.1, 1024
  br i1 %exitcond.not.i36.1, label %.preheader, label %bb.e, !llvm.loop !3

.preheader:                                       ; preds = %bb.e, %.critedge
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %.critedge ], [ 0, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv66 ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65 = icmp eq i64 %indvars.iv.next63, 32
  br i1 %exitcond65, label %.critedge, label %bb.g, !llvm.loop !179

bb.g:                                             ; preds = %.preheader, %bb.f
  %indvars.iv62 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next63, %bb.f ] ; 7 uses
  %.not.i37 = icmp eq i64 %indvars.iv62, 0
  br i1 %.not.i37, label %_ZL8CrcCalc1PKhj.exit45, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %indvars.iv62, 1
  %i.av = icmp eq i64 %indvars.iv62, 1
  br i1 %i.av, label %.lr.ph.i38.epil.preheader, label %.lr.ph.i38.preheader.new

.lr.ph.i38.preheader.new:                         ; preds = %.lr.ph.i38.preheader
  %unroll_iter = and i64 %indvars.iv62, 9223372036854775806
  br label %.lr.ph.i38

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i38.epil.preheader

.lr.ph.i38.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i38.preheader
  %indvars.iv.i39.epil.init = phi i64 [ 0, %.lr.ph.i38.preheader ], [ %indvars.iv.next.i43.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i40.epil.init = phi i32 [ -1, %.lr.ph.i38.preheader ], [ %i.bs, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod77 = trunc i64 %indvars.iv62 to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i39.epil.init
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %.07.tr.i41.epil = trunc i32 %.078.i40.epil.init to i8
  %.narrow.i42.epil = xor i8 %i.ax, %.07.tr.i41.epil
  %i.ay = zext i8 %.narrow.i42.epil to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13
  %i.bb = lshr i32 %.078.i40.epil.init, 8
  %i.bc = xor i32 %i.ba, %i.bb
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i38.epil.preheader
  %.lcssa = phi i32 [ %i.bs, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bc, %.lr.ph.i38.epil.preheader ]
  %i.bd = xor i32 %.lcssa, -1
  br label %_ZL8CrcCalc1PKhj.exit45

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.i38.preheader.new
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i38.preheader.new ], [ %indvars.iv.next.i43.1, %.lr.ph.i38 ] ; 3 uses
  %.078.i40 = phi i32 [ -1, %.lr.ph.i38.preheader.new ], [ %i.bs, %.lr.ph.i38 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i38.preheader.new ], [ %niter.next.1, %.lr.ph.i38 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i39
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !24
  %.07.tr.i41 = trunc i32 %.078.i40 to i8
  %.narrow.i42 = xor i8 %i.bf, %.07.tr.i41
  %i.bg = zext i8 %.narrow.i42 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  %i.bj = lshr i32 %.078.i40, 8
  %i.bk = xor i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !24
  %.07.tr.i41.1 = trunc i32 %i.bk to i8
  %.narrow.i42.1 = xor i8 %i.bn, %.07.tr.i41.1
  %i.bo = zext i8 %.narrow.i42.1 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = lshr i32 %i.bk, 8
  %i.bs = xor i32 %i.bq, %i.br                    ; 3 uses
  %indvars.iv.next.i43.1 = add nuw nsw i64 %indvars.iv.i39, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i38, !llvm.loop !2

_ZL8CrcCalc1PKhj.exit45:                          ; preds = %bb.g, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.bd, %._crit_edge.loopexit.i ]
  %i.bt = invoke i32 @CrcCalc(ptr noundef nonnull %i.au, i64 noundef %indvars.iv62)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZL8CrcCalc1PKhj.exit45
  %.not31 = icmp eq i32 %.07.lcssa.i, %i.bt
  br i1 %.not31, label %bb.f, label %.loopexit

bb.i:                                             ; preds = %_ZL8CrcCalc1PKhj.exit45
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond69 = icmp eq i64 %indvars.iv.next67, 1248
  br i1 %exitcond69, label %.loopexit, label %.preheader, !llvm.loop !180

.loopexit:                                        ; preds = %.critedge, %bb.h, %_ZL8CrcCalc1PKhj.exit, %bb.b
  %.4 = phi i1 [ false, %bb.b ], [ false, %_ZL8CrcCalc1PKhj.exit ], [ false, %bb.h ], [ true, %.critedge ]
  invoke void @MidFree(ptr noundef %i.a)
          to label %_ZN12CBenchBufferD2Ev.exit unwind label %bb.j, !inline_history !96

bb.j:                                             ; preds = %.loopexit
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #22, !inline_history !96
  unreachable

_ZN12CBenchBufferD2Ev.exit:                       ; preds = %.loopexit
  ret i1 %.4

bb.k:                                             ; preds = %bb.i, %bb.c
  %.sroa.8.1 = phi ptr [ null, %bb.c ], [ %i.a, %bb.i ]
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.bu, %bb.i ]
  invoke void @MidFree(ptr noundef %.sroa.8.1)
          to label %_ZN12CBenchBufferD2Ev.exit46 unwind label %bb.l, !inline_history !96

bb.l:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #22, !inline_history !96
  unreachable

_ZN12CBenchBufferD2Ev.exit46:                     ; preds = %bb.k
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12CBenchBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CBenchBuffer, i64 16), ptr %0, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  invoke void @MidFree(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z8CrcBenchjjRy(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.CCrcThreads, align 8        ; 11 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %i.a = zext i32 %1 to i64                       ; 16 uses
  %i.b = zext i32 %spec.store.select to i64       ; 5 uses
  %i.c = mul nuw i64 %i.a, %i.b                   ; 2 uses
  invoke void @MidFree(ptr noundef null)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.d = invoke ptr @MidAlloc(i64 noundef %i.c)
          to label %bb.b unwind label %bb.c       ; 14 uses

bb.b:                                             ; preds = %.noexc
  %.not132 = icmp eq ptr %i.d, null
  br i1 %.not132, label %bb.aa, label %bb.d

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 2
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = udiv i32 1073741824, %i.g                ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 0, ptr %6, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store ptr null, ptr %i.j, align 8, !tbaa !100
  %i.k = icmp ugt i32 %0, 1
  br i1 %i.k, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.l = mul nuw nsw i64 %i.b, 40                 ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 8
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21
          to label %bb.f unwind label %bb.i       ; 3 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr %i.n, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.idx = phi i64 [ 8, %bb.f ], [ %.add, %bb.g ]  ; 3 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !89
  %.add = add nuw nsw i64 %.idx, 40
  %i.p = add nuw nsw i64 %.idx, 32
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %.ptr82 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %.ptr82, ptr %i.j, align 8, !tbaa !100
  %.not.i.i = icmp eq i32 %1, 0
  %wide.trip.count160 = zext i32 %0 to i64        ; 3 uses
  br i1 %.not.i.i, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader, label %.lr.ph.i.i.preheader.preheader

.lr.ph.i.i.preheader.preheader:                   ; preds = %bb.h
  %i.r = add nsw i64 %i.a, -1                     ; 2 uses
  %xtraiter211 = and i64 %i.a, 1
  %i.s = icmp eq i64 %i.r, 0
  %unroll_iter215 = and i64 %i.a, 4294967294
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  %lcmp.mod214 = trunc i32 %1 to i1
  %xtraiter217 = and i64 %i.a, 1
  %i.t = icmp eq i64 %i.r, 0
  %unroll_iter221 = and i64 %i.a, 4294967294
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = trunc i32 %1 to i1
  br label %.lr.ph.i.i.preheader

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader: ; preds = %bb.h
  %xtraiter223 = and i64 %wide.trip.count160, 1
  %unroll_iter226 = and i64 %wide.trip.count160, 4294967294
  br label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us: ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader
  %indvars.iv157 = phi i64 [ 0, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader ], [ %indvars.iv.next158.1, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us ] ; 4 uses
  %niter227 = phi i64 [ 0, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader ], [ %niter227.next.1, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us ]
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv157 ; 4 uses
  %i.v = mul nuw nsw i64 %indvars.iv157, %i.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %i.i, ptr %i.y, align 4, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 0, ptr %i.aa, align 8, !tbaa !105
  %indvars.iv.next158 = or disjoint i64 %indvars.iv157, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv.next158 ; 4 uses
  %i.ac = mul nuw nsw i64 %indvars.iv.next158, %i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 %i.i, ptr %i.af, align 4, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 0, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 0, ptr %i.ah, align 8, !tbaa !105
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157, 2 ; 3 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.split144.us.loopexit.unr-lcssa, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us, !llvm.loop !181

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %._crit_edge.loopexit.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.loopexit.i.i ], [ 0, %.lr.ph.i.i.preheader.preheader ] ; 3 uses
  %.sroa.8.0140 = phi i32 [ %.lcssa199.a, %._crit_edge.loopexit.i.i ], [ 521288629, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %indvars.iv ; 4 uses
  %i.ak = mul nuw i64 %indvars.iv, %i.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ak ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store i32 %i.i, ptr %i.an, align 4, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %1, ptr %i.ao, align 8, !tbaa !104
  br i1 %i.s, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.8.1 = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.sroa.8.0140, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %niter216 = phi i64 [ %niter216.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ap = and i32 %.sroa.8.1, 65535
  %i.aq = mul nuw nsw i32 %i.ap, 18000
  %i.ar = lshr i32 %.sroa.8.1, 16
  %i.as = add nuw nsw i32 %i.aq, %i.ar            ; 3 uses
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !24
  %i.av = and i32 %i.as, 65535
  %i.aw = mul nuw nsw i32 %i.av, 18000
  %i.ax = lshr i32 %i.as, 16
  %i.ay = add nuw nsw i32 %i.aw, %i.ax            ; 4 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !24
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter216.next.1 = add i64 %niter216, 2         ; 2 uses
  %niter216.ncmp.1 = icmp eq i64 %niter216.next.1, %unroll_iter215
  br i1 %niter216.ncmp.1, label %.lr.ph.i6.i.preheader.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.i6.i.preheader.unr-lcssa:                  ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod212.not, label %.lr.ph.i6.i.preheader, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i6.i.preheader.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.8.1.epil.init = phi i32 [ %.sroa.8.0140, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i6.i.preheader.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.lr.ph.i6.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.bc = and i32 %.sroa.8.1.epil.init, 65535
  %i.bd = mul nuw nsw i32 %i.bc, 18000
  %i.be = lshr i32 %.sroa.8.1.epil.init, 16
  %i.bf = add nuw nsw i32 %i.bd, %i.be            ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.i.epil.init
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !24
  br label %.lr.ph.i6.i.preheader

.lr.ph.i6.i.preheader:                            ; preds = %.lr.ph.i6.i.preheader.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa199.a = phi i32 [ %i.ay, %.lr.ph.i6.i.preheader.unr-lcssa ], [ %i.bf, %.lr.ph.i.i.epil.preheader ]
  br i1 %i.t, label %.lr.ph.i6.i.epil.preheader, label %.lr.ph.i6.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i6.i
  br i1 %lcmp.mod218.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i6.i.epil.preheader

.lr.ph.i6.i.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i6.i.preheader
  %indvars.iv.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i6.i.preheader ], [ %indvars.iv.next.i8.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i6.i.preheader ], [ %i.cf, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i7.i.epil.init
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !24
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil.init to i8
  %.narrow.i.i.epil = xor i8 %i.bj, %.07.tr.i.i.epil
  %i.bk = zext i8 %.narrow.i.i.epil to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = lshr i32 %.078.i.i.epil.init, 8
  %i.bo = xor i32 %i.bm, %i.bn
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i6.i.epil.preheader
  %.lcssa200 = phi i32 [ %i.cf, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.bo, %.lr.ph.i6.i.epil.preheader ]
  %i.bp = xor i32 %.lcssa200, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count160
  br i1 %exitcond.not, label %.split144.us, label %.lr.ph.i.i.preheader, !llvm.loop !181

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i.preheader, %.lr.ph.i6.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.1, %.lr.ph.i6.i ], [ 0, %.lr.ph.i6.i.preheader ] ; 3 uses
  %.078.i.i = phi i32 [ %i.cf, %.lr.ph.i6.i ], [ -1, %.lr.ph.i6.i.preheader ] ; 2 uses
  %niter222 = phi i64 [ %niter222.next.1, %.lr.ph.i6.i ], [ 0, %.lr.ph.i6.i.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i7.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.bs, %.07.tr.i.i
  %i.bt = zext i8 %.narrow.i.i to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.bw = lshr i32 %.078.i.i, 8
  %i.bx = xor i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i7.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %.07.tr.i.i.1 = trunc i32 %i.bx to i8
  %.narrow.i.i.1 = xor i8 %i.ca, %.07.tr.i.i.1
  %i.cb = zext i8 %.narrow.i.i.1 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ce = lshr i32 %i.bx, 8
  %i.cf = xor i32 %i.cd, %i.ce                    ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i7.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i6.i, !llvm.loop !2

bb.i:                                             ; preds = %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.split144.us.loopexit.unr-lcssa:                  ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.split144.us, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader: ; preds = %.split144.us.loopexit.unr-lcssa
  %lcmp.mod225 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv.next158.1 ; 4 uses
  %i.ci = mul nuw nsw i64 %indvars.iv.next158.1, %i.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  store i32 %i.i, ptr %i.cl, align 4, !tbaa !103
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i32 0, ptr %i.cm, align 8, !tbaa !104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i32 0, ptr %i.cn, align 8, !tbaa !105
  br label %.split144.us

.split144.us:                                     ; preds = %._crit_edge.loopexit.i.i, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader, %.split144.us.loopexit.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.co = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split144.us
  %i.cq = load i64, ptr %5, align 8, !tbaa !52
  %i.cr = mul i64 %i.cq, 1000000
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.cu = add i64 %i.cr, %i.ct
  br label %_ZL12GetTimeCountv.exit

bb.k:                                             ; preds = %.split144.us
  %i.cv = tail call i64 @time(ptr noundef null) #20
  %i.cw = mul i64 %i.cv, 1000000
  br label %_ZL12GetTimeCountv.exit

_ZL12GetTimeCountv.exit:                          ; preds = %bb.j, %bb.k
  %.0.i93 = phi i64 [ %i.cu, %bb.j ], [ %i.cw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZL12GetTimeCountv.exit, %bb.o
  %indvars.iv162 = phi i64 [ 0, %_ZL12GetTimeCountv.exit ], [ %indvars.iv.next163, %bb.o ] ; 2 uses
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %indvars.iv162 ; 2 uses
  %i.cz = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull @_ZL17CrcThreadFunctionPv, ptr noundef nonnull %i.cy)
          to label %_ZN8NWindows7CThread6CreateEPFjPvES1_.exit unwind label %bb.n ; 2 uses

_ZN8NWindows7CThread6CreateEPFjPvES1_.exit:       ; preds = %bb.l
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %bb.o, label %_ZL6CrcBigPKvjjj.exit

bb.m:                                             ; preds = %.noexc96, %.lr.ph.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %_ZN8NWindows7CThread6CreateEPFjPvES1_.exit
  %i.dc = load i32, ptr %6, align 8, !tbaa !99
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %6, align 8, !tbaa !99
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.b
  br i1 %exitcond166.not, label %bb.p, label %bb.l, !llvm.loop !182

bb.p:                                             ; preds = %bb.o
  %.not.i95 = icmp eq i32 %i.dd, 0
  br i1 %.not.i95, label %_ZN11CCrcThreads7WaitAllEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.noexc97
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc97 ], [ 0, %bb.p ] ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %indvars.iv.i ; 2 uses
  %i.dg = invoke noundef i32 @Thread_Wait(ptr noundef nonnull align 8 dereferenceable(37) %i.df)
          to label %.noexc96 unwind label %bb.m   ; 0 uses

.noexc96:                                         ; preds = %.lr.ph.i
  %i.dh = invoke noundef i32 @Thread_Close(ptr noundef nonnull align 8 dereferenceable(37) %i.df)
          to label %.noexc97 unwind label %bb.m   ; 0 uses

.noexc97:                                         ; preds = %.noexc96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = load i32, ptr %6, align 8, !tbaa !99
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next.i, %i.dj
  br i1 %i.dk, label %.lr.ph.i, label %_ZN11CCrcThreads7WaitAllEv.exit, !llvm.loop !4

_ZN11CCrcThreads7WaitAllEv.exit:                  ; preds = %.noexc97, %bb.p
  store i32 0, ptr %6, align 8, !tbaa !99
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !100
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.b
  br i1 %exitcond171.not, label %.critedge, label %bb.r, !llvm.loop !183

bb.r:                                             ; preds = %_ZN11CCrcThreads7WaitAllEv.exit, %bb.q
  %indvars.iv167 = phi i64 [ 0, %_ZN11CCrcThreads7WaitAllEv.exit ], [ %indvars.iv.next168, %bb.q ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %indvars.iv167
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !106, !range !57, !noundef !58
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.q, label %_ZL6CrcBigPKvjjj.exit

bb.s:                                             ; preds = %bb.d
  %.not.i.i98 = icmp eq i32 %1, 0
  br i1 %.not.i.i98, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113, label %.lr.ph.i.i99.preheader

.lr.ph.i.i99.preheader:                           ; preds = %bb.s
  %i.dq = add nsw i64 %i.a, -1                    ; 2 uses
  %xtraiter = and i64 %i.a, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i99.epil.preheader, label %.lr.ph.i.i99.preheader.new

.lr.ph.i.i99.preheader.new:                       ; preds = %.lr.ph.i.i99.preheader
  %unroll_iter = and i64 %i.a, 4294967294
  br label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %.lr.ph.i.i99, %.lr.ph.i.i99.preheader.new
  %.sroa.8.3 = phi i32 [ 521288629, %.lr.ph.i.i99.preheader.new ], [ %i.eb, %.lr.ph.i.i99 ] ; 2 uses
  %indvars.iv.i.i101 = phi i64 [ 0, %.lr.ph.i.i99.preheader.new ], [ %indvars.iv.next.i.i102.1, %.lr.ph.i.i99 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i99.preheader.new ], [ %niter.next.1, %.lr.ph.i.i99 ]
  %i.ds = and i32 %.sroa.8.3, 65535
  %i.dt = mul nuw nsw i32 %i.ds, 18000
  %i.du = lshr i32 %.sroa.8.3, 16
  %i.dv = add nuw nsw i32 %i.dt, %i.du            ; 3 uses
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !24
  %i.dy = and i32 %i.dv, 65535
  %i.dz = mul nuw nsw i32 %i.dy, 18000
  %i.ea = lshr i32 %i.dv, 16
  %i.eb = add nuw nsw i32 %i.dz, %i.ea            ; 3 uses
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !24
  %indvars.iv.next.i.i102.1 = add nuw nsw i64 %indvars.iv.i.i101, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i6.i104.preheader.unr-lcssa, label %.lr.ph.i.i99, !llvm.loop !3

.lr.ph.i6.i104.preheader.unr-lcssa:               ; preds = %.lr.ph.i.i99
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.i104.preheader, label %.lr.ph.i.i99.epil.preheader

.lr.ph.i.i99.epil.preheader:                      ; preds = %.lr.ph.i6.i104.preheader.unr-lcssa, %.lr.ph.i.i99.preheader
  %.sroa.8.3.epil.init = phi i32 [ 521288629, %.lr.ph.i.i99.preheader ], [ %i.eb, %.lr.ph.i6.i104.preheader.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i101.epil.init = phi i64 [ 0, %.lr.ph.i.i99.preheader ], [ %indvars.iv.next.i.i102.1, %.lr.ph.i6.i104.preheader.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.ef = mul i32 %.sroa.8.3.epil.init, 80
  %i.eg = lshr i32 %.sroa.8.3.epil.init, 16
  %i.eh = add i32 %i.ef, %i.eg
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101.epil.init
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !24
  br label %.lr.ph.i6.i104.preheader

.lr.ph.i6.i104.preheader:                         ; preds = %.lr.ph.i6.i104.preheader.unr-lcssa, %.lr.ph.i.i99.epil.preheader
  %xtraiter205 = and i64 %i.a, 1
  %i.ek = icmp eq i64 %i.dq, 0
  br i1 %i.ek, label %.lr.ph.i6.i104.epil.preheader, label %.lr.ph.i6.i104.preheader.new

.lr.ph.i6.i104.preheader.new:                     ; preds = %.lr.ph.i6.i104.preheader
  %unroll_iter209 = and i64 %i.a, 4294967294
  br label %.lr.ph.i6.i104

._crit_edge.loopexit.i.i111.unr-lcssa:            ; preds = %.lr.ph.i6.i104
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.loopexit.i.i111, label %.lr.ph.i6.i104.epil.preheader

.lr.ph.i6.i104.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i111.unr-lcssa, %.lr.ph.i6.i104.preheader
  %indvars.iv.i7.i105.epil.init = phi i64 [ 0, %.lr.ph.i6.i104.preheader ], [ %indvars.iv.next.i8.i109.1, %._crit_edge.loopexit.i.i111.unr-lcssa ]
  %.078.i.i106.epil.init = phi i32 [ -1, %.lr.ph.i6.i104.preheader ], [ %i.fh, %._crit_edge.loopexit.i.i111.unr-lcssa ] ; 2 uses
  %lcmp.mod208 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105.epil.init
  %i.em = load i8, ptr %i.el, align 1, !tbaa !24
  %.07.tr.i.i107.epil = trunc i32 %.078.i.i106.epil.init to i8
  %.narrow.i.i108.epil = xor i8 %i.em, %.07.tr.i.i107.epil
  %i.en = zext i8 %.narrow.i.i108.epil to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13
  %i.eq = lshr i32 %.078.i.i106.epil.init, 8
  %i.er = xor i32 %i.ep, %i.eq
  br label %._crit_edge.loopexit.i.i111

._crit_edge.loopexit.i.i111:                      ; preds = %._crit_edge.loopexit.i.i111.unr-lcssa, %.lr.ph.i6.i104.epil.preheader
  %.lcssa203 = phi i32 [ %i.fh, %._crit_edge.loopexit.i.i111.unr-lcssa ], [ %i.er, %.lr.ph.i6.i104.epil.preheader ]
  %i.es = xor i32 %.lcssa203, -1
  br label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113

.lr.ph.i6.i104:                                   ; preds = %.lr.ph.i6.i104, %.lr.ph.i6.i104.preheader.new
  %indvars.iv.i7.i105 = phi i64 [ 0, %.lr.ph.i6.i104.preheader.new ], [ %indvars.iv.next.i8.i109.1, %.lr.ph.i6.i104 ] ; 3 uses
  %.078.i.i106 = phi i32 [ -1, %.lr.ph.i6.i104.preheader.new ], [ %i.fh, %.lr.ph.i6.i104 ] ; 2 uses
  %niter210 = phi i64 [ 0, %.lr.ph.i6.i104.preheader.new ], [ %niter210.next.1, %.lr.ph.i6.i104 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !24
  %.07.tr.i.i107 = trunc i32 %.078.i.i106 to i8
  %.narrow.i.i108 = xor i8 %i.eu, %.07.tr.i.i107
  %i.ev = zext i8 %.narrow.i.i108 to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !13
  %i.ey = lshr i32 %.078.i.i106, 8
  %i.ez = xor i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !24
  %.07.tr.i.i107.1 = trunc i32 %i.ez to i8
  %.narrow.i.i108.1 = xor i8 %i.fc, %.07.tr.i.i107.1
  %i.fd = zext i8 %.narrow.i.i108.1 to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fg = lshr i32 %i.ez, 8
  %i.fh = xor i32 %i.ff, %i.fg                    ; 3 uses
  %indvars.iv.next.i8.i109.1 = add nuw nsw i64 %indvars.iv.i7.i105, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %._crit_edge.loopexit.i.i111.unr-lcssa, label %.lr.ph.i6.i104, !llvm.loop !2

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113: ; preds = %bb.s, %._crit_edge.loopexit.i.i111
  %.07.lcssa.i.i112 = phi i32 [ %i.es, %._crit_edge.loopexit.i.i111 ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.fi = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #20
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113
  %i.fk = load i64, ptr %4, align 8, !tbaa !52
  %i.fl = mul i64 %i.fk, 1000000
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !53
  %i.fo = add i64 %i.fl, %i.fn
  br label %_ZL12GetTimeCountv.exit115

bb.u:                                             ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113
  %i.fp = tail call i64 @time(ptr noundef null) #20
  %i.fq = mul i64 %i.fp, 1000000
  br label %_ZL12GetTimeCountv.exit115

_ZL12GetTimeCountv.exit115:                       ; preds = %bb.t, %bb.u
  %.0.i114 = phi i64 [ %i.fo, %bb.t ], [ %i.fq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.lr.ph.i116

bb.v:                                             ; preds = %.noexc118
  %i.fr = add nuw nsw i32 %.079.i, 1
  %exitcond.not.i = icmp eq i32 %.079.i, %i.h
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i116, !llvm.loop !5

.lr.ph.i116:                                      ; preds = %_ZL12GetTimeCountv.exit115, %bb.v
  %.079.i = phi i32 [ %i.fr, %bb.v ], [ 0, %_ZL12GetTimeCountv.exit115 ] ; 2 uses
  %i.fs = invoke i32 @CrcCalc(ptr noundef nonnull %i.d, i64 noundef %i.a)
          to label %.noexc118 unwind label %bb.w

.noexc118:                                        ; preds = %.lr.ph.i116
  %.not.i117 = icmp eq i32 %i.fs, %.07.lcssa.i.i112
  br i1 %.not.i117, label %bb.v, label %_ZL6CrcBigPKvjjj.exit

bb.w:                                             ; preds = %.lr.ph.i116
  %i.ft = landingpad { ptr, i32 }
end_hunk_0

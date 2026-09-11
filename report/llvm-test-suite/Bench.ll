Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Bench?download=true
inline.NumInlined: 217
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
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
  %i.b = zext i32 %spec.store.select to i64       ; 4 uses
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
          to label %bb.f unwind label %bb.i       ; 11 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr %i.n, align 16
  %i.o = add nsw i64 %i.l, -40                    ; 2 uses
  %i.p = udiv i64 %i.o, 40
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %xtraiter211 = and i64 %i.q, 7                  ; 3 uses
  %i.r = icmp ult i64 %i.o, 280
  br i1 %i.r, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter214 = and i64 %i.q, 1152921504606846968
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new
  %.idx = phi i64 [ 8, %.new ], [ %.add.7, %bb.g ] ; 9 uses
  %niter215 = phi i64 [ 0, %.new ], [ %niter215.next.7, %bb.g ]
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i32 0, ptr %i.u, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i32 0, ptr %i.w, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store i32 0, ptr %i.y, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  store i32 0, ptr %i.aa, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store i32 0, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  store i32 0, ptr %i.ae, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  store i32 0, ptr %i.ag, align 8, !tbaa !89
  %.add.7 = add nuw nsw i64 %.idx, 320            ; 2 uses
  %niter215.next.7 = add i64 %niter215, 8         ; 2 uses
  %niter215.ncmp.7 = icmp eq i64 %niter215.next.7, %unroll_iter214
  br i1 %niter215.ncmp.7, label %.unr-lcssa, label %bb.g

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.f
  %.idx.epil.init = phi i64 [ 8, %bb.f ], [ %.add.7, %.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter211, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.idx.epil = phi i64 [ %.idx.epil.init, %.epil.preheader ], [ %.add.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !89
  %.add.epil = add nuw nsw i64 %.idx.epil, 40
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter211
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.h, !llvm.loop !181

.epilog-lcssa:                                    ; preds = %bb.h, %.unr-lcssa
  %.ptr82 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %.ptr82, ptr %i.j, align 8, !tbaa !100
  %.not.i.i = icmp eq i32 %1, 0
  %wide.trip.count160 = zext i32 %0 to i64        ; 3 uses
  br i1 %.not.i.i, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader, label %.lr.ph.i.i.preheader.preheader

.lr.ph.i.i.preheader.preheader:                   ; preds = %.epilog-lcssa
  %i.ai = add nsw i64 %i.a, -1                    ; 2 uses
  %xtraiter216 = and i64 %i.a, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %unroll_iter221 = and i64 %i.a, 4294967294
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod220 = trunc i32 %1 to i1
  %xtraiter223 = and i64 %i.a, 1
  %i.ak = icmp eq i64 %i.ai, 0
  %unroll_iter228 = and i64 %i.a, 4294967294
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod227 = trunc i32 %1 to i1
  br label %.lr.ph.i.i.preheader

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader: ; preds = %.epilog-lcssa
  %xtraiter230 = and i64 %wide.trip.count160, 1
  %unroll_iter234 = and i64 %wide.trip.count160, 4294967294
  br label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us: ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader
  %indvars.iv157 = phi i64 [ 0, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader ], [ %indvars.iv.next158.1, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us ] ; 4 uses
  %niter235 = phi i64 [ 0, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.preheader ], [ %niter235.next.1, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us ]
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv157 ; 4 uses
  %i.am = mul nuw nsw i64 %indvars.iv157, %i.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !102
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 %i.i, ptr %i.ap, align 4, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 0, ptr %i.aq, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 0, ptr %i.ar, align 8, !tbaa !105
  %indvars.iv.next158 = or disjoint i64 %indvars.iv157, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv.next158 ; 4 uses
  %i.at = mul nuw nsw i64 %indvars.iv.next158, %i.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  store i32 %i.i, ptr %i.aw, align 4, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 0, ptr %i.ax, align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i32 0, ptr %i.ay, align 8, !tbaa !105
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157, 2 ; 3 uses
  %niter235.next.1 = add i64 %niter235, 2         ; 2 uses
  %niter235.ncmp.1 = icmp eq i64 %niter235.next.1, %unroll_iter234
  br i1 %niter235.ncmp.1, label %.split144.us.loopexit.unr-lcssa, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us, !llvm.loop !182

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %._crit_edge.loopexit.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.loopexit.i.i ], [ 0, %.lr.ph.i.i.preheader.preheader ] ; 3 uses
  %.sroa.8.0140 = phi i32 [ %.lcssa199.a, %._crit_edge.loopexit.i.i ], [ 521288629, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %indvars.iv ; 4 uses
  %i.bb = mul nuw i64 %indvars.iv, %i.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store i32 %i.i, ptr %i.be, align 4, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %1, ptr %i.bf, align 8, !tbaa !104
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.8.1 = phi i32 [ %i.bp, %.lr.ph.i.i ], [ %.sroa.8.0140, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %niter222 = phi i64 [ %niter222.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bg = and i32 %.sroa.8.1, 65535
  %i.bh = mul nuw nsw i32 %i.bg, 18000
  %i.bi = lshr i32 %.sroa.8.1, 16
  %i.bj = add nuw nsw i32 %i.bh, %i.bi            ; 3 uses
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !24
  %i.bm = and i32 %i.bj, 65535
  %i.bn = mul nuw nsw i32 %i.bm, 18000
  %i.bo = lshr i32 %i.bj, 16
  %i.bp = add nuw nsw i32 %i.bn, %i.bo            ; 4 uses
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !24
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %.lr.ph.i6.i.preheader.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.i6.i.preheader.unr-lcssa:                  ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod218.not, label %.lr.ph.i6.i.preheader, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i6.i.preheader.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.8.1.epil.init = phi i32 [ %.sroa.8.0140, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i6.i.preheader.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.1, %.lr.ph.i6.i.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.bt = and i32 %.sroa.8.1.epil.init, 65535
  %i.bu = mul nuw nsw i32 %i.bt, 18000
  %i.bv = lshr i32 %.sroa.8.1.epil.init, 16
  %i.bw = add nuw nsw i32 %i.bu, %i.bv            ; 2 uses
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i.epil.init
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !24
  br label %.lr.ph.i6.i.preheader

.lr.ph.i6.i.preheader:                            ; preds = %.lr.ph.i6.i.preheader.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa199.a = phi i32 [ %i.bp, %.lr.ph.i6.i.preheader.unr-lcssa ], [ %i.bw, %.lr.ph.i.i.epil.preheader ]
  br i1 %i.ak, label %.lr.ph.i6.i.epil.preheader, label %.lr.ph.i6.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i6.i
  br i1 %lcmp.mod225.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i6.i.epil.preheader

.lr.ph.i6.i.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i6.i.preheader
  %indvars.iv.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i6.i.preheader ], [ %indvars.iv.next.i8.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -1, %.lr.ph.i6.i.preheader ], [ %i.cw, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i7.i.epil.init
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %.07.tr.i.i.epil = trunc i32 %.078.i.i.epil.init to i8
  %.narrow.i.i.epil = xor i8 %i.ca, %.07.tr.i.i.epil
  %i.cb = zext i8 %.narrow.i.i.epil to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ce = lshr i32 %.078.i.i.epil.init, 8
  %i.cf = xor i32 %i.cd, %i.ce
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i6.i.epil.preheader
  %.lcssa200 = phi i32 [ %i.cw, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.cf, %.lr.ph.i6.i.epil.preheader ]
  %i.cg = xor i32 %.lcssa200, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count160
  br i1 %exitcond.not, label %.split144.us, label %.lr.ph.i.i.preheader, !llvm.loop !182

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i.preheader, %.lr.ph.i6.i
  %indvars.iv.i7.i = phi i64 [ %indvars.iv.next.i8.i.1, %.lr.ph.i6.i ], [ 0, %.lr.ph.i6.i.preheader ] ; 3 uses
  %.078.i.i = phi i32 [ %i.cw, %.lr.ph.i6.i ], [ -1, %.lr.ph.i6.i.preheader ] ; 2 uses
  %niter229 = phi i64 [ %niter229.next.1, %.lr.ph.i6.i ], [ 0, %.lr.ph.i6.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i7.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !24
  %.07.tr.i.i = trunc i32 %.078.i.i to i8
  %.narrow.i.i = xor i8 %i.cj, %.07.tr.i.i
  %i.ck = zext i8 %.narrow.i.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = lshr i32 %.078.i.i, 8
  %i.co = xor i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i7.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !24
  %.07.tr.i.i.1 = trunc i32 %i.co to i8
  %.narrow.i.i.1 = xor i8 %i.cr, %.07.tr.i.i.1
  %i.cs = zext i8 %.narrow.i.i.1 to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = lshr i32 %i.co, 8
  %i.cw = xor i32 %i.cu, %i.cv                    ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i7.i, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i6.i, !llvm.loop !2

bb.i:                                             ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.split144.us.loopexit.unr-lcssa:                  ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us
  %lcmp.mod232.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod232.not, label %.split144.us, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader: ; preds = %.split144.us.loopexit.unr-lcssa
  %lcmp.mod233 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %.ptr82, i64 %indvars.iv.next158.1 ; 4 uses
  %i.cz = mul nuw nsw i64 %indvars.iv.next158.1, %i.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.da, ptr %i.db, align 8, !tbaa !102
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  store i32 %i.i, ptr %i.dc, align 4, !tbaa !103
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i32 0, ptr %i.dd, align 8, !tbaa !104
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i32 0, ptr %i.de, align 8, !tbaa !105
  br label %.split144.us

.split144.us:                                     ; preds = %._crit_edge.loopexit.i.i, %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit.us.epil.preheader, %.split144.us.loopexit.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.df = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split144.us
  %i.dh = load i64, ptr %5, align 8, !tbaa !52
  %i.di = mul i64 %i.dh, 1000000
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !53
  %i.dl = add i64 %i.di, %i.dk
  br label %_ZL12GetTimeCountv.exit

bb.k:                                             ; preds = %.split144.us
  %i.dm = tail call i64 @time(ptr noundef null) #20
  %i.dn = mul i64 %i.dm, 1000000
  br label %_ZL12GetTimeCountv.exit

_ZL12GetTimeCountv.exit:                          ; preds = %bb.j, %bb.k
  %.0.i93 = phi i64 [ %i.dl, %bb.j ], [ %i.dn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %wide.trip.count165 = zext i32 %0 to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZL12GetTimeCountv.exit, %bb.o
  %indvars.iv162 = phi i64 [ 0, %_ZL12GetTimeCountv.exit ], [ %indvars.iv.next163, %bb.o ] ; 2 uses
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.do, i64 %indvars.iv162 ; 2 uses
  %i.dq = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull @_ZL17CrcThreadFunctionPv, ptr noundef nonnull %i.dp)
          to label %_ZN8NWindows7CThread6CreateEPFjPvES1_.exit unwind label %bb.n ; 2 uses

_ZN8NWindows7CThread6CreateEPFjPvES1_.exit:       ; preds = %bb.l
  %.not = icmp eq i32 %i.dq, 0
  br i1 %.not, label %bb.o, label %_ZL6CrcBigPKvjjj.exit

bb.m:                                             ; preds = %.noexc96, %.lr.ph.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %_ZN8NWindows7CThread6CreateEPFjPvES1_.exit
  %i.dt = load i32, ptr %6, align 8, !tbaa !99
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr %6, align 8, !tbaa !99
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %bb.p, label %bb.l, !llvm.loop !183

bb.p:                                             ; preds = %bb.o
  %.not.i95 = icmp eq i32 %i.du, 0
  br i1 %.not.i95, label %_ZN11CCrcThreads7WaitAllEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.noexc97
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc97 ], [ 0, %bb.p ] ; 2 uses
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.dv, i64 %indvars.iv.i ; 2 uses
  %i.dx = invoke noundef i32 @Thread_Wait(ptr noundef nonnull align 8 dereferenceable(37) %i.dw)
          to label %.noexc96 unwind label %bb.m   ; 0 uses

.noexc96:                                         ; preds = %.lr.ph.i
  %i.dy = invoke noundef i32 @Thread_Close(ptr noundef nonnull align 8 dereferenceable(37) %i.dw)
          to label %.noexc97 unwind label %bb.m   ; 0 uses

.noexc97:                                         ; preds = %.noexc96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dz = load i32, ptr %6, align 8, !tbaa !99
  %i.ea = zext i32 %i.dz to i64
  %i.eb = icmp samesign ult i64 %indvars.iv.next.i, %i.ea
  br i1 %i.eb, label %.lr.ph.i, label %_ZN11CCrcThreads7WaitAllEv.exit, !llvm.loop !4

_ZN11CCrcThreads7WaitAllEv.exit:                  ; preds = %.noexc97, %bb.p
  store i32 0, ptr %6, align 8, !tbaa !99
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !100
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.b
  br i1 %exitcond171.not, label %.critedge, label %bb.r, !llvm.loop !184

bb.r:                                             ; preds = %_ZN11CCrcThreads7WaitAllEv.exit, %bb.q
  %indvars.iv167 = phi i64 [ 0, %_ZN11CCrcThreads7WaitAllEv.exit ], [ %indvars.iv.next168, %bb.q ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %indvars.iv167
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !106, !range !57, !noundef !58
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.q, label %_ZL6CrcBigPKvjjj.exit

bb.s:                                             ; preds = %bb.d
  %.not.i.i98 = icmp eq i32 %1, 0
  br i1 %.not.i.i98, label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113, label %.lr.ph.i.i99.preheader

.lr.ph.i.i99.preheader:                           ; preds = %bb.s
  %i.eh = add nsw i64 %i.a, -1                    ; 2 uses
  %xtraiter = and i64 %i.a, 1
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i.i99.epil.preheader, label %.lr.ph.i.i99.preheader.new

.lr.ph.i.i99.preheader.new:                       ; preds = %.lr.ph.i.i99.preheader
  %unroll_iter = and i64 %i.a, 4294967294
  br label %.lr.ph.i.i99

.lr.ph.i.i99:                                     ; preds = %.lr.ph.i.i99, %.lr.ph.i.i99.preheader.new
  %.sroa.8.3 = phi i32 [ 521288629, %.lr.ph.i.i99.preheader.new ], [ %i.es, %.lr.ph.i.i99 ] ; 2 uses
  %indvars.iv.i.i101 = phi i64 [ 0, %.lr.ph.i.i99.preheader.new ], [ %indvars.iv.next.i.i102.1, %.lr.ph.i.i99 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i99.preheader.new ], [ %niter.next.1, %.lr.ph.i.i99 ]
  %i.ej = and i32 %.sroa.8.3, 65535
  %i.ek = mul nuw nsw i32 %i.ej, 18000
  %i.el = lshr i32 %.sroa.8.3, 16
  %i.em = add nuw nsw i32 %i.ek, %i.el            ; 3 uses
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !24
  %i.ep = and i32 %i.em, 65535
  %i.eq = mul nuw nsw i32 %i.ep, 18000
  %i.er = lshr i32 %i.em, 16
  %i.es = add nuw nsw i32 %i.eq, %i.er            ; 3 uses
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !24
  %indvars.iv.next.i.i102.1 = add nuw nsw i64 %indvars.iv.i.i101, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i6.i104.preheader.unr-lcssa, label %.lr.ph.i.i99, !llvm.loop !3

.lr.ph.i6.i104.preheader.unr-lcssa:               ; preds = %.lr.ph.i.i99
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.i104.preheader, label %.lr.ph.i.i99.epil.preheader

.lr.ph.i.i99.epil.preheader:                      ; preds = %.lr.ph.i6.i104.preheader.unr-lcssa, %.lr.ph.i.i99.preheader
  %.sroa.8.3.epil.init = phi i32 [ 521288629, %.lr.ph.i.i99.preheader ], [ %i.es, %.lr.ph.i6.i104.preheader.unr-lcssa ] ; 2 uses
  %indvars.iv.i.i101.epil.init = phi i64 [ 0, %.lr.ph.i.i99.preheader ], [ %indvars.iv.next.i.i102.1, %.lr.ph.i6.i104.preheader.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.ew = mul i32 %.sroa.8.3.epil.init, 80
  %i.ex = lshr i32 %.sroa.8.3.epil.init, 16
  %i.ey = add i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i101.epil.init
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !24
  br label %.lr.ph.i6.i104.preheader

.lr.ph.i6.i104.preheader:                         ; preds = %.lr.ph.i6.i104.preheader.unr-lcssa, %.lr.ph.i.i99.epil.preheader
  %xtraiter205 = and i64 %i.a, 1
  %i.fb = icmp eq i64 %i.eh, 0
  br i1 %i.fb, label %.lr.ph.i6.i104.epil.preheader, label %.lr.ph.i6.i104.preheader.new

.lr.ph.i6.i104.preheader.new:                     ; preds = %.lr.ph.i6.i104.preheader
  %unroll_iter209 = and i64 %i.a, 4294967294
  br label %.lr.ph.i6.i104

._crit_edge.loopexit.i.i111.unr-lcssa:            ; preds = %.lr.ph.i6.i104
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.loopexit.i.i111, label %.lr.ph.i6.i104.epil.preheader

.lr.ph.i6.i104.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i111.unr-lcssa, %.lr.ph.i6.i104.preheader
  %indvars.iv.i7.i105.epil.init = phi i64 [ 0, %.lr.ph.i6.i104.preheader ], [ %indvars.iv.next.i8.i109.1, %._crit_edge.loopexit.i.i111.unr-lcssa ]
  %.078.i.i106.epil.init = phi i32 [ -1, %.lr.ph.i6.i104.preheader ], [ %i.fy, %._crit_edge.loopexit.i.i111.unr-lcssa ] ; 2 uses
  %lcmp.mod208 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105.epil.init
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !24
  %.07.tr.i.i107.epil = trunc i32 %.078.i.i106.epil.init to i8
  %.narrow.i.i108.epil = xor i8 %i.fd, %.07.tr.i.i107.epil
  %i.fe = zext i8 %.narrow.i.i108.epil to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !13
  %i.fh = lshr i32 %.078.i.i106.epil.init, 8
  %i.fi = xor i32 %i.fg, %i.fh
  br label %._crit_edge.loopexit.i.i111

._crit_edge.loopexit.i.i111:                      ; preds = %._crit_edge.loopexit.i.i111.unr-lcssa, %.lr.ph.i6.i104.epil.preheader
  %.lcssa203 = phi i32 [ %i.fy, %._crit_edge.loopexit.i.i111.unr-lcssa ], [ %i.fi, %.lr.ph.i6.i104.epil.preheader ]
  %i.fj = xor i32 %.lcssa203, -1
  br label %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113

.lr.ph.i6.i104:                                   ; preds = %.lr.ph.i6.i104, %.lr.ph.i6.i104.preheader.new
  %indvars.iv.i7.i105 = phi i64 [ 0, %.lr.ph.i6.i104.preheader.new ], [ %indvars.iv.next.i8.i109.1, %.lr.ph.i6.i104 ] ; 3 uses
  %.078.i.i106 = phi i32 [ -1, %.lr.ph.i6.i104.preheader.new ], [ %i.fy, %.lr.ph.i6.i104 ] ; 2 uses
  %niter210 = phi i64 [ 0, %.lr.ph.i6.i104.preheader.new ], [ %niter210.next.1, %.lr.ph.i6.i104 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %.07.tr.i.i107 = trunc i32 %.078.i.i106 to i8
  %.narrow.i.i108 = xor i8 %i.fl, %.07.tr.i.i107
  %i.fm = zext i8 %.narrow.i.i108 to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !13
  %i.fp = lshr i32 %.078.i.i106, 8
  %i.fq = xor i32 %i.fo, %i.fp                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i7.i105
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !24
  %.07.tr.i.i107.1 = trunc i32 %i.fq to i8
  %.narrow.i.i108.1 = xor i8 %i.ft, %.07.tr.i.i107.1
  %i.fu = zext i8 %.narrow.i.i108.1 to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !13
  %i.fx = lshr i32 %i.fq, 8
  %i.fy = xor i32 %i.fw, %i.fx                    ; 3 uses
  %indvars.iv.next.i8.i109.1 = add nuw nsw i64 %indvars.iv.i7.i105, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %._crit_edge.loopexit.i.i111.unr-lcssa, label %.lr.ph.i6.i104, !llvm.loop !2

_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113: ; preds = %bb.s, %._crit_edge.loopexit.i.i111
  %.07.lcssa.i.i112 = phi i32 [ %i.fj, %._crit_edge.loopexit.i.i111 ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.fz = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #20
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113
  %i.gb = load i64, ptr %4, align 8, !tbaa !52
  %i.gc = mul i64 %i.gb, 1000000
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !53
  %i.gf = add i64 %i.gc, %i.ge
  br label %_ZL12GetTimeCountv.exit115

bb.u:                                             ; preds = %_ZL10RandGenCrcPhjR20CBaseRandomGenerator.exit113
  %i.gg = tail call i64 @time(ptr noundef null) #20
  %i.gh = mul i64 %i.gg, 1000000
  br label %_ZL12GetTimeCountv.exit115

_ZL12GetTimeCountv.exit115:                       ; preds = %bb.t, %bb.u
  %.0.i114 = phi i64 [ %i.gf, %bb.t ], [ %i.gh, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.lr.ph.i116

bb.v:                                             ; preds = %.noexc118
  %i.gi = add nuw nsw i32 %.079.i, 1
  %exitcond.not.i = icmp eq i32 %.079.i, %i.h
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i116, !llvm.loop !5

.lr.ph.i116:                                      ; preds = %_ZL12GetTimeCountv.exit115, %bb.v
  %.079.i = phi i32 [ %i.gi, %bb.v ], [ 0, %_ZL12GetTimeCountv.exit115 ] ; 2 uses
  %i.gj = invoke i32 @CrcCalc(ptr noundef nonnull %i.d, i64 noundef %i.a)
          to label %.noexc118 unwind label %bb.w

.noexc118:                                        ; preds = %.lr.ph.i116
  %.not.i117 = icmp eq i32 %i.gj, %.07.lcssa.i.i112
  br i1 %.not.i117, label %bb.v, label %_ZL6CrcBigPKvjjj.exit

bb.w:                                             ; preds = %.lr.ph.i116
  %i.gk = landingpad { ptr, i32 }
end_hunk_0

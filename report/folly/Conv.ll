Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm:bb.a
  br i1 %i.p, label %bb.g, label %bb.h, !prof !93

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %bb.i, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 4, !tbaa !222
  store i32 %i.r, ptr %i.m, align 4, !tbaa !222
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !281
  store i64 %.0, ptr %i.a, align 8, !tbaa !282
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.s
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  %i.t = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.t) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::basic_memory_buffer.103", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !287  ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !281  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !282  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !281
  store i64 %i.j, ptr %i.f, align 8, !tbaa !282
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %.idx.i.i, i1 false), !tbaa !222
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !281
  store i64 %i.j, ptr %i.f, align 8, !tbaa !282
  store ptr %i.k, ptr %i.g, align 8, !tbaa !281
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.h, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.j, %bb.b ]
  %i.p = icmp ugt i64 %i.b, %i.j
  br i1 %i.p, label %bb.d, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.q = lshr i64 %i.j, 1
  %i.r = add i64 %i.q, %i.j                       ; 3 uses
  %i.s = icmp ugt i64 %i.b, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.t, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.u = call i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.b, %bb.d ] ; 5 uses
  %i.v = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !237

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.027.i = phi i64 [ %i.u, %.thread.i ], [ %.0.i, %bb.f ]
  %i.w = icmp ugt i64 %.027.i, 4611686018427387903
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc113 unwind label %bb.n

.noexc113:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc114 unwind label %bb.n

.noexc114:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %.noexc115 unwind label %bb.n  ; 3 uses

.noexc115:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !287 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !93

bb.j:                                             ; preds = %.noexc115
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %.noexc115
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !222
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !222
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store ptr %i.y, ptr %i.e, align 8, !tbaa !281
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !282
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.af = shl i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.af) #29
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !282
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.m ], [ %.0.i, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ]
  %.pre = load i64, ptr %i.i, align 8, !tbaa !282
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.i, %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit: ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, %.noexc.i
  %i.ai = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.aj = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.ak, align 8, !tbaa !287
  %i.al = zext i32 %i.d to i64                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.o, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.o:                                             ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !95
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.al)
          to label %.noexc unwind label %bb.w, !inline_history !639

.noexc:                                           ; preds = %bb.o
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !282
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit, %.noexc
  %i.ap = phi i64 [ %i.ai, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ap) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !287
  %i.aq = icmp sgt i32 %i.c, 0
  %.pre96.pre97 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !281 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.q
  %indvars.iv74 = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %indvars.iv.a = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.q ] ; 4 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.ce, %bb.q ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.a, 1
  %i.as = icmp eq i64 %indvars.iv74, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv.a, 9223372036854775806
  br label %bb.p

.preheader.loopexit:                              ; preds = %bb.q
  %.pre96.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre96 = phi ptr [ %.pre96.pre97, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre96.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.ce, %.preheader.loopexit ]
  %i.at = icmp sgt i32 %i.d, %i.c
  br i1 %i.at, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.au = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  %i.aw = and i64 %i.b, 4294967295
  %i.ax = add i32 %i.c, -2
  %invariant.op = sub i32 1, %i.c
  %indvars.iv85.prol = add nsw i64 %i.av, -1      ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.prol
  br label %bb.t

bb.p:                                             ; preds = %bb.p, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.p ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv74, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.p ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bs, %bb.p ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.p ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !222
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !222
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.bb
  %i.bg = zext i64 %i.bf to i128
  %i.bh = add i128 %.150, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !222
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !222
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, %i.bl
  %i.br = zext i64 %i.bq to i128
  %i.bs = add i128 %i.bh, %i.br                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.p, !llvm.loop !640

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.q, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv74, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod153 = trunc i64 %indvars.iv.a to i1
  call void @llvm.assume(i1 %lcmp.mod153)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !222
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !222
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw i64 %i.by, %i.bv
  %i.ca = zext i64 %i.bz to i128
  %i.cb = add i128 %.150.epil.init, %i.ca
  br label %bb.q

bb.q:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa150 = phi i128 [ %i.bs, %.unr-lcssa ], [ %i.cb, %.epil.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre96.pre97, i64 %indvars.iv74
  %i.cd = trunc i128 %.lcssa150 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !222
  %i.ce = lshr i128 %.lcssa150, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !641

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre95 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.cf = phi ptr [ %.pre95, %._crit_edge62.loopexit ], [ %.pre96, %.preheader ]
  %i.cg = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cg, i32 1) ; 2 uses
  %i.ch = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph145, label %.critedge.i

bb.r:                                             ; preds = %.lr.ph145
  %i.cj = trunc nuw i64 %i.cm to i32              ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph145, label %.critedge.i, !llvm.loop !47

.lr.ph145:                                        ; preds = %._crit_edge62, %bb.r
  %i.cl = phi i32 [ %i.cj, %bb.r ], [ %i.ch, %._crit_edge62 ]
  %indvars.iv.i144 = phi i64 [ %i.cm, %bb.r ], [ %..i.i, %._crit_edge62 ]
  %i.cm = add nsw i64 %indvars.iv.i144, -1        ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !222
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.r, label %..critedge.i_crit_edge, !llvm.loop !47

..critedge.i_crit_edge:                           ; preds = %.lr.ph145
  br label %.critedge.i, !llvm.loop !47

.critedge.i:                                      ; preds = %bb.r, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cl, %..critedge.i_crit_edge ], [ %smin.i, %bb.r ]
  %i.cq = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cr = icmp ult i64 %i.ap, %i.cq
  br i1 %i.cr, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.critedge.i
  %i.cs = load ptr, ptr %0, align 8, !tbaa !95
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cq)
          to label %.noexc46 unwind label %bb.w, !inline_history !642

.noexc46:                                         ; preds = %bb.s
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !282
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.aw, %.lr.ph61 ], [ %indvars.iv.next92, %._crit_edge ] ; 3 uses
  %indvars.iv81 = phi i32 [ 1, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ee, %._crit_edge ] ; 3 uses
  %i.cu = trunc nuw i64 %indvars.iv91 to i32
  %.reass.reass = add i32 %i.cu, %invariant.op
  %i.cv = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.cw = sext i32 %indvars.iv81 to i64           ; 3 uses
  %i.cx = sub i32 %indvar, %i.c
  %i.cy = and i32 %i.cx, 1
  %lcmp.mod155.not.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod155.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next84.prol = add nuw nsw i64 %i.cw, 1
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cw
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !222
  %i.db = zext i32 %i.da to i64
  %i.dc = load i32, ptr %i.ay, align 4, !tbaa !222
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul nuw i64 %i.dd, %i.db
  %i.df = zext i64 %i.de to i128
  %i.dg = add nsw i128 %.259, %i.df               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa149.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.dg, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %i.cw, %.lr.ph.preheader ], [ %indvars.iv.next84.prol, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.dg, %.lr.ph.prol ]
  %i.dh = icmp eq i32 %i.ax, %indvar
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %.lr.ph ], [ %indvars.iv83.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.eb, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %i.di = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !222
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !222
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw i64 %i.do, %i.dk
  %i.dq = zext i64 %i.dp to i128
  %i.dr = add i128 %.355, %i.dq
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv83
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !222
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !222
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw i64 %i.dy, %i.dv
  %i.ea = zext i64 %i.dz to i128
  %i.eb = add i128 %i.dr, %i.ea                   ; 2 uses
  %lftr.wideiv121.1 = trunc i64 %indvars.iv.next84.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv121.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !643

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.t
  %.3.lcssa = phi i128 [ %.259, %bb.t ], [ %.lcssa149.unr, %.lr.ph.prol.loopexit ], [ %i.eb, %.lr.ph ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv91
  %i.ed = trunc i128 %.3.lcssa to i32
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !222
  %i.ee = lshr i128 %.3.lcssa, 32
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %indvars.iv.next82 = add i32 %indvars.iv81, 1
  %exitcond94.not = icmp eq i32 %indvars.iv81, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond94.not, label %._crit_edge62.loopexit, label %bb.t, !llvm.loop !644

bb.u:                                             ; preds = %.noexc46, %.critedge.i
  %i.ef = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ef)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !287
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !286
  %i.ei = shl nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !286
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !281 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = load i64, ptr %i.f, align 8, !tbaa !282
  %i.em = shl i64 %i.el, 2
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.w:                                             ; preds = %bb.s, %bb.o
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %i.e, align 8, !tbaa !281 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eq = load i64, ptr %i.f, align 8, !tbaa !282
  %i.er = shl i64 %i.eq, 2
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #29
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.en
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3fmt2v912format_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.116, align 8            ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.118, align 8            ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.ap ; 3 uses
  %i.bt = icmp ugt i32 %.sroa.036.0.extract.trunc, 99
  br i1 %i.bt, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, %.lr.ph.i.i.i
  %.021.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i ], [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.bs, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ]
  %i.bu = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.bv = urem i32 %.021.i.i.i, 100
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 1
  store i16 %i.bz, ptr %i.bu, align 1
  %i.ca = udiv i32 %.021.i.i.i, 100               ; 2 uses
  %i.cb = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !23

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i
  %.019.lcssa.i.i.i = phi ptr [ %i.bs, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.bu, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.ca, %.lr.ph.i.i.i ] ; 3 uses
  %i.cc = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.ch = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @.str.18, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 1
  store i16 %i.ck, ptr %i.cg, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %bb.n, %bb.m
  %i.cl = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.o:                                             ; preds = %bb.h
  %i.cm = tail call { i64, i32 } @_ZN3fmt2v96detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) #25 ; 2 uses
  %i.cn = extractvalue { i64, i32 } %i.cm, 0
  %i.co = extractvalue { i64, i32 } %i.cm, 1
  %i.cp = tail call ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_(ptr nonnull %3, i64 noundef %i.cn) ; 0 uses
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.p:                                             ; preds = %bb.g
  %i.cq = bitcast double %0 to i64                ; 2 uses
  %i.cr = and i64 %i.cq, 4503599627370495         ; 4 uses
  %i.cs = and i64 %i.cq, 9218868437227405312      ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0                    ; 3 uses
  %i.cu = lshr exact i64 %i.cs, 52
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = or disjoint i64 %i.cr, 4503599627370496
  %i.cx = add nsw i32 %i.cv, -1075                ; 2 uses
  %.0.i.i = select i1 %i.ct, i32 -1074, i32 %i.cx
  br i1 %i.ct, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.sroa.7.06.i = phi i32 [ %i.cz, %.lr.ph.i ], [ -1074, %bb.p ]
  %.sroa.0.05.i = phi i64 [ %i.cy, %.lr.ph.i ], [ %i.cr, %bb.p ] ; 2 uses
  %i.cy = shl i64 %.sroa.0.05.i, 1                ; 2 uses
  %i.cz = add nsw i32 %.sroa.7.06.i, -1           ; 2 uses
  %i.da = and i64 %.sroa.0.05.i, 2251799813685248
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit, !llvm.loop !861

_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit: ; preds = %.lr.ph.i, %bb.p
  %.sroa.0.0.lcssa.i = phi i64 [ %i.cw, %bb.p ], [ %i.cy, %.lr.ph.i ]
  %.sroa.7.0.lcssa.i = phi i32 [ %i.cx, %bb.p ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %i.dc = shl i64 %.sroa.0.0.lcssa.i, 11
  %i.dd = sub i32 -50, %.sroa.7.0.lcssa.i
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, 1292913986
  %i.dg = add nsw i64 %i.df, 4294967294
  %i.dh = lshr i64 %i.dg, 32
  %i.di = trunc nuw i64 %i.dh to i32
  %i.dj = add nsw i32 %i.di, 347
  %i.dk = sdiv i32 %i.dj, 8
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dm = shl nsw i32 %i.dl, 3                    ; 4 uses
  %i.dn = sext i32 %i.dl to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE18pow10_significandsE, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = getelementptr inbounds [2 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE, i64 %i.dn
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !99
  %i.ds = sext i16 %i.dr to i32
  %i.dt = zext i64 %i.dc to i128
  %i.du = zext i64 %i.dp to i128
  %i.dv = mul nuw i128 %i.du, %i.dt               ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = trunc nuw i128 %i.dw to i64
  %i.dy = trunc i128 %i.dv to i64
  %i.dz = lshr i64 %i.dy, 63
  %i.ea = add nuw i64 %i.dz, %i.dx                ; 4 uses
  %i.eb = add i32 %.sroa.7.0.lcssa.i, %i.ds
  %.neg255 = sub i32 -53, %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !116 ; 15 uses
  %i.ee = sub nsw i32 348, %i.dm                  ; 9 uses
  %i.ef = zext nneg i32 %.neg255 to i64           ; 6 uses
  %i.eg = shl nuw i64 1, %i.ef                    ; 6 uses
  %i.eh = lshr i64 %i.ea, %i.ef                   ; 2 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = and i64 %i.eh, 4294967295
  %i.ek = add i64 %i.eg, -1                       ; 2 uses
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %i.em = or i32 %i.ei, 1
  %i.en = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.em, i1 true)
  %i.eo = xor i32 %i.en, 31
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !77
  %i.es = add i64 %i.ej, %i.er                    ; 2 uses
  %i.et = lshr i64 %i.es, 32
  %i.eu = trunc nuw i64 %i.et to i32              ; 6 uses
  br i1 %i.d, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %i.ev = add nsw i32 %i.ee, %i.eu                ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %i.ex = sub nuw nsw i32 2147483647, %i.ev
  %i.ey = icmp samesign ugt i32 %1, %i.ex
  %or.cond.i = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.r:                                             ; preds = %bb.q
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @.str.31)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #27
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ez) #25
  resume { ptr, i32 } %i.fa

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.q
  %i.fb = add nsw i32 %i.ev, %1                   ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit
  %i.fd = icmp slt i32 %i.fb, 0
  br i1 %i.fd, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = ashr i64 %i.es, 32
  %i.ff = getelementptr [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !77
  %i.fi = shl i64 %i.fh, %i.ef                    ; 3 uses
  %i.fj = udiv i64 %i.ea, 10                      ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj
  %.not.i98 = icmp ugt i64 %i.fj, %i.fk
  br i1 %.not.i98, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = shl nuw nsw i64 %i.fj, 1
  %i.fm = sub i64 %i.fi, %i.fl
  %.not23.i = icmp ult i64 %i.fm, 20
  br i1 %.not23.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not24.i = icmp ult i64 %i.ea, 100
  br i1 %.not24.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = add nsw i64 %i.fj, -10                  ; 2 uses
  %i.fo = sub i64 %i.fi, %i.fn
  %.not25.i = icmp ult i64 %i.fn, %i.fo
  br i1 %.not25.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.fp = phi i8 [ 48, %bb.w ], [ 49, %bb.y ]
  store i8 %i.fp, ptr %i.ed, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aa:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %.sroa.33.0 = phi i32 [ %i.fb, %_ZN3fmt2v96detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit ] ; 7 uses
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.sroa.33.0, i32 1) ; 2 uses
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fr to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %bb.aa ] ; 4 uses
  %i.fs = phi i32 [ %i.gl, %bb.au ], [ %i.eu, %bb.aa ] ; 3 uses
  %.0207 = phi i32 [ %.1208, %bb.au ], [ %i.ei, %bb.aa ] ; 20 uses
  switch i32 %i.fs, label %bb.al [
    i32 10, label %bb.ac
    i32 9, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.af
    i32 6, label %bb.ag
    i32 5, label %bb.ah
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = udiv i32 %.0207, 1000000000
  %i.fu = urem i32 %.0207, 1000000000
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fv = udiv i32 %.0207, 100000000
  %i.fw = urem i32 %.0207, 100000000
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.fx = udiv i32 %.0207, 10000000
  %i.fy = urem i32 %.0207, 10000000
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.fz = udiv i32 %.0207, 1000000
  %i.ga = urem i32 %.0207, 1000000
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.gb = udiv i32 %.0207, 100000
  %i.gc = urem i32 %.0207, 100000
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.gd = udiv i32 %.0207, 10000
  %i.ge = urem i32 %.0207, 10000
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.gf = udiv i32 %.0207, 1000
  %i.gg = urem i32 %.0207, 1000
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.gh = udiv i32 %.0207, 100
  %i.gi = urem i32 %.0207, 100
  br label %bb.am

bb.ak:                                            ; preds = %bb.ab
  %i.gj = udiv i32 %.0207, 10
  %i.gk = urem i32 %.0207, 10
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0209 = phi i32 [ 0, %bb.al ], [ %i.ft, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fx, %bb.ae ], [ %i.fz, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gd, %bb.ah ], [ %i.gf, %bb.ai ], [ %i.gh, %bb.aj ], [ %i.gj, %bb.ak ], [ %.0207, %bb.ab ]
  %.1208 = phi i32 [ %.0207, %bb.al ], [ %i.fu, %bb.ac ], [ %i.fw, %bb.ad ], [ %i.fy, %bb.ae ], [ %i.ga, %bb.af ], [ %i.gc, %bb.ag ], [ %i.ge, %bb.ah ], [ %i.gg, %bb.ai ], [ %i.gi, %bb.aj ], [ %i.gk, %bb.ak ], [ 0, %bb.ab ] ; 2 uses
  %i.gl = add nsw i32 %i.fs, -1                   ; 9 uses
  %i.gm = trunc i32 %.0209 to i8                  ; 2 uses
  %i.gn = add i8 %i.gm, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !71
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.gp = trunc nuw nsw i64 %indvars.iv.next to i32 ; 5 uses
  %i.gq = zext i32 %.1208 to i64
  %i.gr = shl i64 %i.gq, %i.ef
  %i.gs = add i64 %i.gr, %i.el                    ; 5 uses
  %i.gt = sext i32 %i.gl to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !77
  %i.gw = shl i64 %i.gv, %i.ef                    ; 3 uses
  %i.gx = sub i64 %i.gw, %i.gs
  %.not.i.i = icmp ugt i64 %i.gs, %i.gx
  br i1 %.not.i.i, label %.thread213, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = shl i64 %i.gs, 1
  %i.gz = sub i64 %i.gw, %i.gy
  %.not23.i.i = icmp ult i64 %i.gz, 2
  br i1 %.not23.i.i, label %bb.ap, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ap:                                            ; preds = %bb.ao
  %.not24.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not24.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %.thread213

.thread213:                                       ; preds = %bb.an, %bb.ap
  %i.ha = add i64 %i.gs, -1                       ; 2 uses
  %i.hb = sub i64 %i.gw, %i.ha
  %.not25.i.i = icmp ult i64 %i.ha, %i.hb
  br i1 %.not25.i.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i: ; preds = %.thread213
  %i.hc = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next
  %i.hd = getelementptr i8, ptr %i.ed, i64 %indvars.iv
  %i.he = add i8 %i.gm, 49
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !71
  %.not = icmp eq i32 %i.fr, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ %indvars.iv.next, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !71
  %i.hh = icmp sgt i8 %i.hg, 57
  br i1 %i.hh, label %bb.aq, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aq, %.lr.ph.i101, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i
  %i.hi = load i8, ptr %i.ed, align 1, !tbaa !71
  %i.hj = icmp sgt i8 %i.hi, 57
  br i1 %i.hj, label %bb.ar, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.aq:                                            ; preds = %.lr.ph.i101
  store i8 48, ptr %i.hf, align 1, !tbaa !71
  %i.hk = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 -2     ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !71
  %i.hn = add i8 %i.hm, 1
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !71
  %i.ho = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.ho, label %.lr.ph.i101, label %.critedge.i, !llvm.loop !862

bb.ar:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.ed, align 1, !tbaa !71
  br i1 %i.d, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hp = add nuw nsw i32 %i.fq, 1
  store i8 48, ptr %i.hc, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.at:                                            ; preds = %bb.ar
  %i.hq = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.au:                                            ; preds = %bb.am
  %i.hr = icmp sgt i32 %i.fs, 1
  br i1 %i.hr, label %bb.ab, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, !llvm.loop !863

_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115: ; preds = %bb.au, %bb.av
  %i.hs = phi i32 [ %i.hz, %bb.av ], [ %i.gl, %bb.au ]
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %bb.av ], [ %indvars.iv.next, %bb.au ] ; 4 uses
  %.045.i = phi i64 [ %i.hu, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %.042.i = phi i64 [ %i.hy, %bb.av ], [ %i.el, %bb.au ]
  %i.ht = mul i64 %.042.i, 10                     ; 2 uses
  %i.hu = mul i64 %.045.i, 10                     ; 6 uses
  %i.hv = lshr i64 %i.ht, %i.ef
  %i.hw = trunc i64 %i.hv to i8                   ; 2 uses
  %i.hx = add i8 %i.hw, 48
  %i.hy = and i64 %i.ht, %i.ek                    ; 6 uses
  %i.hz = add nsw i32 %i.hs, -1                   ; 8 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv312
  store i8 %i.hx, ptr %i.ia, align 1, !tbaa !71
  %.not.i102 = icmp ult i64 %i.hu, %i.hy
  %i.ib = trunc nuw i64 %indvars.iv.next313 to i32 ; 7 uses
  br i1 %.not.i102, label %bb.av, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.av:                                            ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115
  %i.ic = icmp sgt i32 %.sroa.33.0, %i.ib
  br i1 %i.ic, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, label %bb.aw, !llvm.loop !864

bb.aw:                                            ; preds = %bb.av
  %i.id = trunc nuw nsw i64 %indvars.iv312 to i32
  %.not29.i = icmp ult i64 %i.hu, %i.eg
  %i.ie = sub nuw i64 %i.eg, %i.hu
  %.not30.i = icmp ult i64 %i.hu, %i.ie
  %or.cond32.i = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond32.i, label %bb.ax, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.if = sub i64 %i.eg, %i.hy
  %.not.i.i105 = icmp ugt i64 %i.hy, %i.if
  br i1 %.not.i.i105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ig = mul i64 %.045.i, 20
  %i.ih = shl nuw i64 %i.hy, 1
  %i.ii = sub i64 %i.eg, %i.ih
  %.not23.i.i106 = icmp ugt i64 %i.ig, %i.ii
  br i1 %.not23.i.i106, label %bb.az, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ij = sub nuw nsw i64 %i.hy, %i.hu            ; 2 uses
  %i.ik = sub i64 %i.eg, %i.ij
  %.not25.i.i108 = icmp ult i64 %i.ij, %i.ik
  br i1 %.not25.i.i108, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109: ; preds = %bb.az
  %i.il = getelementptr i8, ptr %i.ed, i64 %indvars.iv.next313
  %i.im = getelementptr i8, ptr %i.ed, i64 %indvars.iv312
  %i.in = add i8 %i.hw, 49
  store i8 %i.in, ptr %i.im, align 1, !tbaa !71
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.ba, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next313, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i109 ], [ %indvars.iv.next.i114, %bb.ba ] ; 3 uses
  %indvars.iv.next.i114 = add nsw i64 %indvars.iv.i113, -1 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i114 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !71
  %i.iq = icmp sgt i8 %i.ip, 57
  br i1 %i.iq, label %bb.ba, label %.critedge.i110

.critedge.i110:                                   ; preds = %bb.ba, %.lr.ph.i112
  %i.ir = load i8, ptr %i.ed, align 1, !tbaa !71
  %i.is = icmp sgt i8 %i.ir, 57
  br i1 %i.is, label %bb.bb, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.ba:                                            ; preds = %.lr.ph.i112
  store i8 48, ptr %i.io, align 1, !tbaa !71
  %i.it = getelementptr i8, ptr %i.ed, i64 %indvars.iv.i113
  %i.iu = getelementptr i8, ptr %i.it, i64 -2     ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !71
  %i.iw = add i8 %i.iv, 1
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !71
  %i.ix = icmp samesign ugt i64 %indvars.iv.i113, 2
  br i1 %i.ix, label %.lr.ph.i112, label %.critedge.i110, !llvm.loop !862

bb.bb:                                            ; preds = %.critedge.i110
  store i8 49, ptr %i.ed, align 1, !tbaa !71
  br i1 %i.d, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iy = add nuw nsw i32 %i.id, 2
  store i8 48, ptr %i.il, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

bb.bd:                                            ; preds = %bb.bb
  %i.iz = sub nsw i32 349, %i.dm
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235: ; preds = %.critedge.i110, %bb.bc, %bb.bd, %bb.ay, %bb.ao, %.critedge.i, %bb.as, %bb.at, %bb.z, %bb.u
  %i.ja = phi i32 [ %i.eu, %bb.u ], [ %i.eu, %bb.z ], [ %i.hz, %bb.bc ], [ %i.hz, %bb.bd ], [ %i.hz, %.critedge.i110 ], [ %i.hz, %bb.ay ], [ %i.gl, %bb.as ], [ %i.gl, %bb.at ], [ %i.gl, %.critedge.i ], [ %i.gl, %bb.ao ]
  %.sroa.16.2242 = phi i32 [ 0, %bb.u ], [ 1, %bb.z ], [ %i.iy, %bb.bc ], [ %i.ib, %bb.bd ], [ %i.ib, %.critedge.i110 ], [ %i.ib, %bb.ay ], [ %i.hp, %bb.as ], [ %i.gp, %bb.at ], [ %i.gp, %.critedge.i ], [ %i.gp, %bb.ao ]
  %.sroa.40.2241 = phi i32 [ %i.ee, %bb.u ], [ %i.ee, %bb.z ], [ %i.ee, %bb.bc ], [ %i.iz, %bb.bd ], [ %i.ee, %.critedge.i110 ], [ %i.ee, %bb.ay ], [ %i.ee, %bb.as ], [ %i.hq, %bb.at ], [ %i.ee, %.critedge.i ], [ %i.ee, %bb.ao ]
  %i.jb = add nsw i32 %i.ja, %.sroa.40.2241
  store i32 %i.jb, ptr %i.b, align 4, !tbaa !222
  %i.jc = zext i32 %.sroa.16.2242 to i64          ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !118 ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jc
  br i1 %i.jf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.jg = load ptr, ptr %3, align 8, !tbaa !95
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.jc), !call_target !133, !inline_history !42
  %.pre.i117 = load i64, ptr %i.jd, align 8, !tbaa !118
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235
  %i.ji = phi i64 [ %i.je, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread235 ], [ %.pre.i117, %bb.be ]
  %..i116 = tail call i64 @llvm.umin.i64(i64 %i.jc, i64 %i.ji)
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i116, ptr %i.jj, align 8, !tbaa !117
  br label %bb.bj

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread: ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115, %bb.ap, %.thread213, %bb.aw, %bb.az, %bb.y, %bb.x
  %i.jk = phi i32 [ %i.eu, %bb.y ], [ %i.eu, %bb.x ], [ %i.gl, %bb.ap ], [ %i.gl, %.thread213 ], [ %i.hz, %bb.aw ], [ %i.hz, %bb.az ], [ %i.hz, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %.sroa.16.2231 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.gp, %bb.ap ], [ %i.gp, %.thread213 ], [ %i.ib, %bb.aw ], [ %i.ib, %bb.az ], [ %i.ib, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %.sroa.33.1230 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %.sroa.33.0, %bb.ap ], [ %.sroa.33.0, %.thread213 ], [ %.sroa.33.0, %bb.aw ], [ %.sroa.33.0, %bb.az ], [ %.sroa.33.0, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit115 ]
  %reass.sub288 = sub i32 %.sroa.16.2231, %i.dm
  %i.jl = add i32 %reass.sub288, 347
  %i.jm = add nsw i32 %i.jl, %i.jk
  store i32 %i.jm, ptr %i.b, align 4, !tbaa !222
  %i.jn = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not85 = icmp eq i32 %i.jn, 0
  br i1 %.not85, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jo = fptrunc double %0 to float
  %i.jp = bitcast float %i.jo to i32              ; 2 uses
  %i.jq = and i32 %i.jp, 8388607                  ; 2 uses
  %i.jr = zext nneg i32 %i.jq to i128             ; 2 uses
  %i.js = and i32 %i.jp, 2139095040               ; 3 uses
  %i.jt = icmp eq i32 %i.js, 0                    ; 2 uses
  %i.ju = lshr exact i32 %i.js, 23
  %i.jv = or disjoint i128 %i.jr, 8388608
  %i.jw = add nsw i32 %i.ju, -150
  %storemerge.i = select i1 %i.jt, i128 %i.jr, i128 %i.jv
  %.0.i119 = select i1 %i.jt, i32 -149, i32 %i.jw
  %i.jx = icmp eq i32 %i.jq, 0
  %i.jy = icmp samesign ugt i32 %i.js, 16777215
  %i.jz = and i1 %i.jx, %i.jy
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.ka = zext nneg i64 %i.cr to i128             ; 2 uses
  %i.kb = or disjoint i128 %i.ka, 4503599627370496
  %storemerge.i120 = select i1 %i.ct, i128 %i.ka, i128 %i.kb
  %i.kc = icmp eq i64 %i.cr, 0
  %i.kd = icmp samesign ugt i64 %i.cs, 9007199254740991
  %i.ke = and i1 %i.kc, %i.kd
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.0 = phi i128 [ %storemerge.i120, %bb.bh ], [ %storemerge.i, %bb.bg ]
  %.sroa.6.0 = phi i32 [ %.0.i.i, %bb.bh ], [ %.0.i119, %bb.bg ]
  %i.kf = phi i1 [ %i.ke, %bb.bh ], [ %i.jz, %bb.bg ]
  %spec.select = zext i1 %i.kf to i32             ; 2 uses
  %i.kg = or disjoint i32 %spec.select, 4
  %.181 = select i1 %i.d, i32 %i.kg, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.sroa.33.1230, i32 767)
  store i128 %.sroa.0.0, ptr %4, align 16, !tbaa !111
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !222
  call void @_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v9::detail::basic_fp") align 16 %4, i32 noundef %.181, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %i.kh = and i32 %.sroa.1.0.extract.trunc, 524288
  %.not86 = icmp ne i32 %i.kh, 0
  %or.cond90.not = select i1 %i.d, i1 true, i1 %.not86
  br i1 %or.cond90.not, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !117 ; 2 uses
  %.not87284 = icmp eq i64 %i.kj, 0
  br i1 %.not87284, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %.promoted = load i32, ptr %i.b, align 4
  %i.kk = load ptr, ptr %i.ec, align 8, !tbaa !116
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bm
  %.0285 = phi i64 [ %i.kj, %.lr.ph ], [ %i.km, %bb.bm ] ; 5 uses
  %i.kl = phi i32 [ %.promoted, %.lr.ph ], [ %i.kq, %bb.bm ]
  %i.km = add i64 %.0285, -1                      ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !71
  %i.kp = icmp eq i8 %i.ko, 48
  br i1 %i.kp, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.kq = add nsw i32 %i.kl, 1                    ; 2 uses
  store i32 %i.kq, ptr %i.b, align 4, !tbaa !222
  %.not87 = icmp eq i64 %i.km, 0
  br i1 %.not87, label %.critedge.thread, label %bb.bl, !llvm.loop !865

.critedge.thread:                                 ; preds = %bb.bm, %bb.bk
end_hunk_1

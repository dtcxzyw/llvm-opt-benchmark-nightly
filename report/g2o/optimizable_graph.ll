Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi1ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  %i.x = icmp samesign ult i64 %i.f, 16385
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #46 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !210
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ah, align 16, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !210
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.aj, align 16, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !210
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.al, align 16, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.an = icmp sgt i64 %.sroa.speculated271, 0
  br i1 %i.an, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = shl i64 %.sroa.speculated271, 3
  %i.aw = add i64 %i.av, 8
  %i.ax = mul i64 %i.b, -8
  %i.ay = shl i64 %4, 3                           ; 2 uses
  %i.az = add i64 %i.ay, 8                        ; 7 uses
  %i.ba = mul i64 %.sroa.speculated220, %i.az
  %i.bb = icmp sgt i64 %i.b, 0
  %smin312 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin313 = tail call i64 @llvm.smin.i64(i64 %smin312, i64 %0) ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 72
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.be = shl i64 %i.az, 1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.bg = mul i64 %i.az, 3
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 288
  %i.bi = shl i64 %i.az, 2
  %scevgep.4 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 360
  %i.bk = mul i64 %i.az, 5
  %scevgep.5 = getelementptr inbounds nuw i8, ptr %12, i64 368
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 432
  %i.bm = mul i64 %i.az, 6
  %scevgep.6 = getelementptr inbounds nuw i8, ptr %12, i64 440
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 504
  br label %bb.n

._crit_edge304:                                   ; preds = %._crit_edge298, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.k:                                             ; preds = %._crit_edge304
  call void @free(ptr noundef %i.ad) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge304, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit192: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.n:                                             ; preds = %.lr.ph303, %._crit_edge298
  %indvar = phi i64 [ 0, %.lr.ph303 ], [ %indvar.next, %._crit_edge298 ] ; 2 uses
  %.0126301 = phi i64 [ %.sroa.speculated271, %.lr.ph303 ], [ %i.ez, %._crit_edge298 ] ; 5 uses
  %smin314 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0126301) ; 11 uses
  %i.bp = mul i64 %i.ax, %indvar
  %i.bq = add i64 %i.aw, %i.bp
  %i.br = sub i64 %.0126301, %smin314             ; 4 uses
  %i.bs = mul i64 %i.ay, %i.br
  %i.bt = add i64 %i.bq, %i.bs
  %i.bu = shl i64 %smin314, 3
  %i.bv = sub i64 %i.bt, %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  %i.bw = getelementptr [8 x i8], ptr %5, i64 %i.br
  store ptr %i.bw, ptr %16, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin314, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br i1 %i.bb, label %.lr.ph295.preheader, label %.preheader

.lr.ph295.preheader:                              ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %3, i64 %i.bv
  br label %.lr.ph295

.preheader:                                       ; preds = %bb.af, %bb.o
  %i.by = icmp slt i64 %.0126301, %0
  br i1 %i.by, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.preheader
  %i.bz = mul nsw i64 %i.br, %4
  %invariant.gep299 = getelementptr [8 x i8], ptr %3, i64 %i.bz
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br label %bb.al

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.af
  %indvars.iv = phi i64 [ %smin314, %.lr.ph295.preheader ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %indvar305 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvar.next306, %bb.af ] ; 3 uses
  %.0125293 = phi i64 [ 0, %.lr.ph295.preheader ], [ %i.ex, %bb.af ] ; 5 uses
  %smin315 = call i64 @llvm.smin.i64(i64 %smin313, i64 %indvars.iv) ; 7 uses
  %i.cb = mul i64 %.sroa.speculated220, %indvar305
  %i.cc = sub i64 %smin314, %i.cb
  %smin310 = call i64 @llvm.smin.i64(i64 %smin313, i64 %i.cc)
  %smin311 = call i64 @llvm.smin.i64(i64 %smin310, i64 8)
  %i.cd = shl i64 %smin311, 3                     ; 7 uses
  %i.ce = add i64 %i.cd, -8
  %i.cf = sub nsw i64 %smin314, %.0125293         ; 2 uses
  %.sroa.speculated203 = call i64 @llvm.smin.i64(i64 %.sroa.speculated220, i64 %i.cf) ; 18 uses
  %i.cg = sub nsw i64 %i.cf, %.sroa.speculated203 ; 3 uses
  %i.ch = add nsw i64 %.0125293, %i.br            ; 12 uses
  %i.ci = icmp sgt i64 %.sroa.speculated203, 0
  br i1 %i.ci, label %.lr.ph292, label %._crit_edge

.lr.ph292:                                        ; preds = %.lr.ph295
  %i.cj = mul i64 %i.ba, %indvar305
  %i.ck = getelementptr i8, ptr %i.bx, i64 %i.cj  ; 7 uses
  %i.cl = mul nsw i64 %i.ch, %4
  %i.cm = getelementptr [8 x i8], ptr %3, i64 %i.ch
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load double, ptr %i.cn, align 8, !tbaa !210
  store double %i.co, ptr %12, align 16, !tbaa !210
  %.not329 = icmp eq i64 %.sroa.speculated203, 1
  br i1 %.not329, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph292
  %exitcond.not = icmp eq i64 %smin315, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cp = add nsw i64 %i.ch, 1                    ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %4
  %i.cr = getelementptr [8 x i8], ptr %3, i64 %i.cp
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !210
  store double %i.ct, ptr %i.bc, align 8, !tbaa !210
  %i.cu = icmp sgt i64 %.sroa.speculated203, 2
  br i1 %i.cu, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %bb.q
  %i.cv = add i64 %i.cd, -16
  %scevgep307.1 = getelementptr i8, ptr %i.ck, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.1, ptr align 8 %scevgep307.1, i64 range(i64 0, 57) %i.cv, i1 false), !tbaa !210
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.q
  %exitcond.not.1 = icmp eq i64 %smin315, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.loopexit.1
  %i.cw = add nsw i64 %i.ch, 2                    ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %4
  %i.cy = getelementptr [8 x i8], ptr %3, i64 %i.cw
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !210
  store double %i.da, ptr %i.bd, align 16, !tbaa !210
  %i.db = icmp sgt i64 %.sroa.speculated203, 3
  br i1 %i.db, label %.lr.ph.2, label %.loopexit.2

.lr.ph.2:                                         ; preds = %bb.r
  %i.dc = add i64 %i.cd, -24
  %scevgep307.2 = getelementptr i8, ptr %i.ck, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.2, ptr align 8 %scevgep307.2, i64 range(i64 0, 57) %i.dc, i1 false), !tbaa !210
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.r
  %exitcond.not.2 = icmp eq i64 %smin315, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.loopexit.2
  %i.dd = add nsw i64 %i.ch, 3                    ; 2 uses
  %i.de = mul nsw i64 %i.dd, %4
  %i.df = getelementptr [8 x i8], ptr %3, i64 %i.dd
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !210
  store double %i.dh, ptr %i.bf, align 8, !tbaa !210
  %i.di = icmp sgt i64 %.sroa.speculated203, 4
  br i1 %i.di, label %.lr.ph.3, label %.loopexit.3

.lr.ph.3:                                         ; preds = %bb.s
  %i.dj = add i64 %i.cd, -32
  %scevgep307.3 = getelementptr i8, ptr %i.ck, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.3, ptr align 8 %scevgep307.3, i64 range(i64 0, 57) %i.dj, i1 false), !tbaa !210
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph.3, %bb.s
  %exitcond.not.3 = icmp eq i64 %smin315, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.loopexit.3
  %i.dk = add nsw i64 %i.ch, 4                    ; 2 uses
  %i.dl = mul nsw i64 %i.dk, %4
  %i.dm = getelementptr [8 x i8], ptr %3, i64 %i.dk
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load double, ptr %i.dn, align 8, !tbaa !210
  store double %i.do, ptr %i.bh, align 16, !tbaa !210
  %i.dp = icmp sgt i64 %.sroa.speculated203, 5
  br i1 %i.dp, label %.lr.ph.4, label %.loopexit.4

.lr.ph.4:                                         ; preds = %bb.t
  %i.dq = add i64 %i.cd, -40
  %scevgep307.4 = getelementptr i8, ptr %i.ck, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.4, ptr align 8 %scevgep307.4, i64 range(i64 0, 57) %i.dq, i1 false), !tbaa !210
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.t
  %exitcond.not.4 = icmp eq i64 %smin315, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.loopexit.4
  %i.dr = add nsw i64 %i.ch, 5                    ; 2 uses
  %i.ds = mul nsw i64 %i.dr, %4
  %i.dt = getelementptr [8 x i8], ptr %3, i64 %i.dr
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load double, ptr %i.du, align 8, !tbaa !210
  store double %i.dv, ptr %i.bj, align 8, !tbaa !210
  %i.dw = icmp sgt i64 %.sroa.speculated203, 6
  br i1 %i.dw, label %.lr.ph.5, label %.loopexit.5

.lr.ph.5:                                         ; preds = %bb.u
  %i.dx = add i64 %i.cd, -48
  %scevgep307.5 = getelementptr i8, ptr %i.ck, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.5, ptr align 8 %scevgep307.5, i64 range(i64 0, 57) %i.dx, i1 false), !tbaa !210
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.u
  %exitcond.not.5 = icmp eq i64 %smin315, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.loopexit.5
  %i.dy = add nsw i64 %i.ch, 6                    ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %4
  %i.ea = getelementptr [8 x i8], ptr %3, i64 %i.dy
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !210
  store double %i.ec, ptr %i.bl, align 16, !tbaa !210
  %i.ed = icmp sgt i64 %.sroa.speculated203, 7
  br i1 %i.ed, label %.lr.ph.6, label %.loopexit.6

.lr.ph.6:                                         ; preds = %bb.v
  %i.ee = add i64 %i.cd, -56
  %scevgep307.6 = getelementptr i8, ptr %i.ck, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.6, ptr align 8 %scevgep307.6, i64 range(i64 0, 57) %i.ee, i1 false), !tbaa !210
  br label %.loopexit.6

.loopexit.6:                                      ; preds = %.lr.ph.6, %bb.v
  %exitcond.not.6 = icmp eq i64 %smin315, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %.loopexit.7

.loopexit.7:                                      ; preds = %.loopexit.6
  %i.ef = add nsw i64 %i.ch, 7                    ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %4
  %i.eh = getelementptr [8 x i8], ptr %3, i64 %i.ef
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !210
  store double %i.ej, ptr %i.bn, align 8, !tbaa !210
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.ck, i64 range(i64 0, 57) %i.ce, i1 false), !tbaa !210
  br label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.3, %.loopexit.4, %.loopexit.5, %.loopexit.6, %.loopexit.7, %.lr.ph295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  store ptr %12, ptr %17, align 8, !tbaa !281
  store i64 8, ptr %i.ap, align 8, !tbaa !282
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef 0, i64 noundef 0)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.ek = getelementptr [8 x i8], ptr %7, i64 %i.ch
  store ptr %i.ek, ptr %18, align 8
  store i64 %9, ptr %i.aq, align 8
  %i.el = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated203, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.el, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.em = icmp sgt i64 %i.cg, 0
  br i1 %i.em, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.en = add nsw i64 %.sroa.speculated203, %i.ch ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %i.eo = mul nsw i64 %i.ch, %4
  %i.ep = getelementptr [8 x i8], ptr %3, i64 %i.en
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %i.eo
  store ptr %i.eq, ptr %19, align 8
  store i64 %4, ptr %i.ar, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated203, i64 noundef %i.cg, i64 noundef 0, i64 noundef 0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.er = getelementptr [8 x i8], ptr %7, i64 %i.en
  store ptr %i.er, ptr %20, align 8
  store i64 %9, ptr %i.as, align 8
  %i.es = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.cg, i64 noundef %.sroa.speculated203, i64 noundef %1, double noundef %i.es, i64 noundef %.sroa.speculated203, i64 noundef %smin314, i64 noundef 0, i64 noundef %.0125293)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.af

bb.ab:                                            ; preds = %._crit_edge
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.al

bb.ac:                                            ; preds = %bb.w
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.al

bb.ad:                                            ; preds = %bb.y
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.al

bb.ae:                                            ; preds = %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.al

bb.af:                                            ; preds = %bb.aa, %bb.x
  %i.ex = add nsw i64 %.0125293, %.sroa.speculated220 ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %smin314
  %indvar.next306 = add i64 %indvar305, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated220
  br i1 %i.ey, label %.lr.ph295, label %.preheader, !llvm.loop !1040

._crit_edge298:                                   ; preds = %bb.ai, %.preheader
  %i.ez = sub nsw i64 %.0126301, %i.b             ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fa, label %bb.n, label %._crit_edge304, !llvm.loop !1041

bb.ag:                                            ; preds = %.lr.ph297, %bb.ai
  %.0296 = phi i64 [ %.0126301, %.lr.ph297 ], [ %i.fb, %bb.ai ] ; 4 uses
  %i.fb = add nsw i64 %.0296, %.sroa.speculated226 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.fb)
  %i.fc = sub nsw i64 %.sroa.speculated, %.0296   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %gep300 = getelementptr [8 x i8], ptr %invariant.gep299, i64 %.0296
  store ptr %gep300, ptr %22, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin314, i64 noundef %i.fc, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.fd = getelementptr [8 x i8], ptr %7, i64 %.0296
  store ptr %i.fd, ptr %23, align 8
  store i64 %9, ptr %i.au, align 8
  %i.fe = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.fc, i64 noundef %smin314, i64 noundef %1, double noundef %i.fe, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.ff = icmp slt i64 %i.fb, %0
  br i1 %i.ff, label %bb.ag, label %._crit_edge298, !llvm.loop !1042

bb.aj:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ab, %bb.ac, %bb.ae, %bb.ad, %bb.p
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.ev, %bb.ad ], [ %i.fg, %bb.aj ], [ %i.et, %bb.ab ], [ %i.eu, %bb.ac ], [ %i.ew, %bb.ae ], [ %i.fh, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.af, label %bb.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef %i.ad) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %bb.al, %bb.am, %bb.m
  %.pn150.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %.pn150.pn.pn, %bb.am ], [ %.pn150.pn.pn, %bb.al ]
  br i1 %i.s, label %bb.an, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

bb.an:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197, %bb.an
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1051
  %i.b = sdiv i64 %4, 4
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sub nsw i64 %4, %i.c
  %i.e = sdiv i64 %i.d, 2
  %i.f = shl nsw i64 %i.e, 1
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  %i.h = icmp sgt i64 %4, 3
  br i1 %i.h, label %.preheader64.lr.ph, label %.preheader63

.preheader64.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i64 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.i, label %.preheader64.us.preheader, label %.preheader64.preheader

.preheader64.us.preheader:                        ; preds = %.preheader64.lr.ph
  %xtraiter = and i64 %3, 1
  %i.k = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i64 %3 to i1
  br label %.preheader64.us

.preheader64.preheader:                           ; preds = %.preheader64.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  br label %.preheader63

.preheader64.us:                                  ; preds = %.preheader64.us.preheader, %._crit_edge.us
  %.05568.us = phi i64 [ %i.ax, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 4 uses
  %.05667.us = phi i64 [ %.lcssa119, %._crit_edge.us ], [ 0, %.preheader64.us.preheader ] ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader64.us.new

.preheader64.us.new:                              ; preds = %.preheader64.us, %.preheader64.us.new
  %.05466.us = phi i64 [ %i.ak, %.preheader64.us.new ], [ 0, %.preheader64.us ] ; 3 uses
  %.15765.us = phi i64 [ %i.aj, %.preheader64.us.new ], [ %.05667.us, %.preheader64.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader64.us.new ], [ 0, %.preheader64.us ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !281
  %i.m = load i64, ptr %i.j, align 8, !tbaa !282
  %i.n = mul nsw i64 %i.m, %.05466.us             ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %.05568.us ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !88
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.n
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !300  ; 2 uses
  %.not139 = icmp eq ptr %i.v, null
  br i1 %.not139, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.w = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.x = icmp samesign ult i64 %i.f, 16385
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #46 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 4 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  store double 1.000000e+00, ptr %12, align 16, !tbaa !210
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 144
  store double 1.000000e+00, ptr %i.ah, align 16, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 216
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !210
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 288
  store double 1.000000e+00, ptr %i.aj, align 16, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 360
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !210
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 432
  store double 1.000000e+00, ptr %i.al, align 16, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 504
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #42
  %i.an = icmp sgt i64 %.sroa.speculated261, 0
  br i1 %i.an, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = shl i64 %.sroa.speculated261, 3
  %i.aw = add i64 %i.av, 8
  %i.ax = mul i64 %i.b, -8
  %i.ay = shl i64 %4, 3                           ; 2 uses
  %i.az = add i64 %i.ay, 8                        ; 7 uses
  %i.ba = mul i64 %.sroa.speculated211, %i.az
  %i.bb = icmp sgt i64 %i.b, 0
  %smin302 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin303 = tail call i64 @llvm.smin.i64(i64 %smin302, i64 %0) ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bc = shl i64 %i.az, 1
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.bd = mul i64 %i.az, 3
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.be = shl i64 %i.az, 2
  %scevgep.4 = getelementptr inbounds nuw i8, ptr %12, i64 296
  %i.bf = mul i64 %i.az, 5
  %scevgep.5 = getelementptr inbounds nuw i8, ptr %12, i64 368
  %i.bg = mul i64 %i.az, 6
  %scevgep.6 = getelementptr inbounds nuw i8, ptr %12, i64 440
  br label %bb.n

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.af, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.k:                                             ; preds = %._crit_edge294
  call void @free(ptr noundef %i.ad) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge294, %bb.k
  br i1 %i.s, label %bb.l, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

bb.l:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit184: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.n:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvar = phi i64 [ 0, %.lr.ph293 ], [ %indvar.next, %._crit_edge288 ] ; 2 uses
  %.0120291 = phi i64 [ %.sroa.speculated261, %.lr.ph293 ], [ %i.df, %._crit_edge288 ] ; 5 uses
  %smin304 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0120291) ; 11 uses
  %i.bi = mul i64 %i.ax, %indvar
  %i.bj = add i64 %i.aw, %i.bi
  %i.bk = sub i64 %.0120291, %smin304             ; 4 uses
  %i.bl = mul i64 %i.ay, %i.bk
  %i.bm = add i64 %i.bj, %i.bl
  %i.bn = shl i64 %smin304, 3
  %i.bo = sub i64 %i.bm, %i.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #42
  %i.bp = getelementptr [8 x i8], ptr %5, i64 %i.bk
  store ptr %i.bp, ptr %16, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin304, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br i1 %i.bb, label %.lr.ph285.preheader, label %.preheader

.lr.ph285.preheader:                              ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %3, i64 %i.bo
  br label %.lr.ph285

.preheader:                                       ; preds = %bb.ae, %bb.o
  %i.br = icmp slt i64 %.0120291, %0
  br i1 %i.br, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader
  %i.bs = mul nsw i64 %i.bk, %4
  %invariant.gep289 = getelementptr [8 x i8], ptr %3, i64 %i.bs
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #42
  br label %bb.ak

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.ae
  %indvars.iv = phi i64 [ %smin304, %.lr.ph285.preheader ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %indvar295 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvar.next296, %bb.ae ] ; 3 uses
  %.0119283 = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.dd, %bb.ae ] ; 5 uses
  %smin305 = call i64 @llvm.smin.i64(i64 %smin303, i64 %indvars.iv) ; 6 uses
  %i.bu = mul i64 %.sroa.speculated211, %indvar295
  %i.bv = sub i64 %smin304, %i.bu
  %smin300 = call i64 @llvm.smin.i64(i64 %smin303, i64 %i.bv)
  %smin301 = call i64 @llvm.smin.i64(i64 %smin300, i64 8)
  %i.bw = shl i64 %smin301, 3                     ; 7 uses
  %i.bx = add i64 %i.bw, -8
  %i.by = sub nsw i64 %smin304, %.0119283         ; 2 uses
  %.sroa.speculated194 = call i64 @llvm.smin.i64(i64 %.sroa.speculated211, i64 %i.by) ; 18 uses
  %i.bz = sub nsw i64 %i.by, %.sroa.speculated194 ; 3 uses
  %i.ca = add nsw i64 %.0119283, %i.bk            ; 3 uses
  %i.cb = icmp sgt i64 %.sroa.speculated194, 0
  br i1 %i.cb, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.lr.ph285
  %i.cc = mul i64 %i.ba, %indvar295
  %i.cd = getelementptr i8, ptr %i.bq, i64 %i.cc  ; 7 uses
  %.not319 = icmp eq i64 %.sroa.speculated194, 1
  br i1 %.not319, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph282
  %exitcond.not = icmp eq i64 %smin305, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.ce = icmp sgt i64 %.sroa.speculated194, 2
  br i1 %i.ce, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %bb.q
  %i.cf = add i64 %i.bw, -16
  %scevgep297.1 = getelementptr i8, ptr %i.cd, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.1, ptr align 8 %scevgep297.1, i64 range(i64 0, 57) %i.cf, i1 false), !tbaa !210
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.q
  %exitcond.not.1 = icmp eq i64 %smin305, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.loopexit.1
  %i.cg = icmp sgt i64 %.sroa.speculated194, 3
  br i1 %i.cg, label %.lr.ph.2, label %.loopexit.2

.lr.ph.2:                                         ; preds = %bb.r
  %i.ch = add i64 %i.bw, -24
  %scevgep297.2 = getelementptr i8, ptr %i.cd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.2, ptr align 8 %scevgep297.2, i64 range(i64 0, 57) %i.ch, i1 false), !tbaa !210
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.r
  %exitcond.not.2 = icmp eq i64 %smin305, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.loopexit.2
  %i.ci = icmp sgt i64 %.sroa.speculated194, 4
  br i1 %i.ci, label %.lr.ph.3, label %.loopexit.3

.lr.ph.3:                                         ; preds = %bb.s
  %i.cj = add i64 %i.bw, -32
  %scevgep297.3 = getelementptr i8, ptr %i.cd, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.3, ptr align 8 %scevgep297.3, i64 range(i64 0, 57) %i.cj, i1 false), !tbaa !210
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph.3, %bb.s
  %exitcond.not.3 = icmp eq i64 %smin305, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.loopexit.3
  %i.ck = icmp sgt i64 %.sroa.speculated194, 5
  br i1 %i.ck, label %.lr.ph.4, label %.loopexit.4

.lr.ph.4:                                         ; preds = %bb.t
  %i.cl = add i64 %i.bw, -40
  %scevgep297.4 = getelementptr i8, ptr %i.cd, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.4, ptr align 8 %scevgep297.4, i64 range(i64 0, 57) %i.cl, i1 false), !tbaa !210
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.t
  %exitcond.not.4 = icmp eq i64 %smin305, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.loopexit.4
  %i.cm = icmp sgt i64 %.sroa.speculated194, 6
  br i1 %i.cm, label %.lr.ph.5, label %.loopexit.5

.lr.ph.5:                                         ; preds = %bb.u
  %i.cn = add i64 %i.bw, -48
  %scevgep297.5 = getelementptr i8, ptr %i.cd, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep.5, ptr align 8 %scevgep297.5, i64 range(i64 0, 57) %i.cn, i1 false), !tbaa !210
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.u
  %exitcond.not.5 = icmp ne i64 %smin305, 6
  %i.co = icmp sgt i64 %.sroa.speculated194, 7
  %or.cond = and i1 %exitcond.not.5, %i.co
  br i1 %or.cond, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.loopexit.5
  %i.cp = add i64 %i.bw, -56
  %scevgep297.6 = getelementptr i8, ptr %i.cd, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.6, ptr align 8 %scevgep297.6, i64 range(i64 0, 57) %i.cp, i1 false), !tbaa !210
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph282
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %i.cd, i64 range(i64 0, 57) %i.bx, i1 false), !tbaa !210
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.6, %.loopexit, %.loopexit.1, %.loopexit.2, %.loopexit.3, %.loopexit.4, %.loopexit.5, %.lr.ph285
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  store ptr %12, ptr %17, align 8, !tbaa !281
  store i64 8, ptr %i.ap, align 8, !tbaa !282
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.cq = getelementptr [8 x i8], ptr %7, i64 %i.ca
  store ptr %i.cq, ptr %18, align 8
  store i64 %9, ptr %i.aq, align 8
  %i.cr = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.cr, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.cs = icmp sgt i64 %i.bz, 0
  br i1 %i.cs, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ct = add nsw i64 %.sroa.speculated194, %i.ca ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %i.cu = mul nsw i64 %i.ca, %4
  %i.cv = getelementptr [8 x i8], ptr %3, i64 %i.ct
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cw, ptr %19, align 8
  store i64 %4, ptr %i.ar, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated194, i64 noundef %i.bz, i64 noundef 0, i64 noundef 0)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.cx = getelementptr [8 x i8], ptr %7, i64 %i.ct
  store ptr %i.cx, ptr %20, align 8
  store i64 %9, ptr %i.as, align 8
  %i.cy = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.bz, i64 noundef %.sroa.speculated194, i64 noundef %1, double noundef %i.cy, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.ae

bb.aa:                                            ; preds = %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.ak

bb.ab:                                            ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.ak

bb.ac:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.ak

bb.ad:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.ak

bb.ae:                                            ; preds = %bb.z, %bb.w
  %i.dd = add nsw i64 %.0119283, %.sroa.speculated211 ; 2 uses
  %i.de = icmp slt i64 %i.dd, %smin304
  %indvar.next296 = add i64 %indvar295, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated211
  br i1 %i.de, label %.lr.ph285, label %.preheader, !llvm.loop !1052

._crit_edge288:                                   ; preds = %bb.ah, %.preheader
  %i.df = sub nsw i64 %.0120291, %i.b             ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dg, label %bb.n, label %._crit_edge294, !llvm.loop !1053

bb.af:                                            ; preds = %.lr.ph287, %bb.ah
  %.0286 = phi i64 [ %.0120291, %.lr.ph287 ], [ %i.dh, %bb.ah ] ; 4 uses
  %i.dh = add nsw i64 %.0286, %.sroa.speculated217 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dh)
  %i.di = sub nsw i64 %.sroa.speculated, %.0286   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %gep290 = getelementptr [8 x i8], ptr %invariant.gep289, i64 %.0286
  store ptr %gep290, ptr %22, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin304, i64 noundef %i.di, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.dj = getelementptr [8 x i8], ptr %7, i64 %.0286
  store ptr %i.dj, ptr %23, align 8
  store i64 %9, ptr %i.au, align 8
  %i.dk = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %i.di, i64 noundef %smin304, i64 noundef %1, double noundef %i.dk, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.dl = icmp slt i64 %i.dh, %0
  br i1 %i.dl, label %bb.af, label %._crit_edge288, !llvm.loop !1054

bb.ai:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %bb.p
  %.pn143.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.db, %bb.ac ], [ %i.dm, %bb.ai ], [ %i.cz, %bb.aa ], [ %i.da, %bb.ab ], [ %i.dc, %bb.ad ], [ %i.dn, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.af, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.ad) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188: ; preds = %bb.ak, %bb.al, %bb.m
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn143.pn, %bb.al ], [ %.pn143.pn, %bb.ak ]
  br i1 %i.s, label %bb.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

bb.am:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit189: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit188, %bb.am
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #31

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_1

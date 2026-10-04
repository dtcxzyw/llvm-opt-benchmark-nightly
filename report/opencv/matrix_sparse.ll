Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_sparse?download=true
inline.NumInlined: 675
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK2cv9SparseMat4hashEPKi:bb.a
  %i.i = add nsw i32 %i.f, -2
  %i.j = icmp ult i32 %i.i, 3
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0912 = phi i64 [ %i.d, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.k = mul i64 %.0912, 1540483477
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.k, %i.n
  %i.p = mul i64 %i.o, 1540483477
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.p, %i.t
  %i.v = mul i64 %i.u, 1540483477
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.v, %i.z
  %i.ab = mul i64 %i.aa, 1540483477
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.0912.epil.init = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.ag, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0912.epil = phi i64 [ %.0912.epil.init, %.lr.ph.epil.preheader ], [ %i.al, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ah = mul i64 %.0912.epil, 1540483477
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %i.ah, %i.ak                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !85

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b, %bb.a
  %.010 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ], [ %i.ag, %.loopexit.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil ]
  ret i64 %.010
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9SparseMatC2ERKNS_3MatE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [32 x i32], align 16              ; 13 uses
  store i32 1123876864, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !98
  %i.h = and i32 %i.g, 4095
  tail call void @_ZN2cv9SparseMat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, ptr noundef nonnull %i.f, i32 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !tbaa !60   ; 5 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = icmp ult i32 %i.j, %narrow.i
  br i1 %i.l, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 103) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !45
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.a
  %i.s = zext nneg i32 %i.j to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 2 uses
  %i.v = load i32, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.w = lshr i32 %i.v, 5
  %i.x = and i32 %i.w, 127
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = shl i32 %i.v, 2
  %i.aa = and i32 %i.z, 124
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 1275511473185297, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 15
  %i.af = mul nuw nsw i32 %i.ae, %i.y             ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 14 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ai = icmp sgt i32 %i.u, 0
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %.not14.i = icmp samesign ult i32 %i.af, 4
  %i.ak = add nsw i32 %i.i, -2                    ; 2 uses
  %i.al = icmp samesign ugt i32 %i.i, 1           ; 2 uses
  br i1 %i.ai, label %.preheader.lr.ph.us.preheader, label %_ZNK2cv8MatShapeixEm.exit.split

.preheader.lr.ph.us.preheader:                    ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ao = and i64 %i.ag, 4092                     ; 2 uses
  %i.ap = zext i32 %i.ak to i64
  %.not108 = icmp eq i64 %i.ao, %i.ag
  %.not.i.us128 = icmp samesign ult i32 %i.af, 4
  %i.aq = add nsw i64 %i.ag, -4                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.aq, 28
  %n.vec143 = and i64 %i.as, 9223372036854775800  ; 3 uses
  %i.at = shl i64 %n.vec143, 2                    ; 3 uses
  %i.au = or disjoint i64 %i.at, 4
  %cmp.n150 = icmp eq i64 %i.as, %n.vec143
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %_ZNK2cv8MatShapeixEm.exit51.us, %.preheader.lr.ph.us.preheader
  %.035.us = phi ptr [ %i.an, %.preheader.lr.ph.us.preheader ], [ %i.fa, %_ZNK2cv8MatShapeixEm.exit51.us ] ; 2 uses
  %.035.us130 = ptrtoaddr ptr %.035.us to i64     ; 2 uses
  br label %.preheader.us

bb.e:                                             ; preds = %.lr.ph
  %i.av = add nuw nsw i64 %i.aw, 4                ; 2 uses
  %.not.i.us = icmp samesign ugt i64 %i.av, %i.ag
  br i1 %.not.i.us, label %.preheader.i.us, label %.lr.ph, !llvm.loop !86

.lr.ph:                                           ; preds = %.preheader.us, %bb.e
  %i.aw = phi i64 [ %i.av, %bb.e ], [ 4, %.preheader.us ] ; 2 uses
  %.0.i.us129 = phi i64 [ %i.aw, %bb.e ], [ 0, %.preheader.us ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.0.i.us129
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %.not13.i.us = icmp eq i32 %i.ay, 0
  br i1 %.not13.i.us, label %bb.e, label %_ZN2cvL10isZeroElemEPKhm.exit.us, !llvm.loop !86

.preheader.i.us:                                  ; preds = %bb.e, %.preheader.us
  br i1 %.not108, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us, %bb.f
  %.116.i.us = phi i64 [ %i.bb, %bb.f ], [ %i.ao, %.preheader.i.us ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i.us
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !45
  %.not12.i.us = icmp eq i8 %i.ba, 0
  br i1 %.not12.i.us, label %bb.f, label %_ZN2cvL10isZeroElemEPKhm.exit.us

bb.f:                                             ; preds = %.lr.ph.i.us
  %i.bb = add nuw nsw i64 %.116.i.us, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bb, %i.ag
  br i1 %exitcond.not.i.us, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph.i.us, !llvm.loop !87

_ZN2cvL10isZeroElemEPKhm.exit.us:                 ; preds = %.lr.ph, %.lr.ph.i.us
  store i32 %.066.us, ptr %i.aj, align 4, !tbaa !27
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %.not.i37.us = icmp eq ptr %i.bc, null
  br i1 %.not.i37.us, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %bb.g

bb.g:                                             ; preds = %_ZN2cvL10isZeroElemEPKhm.exit.us
  %i.bd = load i32, ptr %i.a, align 16, !tbaa !27
  %i.be = zext i32 %i.bd to i64                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.preheader.i.us, label %_ZNK2cv9SparseMat4hashEPKi.exit.us

.lr.ph.preheader.i.us:                            ; preds = %bb.g
  %wide.trip.count.i.us = zext nneg i32 %i.bg to i64
  %i.bi = add nsw i64 %wide.trip.count.i.us, -1   ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = add nsw i32 %i.bg, -2
  %i.bk = icmp ult i32 %i.bj, 3
  br i1 %i.bk, label %.lr.ph.i39.us.epil.preheader, label %.lr.ph.preheader.i.us.new

.lr.ph.preheader.i.us.new:                        ; preds = %.lr.ph.preheader.i.us
  %unroll_iter = and i64 %i.bi, -4
  br label %.lr.ph.i39.us

.lr.ph.i39.us:                                    ; preds = %.lr.ph.i39.us, %.lr.ph.preheader.i.us.new
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.preheader.i.us.new ], [ %indvars.iv.next.i.us.3, %.lr.ph.i39.us ] ; 5 uses
  %.0912.i.us = phi i64 [ %i.be, %.lr.ph.preheader.i.us.new ], [ %i.ch, %.lr.ph.i39.us ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.us.new ], [ %niter.next.3, %.lr.ph.i39.us ]
  %i.bl = mul i64 %.0912.i.us, 1540483477
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !27
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add i64 %i.bl, %i.bo
  %i.bq = mul i64 %i.bp, 1540483477
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !27
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add i64 %i.bq, %i.bu
  %i.bw = mul i64 %i.bv, 1540483477
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !27
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add i64 %i.bw, %i.ca
  %i.cc = mul i64 %i.cb, 1540483477
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !27
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add i64 %i.cc, %i.cg                    ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, label %.lr.ph.i39.us, !llvm.loop !0

_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i39.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %.lr.ph.i39.us.epil.preheader

.lr.ph.i39.us.epil.preheader:                     ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.3, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %.0912.i.us.epil.init = phi i64 [ %i.be, %.lr.ph.preheader.i.us ], [ %i.ch, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i39.us.epil

.lr.ph.i39.us.epil:                               ; preds = %.lr.ph.i39.us.epil, %.lr.ph.i39.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %.lr.ph.i39.us.epil ] ; 2 uses
  %.0912.i.us.epil = phi i64 [ %.0912.i.us.epil.init, %.lr.ph.i39.us.epil.preheader ], [ %i.cm, %.lr.ph.i39.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i39.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.i39.us.epil ]
  %i.ci = mul i64 %.0912.i.us.epil, 1540483477
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.epil
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !27
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %i.ci, %i.cl                    ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv9SparseMat4hashEPKi.exit.us, label %.lr.ph.i39.us.epil, !llvm.loop !88

_ZNK2cv9SparseMat4hashEPKi.exit.us:               ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.i39.us.epil, %bb.g, %_ZN2cvL10isZeroElemEPKhm.exit.us
  %.010.i38.us = phi i64 [ 0, %_ZN2cvL10isZeroElemEPKhm.exit.us ], [ %i.be, %bb.g ], [ %i.ch, %_ZNK2cv9SparseMat4hashEPKi.exit.us.loopexit.unr-lcssa ], [ %i.cm, %.lr.ph.i39.us.epil ]
  %i.cn = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %.010.i38.us) ; 10 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 2 uses
  br i1 %.not14.i, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader

.lr.ph.i41.us.preheader:                          ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %i.cp = sub i64 %i.fj, %i.co
  %diff.check140 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check141, i1 true, i1 %diff.check140
  br i1 %or.cond, label %.lr.ph.i41.us.preheader153, label %vector.body144

vector.body144:                                   ; preds = %.lr.ph.i41.us.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %.lr.ph.i41.us.preheader ] ; 2 uses
  %i.cq = shl i64 %index145, 2                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load146 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !27
  %wide.load147 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load146, ptr %i.ct, align 4, !tbaa !27
  store <4 x i32> %wide.load147, ptr %i.cu, align 4, !tbaa !27
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.cv, label %middle.block149, label %vector.body144, !llvm.loop !89

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n150, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader153

.lr.ph.i41.us.preheader153:                       ; preds = %.lr.ph.i41.us.preheader, %middle.block149
  %.ph = phi i64 [ 4, %.lr.ph.i41.us.preheader ], [ %i.au, %middle.block149 ]
  %.015.i.us.ph = phi i64 [ 0, %.lr.ph.i41.us.preheader ], [ %i.at, %middle.block149 ]
  br label %.lr.ph.i41.us

.lr.ph.i41.us:                                    ; preds = %.lr.ph.i41.us.preheader153, %.lr.ph.i41.us
  %i.cw = phi i64 [ %i.da, %.lr.ph.i41.us ], [ %.ph, %.lr.ph.i41.us.preheader153 ] ; 3 uses
  %.015.i.us = phi i64 [ %i.cw, %.lr.ph.i41.us ], [ %.015.i.us.ph, %.lr.ph.i41.us.preheader153 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.015.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.015.i.us
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !27
  %i.da = add nuw nsw i64 %i.cw, 4                ; 2 uses
  %.not.i42.us = icmp samesign ugt i64 %i.da, %i.ag
  br i1 %.not.i42.us, label %.preheader.i43.us, label %.lr.ph.i41.us, !llvm.loop !90

.preheader.i43.us:                                ; preds = %.lr.ph.i41.us, %middle.block149, %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %.0.lcssa.i.us = phi i64 [ 0, %_ZNK2cv9SparseMat4hashEPKi.exit.us ], [ %i.at, %middle.block149 ], [ %i.cw, %.lr.ph.i41.us ] ; 7 uses
  %i.db = icmp samesign ult i64 %.0.lcssa.i.us, %i.ag
  br i1 %i.db, label %iter.check, label %_ZN2cvL8copyElemEPKhPhm.exit.us

iter.check:                                       ; preds = %.preheader.i43.us
  %i.dc = sub nuw i64 %i.ag, %.0.lcssa.i.us       ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.dc, 8
  %i.dd = sub i64 %i.fl, %i.co
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond152 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond152, label %.lr.ph17.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp samesign ult i64 %i.dc, 32
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.de = and i64 %i.dc, 24
  %n.vec = and i64 %i.dc, 4064                    ; 4 uses
  %i.df = add i64 %.0.lcssa.i.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = add nuw i64 %.0.lcssa.i.us, %index      ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load = load <16 x i8>, ptr %i.dh, align 1, !tbaa !45
  %wide.load132 = load <16 x i8>, ptr %i.di, align 1, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load, ptr %i.dj, align 1, !tbaa !45
  store <16 x i8> %wide.load132, ptr %i.dk, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.us.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.dc, 4088                 ; 3 uses
  %i.dm = add i64 %.0.lcssa.i.us, %n.vec133
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = add nuw i64 %.0.lcssa.i.us, %index134   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dn
  %wide.load135 = load <8 x i8>, ptr %i.do, align 1, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dn
  store <8 x i8> %wide.load135, ptr %i.dp, align 1, !tbaa !45
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next136, %n.vec133
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.dc, %n.vec133
  br i1 %cmp.n137, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us.preheader

.lr.ph17.i.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i44.us.ph = phi i64 [ %.0.lcssa.i.us, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 4 uses
  %i.dr = sub i64 %i.ag, %.116.i44.us.ph
  %xtraiter165 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol

.lr.ph17.i.us.prol:                               ; preds = %.lr.ph17.i.us.preheader, %.lr.ph17.i.us.prol
  %.116.i44.us.prol = phi i64 [ %i.dv, %.lr.ph17.i.us.prol ], [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.us.prol ], [ 0, %.lr.ph17.i.us.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us.prol
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us.prol
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !45
  %i.dv = add nuw nsw i64 %.116.i44.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol, !llvm.loop !93

.lr.ph17.i.us.prol.loopexit:                      ; preds = %.lr.ph17.i.us.prol, %.lr.ph17.i.us.preheader
  %.116.i44.us.unr = phi i64 [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ], [ %i.dv, %.lr.ph17.i.us.prol ]
  %i.dw = sub i64 %.116.i44.us.ph, %i.ag
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us

.lr.ph17.i.us:                                    ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us
  %.116.i44.us = phi i64 [ %i.en, %.lr.ph17.i.us ], [ %.116.i44.us.unr, %.lr.ph17.i.us.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !45
  %i.eb = add nuw nsw i64 %.116.i44.us, 1         ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !45
  %i.ef = add nuw nsw i64 %.116.i44.us, 2         ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !45
  %i.ej = add nuw nsw i64 %.116.i44.us, 3         ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !45
  %i.en = add nuw nsw i64 %.116.i44.us, 4         ; 2 uses
  %exitcond.not.i45.us.3 = icmp eq i64 %i.en, %i.ag
  br i1 %exitcond.not.i45.us.3, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us, !llvm.loop !94

_ZN2cvL8copyElemEPKhPhm.exit.us:                  ; preds = %bb.f, %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i43.us, %.preheader.i.us
  %i.eo = add nuw nsw i32 %.066.us, 1             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ag ; 2 uses
  %exitcond.not = icmp eq i32 %i.eo, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !95

bb.h:                                             ; preds = %.lr.ph.us, %bb.i
  %indvars.iv93 = phi i64 [ %i.ap, %.lr.ph.us ], [ %indvars.iv.next94, %bb.i ] ; 6 uses
  %.267.us = phi ptr [ %i.ep, %.lr.ph.us ], [ %i.fa, %bb.i ]
  br i1 %.not109, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us

_ZNK2cv8MatShapeixEm.exit51.us:                   ; preds = %bb.h
  %i.eq = add nuw nsw i64 %indvars.iv93, 1        ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv93
  %i.es = load i64, ptr %i.er, align 8, !tbaa !63
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !27
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.eq
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !63
  %i.ey = mul i64 %i.ex, %i.ev
  %i.ez = sub i64 %i.es, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.267.us, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv93 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !27
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !27
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !27
  %i.fg = icmp slt i32 %i.fd, %i.ff
  br i1 %i.fg, label %.preheader.lr.ph.us, label %bb.i, !llvm.loop !96

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us
  store i32 0, ptr %i.fb, align 4, !tbaa !27
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.fh = icmp sgt i64 %indvars.iv93, 0
  br i1 %i.fh, label %bb.h, label %._crit_edge70, !llvm.loop !97

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %_ZN2cvL8copyElemEPKhPhm.exit.us
  %indvar = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvar.next, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 3 uses
  %.066.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.eo, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 2 uses
  %.13665.us = phi ptr [ %.035.us, %.preheader.lr.ph.us ], [ %i.ep, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 12 uses
  %i.fi = mul i64 %indvar, %i.ag
  %i.fj = add i64 %i.fi, %.035.us130
  %i.fk = mul i64 %indvar, %i.ag
  %i.fl = add i64 %i.fk, %.035.us130
  br i1 %.not.i.us128, label %.preheader.i.us, label %.lr.ph

._crit_edge.us:                                   ; preds = %_ZN2cvL8copyElemEPKhPhm.exit.us
  br i1 %i.al, label %.lr.ph.us, label %._crit_edge70

.lr.ph.us:                                        ; preds = %._crit_edge.us
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !99
  %.not109 = icmp sgt i32 %i.i, %i.fm
  br label %bb.h

_ZNK2cv8MatShapeixEm.exit.split:                  ; preds = %_ZNK2cv8MatShapeixEm.exit
  br i1 %i.al, label %.lr.ph.lr.ph, label %._crit_edge70

.lr.ph.lr.ph:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit.split
  %i.fn = zext nneg i32 %i.ak to i64              ; 2 uses
  %.not = icmp sgt i32 %i.i, %i.k
  br label %.lr.ph.us73

.lr.ph.us73:                                      ; preds = %.lr.ph.us73.backedge, %.lr.ph.lr.ph
  %indvars.iv = phi i64 [ %i.fn, %.lr.ph.lr.ph ], [ %indvars.iv.be, %.lr.ph.us73.backedge ] ; 4 uses
  br i1 %.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us76

_ZNK2cv8MatShapeixEm.exit51.us76:                 ; preds = %.lr.ph.us73
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !27
  %i.fq = add nsw i32 %i.fp, 1                    ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !27
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !27
  %i.ft = icmp slt i32 %i.fq, %i.fs
  br i1 %i.ft, label %.lr.ph.us73.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us76
  store i32 0, ptr %i.fo, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fu = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fu, label %.lr.ph.us73.backedge, label %._crit_edge70

.lr.ph.us73.backedge:                             ; preds = %bb.j, %_ZNK2cv8MatShapeixEm.exit51.us76
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.fn, %_ZNK2cv8MatShapeixEm.exit51.us76 ]
  br label %.lr.ph.us73, !llvm.loop !97

.split.us:                                        ; preds = %.lr.ph.us73, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 103) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.split.us
  unreachable

bb.l:                                             ; preds = %.split.us
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.l
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

._crit_edge70:                                    ; preds = %bb.j, %._crit_edge.us, %bb.i, %_ZNK2cv8MatShapeixEm.exit.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv9SparseMat7newNodeEPKim, ptr noundef nonnull @.str.1, i32 noundef 649) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !46
  %i.u = mul nsw i64 %i.q, 3
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = ashr exact i64 %i.p, 2
  %.sroa.speculated61 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 8)
  tail call void @_ZN2cv9SparseMat13resizeHashTabEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.sroa.speculated61)
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  br label %bb.g
end_hunk_0
begin_hunk_1_@_ZNK2cv9SparseMat6copyToERNS_3MatE:bb.a
  %i.bd = icmp ult i32 %i.ba, 4
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.lr.ph.i.us
  %unroll_iter184 = and i64 %wide.trip.count.i.us, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.us.new
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us.new ], [ %indvars.iv.next.i.us.3, %bb.i ] ; 6 uses
  %.010.i.us = phi ptr [ %i.bb, %.lr.ph.i.us.new ], [ %i.cf, %bb.i ]
  %niter185 = phi i64 [ 0, %.lr.ph.i.us.new ], [ %niter185.next.3, %bb.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !27
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !63
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.us, i64 %i.bj
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i.us
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !63
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bq
  %indvars.iv.next.i.us.1 = or disjoint i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i.us.1
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !27
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.us.1
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !63
  %i.bx = mul i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bx
  %indvars.iv.next.i.us.2 = or disjoint i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i.us.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !27
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.us.2
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !63
  %i.ce = mul i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ce ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa, label %bb.i, !llvm.loop !1

_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa:    ; preds = %bb.i
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod181.not, label %_ZN2cv3Mat3ptrEPKi.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa, %.lr.ph.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.3, %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa ]
  %.010.i.us.epil.init = phi ptr [ %i.bb, %.lr.ph.i.us ], [ %i.cf, %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter179, 0
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.us.epil, %bb.j ] ; 3 uses
  %.010.i.us.epil = phi ptr [ %.010.i.us.epil.init, %.epil.preheader ], [ %i.cm, %bb.j ]
  %epil.iter180 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter180.next, %bb.j ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.us.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.us.epil
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !63
  %i.cl = mul i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.us.epil, i64 %i.cl ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %_ZN2cv3Mat3ptrEPKi.exit.us, label %bb.j, !llvm.loop !113

_ZN2cv3Mat3ptrEPKi.exit.us:                       ; preds = %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa, %bb.j, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us
  %i.cn = phi ptr [ %i.bb, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us ], [ %i.cf, %_ZN2cv3Mat3ptrEPKi.exit.us.loopexit.unr-lcssa ], [ %i.cm, %bb.j ] ; 10 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 2 uses
  br i1 %.not14.i, label %.preheader.i.us, label %.lr.ph.i19.us.preheader

.lr.ph.i19.us.preheader:                          ; preds = %_ZN2cv3Mat3ptrEPKi.exit.us
  %i.cp = sub i64 %i.ap, %i.co
  %diff.check154 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check156, i1 true, i1 %diff.check154
  br i1 %or.cond, label %.lr.ph.i19.us.preheader169, label %vector.body159

vector.body159:                                   ; preds = %.lr.ph.i19.us.preheader, %vector.body159
  %index160 = phi i64 [ %index.next163, %vector.body159 ], [ 0, %.lr.ph.i19.us.preheader ] ; 2 uses
  %i.cq = shl i64 %index160, 2                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load161 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !27
  %wide.load162 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load161, ptr %i.ct, align 4, !tbaa !27
  store <4 x i32> %wide.load162, ptr %i.cu, align 4, !tbaa !27
  %index.next163 = add nuw i64 %index160, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.cv, label %middle.block164, label %vector.body159, !llvm.loop !114

middle.block164:                                  ; preds = %vector.body159
  br i1 %cmp.n165, label %.preheader.i.us, label %.lr.ph.i19.us.preheader169

.lr.ph.i19.us.preheader169:                       ; preds = %.lr.ph.i19.us.preheader, %middle.block164
  %.ph = phi i64 [ 4, %.lr.ph.i19.us.preheader ], [ %i.an, %middle.block164 ]
  %.015.i.us.ph = phi i64 [ 0, %.lr.ph.i19.us.preheader ], [ %i.am, %middle.block164 ]
  br label %.lr.ph.i19.us

.lr.ph.i19.us:                                    ; preds = %.lr.ph.i19.us.preheader169, %.lr.ph.i19.us
  %i.cw = phi i64 [ %i.da, %.lr.ph.i19.us ], [ %.ph, %.lr.ph.i19.us.preheader169 ] ; 3 uses
  %.015.i.us = phi i64 [ %i.cw, %.lr.ph.i19.us ], [ %.015.i.us.ph, %.lr.ph.i19.us.preheader169 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.015.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.015.i.us
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !27
  %i.da = add nuw nsw i64 %i.cw, 4                ; 2 uses
  %.not.i20.us = icmp samesign ugt i64 %i.da, %i.ad
  br i1 %.not.i20.us, label %.preheader.i.us, label %.lr.ph.i19.us, !llvm.loop !115

.preheader.i.us:                                  ; preds = %.lr.ph.i19.us, %middle.block164, %_ZN2cv3Mat3ptrEPKi.exit.us
  %.0.lcssa.i21.us = phi i64 [ 0, %_ZN2cv3Mat3ptrEPKi.exit.us ], [ %i.am, %middle.block164 ], [ %i.cw, %.lr.ph.i19.us ] ; 7 uses
  %i.db = icmp samesign ult i64 %.0.lcssa.i21.us, %i.ad
  br i1 %i.db, label %iter.check140, label %_ZN2cvL8copyElemEPKhPhm.exit.us

iter.check140:                                    ; preds = %.preheader.i.us
  %i.dc = sub nuw i64 %i.ad, %.0.lcssa.i21.us     ; 7 uses
  %min.iters.check126 = icmp samesign ult i64 %i.dc, 8
  %i.dd = sub i64 %i.ap, %i.co
  %diff.check124 = icmp ugt i64 %i.dd, -32
  %or.cond168 = select i1 %min.iters.check126, i1 true, i1 %diff.check124
  br i1 %or.cond168, label %.lr.ph17.i.us.preheader, label %vector.main.loop.iter.check127

vector.main.loop.iter.check127:                   ; preds = %iter.check140
  %min.iters.check128 = icmp samesign ult i64 %i.dc, 32
  br i1 %min.iters.check128, label %vec.epilog.ph144, label %vector.ph129

vector.ph129:                                     ; preds = %vector.main.loop.iter.check127
  %i.de = and i64 %i.dc, 24
  %n.vec130 = and i64 %i.dc, 4064                 ; 4 uses
  %i.df = add i64 %.0.lcssa.i21.us, %n.vec130
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph129, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %i.dg = add nuw i64 %.0.lcssa.i21.us, %index132 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load133 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !45
  %wide.load134 = load <16 x i8>, ptr %i.di, align 1, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load133, ptr %i.dj, align 1, !tbaa !45
  store <16 x i8> %wide.load134, ptr %i.dk, align 1, !tbaa !45
  %index.next135 = add nuw i64 %index132, 32      ; 2 uses
  %i.dl = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.dl, label %middle.block136, label %vector.body131, !llvm.loop !116

middle.block136:                                  ; preds = %vector.body131
  %cmp.n137 = icmp eq i64 %i.dc, %n.vec130
  br i1 %cmp.n137, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %vec.epilog.iter.check142

vec.epilog.iter.check142:                         ; preds = %middle.block136
  %min.epilog.iters.check143 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check143, label %.lr.ph17.i.us.preheader, label %vec.epilog.ph144, !prof !62

vec.epilog.ph144:                                 ; preds = %vector.main.loop.iter.check127, %vec.epilog.iter.check142
  %vec.epilog.resume.val138 = phi i64 [ %n.vec130, %vec.epilog.iter.check142 ], [ 0, %vector.main.loop.iter.check127 ]
  %n.vec145 = and i64 %i.dc, 4088                 ; 3 uses
  %i.dm = add i64 %.0.lcssa.i21.us, %n.vec145
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph144
  %index147 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph144 ], [ %index.next149, %vec.epilog.vector.body146 ] ; 2 uses
  %i.dn = add nuw i64 %.0.lcssa.i21.us, %index147 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dn
  %wide.load148 = load <8 x i8>, ptr %i.do, align 1, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dn
  store <8 x i8> %wide.load148, ptr %i.dp, align 1, !tbaa !45
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next149, %n.vec145
  br i1 %i.dq, label %vec.epilog.middle.block150, label %vec.epilog.vector.body146, !llvm.loop !117

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body146
  %cmp.n151 = icmp eq i64 %i.dc, %n.vec145
  br i1 %cmp.n151, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us.preheader

.lr.ph17.i.us.preheader:                          ; preds = %iter.check140, %vec.epilog.iter.check142, %vec.epilog.middle.block150
  %.116.i.us.ph = phi i64 [ %.0.lcssa.i21.us, %iter.check140 ], [ %i.df, %vec.epilog.iter.check142 ], [ %i.dm, %vec.epilog.middle.block150 ] ; 4 uses
  %i.dr = sub i64 %i.ad, %.116.i.us.ph
  %xtraiter186 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol

.lr.ph17.i.us.prol:                               ; preds = %.lr.ph17.i.us.preheader, %.lr.ph17.i.us.prol
  %.116.i.us.prol = phi i64 [ %i.dv, %.lr.ph17.i.us.prol ], [ %.116.i.us.ph, %.lr.ph17.i.us.preheader ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph17.i.us.prol ], [ 0, %.lr.ph17.i.us.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.116.i.us.prol
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i.us.prol
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !45
  %i.dv = add nuw nsw i64 %.116.i.us.prol, 1      ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol, !llvm.loop !118

.lr.ph17.i.us.prol.loopexit:                      ; preds = %.lr.ph17.i.us.prol, %.lr.ph17.i.us.preheader
  %.116.i.us.unr = phi i64 [ %.116.i.us.ph, %.lr.ph17.i.us.preheader ], [ %i.dv, %.lr.ph17.i.us.prol ]
  %i.dw = sub i64 %.116.i.us.ph, %i.ad
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us

.lr.ph17.i.us:                                    ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us
  %.116.i.us = phi i64 [ %i.en, %.lr.ph17.i.us ], [ %.116.i.us.unr, %.lr.ph17.i.us.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.116.i.us
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i.us
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !45
  %i.eb = add nuw nsw i64 %.116.i.us, 1           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !45
  %i.ef = add nuw nsw i64 %.116.i.us, 2           ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !45
  %i.ej = add nuw nsw i64 %.116.i.us, 3           ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !45
  %i.en = add nuw nsw i64 %.116.i.us, 4           ; 2 uses
  %exitcond.not.i22.us.3 = icmp eq i64 %i.en, %i.ad
  br i1 %exitcond.not.i22.us.3, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us, !llvm.loop !119

_ZN2cvL8copyElemEPKhPhm.exit.us:                  ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us, %middle.block136, %vec.epilog.middle.block150, %.preheader.i.us
  %i.eo = add nuw i64 %.024.us, 1                 ; 2 uses
  %i.ep = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %exitcond49.not = icmp eq i64 %i.eo, %i.r
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !120

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not14.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.eq = add nsw i64 %i.ad, -4
  %i.er = add nsw i64 %i.ad, -4                   ; 3 uses
  %i.es = and i64 %i.er, -4
  %i.et = sub nsw i64 %i.eq, %i.es                ; 7 uses
  %i.eu = lshr i64 %i.er, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check83 = icmp ult i64 %i.er, 28
  %n.vec85 = and i64 %i.ev, 9223372036854775800   ; 3 uses
  %i.ew = shl i64 %n.vec85, 2                     ; 3 uses
  %i.ex = or disjoint i64 %i.ew, 4
  %cmp.n92 = icmp eq i64 %i.ev, %n.vec85
  %min.iters.check = icmp ult i64 %i.et, 8
  %min.iters.check73 = icmp ult i64 %i.et, 32
  %i.ey = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 4 uses
  %cmp.n = icmp eq i64 %i.et, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  %n.vec75 = and i64 %i.et, -8                    ; 3 uses
  %cmp.n79 = icmp eq i64 %i.et, %n.vec75
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not39 = icmp eq i32 %i.ab, 0
  br i1 %.not39, label %.lr.ph.split.split.us.split, label %iter.check110

iter.check110:                                    ; preds = %.lr.ph.split.split.us, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us36.us
  %.024.us25.us = phi i64 [ %i.ft, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us36.us ], [ 0, %.lr.ph.split.split.us ]
  %i.ez = load ptr, ptr %i.ae, align 8, !tbaa !50, !nonnull !70, !noundef !70 ; 2 uses
  %i.fa = load ptr, ptr %5, align 8, !tbaa !51, !nonnull !70, !noundef !70
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !41, !nonnull !70, !noundef !70
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !25
  %i.ff = sext i32 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %i.ez, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !27
  %i.fk = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.fl = load i64, ptr %i.ah, align 8, !tbaa !63
  %i.fm = sext i32 %i.fj to i64
  %i.fn = mul i64 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fn
  br label %.lr.ph17.i.us33.us.epil

.lr.ph17.i.us33.us.epil:                          ; preds = %.lr.ph17.i.us33.us.epil, %iter.check110
  %.116.i.us34.us.epil = phi i64 [ %i.fs, %.lr.ph17.i.us33.us.epil ], [ 0, %iter.check110 ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph17.i.us33.us.epil ], [ 0, %iter.check110 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.116.i.us34.us.epil
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.116.i.us34.us.epil
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !45
  %i.fs = add nuw nsw i64 %.116.i.us34.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ad
  br i1 %epil.iter.cmp.not, label %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us36.us, label %.lr.ph17.i.us33.us.epil, !llvm.loop !121

_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us36.us:    ; preds = %.lr.ph17.i.us33.us.epil
  %i.ft = add nuw i64 %.024.us25.us, 1            ; 2 uses
  %i.fu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %exitcond46.not = icmp eq i64 %i.ft, %i.r
  br i1 %exitcond46.not, label %._crit_edge, label %iter.check110, !llvm.loop !120

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us.split
  %.024.us25 = phi i64 [ %i.fv, %.lr.ph.split.split.us.split ], [ 0, %.lr.ph.split.split.us ]
  %i.fv = add nuw i64 %.024.us25, 1               ; 2 uses
  %i.fw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %exitcond47.not = icmp eq i64 %i.fv, %i.r
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph.split.split.us.split, !llvm.loop !120

._crit_edge:                                      ; preds = %_ZN2cvL8copyElemEPKhPhm.exit, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us36.us, %.lr.ph.split.split.us.split, %_ZN2cvL8copyElemEPKhPhm.exit.us, %_ZNK2cv9SparseMat7nzcountEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_ZN2cvL8copyElemEPKhPhm.exit
  %.024 = phi i64 [ %i.io, %_ZN2cvL8copyElemEPKhPhm.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.fx = load ptr, ptr %i.ae, align 8, !tbaa !50, !nonnull !70, !noundef !70 ; 11 uses
  %i.fy = ptrtoaddr ptr %i.fx to i64              ; 2 uses
  %i.fz = load ptr, ptr %5, align 8, !tbaa !51, !nonnull !70, !noundef !70
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !41, !nonnull !70, !noundef !70
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !25
  %i.ge = sext i32 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.fx, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !27
  %i.gj = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.gk = ptrtoaddr ptr %i.gj to i64              ; 2 uses
  %i.gl = load i64, ptr %i.ah, align 8, !tbaa !63
  %i.gm = sext i32 %i.gi to i64
  %i.gn = mul i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gn ; 9 uses
  br i1 %min.iters.check83, label %.lr.ph.i19.preheader, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.split.split
  %i.gp = add i64 %i.gn, %i.gk
  %i.gq = sub i64 %i.fy, %i.gp
  %diff.check82 = icmp ugt i64 %i.gq, -32
  br i1 %diff.check82, label %.lr.ph.i19.preheader, label %vector.body86

vector.body86:                                    ; preds = %vector.memcheck81, %vector.body86
  %index87 = phi i64 [ %index.next90, %vector.body86 ], [ 0, %vector.memcheck81 ] ; 2 uses
  %i.gr = shl i64 %index87, 2                     ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load88 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !27
  %wide.load89 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> %wide.load88, ptr %i.gu, align 4, !tbaa !27
  store <4 x i32> %wide.load89, ptr %i.gv, align 4, !tbaa !27
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.gw = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.gw, label %middle.block91, label %vector.body86, !llvm.loop !122

middle.block91:                                   ; preds = %vector.body86
  br i1 %cmp.n92, label %.preheader.i.loopexit, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %vector.memcheck81, %.lr.ph.split.split, %middle.block91
  %.ph173 = phi i64 [ 4, %vector.memcheck81 ], [ 4, %.lr.ph.split.split ], [ %i.ex, %middle.block91 ]
  %.015.i.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.lr.ph.split.split ], [ %i.ew, %middle.block91 ]
  br label %.lr.ph.i19

.preheader.i.loopexit:                            ; preds = %.lr.ph.i19, %middle.block91
  %.lcssa72 = phi i64 [ %i.ew, %middle.block91 ], [ %i.ht, %.lr.ph.i19 ] ; 7 uses
  %i.gx = icmp samesign ult i64 %.lcssa72, %i.ad
  br i1 %i.gx, label %iter.check, label %_ZN2cvL8copyElemEPKhPhm.exit

iter.check:                                       ; preds = %.preheader.i.loopexit
  br i1 %min.iters.check, label %.lr.ph17.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gy = add i64 %i.gn, %i.gk
  %i.gz = sub i64 %i.fy, %i.gy
  %diff.check = icmp ugt i64 %i.gz, -32
  br i1 %diff.check, label %.lr.ph17.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ha = add i64 %.lcssa72, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hb = add nuw i64 %.lcssa72, %index           ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load = load <16 x i8>, ptr %i.hc, align 1, !tbaa !45
  %wide.load74 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !45
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hb ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load, ptr %i.he, align 1, !tbaa !45
  store <16 x i8> %wide.load74, ptr %i.hf, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hh = add i64 %.lcssa72, %n.vec75
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %i.hi = add nuw i64 %.lcssa72, %index76         ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hi
  %wide.load77 = load <8 x i8>, ptr %i.hj, align 1, !tbaa !45
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hi
  store <8 x i8> %wide.load77, ptr %i.hk, align 1, !tbaa !45
  %index.next78 = add nuw i64 %index76, 8         ; 2 uses
  %i.hl = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n79, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i.preheader

.lr.ph17.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_1

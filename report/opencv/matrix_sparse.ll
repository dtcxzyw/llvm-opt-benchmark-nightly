Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_sparse?download=true
inline.NumInlined: 675
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK2cv9SparseMat4hashEii:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK2cv9SparseMat4hashEiii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = mul nuw nsw i64 %i.a, 1540483477
  %i.c = zext i32 %2 to i64
  %i.d = add nuw nsw i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 1540483477
  %i.f = zext i32 %3 to i64
  %i.g = add i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK2cv9SparseMat4hashEPKi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !27
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.h = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
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
  %i.at = shl i64 %n.vec143, 2                    ; 2 uses
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
  %i.bb = add i64 %.116.i.us, 1                   ; 2 uses
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
  %i.cq = shl nuw i64 %index145, 2                ; 2 uses
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
  br label %.lr.ph.i41.us

.lr.ph.i41.us:                                    ; preds = %.lr.ph.i41.us.preheader153, %.lr.ph.i41.us
  %i.cw = phi i64 [ %i.da, %.lr.ph.i41.us ], [ %.ph, %.lr.ph.i41.us.preheader153 ] ; 3 uses
  %.01518.i.us = add nsw i64 %i.cw, -4            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.01518.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.01518.i.us
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

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  %i.dv = add nuw i64 %.116.i44.us.prol, 1        ; 2 uses
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
  %i.eb = add nuw i64 %.116.i44.us, 1             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !45
  %i.ef = add nuw i64 %.116.i44.us, 2             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !45
  %i.ej = add nuw i64 %.116.i44.us, 3             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !45
  %i.en = add nuw i64 %.116.i44.us, 4             ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN2cv9SparseMat5clearEv:bb.a

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.t = getelementptr i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  store ptr %i.t, ptr %i.e, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.u = icmp samesign ult i64 %i.r, 8
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 8)
  %i.v = add nuw nsw i64 %.sroa.speculated.i.i, %i.k
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975) ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.j ; 2 uses
  %i.aa = icmp sgt i64 %i.j, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.d, i64 %i.j, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.f, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.d, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.y, ptr %i.c, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.l, align 8, !tbaa !34
  br label %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit

_ZNSt6vectorImSaImEE17_M_default_appendEm.exit:   ; preds = %bb.c, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %.not.i.i3.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !36
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN2cv9SparseMat3Hdr5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.al)
  br label %_ZN2cv9SparseMat3Hdr5clearEv.exit

_ZN2cv9SparseMat3Hdr5clearEv.exit:                ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN2cv9SparseMat3Hdr5clearEv.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv9SparseMat6copyToERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::SparseMatConstIterator", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN2cv9SparseMat7releaseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 8
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN2cv9SparseMat7releaseEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !41   ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2cv9SparseMat7releaseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i.i, label %_ZN2cv9SparseMat3HdrD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZN2cv9SparseMat3HdrD2Ev.exit.i

_ZN2cv9SparseMat3HdrD2Ev.exit.i:                  ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 216) #23
  br label %_ZN2cv9SparseMat7releaseEv.exit

_ZN2cv9SparseMat7releaseEv.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %_ZN2cv9SparseMat3HdrD2Ev.exit.i
  store ptr null, ptr %i.c, align 8, !tbaa !41
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aa = load i32, ptr %0, align 8, !tbaa !40
  %i.ab = and i32 %i.aa, 4095
  tail call void @_ZN2cv9SparseMat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN2cv22SparseMatConstIteratorC1EPKNS_9SparseMatE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %_ZNK2cv9SparseMat7nzcountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46
  br label %_ZNK2cv9SparseMat7nzcountEv.exit

_ZNK2cv9SparseMat7nzcountEv.exit:                 ; preds = %bb.i, %bb.j
  %i.af = phi i64 [ %i.ae, %bb.j ], [ 0, %bb.i ]  ; 4 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ah = lshr i32 %i.ag, 5
  %i.ai = and i32 %i.ah, 127
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = shl i32 %i.ag, 2
  %i.al = and i32 %i.ak, 124
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 1275511473185297, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 15
  %i.aq = mul nuw nsw i32 %i.ap, %i.aj
  %.fr17 = freeze i32 %i.aq                       ; 5 uses
  %i.ar = zext i32 %.fr17 to i64                  ; 7 uses
  %.not16 = icmp eq i64 %i.af, 0
  br i1 %.not16, label %._crit_edge, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph: ; preds = %_ZNK2cv9SparseMat7nzcountEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not14.i = icmp ult i32 %.fr17, 4
  br i1 %.not14.i, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph.split.us, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.preheader

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.preheader: ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph
  %i.at = add nsw i64 %i.ar, -4
  %i.au = add nsw i64 %i.ar, -4                   ; 3 uses
  %i.av = and i64 %i.au, -4
  %i.aw = sub nsw i64 %i.at, %i.av                ; 7 uses
  %i.ax = lshr i64 %i.au, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check48 = icmp ult i64 %i.au, 28
  %n.vec50 = and i64 %i.ay, 9223372036854775800   ; 3 uses
  %i.az = shl i64 %n.vec50, 2                     ; 2 uses
  %i.ba = or disjoint i64 %i.az, 4
  %cmp.n57 = icmp eq i64 %i.ay, %n.vec50
  %min.iters.check = icmp ult i64 %i.aw, 8
  %min.iters.check38 = icmp ult i64 %i.aw, 32
  %i.bb = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  %n.vec40 = and i64 %i.aw, -8                    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.aw, %n.vec40
  br label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph.split.us: ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph
  %.not18 = icmp eq i32 %.fr17, 0
  br i1 %.not18, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us.preheader

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us.preheader: ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph.split.us
  %exitcond.not.i.us.us = icmp eq i32 %.fr17, 1
  %exitcond.not.i.us.us.1 = icmp eq i32 %.fr17, 2
  br label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us: ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us.preheader, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us
  %.015.us.us = phi i64 [ %i.bw, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us ], [ 0, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us.preheader ]
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !50, !nonnull !70, !noundef !70
  %i.bd = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !70, !noundef !70
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41, !nonnull !70, !noundef !70
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !53
  %i.bn = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bl, i64 noundef %i.bm) ; 3 uses
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !50 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !45
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !45
  br i1 %exitcond.not.i.us.us, label %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us, label %.lr.ph17.i.us.us.1

.lr.ph17.i.us.us.1:                               ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !45
  br i1 %exitcond.not.i.us.us.1, label %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us, label %.lr.ph17.i.us.us.2

.lr.ph17.i.us.us.2:                               ; preds = %.lr.ph17.i.us.us.1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !45
  br label %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us

_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us:      ; preds = %.lr.ph17.i.us.us.2, %.lr.ph17.i.us.us.1, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us
  %i.bw = add nuw i64 %.015.us.us, 1              ; 2 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %exitcond22.not = icmp eq i64 %i.bw, %i.af
  br i1 %exitcond22.not, label %._crit_edge, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us.us, !llvm.loop !106

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us:   ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph.split.us, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us
  %.015.us = phi i64 [ %i.ck, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us ], [ 0, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.lr.ph.split.us ]
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !50, !nonnull !70, !noundef !70
  %i.bz = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !70, !noundef !70
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41, !nonnull !70, !noundef !70
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !25
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !53
  %i.cj = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ch, i64 noundef %i.ci) ; 0 uses
  %i.ck = add nuw i64 %.015.us, 1                 ; 2 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %exitcond23.not = icmp eq i64 %i.ck, %i.af
  br i1 %exitcond23.not, label %._crit_edge, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, !llvm.loop !106

._crit_edge:                                      ; preds = %_ZN2cvL8copyElemEPKhPhm.exit, %_ZN2cvL8copyElemEPKhPhm.exit.loopexit.us.us, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, %_ZNK2cv9SparseMat7nzcountEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

_ZNK2cv22SparseMatConstIterator4nodeEv.exit:      ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.preheader, %_ZN2cvL8copyElemEPKhPhm.exit
  %.015 = phi i64 [ %i.ey, %_ZN2cvL8copyElemEPKhPhm.exit ], [ 0, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.preheader ]
  %i.cm = load ptr, ptr %i.as, align 8, !tbaa !50, !nonnull !70, !noundef !70
  %i.cn = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !70, !noundef !70
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !41, !nonnull !70, !noundef !70
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !25
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cm, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !53
  %i.cx = call noundef ptr @_ZN2cv9SparseMat7newNodeEPKim(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cv, i64 noundef %i.cw) ; 10 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64              ; 2 uses
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !50 ; 10 uses
  %i.da = ptrtoaddr ptr %i.cz to i64              ; 2 uses
  %i.db = sub i64 %i.da, %i.cy
  %diff.check47 = icmp ugt i64 %i.db, -32
  %or.cond = select i1 %min.iters.check48, i1 true, i1 %diff.check47
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.body51

vector.body51:                                    ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit, %vector.body51
  %index52 = phi i64 [ %index.next55, %vector.body51 ], [ 0, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit ] ; 2 uses
  %i.dc = shl nuw i64 %index52, 2                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load53 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !27
  %wide.load54 = load <4 x i32>, ptr %i.de, align 4, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %wide.load53, ptr %i.df, align 4, !tbaa !27
  store <4 x i32> %wide.load54, ptr %i.dg, align 4, !tbaa !27
  %index.next55 = add nuw i64 %index52, 8         ; 2 uses
  %i.dh = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.dh, label %middle.block56, label %vector.body51, !llvm.loop !107

middle.block56:                                   ; preds = %vector.body51
  br i1 %cmp.n57, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit, %middle.block56
  %.ph = phi i64 [ 4, %_ZNK2cv22SparseMatConstIterator4nodeEv.exit ], [ %i.ba, %middle.block56 ]
  br label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i, %middle.block56
  %.lcssa = phi i64 [ %i.az, %middle.block56 ], [ %i.ed, %.lr.ph.i ] ; 6 uses
  %i.di = icmp samesign ult i64 %.lcssa, %i.ar
  br i1 %i.di, label %iter.check, label %_ZN2cvL8copyElemEPKhPhm.exit

iter.check:                                       ; preds = %.preheader.i.loopexit
  %i.dj = sub i64 %i.da, %i.cy
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond59 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond59, label %.lr.ph17.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dk = add i64 %.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add nuw i64 %.lcssa, %index             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <16 x i8>, ptr %i.dm, align 1, !tbaa !45
  %wide.load39 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !45
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <16 x i8> %wide.load, ptr %i.do, align 1, !tbaa !45
  store <16 x i8> %wide.load39, ptr %i.dp, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dr = add i64 %.lcssa, %n.vec40
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.ds = add nuw i64 %.lcssa, %index41           ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ds
  %wide.load42 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ds
  store <8 x i8> %wide.load42, ptr %i.du, align 1, !tbaa !45
  %index.next43 = add nuw i64 %index41, 8         ; 2 uses
  %i.dv = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n44, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i.preheader

.lr.ph17.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i.ph = phi i64 [ %.lcssa, %iter.check ], [ %i.dk, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ] ; 4 uses
  %i.dw = sub i64 %i.ar, %.116.i.ph
  %xtraiter = and i64 %i.dw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol

.lr.ph17.i.prol:                                  ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i.prol
  %.116.i.prol = phi i64 [ %i.ea, %.lr.ph17.i.prol ], [ %.116.i.ph, %.lr.ph17.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.prol ], [ 0, %.lr.ph17.i.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.116.i.prol
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !45
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.116.i.prol
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !45
  %i.ea = add nuw i64 %.116.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol, !llvm.loop !110

.lr.ph17.i.prol.loopexit:                         ; preds = %.lr.ph17.i.prol, %.lr.ph17.i.preheader
  %.116.i.unr = phi i64 [ %.116.i.ph, %.lr.ph17.i.preheader ], [ %i.ea, %.lr.ph17.i.prol ]
  %i.eb = sub i64 %.116.i.ph, %i.ar
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ed = phi i64 [ %i.eh, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.01518.i = add nsw i64 %i.ed, -4               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.01518.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.01518.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !27
  %i.eh = add nuw nsw i64 %i.ed, 4                ; 2 uses
  %.not.i14 = icmp samesign ugt i64 %i.eh, %i.ar
  br i1 %.not.i14, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !111

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i
  %.116.i = phi i64 [ %i.ex, %.lr.ph17.i ], [ %.116.i.unr, %.lr.ph17.i.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.116.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.116.i
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !45
  %i.el = add nuw i64 %.116.i, 1                  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !45
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.el
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !45
  %i.ep = add nuw i64 %.116.i, 2                  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1, !tbaa !45
  %i.et = add nuw i64 %.116.i, 3                  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !45
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !45
  %i.ex = add nuw i64 %.116.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ex, %i.ar
  br i1 %exitcond.not.i.3, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i, !llvm.loop !112

_ZN2cvL8copyElemEPKhPhm.exit:                     ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.loopexit
  %i.ey = add nuw i64 %.015, 1                    ; 2 uses
  %i.ez = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit, !llvm.loop !106

bb.k:                                             ; preds = %bb.a, %._crit_edge, %_ZN2cv9SparseMat7releaseEv.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv9SparseMat6copyToERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %5 = alloca %"class.cv::SparseMatConstIterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNK2cv9SparseMat4dimsEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv9SparseMat6copyToERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 358) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.c

_ZNK2cv9SparseMat4dimsEv.exit:                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.l = load i32, ptr %0, align 8, !tbaa !40
  %i.m = and i32 %i.l, 4095
  tail call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.j, ptr noundef nonnull %i.k, i32 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.n = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN2cv22SparseMatConstIteratorC1EPKNS_9SparseMatE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i17 = icmp eq ptr %i.o, null
  br i1 %.not.i17, label %_ZNK2cv9SparseMat7nzcountEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2cv9SparseMat4dimsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  br label %_ZNK2cv9SparseMat7nzcountEv.exit

_ZNK2cv9SparseMat7nzcountEv.exit:                 ; preds = %_ZNK2cv9SparseMat4dimsEv.exit, %bb.e
  %i.r = phi i64 [ %i.q, %bb.e ], [ 0, %_ZNK2cv9SparseMat4dimsEv.exit ] ; 5 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = and i32 %i.t, 127
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = shl i32 %i.s, 2
  %i.x = and i32 %i.w, 124
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 1275511473185297, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 15                       ; 2 uses
  %i.ac = mul nuw nsw i32 %i.ab, %i.v             ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 15 uses
  %.not38 = icmp eq i64 %i.r, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2cv9SparseMat7nzcountEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.af = icmp sgt i32 %i.j, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not14.i = icmp samesign ult i32 %i.ac, 4      ; 2 uses
  br i1 %i.af, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.aj = add nsw i64 %i.ad, -4                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.aj, 28
  %n.vec158 = and i64 %i.al, 9223372036854775800  ; 3 uses
  %i.am = shl i64 %n.vec158, 2                    ; 2 uses
  %i.an = or disjoint i64 %i.am, 4
  %cmp.n165 = icmp eq i64 %i.al, %n.vec158
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN2cvL8copyElemEPKhPhm.exit.us
  %.024.us = phi i64 [ %i.eo, %_ZN2cvL8copyElemEPKhPhm.exit.us ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 12 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %.not.i18.us = icmp eq ptr %i.ao, null
  br i1 %.not.i18.us, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.aq = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %.not3.i.us = icmp eq ptr %i.aq, null
  br i1 %.not3.i.us, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %.not4.i.us = icmp eq ptr %i.as, null
  br i1 %.not4.i.us, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 %i.aw
  br label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us

_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us:   ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.split.us
  %i.ay = phi ptr [ %i.ax, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %.lr.ph.split.us ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.ba = load i32, ptr %i.ai, align 4, !tbaa !60 ; 3 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 3 uses
  %i.bc = icmp sgt i32 %i.ba, 0
  br i1 %i.bc, label %.lr.ph.i.us, label %_ZN2cv3Mat3ptrEPKi.exit.us

.lr.ph.i.us:                                      ; preds = %_ZNK2cv22SparseMatConstIterator4nodeEv.exit.us
  %wide.trip.count.i.us = zext nneg i32 %i.ba to i64 ; 2 uses
  %xtraiter179 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
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
  %i.cq = shl nuw i64 %index160, 2                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load161.a = load <4 x i32>, ptr %i.cr, align 4, !tbaa !27
  %wide.load162 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load161.a, ptr %i.ct, align 4, !tbaa !27
  store <4 x i32> %wide.load162, ptr %i.cu, align 4, !tbaa !27
  %index.next163 = add nuw i64 %index160, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.cv, label %middle.block164, label %vector.body159, !llvm.loop !114

middle.block164:                                  ; preds = %vector.body159
  br i1 %cmp.n165, label %.preheader.i.us, label %.lr.ph.i19.us.preheader169

.lr.ph.i19.us.preheader169:                       ; preds = %.lr.ph.i19.us.preheader, %middle.block164
  %.ph = phi i64 [ 4, %.lr.ph.i19.us.preheader ], [ %i.an, %middle.block164 ]
  br label %.lr.ph.i19.us

.lr.ph.i19.us:                                    ; preds = %.lr.ph.i19.us.preheader169, %.lr.ph.i19.us
  %i.cw = phi i64 [ %i.da, %.lr.ph.i19.us ], [ %.ph, %.lr.ph.i19.us.preheader169 ] ; 3 uses
  %.01518.i.us = add nsw i64 %i.cw, -4            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.01518.i.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.01518.i.us
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

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %i.dg = add nuw i64 %.0.lcssa.i21.us, %index132 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load133.a = load <16 x i8>, ptr %i.dh, align 1, !tbaa !45
  %wide.load134 = load <16 x i8>, ptr %i.di, align 1, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dg ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load133.a, ptr %i.dj, align 1, !tbaa !45
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
  %i.dv = add nuw i64 %.116.i.us.prol, 1          ; 2 uses
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
  %i.eb = add nuw i64 %.116.i.us, 1               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !45
  %i.ef = add nuw i64 %.116.i.us, 2               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !45
  %i.ej = add nuw i64 %.116.i.us, 3               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !45
  %i.en = add nuw i64 %.116.i.us, 4               ; 2 uses
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
  %i.ew = shl i64 %n.vec85, 2                     ; 2 uses
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
  %i.gr = shl nuw i64 %index87, 2                 ; 2 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
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

.lr.ph17.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i.ph = phi i64 [ %.lcssa72, %iter.check ], [ %.lcssa72, %vector.memcheck ], [ %i.ha, %vec.epilog.iter.check ], [ %i.hh, %vec.epilog.middle.block ] ; 4 uses
  %i.hm = sub i64 %i.ad, %.116.i.ph
  %xtraiter = and i64 %i.hm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol

.lr.ph17.i.prol:                                  ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i.prol
  %.116.i.prol = phi i64 [ %i.hq, %.lr.ph17.i.prol ], [ %.116.i.ph, %.lr.ph17.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.prol ], [ 0, %.lr.ph17.i.preheader ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.116.i.prol
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !45
  %i.hp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.116.i.prol
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !45
  %i.hq = add nuw i64 %.116.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.prol.loopexit, label %.lr.ph17.i.prol, !llvm.loop !125

.lr.ph17.i.prol.loopexit:                         ; preds = %.lr.ph17.i.prol, %.lr.ph17.i.preheader
  %.116.i.unr = phi i64 [ %.116.i.ph, %.lr.ph17.i.preheader ], [ %i.hq, %.lr.ph17.i.prol ]
  %i.hr = sub i64 %.116.i.ph, %i.ad
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.preheader, %.lr.ph.i19
  %i.ht = phi i64 [ %i.hx, %.lr.ph.i19 ], [ %.ph173, %.lr.ph.i19.preheader ] ; 3 uses
  %.01518.i = add nsw i64 %i.ht, -4               ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.01518.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.go, i64 %.01518.i
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !27
  %i.hx = add nuw nsw i64 %i.ht, 4                ; 2 uses
  %.not.i20 = icmp samesign ugt i64 %i.hx, %i.ad
  br i1 %.not.i20, label %.preheader.i.loopexit, label %.lr.ph.i19, !llvm.loop !126

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i
  %.116.i = phi i64 [ %i.in, %.lr.ph17.i ], [ %.116.i.unr, %.lr.ph17.i.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.116.i
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !45
  %i.ia = getelementptr inbounds nuw i8, ptr %i.go, i64 %.116.i
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !45
  %i.ib = add nuw i64 %.116.i, 1                  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ib
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !45
  %i.if = add nuw i64 %.116.i, 2                  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !45
  %i.ii = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.if
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !45
  %i.ij = add nuw i64 %.116.i, 3                  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !45
  %i.im = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ij
  store i8 %i.il, ptr %i.im, align 1, !tbaa !45
  %i.in = add nuw i64 %.116.i, 4                  ; 2 uses
  %exitcond.not.i22.3 = icmp eq i64 %i.in, %i.ad
  br i1 %exitcond.not.i22.3, label %_ZN2cvL8copyElemEPKhPhm.exit, label %.lr.ph17.i, !llvm.loop !127

_ZN2cvL8copyElemEPKhPhm.exit:                     ; preds = %.lr.ph17.i.prol.loopexit, %.lr.ph17.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.loopexit
  %i.io = add nuw i64 %.024, 1                    ; 2 uses
  %i.ip = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv22SparseMatConstIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  %exitcond.not = icmp eq i64 %i.io, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !120
}

declare void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv9SparseMat9convertToERNS_3MatEidd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %12 = alloca %"class.cv::SparseMatConstIterator", align 8 ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = and i32 %i.b, 127
  %i.d = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %i.e = icmp slt i32 %2, 0
  %spec.select = select i1 %i.e, i32 %i.a, i32 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %_ZNK2cv9SparseMat4dimsEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv9SparseMat9convertToERS0_id, ptr noundef nonnull @.str.1, i32 noundef 427) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %9, align 8, !tbaa !44     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !45
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i43 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

_ZNK2cv9SparseMat4dimsEv.exit:                    ; preds = %bb.a
  %i.o = or i32 %spec.select, -32
  %i.p = shl nuw nsw i32 %i.d, 5
  %i.q = add nsw i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  tail call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.s, ptr noundef nonnull %i.t, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store double %4, ptr %11, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZN2cv22SparseMatConstIteratorC1EPKNS_9SparseMatE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not.i38 = icmp eq ptr %i.w, null
  br i1 %.not.i38, label %_ZNK2cv9SparseMat7nzcountEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv9SparseMat4dimsEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46
  br label %_ZNK2cv9SparseMat7nzcountEv.exit

_ZNK2cv9SparseMat7nzcountEv.exit:                 ; preds = %_ZNK2cv9SparseMat4dimsEv.exit, %bb.g
  %i.z = phi i64 [ %i.y, %bb.g ], [ 0, %_ZNK2cv9SparseMat4dimsEv.exit ] ; 4 uses
  %i.aa = fcmp oeq double %3, 1.000000e+00
  %i.ab = fcmp oeq double %4, 0.000000e+00
  %or.cond = and i1 %i.aa, %i.ab
  %i.ac = load i32, ptr %0, align 8, !tbaa !40
  %i.ad = and i32 %i.ac, 31
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = and i32 %spec.select, 31
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK2cv9SparseMat7nzcountEv.exit
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr @_ZZN2cvL14getConvertElemEiiE3tab, i64 %i.ae
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %.not.i39 = icmp eq ptr %i.aj, null
  br i1 %.not.i39, label %bb.i, label %_ZN2cvL14getConvertElemEii.exit.preheader

_ZN2cvL14getConvertElemEii.exit.preheader:        ; preds = %bb.h
  %.not63 = icmp eq i64 %i.z, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZN2cvL14getConvertElemEii.exit.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL14getConvertElemEii, ptr noundef nonnull @.str.1, i32 noundef 78) #25
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.l:                                             ; preds = %.lr.ph61, %_ZN2cv3Mat3ptrEPKi.exit
  %.03560 = phi i64 [ 0, %.lr.ph61 ], [ %i.cs, %_ZN2cv3Mat3ptrEPKi.exit ]
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 3 uses
  %.not.i40 = icmp eq ptr %i.au, null
  br i1 %.not.i40, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %.not3.i = icmp eq ptr %i.av, null
  br i1 %.not3.i, label %_ZNK2cv22SparseMatConstIterator4nodeEv.exit, label %bb.n

end_hunk_1

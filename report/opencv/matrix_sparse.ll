Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_sparse?download=true
inline.NumInlined: 675
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK2cv9SparseMat9convertToERS0_id:bb.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -2147483648, 2147483648) i64 @_ZNK2cv9SparseMat4hashEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, 6616326156497852011) i64 @_ZNK2cv9SparseMat4hashEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = mul nuw nsw i64 %i.a, 1540483477
  %i.c = zext i32 %2 to i64
  %i.d = add nuw nsw i64 %i.b, %i.c
  ret i64 %i.d
}

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
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49 ]
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
  %min.iters.check140 = icmp ult i64 %i.aq, 28
  %n.vec142 = and i64 %i.as, 9223372036854775800  ; 3 uses
  %i.at = shl i64 %n.vec142, 2                    ; 3 uses
  %i.au = or disjoint i64 %i.at, 4
  %cmp.n149 = icmp eq i64 %i.as, %n.vec142
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %_ZNK2cv8MatShapeixEm.exit51.us, %.preheader.lr.ph.us.preheader
  %.035.us = phi ptr [ %i.an, %.preheader.lr.ph.us.preheader ], [ %i.ey, %_ZNK2cv8MatShapeixEm.exit51.us ] ; 2 uses
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
  br i1 %.not14.i, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader.a

.lr.ph.i41.us.preheader.a:                        ; preds = %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %i.cp = sub i64 %9, %i.co
  %diff.check139 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check140, i1 true, i1 %diff.check139
  br i1 %or.cond, label %.lr.ph.i41.us.preheader153, label %vector.body143

vector.body143:                                   ; preds = %.lr.ph.i41.us.preheader.a, %vector.body143
  %index144 = phi i64 [ %index.next147, %vector.body143 ], [ 0, %.lr.ph.i41.us.preheader.a ] ; 2 uses
  %i.cq = shl i64 %index144, 2                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load145 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !27
  %wide.load146 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load145, ptr %i.ct, align 4, !tbaa !27
  store <4 x i32> %wide.load146, ptr %i.cu, align 4, !tbaa !27
  %index.next147 = add nuw i64 %index144, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.cv, label %middle.block148, label %vector.body143, !llvm.loop !89

middle.block148:                                  ; preds = %vector.body143
  br i1 %cmp.n149, label %.preheader.i43.us, label %.lr.ph.i41.us.preheader153

.lr.ph.i41.us.preheader153:                       ; preds = %.lr.ph.i41.us.preheader.a, %middle.block148
  %.ph = phi i64 [ 4, %.lr.ph.i41.us.preheader.a ], [ %i.au, %middle.block148 ]
  %.015.i.us.ph = phi i64 [ 0, %.lr.ph.i41.us.preheader.a ], [ %i.at, %middle.block148 ]
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

.preheader.i43.us:                                ; preds = %.lr.ph.i41.us, %middle.block148, %_ZNK2cv9SparseMat4hashEPKi.exit.us
  %.0.lcssa.i.us = phi i64 [ 0, %_ZNK2cv9SparseMat4hashEPKi.exit.us ], [ %i.at, %middle.block148 ], [ %i.cw, %.lr.ph.i41.us ] ; 7 uses
  %i.db = icmp samesign ult i64 %.0.lcssa.i.us, %i.ag
  br i1 %i.db, label %iter.check.a, label %_ZN2cvL8copyElemEPKhPhm.exit.us

iter.check.a:                                     ; preds = %.preheader.i43.us
  %6 = sub nuw i64 %i.ag, %.0.lcssa.i.us          ; 7 uses
  %min.iters.check = icmp samesign ult i64 %6, 8
  %7 = sub i64 %11, %i.co
  %diff.check = icmp ugt i64 %7, -32
  %or.cond152 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond152, label %.lr.ph17.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check.a
  %min.iters.check131 = icmp samesign ult i64 %6, 32
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %6, 24
  %n.vec = and i64 %6, 4064                       ; 4 uses
  %i.dd = add i64 %.0.lcssa.i.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = add nuw i64 %.0.lcssa.i.us, %index      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <16 x i8>, ptr %i.df, align 1, !tbaa !45
  %wide.load132 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.de ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %wide.load, ptr %i.dh, align 1, !tbaa !45
  store <16 x i8> %wide.load132, ptr %i.di, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph17.i.us.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %6, 4088                    ; 3 uses
  %i.dk = add i64 %.0.lcssa.i.us, %n.vec133
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.dl = add nuw i64 %.0.lcssa.i.us, %index134   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dl
  %wide.load135 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dl
  store <8 x i8> %wide.load135, ptr %i.dn, align 1, !tbaa !45
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next136, %n.vec133
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %6, %n.vec133
  br i1 %cmp.n137, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us.preheader

.lr.ph17.i.us.preheader:                          ; preds = %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.116.i44.us.ph = phi i64 [ %.0.lcssa.i.us, %iter.check.a ], [ %i.dd, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 4 uses
  %i.dp = sub i64 %i.ag, %.116.i44.us.ph
  %xtraiter165 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol

.lr.ph17.i.us.prol:                               ; preds = %.lr.ph17.i.us.preheader, %.lr.ph17.i.us.prol
  %.116.i44.us.prol = phi i64 [ %i.dt, %.lr.ph17.i.us.prol ], [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph17.i.us.prol ], [ 0, %.lr.ph17.i.us.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us.prol
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !45
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us.prol
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !45
  %i.dt = add nuw nsw i64 %.116.i44.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph17.i.us.prol.loopexit, label %.lr.ph17.i.us.prol, !llvm.loop !93

.lr.ph17.i.us.prol.loopexit:                      ; preds = %.lr.ph17.i.us.prol, %.lr.ph17.i.us.preheader
  %.116.i44.us.unr = phi i64 [ %.116.i44.us.ph, %.lr.ph17.i.us.preheader ], [ %i.dt, %.lr.ph17.i.us.prol ]
  %i.du = sub i64 %.116.i44.us.ph, %i.ag
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us

.lr.ph17.i.us:                                    ; preds = %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us
  %.116.i44.us = phi i64 [ %i.el, %.lr.ph17.i.us ], [ %.116.i44.us.unr, %.lr.ph17.i.us.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %.116.i44.us
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.116.i44.us
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !45
  %i.dz = add nuw nsw i64 %.116.i44.us, 1         ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dz
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !45
  %i.ed = add nuw nsw i64 %.116.i44.us, 2         ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ed
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !45
  %i.eh = add nuw nsw i64 %.116.i44.us, 3         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !45
  %i.el = add nuw nsw i64 %.116.i44.us, 4         ; 2 uses
  %exitcond.not.i45.us.3 = icmp eq i64 %i.el, %i.ag
  br i1 %exitcond.not.i45.us.3, label %_ZN2cvL8copyElemEPKhPhm.exit.us, label %.lr.ph17.i.us, !llvm.loop !94

_ZN2cvL8copyElemEPKhPhm.exit.us:                  ; preds = %bb.f, %.lr.ph17.i.us.prol.loopexit, %.lr.ph17.i.us, %middle.block, %vec.epilog.middle.block, %.preheader.i43.us, %.preheader.i.us
  %i.em = add nuw nsw i32 %.066.us, 1             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.13665.us, i64 %i.ag ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !95

bb.h:                                             ; preds = %.lr.ph.us, %bb.i
  %indvars.iv93 = phi i64 [ %i.ap, %.lr.ph.us ], [ %indvars.iv.next94, %bb.i ] ; 6 uses
  %.267.us = phi ptr [ %i.en, %.lr.ph.us ], [ %i.ey, %bb.i ]
  br i1 %.not109, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us

_ZNK2cv8MatShapeixEm.exit51.us:                   ; preds = %bb.h
  %i.eo = add nuw nsw i64 %indvars.iv93, 1        ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv93
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !63
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !27
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.eo
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !63
  %i.ew = mul i64 %i.ev, %i.et
  %i.ex = sub i64 %i.eq, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.267.us, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv93 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !27
  %i.fb = add nsw i32 %i.fa, 1                    ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !27
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !27
  %i.fe = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fe, label %.preheader.lr.ph.us, label %bb.i, !llvm.loop !96

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us
  store i32 0, ptr %i.ez, align 4, !tbaa !27
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, -1
  %i.ff = icmp sgt i64 %indvars.iv93, 0
  br i1 %i.ff, label %bb.h, label %._crit_edge70, !llvm.loop !97

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %_ZN2cvL8copyElemEPKhPhm.exit.us
  %indvar = phi i64 [ 0, %.preheader.lr.ph.us ], [ %indvar.next, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 3 uses
  %.066.us = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.em, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 2 uses
  %.13665.us = phi ptr [ %.035.us, %.preheader.lr.ph.us ], [ %i.en, %_ZN2cvL8copyElemEPKhPhm.exit.us ] ; 12 uses
  %8 = mul i64 %indvar, %i.ag
  %9 = add i64 %8, %.035.us130
  %10 = mul i64 %indvar, %i.ag
  %11 = add i64 %10, %.035.us130
  br i1 %.not.i.us128, label %.preheader.i.us, label %.lr.ph

._crit_edge.us:                                   ; preds = %_ZN2cvL8copyElemEPKhPhm.exit.us
  br i1 %i.al, label %.lr.ph.us, label %._crit_edge70

.lr.ph.us:                                        ; preds = %._crit_edge.us
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !99
  %.not109 = icmp sgt i32 %i.i, %i.fg
  br label %bb.h

_ZNK2cv8MatShapeixEm.exit.split:                  ; preds = %_ZNK2cv8MatShapeixEm.exit
  br i1 %i.al, label %.lr.ph.lr.ph, label %._crit_edge70

.lr.ph.lr.ph:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit.split
  %i.fh = zext nneg i32 %i.ak to i64              ; 2 uses
  %.not = icmp sgt i32 %i.i, %i.k
  br label %.lr.ph.us73

.lr.ph.us73:                                      ; preds = %.lr.ph.us73.backedge, %.lr.ph.lr.ph
  %indvars.iv = phi i64 [ %i.fh, %.lr.ph.lr.ph ], [ %indvars.iv.be, %.lr.ph.us73.backedge ] ; 4 uses
  br i1 %.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit51.us76

_ZNK2cv8MatShapeixEm.exit51.us76:                 ; preds = %.lr.ph.us73
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27
  %i.fk = add nsw i32 %i.fj, 1                    ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !27
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !27
  %i.fn = icmp slt i32 %i.fk, %i.fm
  br i1 %i.fn, label %.lr.ph.us73.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit51.us76
  store i32 0, ptr %i.fi, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fo = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fo, label %.lr.ph.us73.backedge, label %._crit_edge70

.lr.ph.us73.backedge:                             ; preds = %bb.j, %_ZNK2cv8MatShapeixEm.exit51.us76
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.fh, %_ZNK2cv8MatShapeixEm.exit51.us76 ]
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
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.l
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !45
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #23
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

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.x, %bb.f ], [ %i.c, %bb.e ] ; 9 uses
  %.040 = phi i64 [ %i.af, %bb.f ], [ %i.q, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %.not46 = icmp eq i64 %i.ai, 0
  br i1 %.not46, label %bb.h, label %._crit_edge73

._crit_edge73:                                    ; preds = %bb.g
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !35
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !35 ; 5 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = mul i64 %i.ar, 3
  %i.at = lshr i64 %i.as, 1
  %i.au = shl i64 %i.ak, 3
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.au)
  %.fr = freeze i64 %.sroa.speculated             ; 2 uses
  %i.av = urem i64 %.fr, %i.ak
  %i.aw = sub nuw i64 %.fr, %i.av                 ; 5 uses
  %i.ax = icmp ugt i64 %i.aw, %i.ar
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = sub nuw i64 %i.aw, %i.ar
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.ay)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.az = icmp ult i64 %i.aw, %i.ar
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
end_hunk_0

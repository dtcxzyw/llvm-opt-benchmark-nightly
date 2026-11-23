Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bitmap_ops?download=true
inline.NumInlined: 424
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  %i.if = zext i1 %i.ie to i64                    ; 2 uses
  %i.ig = add nsw i64 %i.ic, %i.if                ; 5 uses
  %i.ih = sdiv i64 %1, 8                          ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %0, i64 %i.ih ; 8 uses
  %i.ij = sdiv i64 %3, 8                          ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %4, i64 %i.ij ; 8 uses
  %i.il = shl nsw i64 %i.ig, 3
  %.neg = sub i64 %2, %i.il
  %i.im = trunc i64 %.neg to i32
  %i.in = add i32 %i.im, 8
  %notmask = shl nsw i32 -1, %i.in
  %i.io = add nsw i64 %i.ig, -1                   ; 8 uses
  %i.ip = icmp sgt i64 %i.ig, 1
  br i1 %i.ip, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ag
  %min.iters.check = icmp ult i64 %i.ig, 5
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iq = add i64 %i.ih, %i.b
  %i.ir = add i64 %i.ij, %i.a
  %i.is = sub i64 %i.iq, %i.ir
  %diff.check = icmp ugt i64 %i.is, -32
  br i1 %diff.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check174 = icmp ult i64 %i.ig, 33
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.it = and i64 %i.io, 28
  %n.vec = and i64 %i.io, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load = load <16 x i8>, ptr %i.iu, align 1, !tbaa !16
  %wide.load175 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !16
  %i.iw = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.ix = xor <16 x i8> %wide.load175, splat (i8 -1)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <16 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !16
  store <16 x i8> %i.ix, ptr %i.iz, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.it, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %i.io, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index177
  %wide.load178 = load <4 x i8>, ptr %i.jb, align 1, !tbaa !16
  %i.jc = xor <4 x i8> %wide.load178, splat (i8 -1)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index177
  store <4 x i8> %i.jc, ptr %i.jd, align 1, !tbaa !16
  %index.next179 = add nuw i64 %index177, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next179, %n.vec176
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %i.io, %n.vec176
  br i1 %cmp.n180, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0123.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec176, %vec.epilog.middle.block ] ; 3 uses
  %i.jf = add nsw i64 %i.ic, %i.if                ; 2 uses
  %i.jg = add nsw i64 %i.jf, 3
  %i.jh = add nsw i64 %i.jf, -2
  %i.ji = sub nsw i64 %i.jh, %.0123.ph
  %xtraiter188 = and i64 %i.jg, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader, %.lr.ph124.prol
  %.0123.prol = phi i64 [ %i.jn, %.lr.ph124.prol ], [ %.0123.ph, %.lr.ph124.preheader ] ; 3 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.lr.ph124.prol ], [ 0, %.lr.ph124.preheader ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123.prol
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !16
  %i.jl = xor i8 %i.jk, -1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123.prol
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !16
  %i.jn = add nuw nsw i64 %.0123.prol, 1          ; 2 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !87

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %.lr.ph124.preheader ], [ %i.jn, %.lr.ph124.prol ]
  %i.jo = icmp ult i64 %i.ji, 3
  br i1 %i.jo, label %._crit_edge, label %.lr.ph124

._crit_edge:                                      ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jp = getelementptr inbounds i8, ptr %i.ii, i64 %i.io
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !16
  %i.jr = getelementptr inbounds i8, ptr %i.ik, i64 %i.io ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !16
  %i.jt = trunc i32 %notmask to i8                ; 2 uses
  %i.ju = and i8 %i.js, %i.jt
  %.demorgan = or i8 %i.jq, %i.jt
  %i.jv = xor i8 %.demorgan, -1
  %i.jw = or i8 %i.ju, %i.jv
  store i8 %i.jw, ptr %i.jr, align 1, !tbaa !16
  br label %.loopexit

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
  %.0123 = phi i64 [ %i.kq, %.lr.ph124 ], [ %.0123.unr, %.lr.ph124.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.0123
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !16
  %i.jz = xor i8 %i.jy, -1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0123
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !16
  %i.kb = add nuw nsw i64 %.0123, 1               ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !16
  %i.ke = xor i8 %i.kd, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kb
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !16
  %i.kg = add nuw nsw i64 %.0123, 2               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !16
  %i.kj = xor i8 %i.ki, -1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kg
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !16
  %i.kl = add nuw nsw i64 %.0123, 3               ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !16
  %i.ko = xor i8 %i.kn, -1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kl
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !16
  %i.kq = add nuw nsw i64 %.0123, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kq, %i.io
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph124, !llvm.loop !88

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 !guid !90 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.04858.i = phi i64 [ %i.bd, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.04957.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.05056.i = phi i64 [ %i.ba, %bb.g ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %.05155.i = phi i64 [ %i.bb, %bb.g ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = add nsw i64 %.05155.i, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not.i, i8 8, i8 %i.p         ; 2 uses
  %i.r = srem i64 %.05056.i, 8                    ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.05155.i, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i64 %i.r, %.05155.i              ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa                    ; 2 uses
  %5 = shl i32 %i.w, %i.ab
  %i.ac = and i32 %5, 255
  %6 = lshr i32 %i.ac, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.047.in.i = phi i32 [ %6, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.04957.i, 0
  %i.ae = zext nneg i8 %i.q to i32
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.c, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, %i.ag
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.c, i64 %.04957.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.am, %bb.f ], [ %i.ai, %bb.e ]
  %i.an = lshr i32 %.sink.i, %i.ae
  %i.ao = trunc i32 %i.an to i8
  %rev.i.i54.i = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04858.i ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = trunc i32 %.047.in.i to i8
  %i.as = xor i8 %i.ar, -1
  %i.at = and i8 %i.aq, %i.as
  %i.au = zext i8 %rev.i.i54.i to i32
  %i.av = shl nuw nsw i32 %i.au, %i.v
  %i.aw = and i32 %i.av, %.047.in.i
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = or i8 %i.at, %i.ax
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !16
  %i.az = zext nneg i8 %i.t to i64                ; 2 uses
  %i.ba = add nsw i64 %.05056.i, %i.az
  %i.bb = sub nsw i64 %.05155.i, %i.az            ; 2 uses
  %.not53.i = icmp uge i8 %i.t, %i.q
  %i.bc = sext i1 %.not53.i to i64
  %spec.select.i = add nsw i64 %.04957.i, %i.bc
  %i.bd = add nuw nsw i64 %.04858.i, 1
  %i.be = icmp sgt i64 %i.bb, 0
  br i1 %i.be, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit, !llvm.loop !1

_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit: ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 !guid !98 {
bb.a:
  %6 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.a = add nsw i64 %5, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !99
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef %i.a, ptr noundef %1), !noalias !99
  %i.b = load ptr, ptr %6, align 8, !tbaa !28, !noalias !99
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !29, !noalias !100
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !34, !noalias !100 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !99
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43, !range !44, !noalias !99, !noundef !45
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !44, !noalias !99
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !99
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !23
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr noundef readonly %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %i.q), !noalias !99
  store ptr null, ptr %0, align 8, !tbaa !28, !alias.scope !99
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !29, !alias.scope !99
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %6, align 8, !tbaa !28, !noalias !99 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46, !noalias !99 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !49
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !97
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !97
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !99
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !19

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !28, !noalias !99 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i17.i, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !52

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !60, !range !44, !noundef !45
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #21
  br label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit

_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !99
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12InvertBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 !guid !108 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !109
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1), !noalias !109
  %i.a = load ptr, ptr %5, align 8, !tbaa !28, !noalias !109
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !29, !noalias !110
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34, !noalias !110 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !109
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43, !range !44, !noalias !109, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !44, !noalias !109
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.i, i1 %i.l, i1 false, !prof !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !109
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !23
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr noundef readonly %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef %i.p), !noalias !109
  store ptr null, ptr %0, align 8, !tbaa !28, !alias.scope !109
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !29, !alias.scope !109
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !28, !noalias !109 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc:bb.a
  br i1 %i.f, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15.i = icmp eq i64 %2, 0
  br i1 %.not15.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %i.j = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.w, %bb.f ] ; 2 uses
  %.0917.i = phi ptr [ %1, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %storemerge16.i = phi i64 [ %2, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.c
  %.pre22.i = load ptr, ptr %i.i, align 8, !tbaa !61
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !56
  %.not11.i = icmp ult ptr %i.m, %i.n
  br i1 %.not11.i, label %bb.e, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.g, align 8, !tbaa !57
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge21.i
  %i.r = phi ptr [ %i.o, %bb.e ], [ %.pre22.i, %._crit_edge21.i ]
  %i.s = phi i64 [ %i.q, %bb.e ], [ %i.j, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.speculated.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !61
  %i.v = load i64, ptr %i.h, align 8, !tbaa !62
  %i.w = sub i64 %i.v, %.sroa.speculated.i        ; 2 uses
  store i64 %i.w, ptr %i.h, align 8, !tbaa !62
  %i.x = load i64, ptr %i.a, align 8, !tbaa !63
  %i.y = add i64 %i.x, %.sroa.speculated.i
  store i64 %i.y, ptr %i.a, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.aa = sub nuw i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.c, !llvm.loop !5

_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %i.f = sub i64 %i.e, %i.c
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62   ; 3 uses
  %i.n = sub i64 %i.k, %i.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.03286 = phi i64 [ %i.s, %bb.d ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %.03385 = phi ptr [ %i.q, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.04484 = phi i64 [ %i.p, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.not51 = icmp ult i64 %.03286, %.04484
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = sub nuw i64 %.03286, %.04484
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.p = sub nuw i64 %.04484, %.03286             ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.03385, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.03385, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph, !llvm.loop !164

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.03381 = phi ptr [ %.03385, %bb.c ], [ %i.q, %bb.d ]
  %.1 = phi i64 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %.not52103 = icmp eq i64 %2, 0
  br i1 %.not52103, label %.thread, label %.lr.ph88.lr.ph

.lr.ph88.lr.ph:                                   ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  br label %.lr.ph88.split

.lr.ph88.split:                                   ; preds = %.outer, %.lr.ph88.lr.ph
  %.pre.i131 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.pre.i132, %.outer ]
  %.promoted102 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.promoted102125, %.outer ] ; 2 uses
  %.2.ph107 = phi i64 [ %.1, %.lr.ph88.lr.ph ], [ %.5, %.outer ] ; 7 uses
  %.134.ph105 = phi ptr [ %.03381, %.lr.ph88.lr.ph ], [ %.336, %.outer ] ; 7 uses
  %.0.ph104 = phi i64 [ %2, %.lr.ph88.lr.ph ], [ %.267, %.outer ] ; 4 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !57 ; 2 uses
  %.not53100 = icmp eq ptr %.134.ph105, %.promoted
  br i1 %.not53100, label %.lr.ph101, label %.split.us

.split.us:                                        ; preds = %bb.v, %.lr.ph88.split
  %.pre.i = phi i64 [ %.pre.i131, %.lr.ph88.split ], [ %i.eb, %bb.v ] ; 2 uses
  %.promoted102123 = phi i64 [ %.promoted102, %.lr.ph88.split ], [ %i.eb, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = sub i64 %i.v, %.2.ph107                  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.ph104, i64 %i.w) ; 2 uses
  %.not15.i = icmp eq i64 %i.v, %.2.ph107
  br i1 %.not15.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us
  %i.x = load ptr, ptr %.134.ph105, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.2.ph107
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre.i128 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %.0917.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %storemerge16.i = phi i64 [ %.sroa.speculated, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.z = icmp eq i64 %.pre.i128, 0
  br i1 %i.z, label %bb.f, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.e
  %.pre22.i = load ptr, ptr %i.t, align 8, !tbaa !61
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !57  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !56
  %.not11.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not11.i, label %bb.g, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !57
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  store i64 %i.af, ptr %i.l, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge21.i
  %i.ag = phi ptr [ %i.ad, %bb.g ], [ %.pre22.i, %._crit_edge21.i ]
  %i.ah = phi i64 [ %i.af, %bb.g ], [ %.pre.i128, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.speculated.i
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !61
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !62
  %i.al = sub i64 %i.ak, %.sroa.speculated.i      ; 4 uses
  store i64 %i.al, ptr %i.l, align 8, !tbaa !62
  %i.am = load i64, ptr %i.b, align 8, !tbaa !63
  %i.an = add i64 %i.am, %.sroa.speculated.i
  store i64 %i.an, ptr %i.b, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.ap = sub nuw i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.e, !llvm.loop !5

_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.h, %.split.us
  %.pre.i129 = phi i64 [ %.pre.i, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.promoted102122 = phi i64 [ %.promoted102123, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.not55.not = icmp ugt i64 %.0.ph104, %i.w      ; 2 uses
  %spec.select.idx = select i1 %.not55.not, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 %spec.select.idx
  %spec.select56 = select i1 %.not55.not, i64 0, i64 %.2.ph107
  br label %.outer

.lr.ph101:                                        ; preds = %.lr.ph88.split, %bb.v
  %i.aq = phi i64 [ %i.eb, %bb.v ], [ %.promoted102, %.lr.ph88.split ] ; 6 uses
  %i.ar = phi ptr [ %i.at, %bb.v ], [ %.promoted, %.lr.ph88.split ] ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.i, label %.split94.us

bb.i:                                             ; preds = %.lr.ph101
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !56
  %.not54 = icmp ult ptr %i.at, %i.au
  br i1 %.not54, label %bb.v, label %.thread

.split94.us:                                      ; preds = %.lr.ph101
  %spec.select57 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0.ph104) ; 15 uses
  %i.av = load ptr, ptr %.134.ph105, align 8, !tbaa !59 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.2.ph107 ; 20 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !61  ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select57 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 8
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split94.us
  %.not.i58 = icmp slt i64 %i.aq, 11
  br i1 %.not.i58, label %iter.check, label %.lr.ph.i59, !prof !29

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  %i.be = add nsw i64 %i.bc, -1
  %diff.check = icmp ult i64 %i.be, 15
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %n.vec
  %i.bh = getelementptr i8, ptr %i.ax, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index
  %next.gep175 = getelementptr i8, ptr %i.ax, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %spec.select57, -4          ; 4 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %n.vec176
  %i.bk = getelementptr i8, ptr %i.ax, i64 %n.vec176
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next181, %vec.epilog.vector.body ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.aw, i64 %index177
  %next.gep179 = getelementptr i8, ptr %i.ax, i64 %index177
  %wide.load180 = load <4 x i8>, ptr %next.gep178, align 1, !tbaa !16
  store <4 x i8> %wide.load180, ptr %next.gep179, align 1, !tbaa !16
  %index.next181 = add nuw i64 %index177, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n182 = icmp eq i64 %spec.select57, %n.vec176
  br i1 %cmp.n182, label %.thread71, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.aw, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.086.i = phi i64 [ %i.bn, %.lr.ph.i59 ], [ %i.bc, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bm, %.lr.ph.i59 ], [ %i.ax, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.aw, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.086.i ; 3 uses
  %i.bn = shl nuw nsw i64 %.086.i, 1
  %i.bo = icmp ult i64 %.086.i, 4
  br i1 %i.bo, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bm, %i.ay
  br i1 %.not67.i, label %bb.k, label %.thread71, !prof !29

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.bq = load i8, ptr %.08.i.i, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.bq, ptr %.057.i.i, align 1, !tbaa !16
  %exitcond.not.i.i = icmp eq ptr %i.br, %i.ay
  br i1 %exitcond.not.i.i, label %.thread71, label %.lr.ph.i.i, !llvm.loop !167

bb.k:                                             ; preds = %._crit_edge.i, %.split94.us
  %.157.i = phi ptr [ %i.bm, %._crit_edge.i ], [ %i.ax, %.split94.us ] ; 16 uses
  %.157.i219 = ptrtoaddr ptr %.157.i to i64
  %i.bs = add nsw i64 %i.aq, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.bs
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.aw, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bt, align 1
  store i64 %.val.i.i, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.ay
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val4.i71.i = load i64, ptr %i.bx, align 1
  store i64 %.val4.i71.i, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.by, align 1
  store i64 %.val.i72.i, ptr %i.bz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %i.ay
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val4.i73.i = load i64, ptr %i.cc, align 1
  store i64 %.val4.i73.i, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.cd, align 1
  store i64 %.val.i74.i, ptr %i.ce, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.ay
  br i1 %i.cg, label %bb.q, label %.thread71

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.val4.i75.i = load i64, ptr %i.ch, align 1
  store i64 %.val4.i75.i, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.ci, align 1
  store i64 %.val.i76.i, ptr %i.cj, align 1
  br label %.thread71

bb.r:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  %i.cl = icmp ult ptr %.157.i, %i.ck
  br i1 %i.cl, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %i.cm = add i64 %i.aq, %i.ba
  %i.cn = add i64 %i.cm, -17
  %i.co = sub i64 %i.cn, %.157.i219               ; 4 uses
  %i.cp = lshr i64 %i.co, 4
  %min.iters.check224 = icmp ult i64 %i.co, 80
  br i1 %min.iters.check224, label %.lr.ph90.i.preheader242, label %vector.memcheck218

.lr.ph90.i.preheader242:                          ; preds = %vector.memcheck218, %.lr.ph90.i.preheader
  br label %.lr.ph90.i

vector.memcheck218:                               ; preds = %.lr.ph90.i.preheader
  %4 = and i64 %i.co, -16                         ; 2 uses
  %5 = getelementptr i8, ptr %.157.i, i64 %4
  %scevgep220 = getelementptr i8, ptr %5, i64 16
  %scevgep221 = getelementptr i8, ptr %i.av, i64 %.2.ph107
  %scevgep222 = getelementptr i8, ptr %scevgep221, i64 %4
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 16
  %bound0 = icmp ult ptr %.157.i, %scevgep223
  %bound1 = icmp ult ptr %i.aw, %scevgep220
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph90.i.preheader242, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck218
  %i.cq = and i64 %i.co, -16
  %i.cr = add i64 %i.cq, 16                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.aw, i64 %i.cr
  %i.ct = getelementptr i8, ptr %.157.i, i64 %i.cr
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next232, %vector.body227 ] ; 3 uses
  %i.cu = shl i64 %index228, 4                    ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.aw, i64 %i.cu
  %next.gep230 = getelementptr i8, ptr %.157.i, i64 %i.cu
  %wide.load231 = load <2 x i64>, ptr %next.gep229, align 1, !alias.scope !177
  store <2 x i64> %wide.load231, ptr %next.gep230, align 1, !alias.scope !178, !noalias !177
  %index.next232 = add nuw i64 %index228, 1
  %i.cv = icmp eq i64 %index228, %i.cp
  br i1 %i.cv, label %._crit_edge91.i, label %vector.body227, !llvm.loop !171

._crit_edge91.i:                                  ; preds = %vector.body227, %.lr.ph90.i, %bb.r
  %.2.lcssa.i = phi ptr [ %.157.i, %bb.r ], [ %i.cy, %.lr.ph90.i ], [ %i.ct, %vector.body227 ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %i.aw, %bb.r ], [ %i.cz, %.lr.ph90.i ], [ %i.cs, %vector.body227 ] ; 3 uses
  %.not69.i = icmp ult ptr %.2.lcssa.i, %i.ay
  br i1 %.not69.i, label %bb.s, label %.thread71

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.preheader242, %.lr.ph90.i
  %.05488.i = phi ptr [ %i.cz, %.lr.ph90.i ], [ %i.aw, %.lr.ph90.i.preheader242 ] ; 3 uses
  %.287.i = phi ptr [ %i.cy, %.lr.ph90.i ], [ %.157.i, %.lr.ph90.i.preheader242 ] ; 3 uses
  %.val4.i77.i = load i64, ptr %.05488.i, align 1
  store i64 %.val4.i77.i, ptr %.287.i, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.05488.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.287.i, i64 8
  %.val.i78.i = load i64, ptr %i.cw, align 1
  store i64 %.val.i78.i, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.287.i, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05488.i, i64 16 ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.ck
  br i1 %i.da, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !172

bb.s:                                             ; preds = %._crit_edge91.i
  %i.db = getelementptr inbounds i8, ptr %i.az, i64 -8
  %.not70.i = icmp ugt ptr %.2.lcssa.i, %i.db
  br i1 %.not70.i, label %bb.u, label %bb.t, !prof !26

bb.t:                                             ; preds = %bb.s
  %.054.val.i = load i64, ptr %.054.lcssa.i, align 1
  store i64 %.054.val.i, ptr %.2.lcssa.i, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi ptr [ %i.dd, %bb.t ], [ %.2.lcssa.i, %bb.s ] ; 7 uses
  %.155.i = phi ptr [ %i.dc, %bb.t ], [ %.054.lcssa.i, %bb.s ] ; 6 uses
  %i.de = icmp ult ptr %.3.i, %i.ay
  br i1 %i.de, label %iter.check201, label %.thread71

iter.check201:                                    ; preds = %bb.u
  %.155.i186 = ptrtoaddr ptr %.3.i to i64         ; 2 uses
  %.3.i185 = ptrtoaddr ptr %.155.i to i64
  %i.df = sub i64 %i.ba, %.155.i186
  %i.dg = add i64 %i.df, %spec.select57           ; 7 uses
  %min.iters.check188 = icmp ult i64 %i.dg, 4
  %i.dh = sub i64 %.3.i185, %.155.i186
  %diff.check187 = icmp ugt i64 %i.dh, -16
  %or.cond240 = select i1 %min.iters.check188, i1 true, i1 %diff.check187
  br i1 %or.cond240, label %.lr.ph.i79.i.preheader, label %vector.main.loop.iter.check189

vector.main.loop.iter.check189:                   ; preds = %iter.check201
  %min.iters.check190 = icmp ult i64 %i.dg, 16
  br i1 %min.iters.check190, label %vec.epilog.ph205, label %vector.ph191

vector.ph191:                                     ; preds = %vector.main.loop.iter.check189
  %i.di = and i64 %i.dg, 12
  %n.vec192 = and i64 %i.dg, -16                  ; 5 uses
  %i.dj = getelementptr i8, ptr %.155.i, i64 %n.vec192
  %i.dk = getelementptr i8, ptr %.3.i, i64 %n.vec192
  br label %vector.body193

vector.body193:                                   ; preds = %vector.ph191, %vector.body193
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %next.gep195 = getelementptr i8, ptr %.155.i, i64 %index194
  %next.gep196 = getelementptr i8, ptr %.3.i, i64 %index194
  %wide.load197 = load <16 x i8>, ptr %next.gep195, align 1, !tbaa !16
  store <16 x i8> %wide.load197, ptr %next.gep196, align 1, !tbaa !16
  %index.next198 = add nuw i64 %index194, 16      ; 2 uses
  %i.dl = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.dl, label %middle.block199, label %vector.body193, !llvm.loop !173

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.dg, %n.vec192
  br i1 %cmp.n200, label %.thread71, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block199
  %min.epilog.iters.check204 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check204, label %.lr.ph.i79.i.preheader, label %vec.epilog.ph205, !prof !121

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check189, %vec.epilog.iter.check202
  %vec.epilog.resume.val206 = phi i64 [ %n.vec192, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check189 ]
  %n.vec207 = and i64 %i.dg, -4                   ; 4 uses
  %i.dm = getelementptr i8, ptr %.155.i, i64 %n.vec207
  %i.dn = getelementptr i8, ptr %.3.i, i64 %n.vec207
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph205
  %index209 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph205 ], [ %index.next213, %vec.epilog.vector.body208 ] ; 3 uses
  %next.gep210 = getelementptr i8, ptr %.155.i, i64 %index209
  %next.gep211 = getelementptr i8, ptr %.3.i, i64 %index209
  %wide.load212 = load <4 x i8>, ptr %next.gep210, align 1, !tbaa !16
  store <4 x i8> %wide.load212, ptr %next.gep211, align 1, !tbaa !16
  %index.next213 = add nuw i64 %index209, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next213, %n.vec207
  br i1 %i.do, label %vec.epilog.middle.block214, label %vec.epilog.vector.body208, !llvm.loop !174

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body208
  %cmp.n215 = icmp eq i64 %i.dg, %n.vec207
  br i1 %cmp.n215, label %.thread71, label %.lr.ph.i79.i.preheader

.lr.ph.i79.i.preheader:                           ; preds = %iter.check201, %vec.epilog.iter.check202, %vec.epilog.middle.block214
  %.08.i80.i.ph = phi ptr [ %.155.i, %iter.check201 ], [ %i.dj, %vec.epilog.iter.check202 ], [ %i.dm, %vec.epilog.middle.block214 ]
  %.057.i81.i.ph = phi ptr [ %.3.i, %iter.check201 ], [ %i.dk, %vec.epilog.iter.check202 ], [ %i.dn, %vec.epilog.middle.block214 ]
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %.lr.ph.i79.i
  %.08.i80.i = phi ptr [ %i.dp, %.lr.ph.i79.i ], [ %.08.i80.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %.057.i81.i = phi ptr [ %i.dr, %.lr.ph.i79.i ], [ %.057.i81.i.ph, %.lr.ph.i79.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i80.i, i64 1
  %i.dq = load i8, ptr %.08.i80.i, align 1, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %.057.i81.i, i64 1 ; 2 uses
  store i8 %i.dq, ptr %.057.i81.i, align 1, !tbaa !16
  %exitcond.not.i82.i = icmp eq ptr %i.dr, %i.ay
  br i1 %exitcond.not.i82.i, label %.thread71, label %.lr.ph.i79.i, !llvm.loop !175

.thread71:                                        ; preds = %.lr.ph.i79.i, %.lr.ph.i.i, %middle.block199, %vec.epilog.middle.block214, %middle.block, %vec.epilog.middle.block, %bb.u, %._crit_edge91.i, %bb.q, %bb.p, %._crit_edge.i
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %spec.select57
  store ptr %i.dt, ptr %i.t, align 8, !tbaa !61
  %i.du = load i64, ptr %i.l, align 8, !tbaa !62
  %i.dv = sub i64 %i.du, %spec.select57           ; 3 uses
  store i64 %i.dv, ptr %i.l, align 8, !tbaa !62
  %i.dw = add i64 %spec.select57, %.2.ph107
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !63
  %i.dy = add i64 %i.dx, %spec.select57
  store i64 %i.dy, ptr %i.b, align 8, !tbaa !63
  br label %.outer

bb.v:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.h, align 8, !tbaa !57
  %i.dz = load ptr, ptr %i.at, align 8, !tbaa !59
  store ptr %i.dz, ptr %i.t, align 8, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !60 ; 4 uses
  store i64 %i.eb, ptr %i.l, align 8, !tbaa !62
  %.not53 = icmp eq ptr %.134.ph105, %i.at
  br i1 %.not53, label %.lr.ph101, label %.split.us

.outer:                                           ; preds = %.thread71, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit
  %.pre.i132 = phi i64 [ %i.dv, %.thread71 ], [ %.pre.i129, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.promoted102125 = phi i64 [ %i.dv, %.thread71 ], [ %.promoted102122, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %spec.select57.pn = phi i64 [ %spec.select57, %.thread71 ], [ %.sroa.speculated, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.336 = phi ptr [ %.134.ph105, %.thread71 ], [ %spec.select, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.5 = phi i64 [ %i.dw, %.thread71 ], [ %spec.select56, %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit ]
  %.267 = sub i64 %.0.ph104, %spec.select57.pn    ; 2 uses
  %.not52 = icmp eq i64 %.267, 0
  br i1 %.not52, label %.thread, label %.lr.ph88.split, !llvm.loop !176

.thread:                                          ; preds = %.outer, %bb.i, %.loopexit, %bb.b, %bb.a
  %.543 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.i ], [ true, %.outer ]
  ret i1 %.543
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone returned captures(address, ret: address, provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %3, i64 -11
  %.not = icmp ugt ptr %1, %i.g
  br i1 %.not, label %bb.c, label %.lr.ph, !prof !29

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.086 = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %.05685 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %.val = load i64, ptr %0, align 1
  store i64 %.val, ptr %.05685, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.05685, i64 %.086 ; 3 uses
  %i.i = shl nuw nsw i64 %.086, 1
  %i.j = icmp ult i64 %.086, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph
  %.not67 = icmp ult ptr %i.h, %2
  br i1 %.not67, label %bb.d, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult ptr %1, %2
  br i1 %i.k, label %iter.check161, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit

iter.check161:                                    ; preds = %bb.c
  %i.l = sub i64 %i.a, %i.c                       ; 7 uses
  %min.iters.check146 = icmp ult i64 %i.l, 4
  %i.m = add nsw i64 %i.e, -1
  %diff.check148 = icmp ult i64 %i.m, 15
  %or.cond = select i1 %min.iters.check146, i1 true, i1 %diff.check148
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check161
  %min.iters.check150 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check150, label %vec.epilog.ph165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.n = and i64 %i.l, 12
  %n.vec152 = and i64 %i.l, -16                   ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec152
  %i.p = getelementptr i8, ptr %1, i64 %n.vec152
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body153 ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %0, i64 %index154
  %next.gep156 = getelementptr i8, ptr %1, i64 %index154
  %wide.load157 = load <16 x i8>, ptr %next.gep155, align 1, !tbaa !16
  store <16 x i8> %wide.load157, ptr %next.gep156, align 1, !tbaa !16
  %index.next158 = add nuw i64 %index154, 16      ; 2 uses
  %i.q = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.q, label %middle.block159, label %vector.body153, !llvm.loop !179

middle.block159:                                  ; preds = %vector.body153
  %cmp.n160 = icmp eq i64 %i.l, %n.vec152
  br i1 %cmp.n160, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block159
  %min.epilog.iters.check164 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check164, label %.lr.ph.i.preheader, label %vec.epilog.ph165, !prof !121

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check162
  %vec.epilog.resume.val166 = phi i64 [ %n.vec152, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec167 = and i64 %i.l, -4                    ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 %n.vec167
  %i.s = getelementptr i8, ptr %1, i64 %n.vec167
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph165
  %index169 = phi i64 [ %vec.epilog.resume.val166, %vec.epilog.ph165 ], [ %index.next173, %vec.epilog.vector.body168 ] ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %index169
  %next.gep171 = getelementptr i8, ptr %1, i64 %index169
  %wide.load172 = load <4 x i8>, ptr %next.gep170, align 1, !tbaa !16
  store <4 x i8> %wide.load172, ptr %next.gep171, align 1, !tbaa !16
end_hunk_0

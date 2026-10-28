Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/input?download=true
inline.NumInlined: 70
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 94
begin_hunk_0_@planar_rgb_to_uv:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  %wide.load = load <8 x i8>, ptr %i.y, align 1, !tbaa !28, !alias.scope !141
  %i.z = zext <8 x i8> %wide.load to <8 x i32>    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %index
  %wide.load94 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !28, !alias.scope !142
  %i.ab = zext <8 x i8> %wide.load94 to <8 x i32> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %index
  %wide.load95 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !28, !alias.scope !143
  %i.ad = zext <8 x i8> %wide.load95 to <8 x i32> ; 2 uses
  %i.ae = mul <8 x i32> %broadcast.splat, %i.ad
  %i.af = mul <8 x i32> %broadcast.splat85, %i.z
  %i.ag = mul <8 x i32> %broadcast.splat87, %i.ab
  %i.ah = add <8 x i32> %i.af, splat (i32 4194560)
  %i.ai = add <8 x i32> %i.ah, %i.ag
  %i.aj = add <8 x i32> %i.ai, %i.ae
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 9)
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.al, ptr %i.am, align 2, !tbaa !32, !alias.scope !144, !noalias !145
  %i.an = mul <8 x i32> %broadcast.splat89, %i.ad
  %i.ao = mul <8 x i32> %broadcast.splat91, %i.z
  %i.ap = mul <8 x i32> %broadcast.splat93, %i.ab
  %i.aq = add <8 x i32> %i.ao, splat (i32 4194560)
  %i.ar = add <8 x i32> %i.aq, %i.ap
  %i.as = add <8 x i32> %i.ar, %i.an
  %i.at = lshr <8 x i32> %i.as, splat (i32 9)
  %i.au = trunc <8 x i32> %i.at to <8 x i16>
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.au, ptr %i.av, align 2, !tbaa !32, !alias.scope !146, !noalias !147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = mul i32 %i.b, %i.bf
  %i.bh = mul i32 %i.d, %i.az
  %i.bi = mul i32 %i.f, %i.bc
  %i.bj = add i32 %i.bh, 4194560
  %i.bk = add i32 %i.bj, %i.bi
  %i.bl = add i32 %i.bk, %i.bg
  %i.bm = lshr i32 %i.bl, 9
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !32
  %i.bp = mul i32 %i.h, %i.bf
  %i.bq = mul i32 %i.j, %i.az
  %i.br = mul i32 %i.l, %i.bc
  %i.bs = add i32 %i.bq, 4194560
  %i.bt = add i32 %i.bs, %i.br
  %i.bu = add i32 %i.bt, %i.bp
  %i.bv = lshr i32 %i.bu, 9
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @bswap16UV_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %5, 24
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.c
  %diff.check23 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check23
  %i.h = sub i64 %i.c, %i.a
  %diff.check24 = icmp ugt i64 %i.h, -16
  %conflict.rdx25 = or i1 %conflict.rdx, %diff.check24
  %i.i = sub i64 %i.b, %i.d
  %diff.check26 = icmp ugt i64 %i.i, -16
  %conflict.rdx27 = or i1 %conflict.rdx25, %diff.check26
  %i.j = sub i64 %i.a, %i.d
  %diff.check28 = icmp ugt i64 %i.j, -16
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  br i1 %conflict.rdx29, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !tbaa !32
  %i.l = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !32
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index
  %wide.load30 = load <8 x i16>, ptr %i.n, align 2, !tbaa !32
  %i.o = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load30)
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.o, ptr %i.p, align 2, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader31
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.ph
  %i.s = load i16, ptr %i.r, align 2, !tbaa !32
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.ph
  %i.w = load i16, ptr %i.v, align 2, !tbaa !32
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  store i16 %i.x, ptr %i.y, align 2, !tbaa !32
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader31
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader31 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = add nsw i64 %wide.trip.count, -1
  %i.aa = icmp eq i64 %indvars.iv.ph, %i.z
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !32
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !32
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !32
  %i.al = tail call i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.al, ptr %i.am, align 2, !tbaa !32
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !32
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shf16_10LEToUV_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.a, %i.c
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = sub i64 %i.b, %i.a
  %diff.check19 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  %i.h = sub i64 %i.a, %i.d
  %diff.check20 = icmp ugt i64 %i.h, -32
  %conflict.rdx21 = or i1 %conflict.rdx, %diff.check20
  %i.i = sub i64 %i.b, %i.c
  %diff.check22 = icmp ugt i64 %i.i, -32
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  %i.j = sub i64 %i.d, %i.c
  %diff.check24 = icmp ugt i64 %i.j, -32
  %conflict.rdx25 = or i1 %conflict.rdx23, %diff.check24
  br i1 %conflict.rdx25, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i32 %5, 16
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw nsw i64 %index, 1                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <8 x i16>, ptr %i.m, align 1, !tbaa !28
  %wide.load27 = load <8 x i16>, ptr %i.n, align 1, !tbaa !28
  %i.o = lshr <8 x i16> %wide.load, splat (i16 6)
  %i.p = lshr <8 x i16> %wide.load27, splat (i16 6)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <8 x i16> %i.o, ptr %i.q, align 1, !tbaa !28
  store <8 x i16> %i.p, ptr %i.r, align 1, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load28 = load <8 x i16>, ptr %i.s, align 1, !tbaa !28
  %wide.load29 = load <8 x i16>, ptr %i.t, align 1, !tbaa !28
  %i.u = lshr <8 x i16> %wide.load28, splat (i16 6)
  %i.v = lshr <8 x i16> %wide.load29, splat (i16 6)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 1, !tbaa !28
  store <8 x i16> %i.v, ptr %i.x, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %i.z = shl nuw nsw i64 %index31, 1              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %wide.load32 = load <4 x i16>, ptr %i.aa, align 1, !tbaa !28
  %i.ab = lshr <4 x i16> %wide.load32, splat (i16 6)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store <4 x i16> %i.ab, ptr %i.ac, align 1, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  %wide.load33 = load <4 x i16>, ptr %i.ad, align 1, !tbaa !28
  %i.ae = lshr <4 x i16> %wide.load33, splat (i16 6)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  store <4 x i16> %i.ae, ptr %i.af, align 1, !tbaa !28
  %index.next34 = add nuw i64 %index31, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec30, %wide.trip.count
  br i1 %cmp.n35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = shl nuw nsw i64 %indvars.iv.ph, 1       ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !28
  %i.ak = lshr i16 %i.aj, 6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 1, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah
  %i.an = load i16, ptr %i.am, align 1, !tbaa !28
  %i.ao = lshr i16 %i.an, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aq = add nsw i64 %wide.trip.count, -1
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.as = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = load i16, ptr %i.at, align 1, !tbaa !28
  %i.av = lshr i16 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.av, ptr %i.aw, align 1, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !28
  %i.az = lshr i16 %i.ay, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  store i16 %i.az, ptr %i.ba, align 1, !tbaa !28
  %indvars.iv.next = shl i64 %indvars.iv, 1
  %i.bb = add i64 %indvars.iv.next, 2             ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !28
  %i.be = lshr i16 %i.bd, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i16 %i.be, ptr %i.bf, align 1, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %i.bb
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !28
  %i.bi = lshr i16 %i.bh, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  store i16 %i.bi, ptr %i.bj, align 1, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shf16_12LEToUV_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.a, %i.c
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = sub i64 %i.b, %i.a
  %diff.check19 = icmp ugt i64 %i.g, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  %i.h = sub i64 %i.a, %i.d
  %diff.check20 = icmp ugt i64 %i.h, -32
  %conflict.rdx21 = or i1 %conflict.rdx, %diff.check20
  %i.i = sub i64 %i.b, %i.c
  %diff.check22 = icmp ugt i64 %i.i, -32
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  %i.j = sub i64 %i.d, %i.c
  %diff.check24 = icmp ugt i64 %i.j, -32
  %conflict.rdx25 = or i1 %conflict.rdx23, %diff.check24
  br i1 %conflict.rdx25, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i32 %5, 16
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw nsw i64 %index, 1                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <8 x i16>, ptr %i.m, align 1, !tbaa !28
  %wide.load27 = load <8 x i16>, ptr %i.n, align 1, !tbaa !28
  %i.o = lshr <8 x i16> %wide.load, splat (i16 4)
  %i.p = lshr <8 x i16> %wide.load27, splat (i16 4)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <8 x i16> %i.o, ptr %i.q, align 1, !tbaa !28
  store <8 x i16> %i.p, ptr %i.r, align 1, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load28 = load <8 x i16>, ptr %i.s, align 1, !tbaa !28
  %wide.load29 = load <8 x i16>, ptr %i.t, align 1, !tbaa !28
  %i.u = lshr <8 x i16> %wide.load28, splat (i16 4)
  %i.v = lshr <8 x i16> %wide.load29, splat (i16 4)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 1, !tbaa !28
  store <8 x i16> %i.v, ptr %i.x, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %i.z = shl nuw nsw i64 %index31, 1              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %wide.load32 = load <4 x i16>, ptr %i.aa, align 1, !tbaa !28
  %i.ab = lshr <4 x i16> %wide.load32, splat (i16 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store <4 x i16> %i.ab, ptr %i.ac, align 1, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  %wide.load33 = load <4 x i16>, ptr %i.ad, align 1, !tbaa !28
  %i.ae = lshr <4 x i16> %wide.load33, splat (i16 4)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  store <4 x i16> %i.ae, ptr %i.af, align 1, !tbaa !28
  %index.next34 = add nuw i64 %index31, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec30, %wide.trip.count
  br i1 %cmp.n35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = shl nuw nsw i64 %indvars.iv.ph, 1       ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !28
  %i.ak = lshr i16 %i.aj, 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 1, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah
  %i.an = load i16, ptr %i.am, align 1, !tbaa !28
  %i.ao = lshr i16 %i.an, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aq = add nsw i64 %wide.trip.count, -1
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.as = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = load i16, ptr %i.at, align 1, !tbaa !28
  %i.av = lshr i16 %i.au, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.av, ptr %i.aw, align 1, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.as
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !28
  %i.az = lshr i16 %i.ay, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  store i16 %i.az, ptr %i.ba, align 1, !tbaa !28
  %indvars.iv.next = shl i64 %indvars.iv, 1
  %i.bb = add i64 %indvars.iv.next, 2             ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !28
  %i.be = lshr i16 %i.bd, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i16 %i.be, ptr %i.bf, align 1, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %i.bb
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !28
  %i.bi = lshr i16 %i.bh, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  store i16 %i.bi, ptr %i.bj, align 1, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shf16_10BEToUV_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %5, 24
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.c
  %diff.check19 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check19
  %i.h = sub i64 %i.c, %i.a
  %diff.check20 = icmp ugt i64 %i.h, -16
  %conflict.rdx21 = or i1 %conflict.rdx, %diff.check20
  %i.i = sub i64 %i.b, %i.d
  %diff.check22 = icmp ugt i64 %i.i, -16
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  %i.j = sub i64 %i.a, %i.d
  %diff.check24 = icmp ugt i64 %i.j, -16
  %conflict.rdx25 = or i1 %conflict.rdx23, %diff.check24
  br i1 %conflict.rdx25, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl nuw nsw i64 %index, 1                ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %i.k
  %wide.load = load <8 x i16>, ptr %i.l, align 1, !tbaa !28
  %i.m = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.n = lshr <8 x i16> %i.m, splat (i16 6)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  store <8 x i16> %i.n, ptr %i.o, align 1, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %i.k
  %wide.load26 = load <8 x i16>, ptr %i.p, align 1, !tbaa !28
  %i.q = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load26)
  %i.r = lshr <8 x i16> %i.q, splat (i16 6)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store <8 x i16> %i.r, ptr %i.s, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader27
end_hunk_0

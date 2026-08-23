Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mgrep?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@prepf:bb.a
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !41
  %i.ai = and i16 %i.ah, 8
  %.not80 = icmp eq i16 %i.ai, 0
  br i1 %.not80, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv134
  store i8 -128, ptr %i.aj, align 2, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next135
  %i.am = load i16, ptr %i.al, align 2, !tbaa !41
  %i.an = and i16 %i.am, 8
  %.not80.1 = icmp eq i16 %i.an, 0
  br i1 %.not80.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv.next135
  store i8 -128, ptr %i.ao, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next135.1, 128
  br i1 %exitcond137.not.1, label %vector.body178, label %bb.p, !llvm.loop !43

vector.body178:                                   ; preds = %.loopexit91, %bb.t
  %wide.load = load <16 x i8>, ptr @tr, align 16, !tbaa !8
  %wide.load180 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  %i.ap = and <16 x i8> %wide.load, splat (i8 15)
  %i.aq = and <16 x i8> %wide.load180, splat (i8 15)
  store <16 x i8> %i.ap, ptr @tr1, align 16, !tbaa !8
  store <16 x i8> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 16), align 16, !tbaa !8
  %wide.load.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  %wide.load180.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  %i.ar = and <16 x i8> %wide.load.1, splat (i8 15)
  %i.as = and <16 x i8> %wide.load180.1, splat (i8 15)
  store <16 x i8> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 32), align 16, !tbaa !8
  store <16 x i8> %i.as, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 48), align 16, !tbaa !8
  %wide.load.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  %wide.load180.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  %i.at = and <16 x i8> %wide.load.2, splat (i8 15)
  %i.au = and <16 x i8> %wide.load180.2, splat (i8 15)
  store <16 x i8> %i.at, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 64), align 16, !tbaa !8
  store <16 x i8> %i.au, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 80), align 16, !tbaa !8
  %wide.load.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  %wide.load180.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  %i.av = and <16 x i8> %wide.load.3, splat (i8 15)
  %i.aw = and <16 x i8> %wide.load180.3, splat (i8 15)
  store <16 x i8> %i.av, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 96), align 16, !tbaa !8
  store <16 x i8> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 112), align 16, !tbaa !8
  %wide.load.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  %wide.load180.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  %i.ax = and <16 x i8> %wide.load.4, splat (i8 15)
  %i.ay = and <16 x i8> %wide.load180.4, splat (i8 15)
  store <16 x i8> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 128), align 16, !tbaa !8
  store <16 x i8> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 144), align 16, !tbaa !8
  %wide.load.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  %wide.load180.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  %i.az = and <16 x i8> %wide.load.5, splat (i8 15)
  %i.ba = and <16 x i8> %wide.load180.5, splat (i8 15)
  store <16 x i8> %i.az, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 160), align 16, !tbaa !8
  store <16 x i8> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 176), align 16, !tbaa !8
  %wide.load.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  %wide.load180.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  %i.bb = and <16 x i8> %wide.load.6, splat (i8 15)
  %i.bc = and <16 x i8> %wide.load180.6, splat (i8 15)
  store <16 x i8> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 192), align 16, !tbaa !8
  store <16 x i8> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 208), align 16, !tbaa !8
  %wide.load.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  %wide.load180.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.bd = and <16 x i8> %wide.load.7, splat (i8 15)
  %i.be = and <16 x i8> %wide.load180.7, splat (i8 15)
  store <16 x i8> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 224), align 16, !tbaa !8
  store <16 x i8> %i.be, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 240), align 16, !tbaa !8
  store i32 256, ptr @p_size, align 4, !tbaa !4
  %.not77.not106 = icmp samesign ugt i32 %.063.lcssa163, 1 ; 2 uses
  br i1 %.not77.not106, label %.lr.ph109.preheader, label %._crit_edge110.thread

.lr.ph109.preheader:                              ; preds = %vector.body178
  %wide.trip.count = zext nneg i32 %.063.lcssa163 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.v
  %indvars.iv142 = phi i64 [ 1, %.lr.ph109.preheader ], [ %indvars.iv.next143, %bb.v ] ; 3 uses
  %i.bf = phi i32 [ 256, %.lr.ph109.preheader ], [ %i.bn, %bb.v ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv142
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #20 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 4 uses
  %i.bk = trunc i64 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr @pat_len, i64 %indvars.iv142
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !8
  %.not79 = icmp ne i32 %i.bj, 0
  %i.bm = icmp sgt i32 %i.bf, %i.bj
  %or.cond87 = select i1 %.not79, i1 %i.bm, i1 false
  br i1 %or.cond87, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph109
  store i32 %i.bj, ptr @p_size, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph109, %bb.u
  %i.bn = phi i32 [ %i.bf, %.lr.ph109 ], [ %i.bj, %bb.u ] ; 5 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !44

._crit_edge110:                                   ; preds = %bb.v
  %i.bo = icmp sgt i32 %.070, 400
  %i.bp = icmp sgt i32 %i.bn, 2
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %.preheader88.preheader.sink.split, label %bb.w

._crit_edge110.thread:                            ; preds = %vector.body178
  %i.bq = icmp sgt i32 %.070, 400
  br i1 %i.bq, label %.preheader88.preheader.sink.split, label %.preheader88.preheader.thread

.preheader88.preheader.thread:                    ; preds = %._crit_edge110.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 -2, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br label %._crit_edge116

bb.w:                                             ; preds = %._crit_edge110
  %i.br = icmp eq i32 %i.bn, 1
  br i1 %i.br, label %.preheader88.preheader.sink.split, label %.preheader88.preheader

.preheader88.preheader.sink.split:                ; preds = %bb.w, %._crit_edge110, %._crit_edge110.thread
  %LONG.sink = phi ptr [ @LONG, %._crit_edge110 ], [ @LONG, %._crit_edge110.thread ], [ @SHORT, %bb.w ]
  %.ph = phi i32 [ %i.bn, %._crit_edge110 ], [ 256, %._crit_edge110.thread ], [ 1, %bb.w ]
  store i32 1, ptr %LONG.sink, align 4, !tbaa !4
  br label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.preheader.sink.split, %bb.w
  %i.bs = phi i32 [ %i.bn, %bb.w ], [ %.ph, %.preheader88.preheader.sink.split ]
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = add i8 %i.bt, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 %i.bu, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br i1 %.not77.not106, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %.preheader88.preheader
  %wide.trip.count155 = zext nneg i32 %.063.lcssa163 to i64
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv152 = phi i64 [ 1, %.lr.ph115.preheader ], [ %indvars.iv.next153, %.lr.ph115 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.bx = trunc nuw nsw i64 %indvars.iv152 to i32
  tail call void @f_prep(i32 noundef %i.bx, ptr noundef %i.bw)
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !45

._crit_edge116:                                   ; preds = %.lr.ph115, %.preheader88.preheader.thread, %.preheader88.preheader
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey1(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @p_size, align 4, !tbaa !4 ; 4 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 3 uses
  %i.d = add nsw i32 %i.a, -1                     ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = sext i32 %i.d to i64                     ; 3 uses
  %i.i = add nsw i64 %i.e, %i.h
  %.not157 = icmp sgt i64 %i.i, %i.b
  br i1 %.not157, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.k = load i32, ptr @LONG, align 4, !tbaa !4
  %.not101 = icmp eq i32 %i.k, 0
  %i.l = sub nsw i64 0, %i.h
  %i.m = trunc i32 %i.d to i8                     ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.n = icmp ult i32 %i.a, 8
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.loopexit134
  %.067159 = phi ptr [ %i.g, %.lr.ph161 ], [ %.572, %.loopexit134 ] ; 9 uses
  %.086158 = phi ptr [ %i.j, %.lr.ph161 ], [ %i.dn, %.loopexit134 ] ; 11 uses
  %.086158178 = ptrtoaddr ptr %.086158 to i64
  %.067159179 = ptrtoaddr ptr %.067159 to i64
  %i.o = load i8, ptr %.086158, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32                      ; 10 uses
  %i.t = shl nuw nsw i32 %i.s, 4
  %i.u = getelementptr inbounds i8, ptr %.086158, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.t, %i.z              ; 2 uses
  br i1 %.not101, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 %i.aa, 4
  %i.ac = getelementptr inbounds i8, ptr %.086158, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ab, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.084 = phi i32 [ %i.ai, %bb.c ], [ %i.aa, %bb.b ]
  %i.aj = zext nneg i32 %.084 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.preheader137.preheader, label %.loopexit134

.preheader137.preheader:                          ; preds = %bb.d
  br i1 %i.n, label %.preheader137.epil.preheader, label %.preheader137.preheader.new

.preheader137.preheader.new:                      ; preds = %.preheader137.preheader
  %3 = shl nuw nsw i32 %i.s, 4
  %invariant.op = add i32 %3, %i.s
  %4 = shl nuw nsw i32 %i.s, 4
  %invariant.op211 = add i32 %4, %i.s
  %5 = shl nuw nsw i32 %i.s, 4
  %invariant.op213 = add i32 %5, %i.s
  %6 = shl nuw nsw i32 %i.s, 4
  %invariant.op215 = add i32 %6, %i.s
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137, %.preheader137.preheader.new
  %.185144 = phi i32 [ 0, %.preheader137.preheader.new ], [ %.reass216, %.preheader137 ]
  %niter = phi i64 [ 0, %.preheader137.preheader.new ], [ %niter.next.7, %.preheader137 ]
  %i.an = shl i32 %.185144, 8
  %.reass = add i32 %i.an, %invariant.op
  %7 = shl i32 %.reass, 8
  %.reass212 = add i32 %7, %invariant.op211
  %i.ao = shl i32 %.reass212, 8
  %.reass214 = add i32 %i.ao, %invariant.op213
  %8 = shl i32 %.reass214, 8
  %.reass216 = add i32 %8, %invariant.op215       ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader137, !llvm.loop !46

.unr-lcssa:                                       ; preds = %.preheader137
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader137.epil.preheader

.preheader137.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader137.preheader
  %.185144.epil.init = phi i32 [ 0, %.preheader137.preheader ], [ %.reass216, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod205)
  br label %.preheader137.epil

.preheader137.epil:                               ; preds = %.preheader137.epil, %.preheader137.epil.preheader
  %.185144.epil = phi i32 [ %i.aq, %.preheader137.epil ], [ %.185144.epil.init, %.preheader137.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader137.epil ], [ 0, %.preheader137.epil.preheader ]
  %i.ap = shl i32 %.185144.epil, 4
  %i.aq = add i32 %i.ap, %i.s                     ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader137.epil, !llvm.loop !47

.epilog-lcssa:                                    ; preds = %.preheader137.epil, %.unr-lcssa
  %.lcssa = phi i32 [ %.reass216, %.unr-lcssa ], [ %i.aq, %.preheader137.epil ]
  %i.ar = and i32 %.lcssa, 8191
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %.old4.not = icmp eq ptr %i.au, null
  br i1 %.old4.not, label %.loopexit134, label %.preheader135

.preheader135:                                    ; preds = %.epilog-lcssa
  %i.av = getelementptr inbounds i8, ptr %.086158, i64 %i.l ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @tr, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.preheader135, %bb.t
  %.074 = phi ptr [ %i.bc, %bb.t ], [ %i.au, %.preheader135 ] ; 2 uses
  %i.ba = load i32, ptr %.074, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %i.bd = sext i32 %i.ba to i64                   ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr @patt, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @tr, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = icmp eq i8 %i.bj, %i.az
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph ], [ 0, %bb.e ]
  %.075147 = phi ptr [ %i.bl, %.lr.ph ], [ %i.av, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.075147, i64 1 ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv.next176
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @tr, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @tr, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = icmp eq i8 %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bw = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.081.lcssa = phi i32 [ 0, %bb.e ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %.not103 = icmp slt i32 %.081.lcssa, %i.a
  br i1 %.not103, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds i8, ptr @pat_len, i64 %i.bd
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = zext i8 %i.by to i32
  %.not104 = icmp samesign ult i32 %.081.lcssa, %i.bz
  br i1 %.not104, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr @num_of_matched, align 4, !tbaa !4
  %i.cc = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = load i32, ptr @SILENT, align 4
  %i.cf = icmp ne i32 %i.ce, 0
  %or.cond = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not105 = icmp eq i32 %i.cg, 0
  br i1 %.not105, label %bb.i, label %.preheader133

.preheader133:                                    ; preds = %bb.h, %.preheader133
  %.288 = phi ptr [ %i.ci, %.preheader133 ], [ %.086158, %bb.h ] ; 3 uses
  %i.ch = load i8, ptr %.288, align 1, !tbaa !8
  %.not115 = icmp eq i8 %i.ch, 10
  %i.ci = getelementptr inbounds nuw i8, ptr %.288, i64 1
  br i1 %.not115, label %.loopexit134, label %.preheader133, !llvm.loop !49

bb.i:                                             ; preds = %bb.h
  %i.cj = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not106 = icmp eq i32 %i.cj, 0
  %i.ck = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not107 = icmp eq i32 %i.ck, 0                 ; 2 uses
  br i1 %.not106, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not107, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.l
  %.389 = phi ptr [ %i.cm, %bb.l ], [ %.086158, %.preheader ] ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %.389, i64 -1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %.not108 = icmp eq i8 %i.cn, 10
  br i1 %.not108, label %.preheader132, label %bb.l, !llvm.loop !50

.preheader132:                                    ; preds = %bb.l
  %i.co = load i8, ptr %.389, align 1, !tbaa !8   ; 2 uses
  %.not109153 = icmp eq i8 %i.co, 10
  br i1 %.not109153, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader132, %.lr.ph154
  %i.cp = phi i8 [ %i.cv, %.lr.ph154 ], [ %i.co, %.preheader132 ]
  %i.cq = phi ptr [ %i.cu, %.lr.ph154 ], [ %.389, %.preheader132 ]
  %i.cr = zext i8 %i.cp to i32
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ct = tail call noundef i32 @putc(i32 noundef %i.cr, ptr noundef %i.cs), !inline_history !24 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8   ; 2 uses
  %.not109 = icmp eq i8 %i.cv, 10
  br i1 %.not109, label %._crit_edge155, label %.lr.ph154, !llvm.loop !51

._crit_edge155:                                   ; preds = %.lr.ph154, %.preheader132
  %.lcssa142 = phi ptr [ %.389, %.preheader132 ], [ %i.cu, %.lr.ph154 ]
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.cx = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.cw), !inline_history !24 ; 0 uses
  br label %.loopexit134

bb.m:                                             ; preds = %bb.i
  br i1 %.not107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %scevgep = getelementptr i8, ptr %.067159, i64 -1
  %i.cz = sub i64 %.086158178, %.067159179
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %i.cz
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv181 = phi ptr [ %scevgep182, %bb.p ], [ %scevgep180, %bb.o ] ; 2 uses
  %.591 = phi ptr [ %i.da, %bb.p ], [ %.086158, %bb.o ]
  %i.da = getelementptr inbounds i8, ptr %.591, i64 -1 ; 4 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.db, 10
  %scevgep182 = getelementptr i8, ptr %indvars.iv181, i64 -1
  br i1 %.not111, label %bb.q, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %bb.p
  %.not113 = icmp ult ptr %.067159, %i.da
  br i1 %.not113, label %.lr.ph151, label %._crit_edge152.preheader

.lr.ph151:                                        ; preds = %bb.q, %.lr.ph151
  %.269149 = phi ptr [ %i.dc, %.lr.ph151 ], [ %.067159, %bb.q ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.269149, i64 1 ; 2 uses
  %i.dd = load i8, ptr %.269149, align 1, !tbaa !8
  %i.de = zext i8 %i.dd to i32
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.dg = tail call noundef i32 @putc(i32 noundef %i.de, ptr noundef %i.df), !inline_history !24 ; 0 uses
  %exitcond183.not = icmp eq ptr %i.dc, %indvars.iv181
  br i1 %exitcond183.not, label %bb.r, label %.lr.ph151, !llvm.loop !53

bb.r:                                             ; preds = %.lr.ph151
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.di = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.dh), !inline_history !24 ; 0 uses
  br label %._crit_edge152.preheader

._crit_edge152.preheader:                         ; preds = %bb.q, %bb.r
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.preheader, %._crit_edge152
  %.692 = phi ptr [ %i.dj, %._crit_edge152 ], [ %i.da, %._crit_edge152.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.692, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !8
  %.not114 = icmp eq i8 %i.dk, 10
  br i1 %.not114, label %bb.s, label %._crit_edge152, !llvm.loop !54

bb.s:                                             ; preds = %._crit_edge152
  %i.dl = getelementptr inbounds nuw i8, ptr %.692, i64 2
  br label %.loopexit134

bb.t:                                             ; preds = %bb.f, %._crit_edge
  %.not131 = icmp eq ptr %i.bc, null
  br i1 %.not131, label %.loopexit134, label %bb.e, !llvm.loop !55

.loopexit134:                                     ; preds = %bb.t, %.preheader133, %._crit_edge155, %bb.s, %.epilog-lcssa, %bb.d
  %.9 = phi ptr [ %.086158, %bb.d ], [ %.288, %.preheader133 ], [ %.086158, %.epilog-lcssa ], [ %.lcssa142, %._crit_edge155 ], [ %i.dj, %bb.s ], [ %.086158, %bb.t ]
  %.082 = phi i8 [ %i.al, %bb.d ], [ %i.m, %.preheader133 ], [ 1, %.epilog-lcssa ], [ %i.m, %._crit_edge155 ], [ %i.m, %bb.s ], [ 1, %bb.t ]
end_hunk_0

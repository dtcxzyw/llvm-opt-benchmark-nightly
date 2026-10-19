Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@dchk2_:bb.a
bb.ab:                                            ; preds = %bb.z
  %i.np = tail call i32 @dmmch_(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk2_.m, ptr noundef nonnull @dchk2_.n, ptr noundef nonnull @dchk2_.n, ptr noundef nonnull @dchk2_.alpha, ptr noundef %18, ptr noundef nonnull %14, ptr noundef %15, ptr noundef nonnull %14, ptr noundef nonnull @dchk2_.beta, ptr noundef %21, ptr noundef nonnull %14, ptr noundef %24, ptr noundef %25, ptr noundef %22, ptr noundef nonnull @dchk2_.ldc, ptr noundef %1, ptr noundef nonnull @dchk2_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.nq = load double, ptr @dchk2_.errmax, align 8, !tbaa !14 ; 2 uses
  %i.nr = load double, ptr @dchk2_.err, align 8, !tbaa !14 ; 2 uses
  %i.ns = fcmp oge double %i.nq, %i.nr
  %i.nt = select i1 %i.ns, double %i.nq, double %i.nr
  store double %i.nt, ptr @dchk2_.errmax, align 8, !tbaa !14
  %i.nu = load i32, ptr %7, align 4, !tbaa !10
  %.not163 = icmp eq i32 %i.nu, 0
  br i1 %.not163, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %i.nv = load i32, ptr @dchk2_.ib, align 4, !tbaa !10 ; 2 uses
  %i.nw = add nsw i32 %i.nv, 1                    ; 2 uses
  store i32 %i.nw, ptr @dchk2_.ib, align 4, !tbaa !10
  %.not148.not = icmp slt i32 %i.nv, %i.dw
  br i1 %.not148.not, label %.lr.ph221, label %._crit_edge222.loopexit, !llvm.loop !159

._crit_edge222.loopexit:                          ; preds = %bb.ad
  %.pre267 = load i32, ptr @dchk2_.ia, align 4, !tbaa !10
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %.lr.ph226.split
  %i.nx = phi i32 [ %.pre267, %._crit_edge222.loopexit ], [ %storemerge145224, %.lr.ph226.split ] ; 2 uses
  %i.ny = add nsw i32 %i.nx, 1                    ; 2 uses
  store i32 %i.ny, ptr @dchk2_.ia, align 4, !tbaa !10
  %.not146.not = icmp slt i32 %i.nx, %i.bm
  br i1 %.not146.not, label %.lr.ph226.splitthread-pre-split, label %._crit_edge227.loopexit, !llvm.loop !160

._crit_edge227.loopexit:                          ; preds = %._crit_edge222
  %.pre268 = load i32, ptr @dchk2_.icu, align 4, !tbaa !10
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %._crit_edge227.split.us, %bb.l
  %i.nz = phi i32 [ %.pre268, %._crit_edge227.loopexit ], [ %storemerge144228, %._crit_edge227.split.us ], [ %storemerge144228, %bb.l ] ; 2 uses
  %i.oa = add nsw i32 %i.nz, 1                    ; 2 uses
  store i32 %i.oa, ptr @dchk2_.icu, align 4, !tbaa !10
  %i.ob = icmp slt i32 %i.nz, 2
  br i1 %i.ob, label %bb.l, label %.loopexit198.loopexit, !llvm.loop !161

.loopexit198.loopexit:                            ; preds = %._crit_edge227
  %.pre269 = load i32, ptr @dchk2_.ics, align 4, !tbaa !10
  br label %.loopexit198

.loopexit198:                                     ; preds = %.loopexit198.loopexit, %bb.j
  %i.oc = phi i32 [ %.pre269, %.loopexit198.loopexit ], [ %storemerge142229, %bb.j ] ; 2 uses
  %i.od = add nsw i32 %i.oc, 1                    ; 2 uses
  store i32 %i.od, ptr @dchk2_.ics, align 4, !tbaa !10
  %i.oe = icmp slt i32 %i.oc, 2
  br i1 %i.oe, label %bb.h, label %.loopexit199.loopexit, !llvm.loop !162

.loopexit199.loopexit:                            ; preds = %.loopexit198
  %.pre270 = load i32, ptr @dchk2_.in, align 4, !tbaa !10
  br label %.loopexit199

.loopexit199:                                     ; preds = %.loopexit199.loopexit, %bb.c, %bb.f
  %i.of = phi i32 [ %.pre270, %.loopexit199.loopexit ], [ %storemerge140231, %bb.c ], [ %storemerge140231, %bb.f ] ; 2 uses
  %i.og = add nsw i32 %i.of, 1                    ; 2 uses
  store i32 %i.og, ptr @dchk2_.in, align 4, !tbaa !10
  %.not141.not = icmp slt i32 %i.of, %i.w
  br i1 %.not141.not, label %.lr.ph233, label %._crit_edge234.loopexit, !llvm.loop !163

._crit_edge234.loopexit:                          ; preds = %.loopexit199
  %.pre271 = load i32, ptr @dchk2_.im, align 4, !tbaa !10
  br label %._crit_edge234

._crit_edge234:                                   ; preds = %._crit_edge234.loopexit, %.lr.ph238
  %i.oh = phi i32 [ %.pre271, %._crit_edge234.loopexit ], [ %storemerge236, %.lr.ph238 ] ; 2 uses
  %i.oi = add nsw i32 %i.oh, 1                    ; 2 uses
  store i32 %i.oi, ptr @dchk2_.im, align 4, !tbaa !10
  %.not.not = icmp slt i32 %i.oh, %i.j
  br i1 %.not.not, label %.lr.ph238, label %._crit_edge239.loopexit, !llvm.loop !164

._crit_edge239.loopexit:                          ; preds = %._crit_edge234
  %.pre272 = load double, ptr @dchk2_.errmax, align 8, !tbaa !14
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %bb.a
  %i.oj = phi double [ %.pre272, %._crit_edge239.loopexit ], [ 0.000000e+00, %bb.a ]
  %i.ok = load double, ptr %2, align 8, !tbaa !14
  %i.ol = fcmp olt double %i.oj, %i.ok
  %i.om = load i32, ptr %26, align 4, !tbaa !10   ; 3 uses
  %i.on = icmp eq i32 %i.om, 0                    ; 2 uses
  br i1 %i.ol, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %._crit_edge239
  br i1 %i.on, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.oo = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.op = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %0, i32 noundef %i.oo) ; 0 uses
  %.pr = load i32, ptr %26, align 4, !tbaa !10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.oq = phi i32 [ %.pr, %bb.af ], [ %i.om, %bb.ae ]
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.os = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.ot = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef %0, i32 noundef %i.os) ; 0 uses
  br label %bb.am

bb.ai:                                            ; preds = %._crit_edge239
  br i1 %i.on, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ou = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.ov = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef %0, i32 noundef %i.ou) ; 0 uses
  %i.ow = load double, ptr @dchk2_.errmax, align 8, !tbaa !14
  %i.ox = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, double noundef %i.ow) ; 0 uses
  %.pr197 = load i32, ptr %26, align 4, !tbaa !10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.oy = phi i32 [ %.pr197, %bb.aj ], [ %i.om, %bb.ai ]
  %i.oz = icmp eq i32 %i.oy, 1
  br i1 %i.oz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pa = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.pb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %0, i32 noundef %i.pa) ; 0 uses
  %i.pc = load double, ptr @dchk2_.errmax, align 8, !tbaa !14
  %i.pd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, double noundef %i.pc) ; 0 uses
  br label %bb.am

.loopexit.sink.split:                             ; preds = %bb.x, %bb.o
  store i32 1, ptr %7, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %.loopexit.sink.split
  %i.pe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %0) ; 0 uses
  %i.pf = load i8, ptr @dchk2_.side, align 1, !tbaa !11
  %i.pg = icmp eq i8 %i.pf, 76
  br i1 %i.pg, label %.preheader67.preheader.i195, label %.preheader68.preheader.i188

.preheader68.preheader.i188:                      ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.cs, ptr noundef nonnull align 1 dereferenceable(14) @.str.55, i64 14, i1 false), !tbaa !11
  br label %.critedge.i189

.preheader67.preheader.i195:                      ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.cs, ptr noundef nonnull align 1 dereferenceable(14) @.str.54, i64 14, i1 false), !tbaa !11
  br label %.critedge.i189

.critedge.i189:                                   ; preds = %.preheader67.preheader.i195, %.preheader68.preheader.i188
  %i.ph = load i8, ptr @dchk2_.uplo, align 1, !tbaa !11
  %i.pi = icmp eq i8 %i.ph, 85
  br i1 %i.pi, label %.preheader64.preheader.i194, label %.preheader65.preheader.i190

.preheader65.preheader.i190:                      ; preds = %.critedge.i189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.cu, ptr noundef nonnull align 1 dereferenceable(14) @.str.57, i64 14, i1 false), !tbaa !11
  br label %.critedge4.i191

.preheader64.preheader.i194:                      ; preds = %.critedge.i189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.cu, ptr noundef nonnull align 1 dereferenceable(14) @.str.56, i64 14, i1 false), !tbaa !11
  br label %.critedge4.i191

.critedge4.i191:                                  ; preds = %.preheader64.preheader.i194, %.preheader65.preheader.i190
  %i.pj = load i32, ptr %26, align 4, !tbaa !10
  %i.pk = icmp eq i32 %i.pj, 1
  br i1 %i.pk, label %.preheader.preheader.i193, label %.preheader62.preheader.i192

.preheader62.preheader.i192:                      ; preds = %.critedge4.i191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.crc, ptr noundef nonnull align 1 dereferenceable(14) @.str.48, i64 14, i1 false), !tbaa !11
  br label %dprcn2_.exit196

.preheader.preheader.i193:                        ; preds = %.critedge4.i191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn2_.crc, ptr noundef nonnull align 1 dereferenceable(14) @.str.47, i64 14, i1 false), !tbaa !11
  br label %dprcn2_.exit196

dprcn2_.exit196:                                  ; preds = %.preheader62.preheader.i192, %.preheader.preheader.i193
  %i.pl = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.pm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.pl, ptr noundef %0, ptr noundef nonnull @dprcn2_.crc, ptr noundef nonnull @dprcn2_.cs, ptr noundef nonnull @dprcn2_.cu) ; 0 uses
  %i.pn = load i32, ptr @dchk2_.m, align 4, !tbaa !10
  %i.po = load i32, ptr @dchk2_.n, align 4, !tbaa !10
  %i.pp = load double, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.pq = load i32, ptr @dchk2_.lda, align 4, !tbaa !10
  %i.pr = load i32, ptr @dchk2_.ldb, align 4, !tbaa !10
  %i.ps = load double, ptr @dchk2_.beta, align 8, !tbaa !14
  %i.pt = load i32, ptr @dchk2_.ldc, align 4, !tbaa !10
  %i.pu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %i.pn, i32 noundef %i.po, double noundef %i.pp, i32 noundef %i.pq, i32 noundef %i.pr, double noundef %i.ps, i32 noundef %i.pt) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.ag, %bb.al, %bb.ak, %dprcn2_.exit196
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @dchk3_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef captures(none) %13, ptr noundef %14, ptr nofree noundef captures(none) %15, ptr nofree noundef captures(none) %16, ptr noundef %17, ptr nofree noundef captures(none) %18, ptr nofree noundef captures(none) %19, ptr nofree noundef captures(none) %20, ptr nofree noundef captures(none) %21, ptr noundef %22, i32 %23) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %14 to i64
  %i.b = ptrtoaddr ptr %15 to i64
  %i.c = ptrtoaddr ptr %17 to i64
  %i.d = ptrtoaddr ptr %18 to i64
  %i.e = getelementptr inbounds i8, ptr %9, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %11, i64 -8
  %i.g = load i32, ptr %12, align 4, !tbaa !10    ; 5 uses
  %narrow = xor i32 %i.g, -1
  %i.h = sext i32 %narrow to i64                  ; 5 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %21, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %18, i64 -8 ; 9 uses
  %i.k = getelementptr inbounds i8, ptr %17, i64 -8 ; 10 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %16, i64 %i.h ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %15, i64 -8 ; 9 uses
  %i.n = getelementptr inbounds i8, ptr %14, i64 -8 ; 9 uses
  store i32 0, ptr @dchk3_.nc, align 4, !tbaa !10
  store i32 1, ptr @dchk3_.reset, align 4, !tbaa !10
  store double 0.000000e+00, ptr @dchk3_.errmax, align 8, !tbaa !14
  %i.o = load i32, ptr %12, align 4, !tbaa !10    ; 4 uses
  %.not275 = icmp slt i32 %i.o, 1
  br i1 %.not275, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.p = add i32 %i.g, 1
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %i.h, %i.q
  %i.s = shl nsw i64 %i.r, 3
  %i.t = sext i32 %i.g to i64
  %i.u = shl nsw i64 %i.t, 3                      ; 9 uses
  %i.v = zext nneg i32 %i.o to i64                ; 3 uses
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 9 uses
  %i.x = add nuw i32 %i.o, 1
  %i.y = getelementptr i8, ptr %21, i64 %i.s      ; 9 uses
  %xtraiter = and i64 %i.v, 7                     ; 3 uses
  %i.z = icmp ult i32 %i.o, 8
  br i1 %i.z, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.v, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvar = phi i64 [ 0, %.preheader.preheader.new ], [ %indvar.next.7, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.aa = mul i64 %i.u, %indvar
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ab = mul i64 %i.u, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.y, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.ac = mul i64 %i.u, %indvar.next.1
  %scevgep.2 = getelementptr i8, ptr %i.y, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.2, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.ad = mul i64 %i.u, %indvar.next.2
  %scevgep.3 = getelementptr i8, ptr %i.y, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.3, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.ae = mul i64 %i.u, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.y, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.4, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.af = mul i64 %i.u, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.y, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.5, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.ag = mul i64 %i.u, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.y, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.6, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.ah = mul i64 %i.u, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.y, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.7, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge277.unr-lcssa, label %.preheader, !llvm.loop !167

._crit_edge277.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge277, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge277.unr-lcssa, %.preheader.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next.7, %._crit_edge277.unr-lcssa ]
  %lcmp.mod539 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod539)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.ai = mul i64 %i.u, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.y, i64 %i.ai
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.w, i1 false), !tbaa !14
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge277, label %.preheader.epil, !llvm.loop !168

._crit_edge277:                                   ; preds = %.preheader.epil, %._crit_edge277.unr-lcssa
  store i32 %i.x, ptr @dchk3_.i__, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge277, %bb.a
  %i.aj = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dchk3_.im, align 4, !tbaa !10
  %.not180350 = icmp slt i32 %i.aj, 1
  br i1 %.not180350, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.am = sext i32 %i.g to i64                    ; 3 uses
  %i.an = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.ao = or i64 %i.am, %i.h
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = add nsw i64 %i.ap, 8                    ; 2 uses
  %scevgep448 = getelementptr i8, ptr %21, i64 %i.aq
  %scevgep449 = getelementptr i8, ptr %21, i64 %i.an
  %scevgep451 = getelementptr i8, ptr %17, i64 -8
  %scevgep453 = getelementptr i8, ptr %16, i64 %i.aq ; 2 uses
  %scevgep454 = getelementptr i8, ptr %16, i64 %i.an
  %i.ar = sub i64 %i.a, %i.b
  %diff.check504 = icmp ugt i64 %i.ar, -128
  %i.as = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.as, -128
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep448, i64 0
  %i.au = insertelement <4 x ptr> %i.at, ptr %17, i64 1
  %i.av = shufflevector <4 x ptr> %i.au, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = insertelement <4 x ptr> <ptr poison, ptr @dchk3_.alpha, ptr poison, ptr @dchk3_.alpha>, ptr %17, i64 0
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %scevgep453, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph353, %._crit_edge349
  %storemerge179351 = phi i32 [ 1, %.lr.ph353 ], [ %i.po, %._crit_edge349 ] ; 2 uses
  %i.ay = sext i32 %storemerge179351 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !10
  store i32 %i.ba, ptr @dchk3_.m, align 4, !tbaa !10
  %i.bb = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dchk3_.in, align 4, !tbaa !10
  %.not182345 = icmp slt i32 %i.bb, 1
  br i1 %.not182345, label %._crit_edge349, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.c, %.loopexit270
  %storemerge181346 = phi i32 [ %i.pm, %.loopexit270 ], [ 1, %bb.c ] ; 2 uses
  %i.bc = sext i32 %storemerge181346 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10 ; 3 uses
  store i32 %i.be, ptr @dchk3_.n, align 4, !tbaa !10
  %i.bf = load i32, ptr @dchk3_.m, align 4, !tbaa !10 ; 5 uses
  store i32 %i.bf, ptr @dchk3_.ldb, align 4, !tbaa !10
  %i.bg = load i32, ptr %12, align 4, !tbaa !10   ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph348
  %i.bi = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bi, ptr @dchk3_.ldb, align 4, !tbaa !10
  %.pre = load i32, ptr %12, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph348
  %i.bj = phi i32 [ %.pre, %bb.d ], [ %i.bg, %.lr.ph348 ]
  %i.bk = phi i32 [ %i.bi, %bb.d ], [ %i.bf, %.lr.ph348 ] ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %i.bj
  br i1 %i.bl, label %.loopexit270, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = mul nsw i32 %i.bk, %i.be
  store i32 %i.bm, ptr @dchk3_.lbb, align 4, !tbaa !10
  %i.bn = icmp slt i32 %i.bf, 1
  %i.bo = icmp slt i32 %i.be, 1
  %i.bp = select i1 %i.bn, i1 true, i1 %i.bo
  %i.bq = zext i1 %i.bp to i32
  store i32 %i.bq, ptr @dchk3_.null, align 4, !tbaa !10
  store i32 1, ptr @dchk3_.ics, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split331
  %storemerge183344 = phi i32 [ 1, %bb.f ], [ %i.pj, %.split331 ] ; 2 uses
  %i.br = sext i32 %storemerge183344 to i64
  %i.bs = getelementptr i8, ptr @dchk3_.ichs, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11  ; 2 uses
  store i8 %i.bu, ptr @dchk3_.side, align 1, !tbaa !11
  %i.bv = icmp eq i8 %i.bu, 76                    ; 2 uses
  %i.bw = zext i1 %i.bv to i32
  store i32 %i.bw, ptr @dchk3_.left, align 4, !tbaa !10
  %dchk3_.m.val = load i32, ptr @dchk3_.m, align 4
  %dchk3_.n.val = load i32, ptr @dchk3_.n, align 4
  %storemerge184 = select i1 %i.bv, i32 %dchk3_.m.val, i32 %dchk3_.n.val ; 6 uses
  store i32 %storemerge184, ptr @dchk3_.na, align 4, !tbaa !10
  store i32 %storemerge184, ptr @dchk3_.lda, align 4, !tbaa !10
  %i.bx = load i32, ptr %12, align 4, !tbaa !10   ; 2 uses
  %i.by = icmp slt i32 %storemerge184, %i.bx
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = add nsw i32 %storemerge184, 1           ; 2 uses
  store i32 %i.bz, ptr @dchk3_.lda, align 4, !tbaa !10
  %.pre405 = load i32, ptr %12, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = phi i32 [ %.pre405, %bb.h ], [ %i.bx, %bb.g ]
  %i.cb = phi i32 [ %i.bz, %bb.h ], [ %storemerge184, %bb.g ] ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.loopexit270.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = mul nsw i32 %i.cb, %storemerge184
  store i32 %i.cd, ptr @dchk3_.laa, align 4, !tbaa !10
  store i32 1, ptr @dchk3_.icu, align 4, !tbaa !10
  %i.ce = load i32, ptr %10, align 4, !tbaa !10
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %.split329.us, label %.split329

.split329.us:                                     ; preds = %bb.j
  store i32 1, ptr @dchk3_.ia, align 4, !tbaa !10
  store i8 76, ptr @dchk3_.uplo, align 1, !tbaa !11
  store i32 4, ptr @dchk3_.ict, align 4, !tbaa !10
  store i8 67, ptr @dchk3_.transa, align 1, !tbaa !11
  store i32 3, ptr @dchk3_.icd, align 4, !tbaa !10
  store i8 78, ptr @dchk3_.diag, align 1, !tbaa !11
  store i32 3, ptr @dchk3_.icu, align 4, !tbaa !10
  br label %.split331

.split329:                                        ; preds = %bb.j, %.split319
  %storemerge185328 = phi i32 [ %i.pg, %.split319 ], [ 1, %bb.j ] ; 2 uses
  %i.cg = sext i32 %storemerge185328 to i64
  %i.ch = getelementptr i8, ptr @dchk5_.ichu, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  store i8 %i.cj, ptr @dchk3_.uplo, align 1, !tbaa !11
  store i32 1, ptr @dchk3_.ict, align 4, !tbaa !10
  %i.ck = load i32, ptr %10, align 4, !tbaa !10
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.split317.us, label %.split317

.split317.us:                                     ; preds = %.split329
  store i32 1, ptr @dchk3_.ia, align 4, !tbaa !10
  store i8 67, ptr @dchk3_.transa, align 1, !tbaa !11
  store i32 3, ptr @dchk3_.icd, align 4, !tbaa !10
  store i8 78, ptr @dchk3_.diag, align 1, !tbaa !11
  store i32 4, ptr @dchk3_.ict, align 4, !tbaa !10
  br label %.split319

.split317:                                        ; preds = %.split329, %.split312
  %storemerge186316 = phi i32 [ %i.pd, %.split312 ], [ 1, %.split329 ] ; 2 uses
  %i.cm = sext i32 %storemerge186316 to i64
  %i.cn = getelementptr i8, ptr @dchk5_.icht, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  store i8 %i.cp, ptr @dchk3_.transa, align 1, !tbaa !11
  store i32 1, ptr @dchk3_.icd, align 4, !tbaa !10
  %i.cq = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %.split.us, label %.split

.split.us:                                        ; preds = %.split317
  store i32 1, ptr @dchk3_.ia, align 4, !tbaa !10
  store i8 78, ptr @dchk3_.diag, align 1, !tbaa !11
  store i32 3, ptr @dchk3_.icd, align 4, !tbaa !10
  br label %.split312

.splitthread-pre-split:                           ; preds = %._crit_edge309
  %.pr436 = load i32, ptr %10, align 4, !tbaa !10
  br label %.split

.split:                                           ; preds = %.split317, %.splitthread-pre-split
  %i.cs = phi i32 [ %.pr436, %.splitthread-pre-split ], [ %i.cq, %.split317 ] ; 2 uses
  %storemerge187310 = phi i32 [ %i.pa, %.splitthread-pre-split ], [ 1, %.split317 ] ; 2 uses
  %i.ct = sext i32 %storemerge187310 to i64
  %i.cu = getelementptr i8, ptr @dchk3_.ichd, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  store i8 %i.cw, ptr @dchk3_.diag, align 1, !tbaa !11
  store i32 1, ptr @dchk3_.ia, align 4, !tbaa !10
  %.not189305 = icmp slt i32 %i.cs, 1
  br i1 %.not189305, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %.split, %bb.ah
  %storemerge188306 = phi i32 [ %i.oy, %bb.ah ], [ 1, %.split ]
  %i.cx = sext i32 %storemerge188306 to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !14
  store double %i.cz, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.da = tail call i32 @dmake_(ptr noundef nonnull @.str.59, ptr noundef nonnull @dchk3_.uplo, ptr noundef nonnull @dchk3_.diag, ptr noundef nonnull @dchk3_.na, ptr noundef nonnull @dchk3_.na, ptr noundef %13, ptr noundef nonnull %12, ptr noundef %14, ptr noundef nonnull @dchk3_.lda, ptr noundef nonnull @dchk3_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.db = tail call i32 @dmake_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef %16, ptr noundef nonnull %12, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, ptr noundef nonnull @dchk3_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.dc = load i32, ptr @dchk3_.nc, align 4, !tbaa !10
  %i.dd = add nsw i32 %i.dc, 1                    ; 3 uses
  store i32 %i.dd, ptr @dchk3_.nc, align 4, !tbaa !10
  %i.de = load i8, ptr @dchk3_.side, align 1, !tbaa !11 ; 3 uses
  store i8 %i.de, ptr @dchk3_.sides.0, align 1, !tbaa !11
  %i.df = load i8, ptr @dchk3_.uplo, align 1, !tbaa !11 ; 3 uses
  store i8 %i.df, ptr @dchk3_.uplos.0, align 1, !tbaa !11
  %i.dg = load i8, ptr @dchk3_.transa, align 1, !tbaa !11 ; 3 uses
  store i8 %i.dg, ptr @dchk3_.tranas.0, align 1, !tbaa !11
  %i.dh = load i8, ptr @dchk3_.diag, align 1, !tbaa !11 ; 3 uses
  store i8 %i.dh, ptr @dchk3_.diags.0, align 1, !tbaa !11
  %i.di = load i32, ptr @dchk3_.m, align 4, !tbaa !10
  store i32 %i.di, ptr @dchk3_.ms, align 4, !tbaa !10
  %i.dj = load i32, ptr @dchk3_.n, align 4, !tbaa !10
  store i32 %i.dj, ptr @dchk3_.ns, align 4, !tbaa !10
  %i.dk = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  store double %i.dk, ptr @dchk3_.als, align 8, !tbaa !14
  %i.dl = load i32, ptr @dchk3_.laa, align 4, !tbaa !10 ; 6 uses
  %.not191280 = icmp slt i32 %i.dl, 1
  br i1 %.not191280, label %._crit_edge283, label %iter.check522

iter.check522:                                    ; preds = %.lr.ph308
  %i.dm = add nuw i32 %i.dl, 1
  %wide.trip.count379 = zext i32 %i.dm to i64     ; 2 uses
  %i.dn = zext nneg i32 %i.dl to i64              ; 5 uses
  %min.iters.check506 = icmp ult i32 %i.dl, 4
  %or.cond = or i1 %min.iters.check506, %diff.check504
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check507

vector.main.loop.iter.check507:                   ; preds = %iter.check522
  %min.iters.check508 = icmp ult i32 %i.dl, 16
  br i1 %min.iters.check508, label %vec.epilog.ph526, label %vector.ph509

vector.ph509:                                     ; preds = %vector.main.loop.iter.check507
  %i.do = and i64 %i.dn, 12
  %n.vec510 = and i64 %i.dn, 2147483632           ; 4 uses
  %i.dp = or disjoint i64 %n.vec510, 1
  br label %vector.body511

vector.body511:                                   ; preds = %vector.ph509, %vector.body511
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next517, %vector.body511 ] ; 3 uses
end_hunk_0
begin_hunk_1_@dchk3_:bb.a
bb.p:                                             ; preds = %dprcn3_.exit229, %bb.n
  tail call void @cdtrsm_(ptr noundef %22, ptr noundef nonnull @dchk3_.side, ptr noundef nonnull @dchk3_.uplo, ptr noundef nonnull @dchk3_.transa, ptr noundef nonnull @dchk3_.diag, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.alpha, ptr noundef %14, ptr noundef nonnull @dchk3_.lda, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb) #19
  br label %.tail258.thread

.tail258.thread:                                  ; preds = %sub_0, %.tail, %.tail258, %bb.p, %bb.m
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @infoc_, i64 8), align 4, !tbaa !18
  %.not196 = icmp eq i32 %i.im, 0
  br i1 %.not196, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.tail258.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %.tail258.thread
  %i.in = load i8, ptr @dchk3_.sides.0, align 1, !tbaa !11
  %i.io = load i8, ptr @dchk3_.side, align 1, !tbaa !11
  %i.ip = load i8, ptr @dchk3_.uplos.0, align 1, !tbaa !11
  %i.iq = load i8, ptr @dchk3_.uplo, align 1, !tbaa !11
  %i.ir = load i8, ptr @dchk3_.tranas.0, align 1, !tbaa !11
  %i.is = load i8, ptr @dchk3_.transa, align 1, !tbaa !11
  %i.it = load i8, ptr @dchk3_.diags.0, align 1, !tbaa !11
  %i.iu = load i8, ptr @dchk3_.diag, align 1, !tbaa !11
  %i.iv = icmp eq i8 %i.in, %i.io
  %i.iw = icmp eq i8 %i.ip, %i.iq
  %i.ix = icmp eq i8 %i.ir, %i.is
  %i.iy = icmp eq i8 %i.it, %i.iu
  %i.iz = insertelement <4 x i1> poison, i1 %i.iv, i64 0
  %i.ja = insertelement <4 x i1> %i.iz, i1 %i.iw, i64 1
  %i.jb = insertelement <4 x i1> %i.ja, i1 %i.ix, i64 2
  %i.jc = insertelement <4 x i1> %i.jb, i1 %i.iy, i64 3
  %i.jd = zext <4 x i1> %i.jc to <4 x i32>
  store <4 x i32> %i.jd, ptr @dchk3_.isame, align 16, !tbaa !10
  %i.je = load i32, ptr @dchk3_.ms, align 4, !tbaa !10
  %i.jf = load i32, ptr @dchk3_.m, align 4, !tbaa !10
  %i.jg = load i32, ptr @dchk3_.ns, align 4, !tbaa !10
  %i.jh = load i32, ptr @dchk3_.n, align 4, !tbaa !10
  %i.ji = icmp eq i32 %i.je, %i.jf
  %i.jj = icmp eq i32 %i.jg, %i.jh
  %i.jk = insertelement <2 x i1> poison, i1 %i.ji, i64 0
  %i.jl = insertelement <2 x i1> %i.jk, i1 %i.jj, i64 1
  %i.jm = zext <2 x i1> %i.jl to <2 x i32>
  store <2 x i32> %i.jm, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 16), align 16, !tbaa !10
  %i.jn = load double, ptr @dchk3_.als, align 8, !tbaa !14
  %i.jo = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.jp = fcmp oeq double %i.jn, %i.jo
  %i.jq = zext i1 %i.jp to i32
  store i32 %i.jq, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 24), align 8, !tbaa !10
  %i.jr = load i32, ptr @dchk3_.laa, align 4, !tbaa !10 ; 2 uses
  %.not7.i = icmp slt i32 %i.jr, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.js = add nuw i32 %i.jr, 1
  %wide.trip.count.i = zext i32 %i.js to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !14
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !14
  %i.jx = fcmp une double %i.ju, %i.jw
  br i1 %i.jx, label %lde_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !0

lde_.exit:                                        ; preds = %bb.s, %.lr.ph.i, %bb.r
  %.0.i = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ 0, %.lr.ph.i ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 28), align 4, !tbaa !10
  %i.jy = load i32, ptr @dchk3_.ldas, align 4, !tbaa !10
  %i.jz = load i32, ptr @dchk3_.lda, align 4, !tbaa !10
  %i.ka = icmp eq i32 %i.jy, %i.jz
  %i.kb = zext i1 %i.ka to i32
  store i32 %i.kb, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 32), align 16, !tbaa !10
  %i.kc = load i32, ptr @dchk3_.null, align 4, !tbaa !10
  %.not197 = icmp eq i32 %i.kc, 0
  br i1 %.not197, label %bb.v, label %bb.t

bb.t:                                             ; preds = %lde_.exit
  %i.kd = load i32, ptr @dchk3_.lbb, align 4, !tbaa !10 ; 2 uses
  %.not7.i230 = icmp slt i32 %i.kd, 1
  br i1 %.not7.i230, label %lde_.exit240, label %.lr.ph.preheader.i231

.lr.ph.preheader.i231:                            ; preds = %bb.t
  %i.ke = add nuw i32 %i.kd, 1
  %wide.trip.count.i232 = zext i32 %i.ke to i64
  br label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %bb.u, %.lr.ph.preheader.i231
  %indvars.iv.i234 = phi i64 [ 1, %.lr.ph.preheader.i231 ], [ %indvars.iv.next.i235, %bb.u ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i234
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i234
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !14
  %i.kj = fcmp une double %i.kg, %i.ki
  br i1 %i.kj, label %lde_.exit240, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i233
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next.i235, %wide.trip.count.i232
  br i1 %exitcond.not.i236, label %lde_.exit240, label %.lr.ph.i233, !llvm.loop !0

bb.v:                                             ; preds = %lde_.exit
  %i.kk = tail call i32 @lderes_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef %18, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, i32 poison, i32 poison)
  br label %lde_.exit240

lde_.exit240:                                     ; preds = %.lr.ph.i233, %bb.u, %bb.t, %bb.v
  %storemerge198 = phi i32 [ %i.kk, %bb.v ], [ 1, %bb.t ], [ 1, %bb.u ], [ 0, %.lr.ph.i233 ]
  store i32 %storemerge198, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 36), align 4, !tbaa !10
  %i.kl = load i32, ptr @dchk3_.ldbs, align 4, !tbaa !10
  %i.km = load i32, ptr @dchk3_.ldb, align 4, !tbaa !10
  %i.kn = icmp eq i32 %i.kl, %i.km
  %i.ko = zext i1 %i.kn to i32
  store i32 %i.ko, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.isame, i64 40), align 8, !tbaa !10
  store i32 1, ptr @dchk3_.i__, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %lde_.exit240, %bb.x
  %i.kp = phi i32 [ 1, %lde_.exit240 ], [ %i.ku, %bb.x ]
  %storemerge199290 = phi i32 [ 1, %lde_.exit240 ], [ %i.kv, %bb.x ] ; 3 uses
  %.not210 = icmp ne i32 %i.kp, 0
  %.phi.trans.insert = sext i32 %storemerge199290 to i64
  %.phi.trans.insert408 = getelementptr [4 x i8], ptr @dchk3_.isame, i64 %.phi.trans.insert
  %.phi.trans.insert409 = getelementptr i8, ptr %.phi.trans.insert408, i64 -4
  %.pre410 = load i32, ptr %.phi.trans.insert409, align 4, !tbaa !10 ; 2 uses
  %i.kq = icmp ne i32 %.pre410, 0
  %narrow444 = and i1 %.not210, %i.kq
  %i.kr = zext i1 %narrow444 to i32               ; 2 uses
  store i32 %i.kr, ptr @dchk3_.same, align 4, !tbaa !10
  %.not211 = icmp eq i32 %.pre410, 0
  br i1 %.not211, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.ks = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %storemerge199290) ; 0 uses
  %.pre406 = load i32, ptr @dchk3_.same, align 4, !tbaa !10
  %.pre411 = load i32, ptr @dchk3_.i__, align 4, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w
  %i.kt = phi i32 [ %storemerge199290, %._crit_edge ], [ %.pre411, %bb.w ] ; 2 uses
  %i.ku = phi i32 [ %i.kr, %._crit_edge ], [ %.pre406, %bb.w ] ; 2 uses
  %i.kv = add nsw i32 %i.kt, 1                    ; 2 uses
  store i32 %i.kv, ptr @dchk3_.i__, align 4, !tbaa !10
  %i.kw = icmp slt i32 %i.kt, 11
  br i1 %i.kw, label %._crit_edge, label %bb.y, !llvm.loop !177

bb.y:                                             ; preds = %bb.x
  %.not200 = icmp eq i32 %i.ku, 0
  br i1 %.not200, label %.loopexit.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kx = load i32, ptr @dchk3_.null, align 4, !tbaa !10
  %.not201 = icmp eq i32 %i.kx, 0
  br i1 %.not201, label %sub_0263, label %bb.ah

sub_0263:                                         ; preds = %bb.z
  %i.ky = load i8, ptr %i.ak, align 1
  switch i8 %i.ky, label %.tail266.thread [
    i8 109, label %.tail262
    i8 115, label %.tail266
  ]

.tail262:                                         ; preds = %sub_0263
  %i.kz = load i8, ptr %i.al, align 1
  %i.la = icmp eq i8 %i.kz, 109
  br i1 %i.la, label %bb.aa, label %.tail266.thread

bb.aa:                                            ; preds = %.tail262
  %i.lb = load i32, ptr @dchk3_.left, align 4, !tbaa !10
  %.not207 = icmp eq i32 %i.lb, 0
  br i1 %.not207, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lc = tail call i32 @dmmch_(ptr noundef nonnull @dchk3_.transa, ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.alpha, ptr noundef %13, ptr noundef nonnull %12, ptr noundef %16, ptr noundef nonnull %12, ptr noundef nonnull @c_b104, ptr noundef %21, ptr noundef nonnull %12, ptr noundef %19, ptr noundef %20, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, ptr noundef %1, ptr noundef nonnull @dchk3_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  br label %.tail266.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ld = tail call i32 @dmmch_(ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk3_.transa, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.alpha, ptr noundef %16, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %12, ptr noundef nonnull @c_b104, ptr noundef %21, ptr noundef nonnull %12, ptr noundef %19, ptr noundef %20, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, ptr noundef %1, ptr noundef nonnull @dchk3_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  br label %.tail266.thread

.tail266:                                         ; preds = %sub_0263
  %i.le = load i8, ptr %i.al, align 1
  %i.lf = icmp eq i8 %i.le, 109
  br i1 %i.lf, label %bb.ad, label %.tail266.thread

bb.ad:                                            ; preds = %.tail266
  %i.lg = load i32, ptr @dchk3_.n, align 4, !tbaa !10 ; 2 uses
  %.not203297 = icmp slt i32 %i.lg, 1
  br i1 %.not203297, label %bb.ae, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.ad
  %i.lh = load i32, ptr @dchk3_.m, align 4, !tbaa !10 ; 5 uses
  %.not206291 = icmp slt i32 %i.lh, 1
  br i1 %.not206291, label %._crit_edge301, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %.lr.ph300
  %i.li = load i32, ptr @dchk3_.ldb, align 4      ; 2 uses
  %i.lj = add nuw i32 %i.lh, 1                    ; 2 uses
  %i.lk = sext i32 %i.li to i64                   ; 2 uses
  %i.ll = add nuw i32 %i.lg, 1
  %wide.trip.count397 = zext i32 %i.ll to i64     ; 3 uses
  %wide.trip.count392 = zext i32 %i.lj to i64     ; 3 uses
  %i.lm = shl nuw nsw i64 %wide.trip.count397, 3
  %i.ln = add nsw i64 %i.lm, -8
  %i.lo = mul i64 %i.ln, %i.am
  %i.lp = shl nuw nsw i64 %wide.trip.count392, 3  ; 2 uses
  %i.lq = add i64 %i.lo, %i.lp                    ; 2 uses
  %scevgep450 = getelementptr i8, ptr %scevgep449, i64 %i.lq
  %i.lr = shl nuw nsw i64 %wide.trip.count397, 3
  %i.ls = add nsw i64 %i.lr, -16
  %i.lt = mul i64 %i.ls, %i.lk
  %i.lu = getelementptr i8, ptr %scevgep451, i64 %i.lt
  %scevgep452 = getelementptr i8, ptr %i.lu, i64 %i.lp ; 2 uses
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.lq ; 2 uses
  %i.lv = insertelement <4 x ptr> <ptr poison, ptr getelementptr inbounds nuw (i8, ptr @dchk3_.alpha, i64 8), ptr poison, ptr poison>, ptr %scevgep452, i64 0 ; 2 uses
  %i.lw = insertelement <4 x ptr> %i.lv, ptr %scevgep455, i64 2
  %i.lx = shufflevector <4 x ptr> %i.lw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ly = shufflevector <4 x ptr> %i.lv, <4 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %i.lz = insertelement <2 x ptr> %i.ly, ptr %scevgep450, i64 0
  %i.ma = shufflevector <2 x ptr> %i.lz, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mb = zext nneg i32 %i.lh to i64
  %i.mc = zext nneg i32 %i.lh to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.lh, 16
  %i.md = icmp ult <4 x ptr> %i.av, %i.lx
  %i.me = icmp ult <4 x ptr> %i.ax, %i.ma
  %i.mf = or i32 %i.li, %i.g
  %24 = icmp slt i32 %i.mf, 0
  %i.mg = and <4 x i1> %i.md, %i.me
  %bound0472 = icmp ult ptr %17, %scevgep455
  %bound1473 = icmp ult ptr %scevgep453, %scevgep452
  %found.conflict474 = and i1 %bound0472, %bound1473
  %25 = bitcast <4 x i1> %i.mg to i4
  %26 = icmp ne i4 %25, 0
  %op.rdx = or i1 %26, %found.conflict474
  %op.rdx.a = or i1 %op.rdx, %24
  %n.vec = and i64 %i.mc, 2147483640              ; 3 uses
  %i.mh = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.mc
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %._crit_edge295
  %indvars.iv394 = phi i64 [ 1, %.lr.ph294.preheader ], [ %indvars.iv.next395, %._crit_edge295 ] ; 3 uses
  %i.mi = add nsw i64 %indvars.iv394, -1
  %i.mj = mul nsw i64 %i.mi, %i.lk
  %i.mk = mul nsw i64 %indvars.iv394, %i.am       ; 6 uses
  %i.ml = getelementptr [8 x i8], ptr %i.k, i64 %i.mj ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx.a
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph294
  %i.mm = load double, ptr @dchk3_.alpha, align 8, !tbaa !14, !alias.scope !194
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.mm, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mn = or disjoint i64 %index, 1               ; 2 uses
  %i.mo = getelementptr [8 x i8], ptr %i.ml, i64 %i.mn ; 3 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mo, align 8, !tbaa !14, !alias.scope !195, !noalias !196
  %wide.load478 = load <4 x double>, ptr %i.mp, align 8, !tbaa !14, !alias.scope !195, !noalias !196
  %i.mq = add nsw i64 %i.mn, %i.mk                ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  store <4 x double> %wide.load, ptr %i.mr, align 8, !tbaa !14, !alias.scope !197, !noalias !198
  store <4 x double> %wide.load478, ptr %i.ms, align 8, !tbaa !14, !alias.scope !197, !noalias !198
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mq ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %wide.load479 = load <4 x double>, ptr %i.mt, align 8, !tbaa !14, !alias.scope !199
  %wide.load480 = load <4 x double>, ptr %i.mu, align 8, !tbaa !14, !alias.scope !199
  %i.mv = fmul <4 x double> %broadcast.splat, %wide.load479
  %i.mw = fmul <4 x double> %broadcast.splat, %wide.load480
  store <4 x double> %i.mv, ptr %i.mo, align 8, !tbaa !14, !alias.scope !195, !noalias !196
  store <4 x double> %i.mw, ptr %i.mp, align 8, !tbaa !14, !alias.scope !195, !noalias !196
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge295, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph294, %middle.block
  %indvars.iv389.ph = phi i64 [ %i.mh, %middle.block ], [ 1, %.lr.ph294 ] ; 4 uses
  %i.my = sub nsw i64 %wide.trip.count392, %indvars.iv389.ph
  %i.mz = sub nsw i64 %i.mb, %indvars.iv389.ph
  %xtraiter545 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv389.prol = phi i64 [ %indvars.iv.next390.prol, %scalar.ph.prol ], [ %indvars.iv389.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter547 = phi i64 [ %prol.iter547.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.na = getelementptr [8 x i8], ptr %i.ml, i64 %indvars.iv389.prol ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !14
  %i.nc = add nsw i64 %indvars.iv389.prol, %i.mk  ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nc
  store double %i.nb, ptr %i.nd, align 8, !tbaa !14
  %i.ne = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nc
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !14
  %i.nh = fmul double %i.ne, %i.ng
  store double %i.nh, ptr %i.na, align 8, !tbaa !14
  %indvars.iv.next390.prol = add nuw nsw i64 %indvars.iv389.prol, 1 ; 2 uses
  %prol.iter547.next = add i64 %prol.iter547, 1   ; 2 uses
  %prol.iter547.cmp.not = icmp eq i64 %prol.iter547.next, %xtraiter545
  br i1 %prol.iter547.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !184

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv389.unr = phi i64 [ %indvars.iv389.ph, %scalar.ph.preheader ], [ %indvars.iv.next390.prol, %scalar.ph.prol ]
  %i.ni = icmp ult i64 %i.mz, 3
  br i1 %i.ni, label %._crit_edge295, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv389 = phi i64 [ %indvars.iv.next390.3, %scalar.ph ], [ %indvars.iv389.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nj = getelementptr [8 x i8], ptr %i.ml, i64 %indvars.iv389 ; 2 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !14
  %i.nl = add nsw i64 %indvars.iv389, %i.mk       ; 2 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nl
  store double %i.nk, ptr %i.nm, align 8, !tbaa !14
  %i.nn = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.no = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nl
  %i.np = load double, ptr %i.no, align 8, !tbaa !14
  %i.nq = fmul double %i.nn, %i.np
  store double %i.nq, ptr %i.nj, align 8, !tbaa !14
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %i.nr = getelementptr [8 x i8], ptr %i.ml, i64 %indvars.iv.next390 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !14
  %i.nt = add nsw i64 %indvars.iv.next390, %i.mk  ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nt
  store double %i.ns, ptr %i.nu, align 8, !tbaa !14
  %i.nv = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nt
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !14
  %i.ny = fmul double %i.nv, %i.nx
  store double %i.ny, ptr %i.nr, align 8, !tbaa !14
  %indvars.iv.next390.1 = add nuw nsw i64 %indvars.iv389, 2 ; 2 uses
  %i.nz = getelementptr [8 x i8], ptr %i.ml, i64 %indvars.iv.next390.1 ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !14
  %i.ob = add nsw i64 %indvars.iv.next390.1, %i.mk ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ob
  store double %i.oa, ptr %i.oc, align 8, !tbaa !14
  %i.od = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ob
  %i.of = load double, ptr %i.oe, align 8, !tbaa !14
  %i.og = fmul double %i.od, %i.of
  store double %i.og, ptr %i.nz, align 8, !tbaa !14
  %indvars.iv.next390.2 = add nuw nsw i64 %indvars.iv389, 3 ; 2 uses
  %i.oh = getelementptr [8 x i8], ptr %i.ml, i64 %indvars.iv.next390.2 ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !14
  %i.oj = add nsw i64 %indvars.iv.next390.2, %i.mk ; 2 uses
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.oj
  store double %i.oi, ptr %i.ok, align 8, !tbaa !14
  %i.ol = load double, ptr @dchk3_.alpha, align 8, !tbaa !14
  %i.om = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.oj
  %i.on = load double, ptr %i.om, align 8, !tbaa !14
  %i.oo = fmul double %i.ol, %i.on
  store double %i.oo, ptr %i.oh, align 8, !tbaa !14
  %indvars.iv.next390.3 = add nuw nsw i64 %indvars.iv389, 4 ; 2 uses
  %exitcond393.not.3 = icmp eq i64 %indvars.iv.next390.3, %wide.trip.count392
  br i1 %exitcond393.not.3, label %._crit_edge295, label %scalar.ph, !llvm.loop !185

._crit_edge295:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count397
  br i1 %exitcond398.not, label %._crit_edge301, label %.lr.ph294, !llvm.loop !186

._crit_edge301:                                   ; preds = %._crit_edge295, %.lr.ph300
  %.us-phi303 = phi i32 [ 1, %.lr.ph300 ], [ %i.lj, %._crit_edge295 ]
  store i32 %.us-phi303, ptr @dchk3_.i__, align 4, !tbaa !10
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge301, %bb.ad
  %i.op = load i32, ptr @dchk3_.left, align 4, !tbaa !10
  %.not204 = icmp eq i32 %i.op, 0
  br i1 %.not204, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oq = tail call i32 @dmmch_(ptr noundef nonnull @dchk3_.transa, ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @c_b90, ptr noundef %13, ptr noundef nonnull %12, ptr noundef %21, ptr noundef nonnull %12, ptr noundef nonnull @c_b104, ptr noundef %16, ptr noundef nonnull %12, ptr noundef %19, ptr noundef %20, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, ptr noundef %1, ptr noundef nonnull @dchk3_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_false, i32 poison, i32 poison) ; 0 uses
  br label %.tail266.thread

bb.ag:                                            ; preds = %bb.ae
  %i.or = tail call i32 @dmmch_(ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk3_.transa, ptr noundef nonnull @dchk3_.m, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @dchk3_.n, ptr noundef nonnull @c_b90, ptr noundef %21, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %12, ptr noundef nonnull @c_b104, ptr noundef %16, ptr noundef nonnull %12, ptr noundef %19, ptr noundef %20, ptr noundef %17, ptr noundef nonnull @dchk3_.ldb, ptr noundef %1, ptr noundef nonnull @dchk3_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_false, i32 poison, i32 poison) ; 0 uses
  br label %.tail266.thread

.tail266.thread:                                  ; preds = %sub_0263, %.tail262, %.tail266, %bb.ag, %bb.af, %bb.ab, %bb.ac
  %i.os = load double, ptr @dchk3_.errmax, align 8, !tbaa !14 ; 2 uses
  %i.ot = load double, ptr @dchk3_.err, align 8, !tbaa !14 ; 2 uses
  %i.ou = fcmp oge double %i.os, %i.ot
  %i.ov = select i1 %i.ou, double %i.os, double %i.ot
  store double %i.ov, ptr @dchk3_.errmax, align 8, !tbaa !14
  %i.ow = load i32, ptr %7, align 4, !tbaa !10
  %.not208 = icmp eq i32 %i.ow, 0
  br i1 %.not208, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.z, %.tail266.thread
  %i.ox = load i32, ptr @dchk3_.ia, align 4, !tbaa !10 ; 2 uses
  %i.oy = add nsw i32 %i.ox, 1                    ; 2 uses
  store i32 %i.oy, ptr @dchk3_.ia, align 4, !tbaa !10
  %.not189.not = icmp slt i32 %i.ox, %i.cs
  br i1 %.not189.not, label %.lr.ph308, label %._crit_edge309.loopexit, !llvm.loop !187

._crit_edge309.loopexit:                          ; preds = %bb.ah
  %.pre412 = load i32, ptr @dchk3_.icd, align 4, !tbaa !10
  br label %._crit_edge309

._crit_edge309:                                   ; preds = %._crit_edge309.loopexit, %.split
  %i.oz = phi i32 [ %.pre412, %._crit_edge309.loopexit ], [ %storemerge187310, %.split ] ; 2 uses
  %i.pa = add nsw i32 %i.oz, 1                    ; 2 uses
  store i32 %i.pa, ptr @dchk3_.icd, align 4, !tbaa !10
  %i.pb = icmp slt i32 %i.oz, 2
  br i1 %i.pb, label %.splitthread-pre-split, label %.split312.loopexit, !llvm.loop !188

.split312.loopexit:                               ; preds = %._crit_edge309
  %.pre413 = load i32, ptr @dchk3_.ict, align 4, !tbaa !10
  br label %.split312

.split312:                                        ; preds = %.split312.loopexit, %.split.us
  %i.pc = phi i32 [ %.pre413, %.split312.loopexit ], [ %storemerge186316, %.split.us ] ; 2 uses
  %i.pd = add nsw i32 %i.pc, 1                    ; 2 uses
  store i32 %i.pd, ptr @dchk3_.ict, align 4, !tbaa !10
  %i.pe = icmp slt i32 %i.pc, 3
  br i1 %i.pe, label %.split317, label %.split319.loopexit, !llvm.loop !189

.split319.loopexit:                               ; preds = %.split312
  %.pre414 = load i32, ptr @dchk3_.icu, align 4, !tbaa !10
  br label %.split319

.split319:                                        ; preds = %.split319.loopexit, %.split317.us
  %i.pf = phi i32 [ %.pre414, %.split319.loopexit ], [ %storemerge185328, %.split317.us ] ; 2 uses
  %i.pg = add nsw i32 %i.pf, 1                    ; 2 uses
  store i32 %i.pg, ptr @dchk3_.icu, align 4, !tbaa !10
  %i.ph = icmp slt i32 %i.pf, 2
  br i1 %i.ph, label %.split329, label %.split331.loopexit, !llvm.loop !190

end_hunk_1

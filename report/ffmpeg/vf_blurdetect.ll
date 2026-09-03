Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blurdetect?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@blurdetect_filter_frame:bb.a
  %.2199.i = phi ptr [ %i.hy, %.critedge3.i ], [ %.0197314.i, %.critedge.i ], [ %i.hv, %bb.ae ] ; 3 uses
  %.2196.i = phi ptr [ %i.hx, %.critedge3.i ], [ %.1195.lcssa.i, %.critedge.i ], [ %.1195.lcssa.i, %bb.ae ] ; 3 uses
  %.not232.i = icmp ugt ptr %.2196.i, %.2199.i
  br i1 %.not232.i, label %._crit_edge.loopexit.i, label %.preheader.i, !llvm.loop !60

._crit_edge.loopexit.i:                           ; preds = %.critedge237.i
  %.pre.i = load float, ptr %i.hc, align 4, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ab
  %i.hz = phi float [ %i.hp, %bb.ab ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0197.lcssa.i = phi ptr [ %i.he, %bb.ab ], [ %.2199.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0194.lcssa.i = phi ptr [ %i.hf, %bb.ab ], [ %.2196.i, %._crit_edge.loopexit.i ] ; 7 uses
  %i.ia = load float, ptr %.0194.lcssa.i, align 4, !tbaa !21
  store float %i.hz, ptr %.0194.lcssa.i, align 4, !tbaa !21
  store float %i.ia, ptr %i.hc, align 4, !tbaa !21
  %.not233.i = icmp eq i32 %.1201.i, 0
  br i1 %.not233.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  %i.ib = getelementptr inbounds i8, ptr %.0194.lcssa.i, i64 -4
  %i.ic = icmp eq ptr %i.hk, %i.ib
  %i.id = icmp eq ptr %i.hk, %.0194.lcssa.i
  %or.cond238.i = or i1 %i.id, %i.ic
  br i1 %or.cond238.i, label %.preheader261.i, label %bb.ah

.preheader261.i:                                  ; preds = %bb.af, %bb.ag
  %.0193.i = phi ptr [ %i.if, %bb.ag ], [ %.0205319.i, %bb.af ] ; 4 uses
  %i.ie = icmp ult ptr %.0193.i, %.0202320.i
  br i1 %i.ie, label %bb.ag, label %.critedge5.i

bb.ag:                                            ; preds = %.preheader261.i
  %i.if = getelementptr inbounds nuw i8, ptr %.0193.i, i64 4 ; 2 uses
  %.0193.val.i = load float, ptr %.0193.i, align 4, !tbaa !21
  %.val239.i = load float, ptr %i.if, align 4, !tbaa !21
  %i.ig = fcmp nsz ule float %.0193.val.i, %.val239.i
  br i1 %i.ig, label %.preheader261.i, label %.critedge5.i, !llvm.loop !61

.critedge5.i:                                     ; preds = %bb.ag, %.preheader261.i
  %i.ih = icmp eq ptr %.0193.i, %.0202320.i
  br i1 %i.ih, label %.thread.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge5.i, %bb.af, %._crit_edge.i
  %i.ii = ptrtoint ptr %.0194.lcssa.i to i64      ; 2 uses
  %i.ij = sub i64 %i.hg, %i.ii
  %i.ik = sub i64 %i.ii, %i.hh
  %i.il = icmp slt i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.im = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv358.i ; 2 uses
  store ptr %.0205319.i, ptr %i.im, align 16, !tbaa !78
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %.0197.lcssa.i, ptr %i.in, align 8, !tbaa !78
  %i.io = getelementptr inbounds nuw i8, ptr %.0194.lcssa.i, i64 4
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ip = getelementptr inbounds nuw i8, ptr %.0194.lcssa.i, i64 4
  %i.iq = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv358.i ; 2 uses
  store ptr %i.ip, ptr %i.iq, align 16, !tbaa !78
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.0202320.i, ptr %i.ir, align 8, !tbaa !78
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1206.i = phi ptr [ %i.io, %bb.ai ], [ %.0205319.i, %bb.aj ] ; 2 uses
  %.1203.i = phi ptr [ %.0202320.i, %bb.ai ], [ %.0197.lcssa.i, %bb.aj ] ; 2 uses
  %indvars.iv.next359.i = add nsw i64 %indvars.iv358.i, 1 ; 2 uses
  %i.is = icmp ult ptr %.1206.i, %.1203.i
  br i1 %i.is, label %.lr.ph322.i, label %.thread.loopexit.i

bb.al:                                            ; preds = %.lr.ph322.i
  %i.it = trunc nsw i64 %indvars.iv358.i to i32   ; 2 uses
  %.0205.val.i = load float, ptr %.0205319.i, align 4, !tbaa !21 ; 2 uses
  %.0202.val.i = load float, ptr %.0202320.i, align 4, !tbaa !21 ; 2 uses
  %i.iu = fcmp nsz ogt float %.0205.val.i, %.0202.val.i
  br i1 %i.iu, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  store float %.0205.val.i, ptr %.0202320.i, align 4, !tbaa !21
  store float %.0202.val.i, ptr %.0205319.i, align 4, !tbaa !21
  br label %.thread.i

.thread.loopexit.i:                               ; preds = %bb.ak, %.critedge5.i, %bb.aa
  %.1209270.ph.in.i = phi i64 [ %indvars.iv358.i, %.critedge5.i ], [ %indvars.iv358.i, %bb.aa ], [ %indvars.iv.next359.i, %bb.ak ]
  %.1209270.ph.i = trunc i64 %.1209270.ph.in.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.am, %bb.al, %bb.r
  %.1209270.i = phi i32 [ %i.it, %bb.am ], [ %i.it, %bb.al ], [ %i.gt, %bb.r ], [ %.1209270.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1209270.i, 0
  br i1 %.not.i, label %bb.an, label %bb.r, !llvm.loop !62

bb.an:                                            ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.iv = sitofp nsz i32 %.0192.lcssa.i to float
  %i.iw = fmul nsz float %i.ce, %i.iv
  %i.ix = tail call nsz float @llvm.ceil.f32(float %i.iw)
  %i.iy = fptosi float %i.ix to i32               ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph331.preheader.i, label %calculate_blur.exit

.lr.ph331.preheader.i:                            ; preds = %bb.an
  %wide.trip.count365.i = zext nneg i32 %i.iy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count365.i, 7    ; 3 uses
  %i.ja = icmp ult i32 %i.iy, 8
  br i1 %i.ja, label %.lr.ph331.i.epil.preheader, label %.lr.ph331.preheader.i.new

.lr.ph331.preheader.i.new:                        ; preds = %.lr.ph331.preheader.i
  %unroll_iter = and i64 %wide.trip.count365.i, 2147483640
  br label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %.lr.ph331.i, %.lr.ph331.preheader.i.new
  %indvars.iv361.i = phi i64 [ 0, %.lr.ph331.preheader.i.new ], [ %indvars.iv.next362.i.7, %.lr.ph331.i ] ; 9 uses
  %.0191328.i = phi float [ 0.000000e+00, %.lr.ph331.preheader.i.new ], [ %i.kf, %.lr.ph331.i ]
  %niter = phi i64 [ 0, %.lr.ph331.preheader.i.new ], [ %niter.next.7, %.lr.ph331.i ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !21
  %i.jd = fadd nsz float %.0191328.i, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !21
  %i.jh = fadd nsz float %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !21
  %i.jl = fadd nsz float %i.jh, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !21
  %i.jp = fadd nsz float %i.jl, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load float, ptr %i.jr, align 4, !tbaa !21
  %i.jt = fadd nsz float %i.jp, %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !21
  %i.jx = fadd nsz float %i.jt, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !21
  %i.kb = fadd nsz float %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 28
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !21
  %i.kf = fadd nsz float %i.kb, %i.ke             ; 3 uses
  %indvars.iv.next362.i.7 = add nuw nsw i64 %indvars.iv361.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %calculate_blur.exit.loopexit.unr-lcssa, label %.lr.ph331.i, !llvm.loop !63

calculate_blur.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph331.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %calculate_blur.exit, label %.lr.ph331.i.epil.preheader

.lr.ph331.i.epil.preheader:                       ; preds = %calculate_blur.exit.loopexit.unr-lcssa, %.lr.ph331.preheader.i
  %indvars.iv361.i.epil.init = phi i64 [ 0, %.lr.ph331.preheader.i ], [ %indvars.iv.next362.i.7, %calculate_blur.exit.loopexit.unr-lcssa ]
  %.0191328.i.epil.init = phi float [ 0.000000e+00, %.lr.ph331.preheader.i ], [ %i.kf, %calculate_blur.exit.loopexit.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph331.i.epil

.lr.ph331.i.epil:                                 ; preds = %.lr.ph331.i.epil, %.lr.ph331.i.epil.preheader
  %indvars.iv361.i.epil = phi i64 [ %indvars.iv361.i.epil.init, %.lr.ph331.i.epil.preheader ], [ %indvars.iv.next362.i.epil, %.lr.ph331.i.epil ] ; 2 uses
  %.0191328.i.epil = phi float [ %.0191328.i.epil.init, %.lr.ph331.i.epil.preheader ], [ %i.ki, %.lr.ph331.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph331.i.epil.preheader ], [ %epil.iter.next, %.lr.ph331.i.epil ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv361.i.epil
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !21
  %i.ki = fadd nsz float %.0191328.i.epil, %i.kh  ; 2 uses
  %indvars.iv.next362.i.epil = add nuw nsw i64 %indvars.iv361.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %calculate_blur.exit, label %.lr.ph331.i.epil, !llvm.loop !64

calculate_blur.exit:                              ; preds = %calculate_blur.exit.loopexit.unr-lcssa, %.lr.ph331.i.epil, %bb.an
  %.0191.lcssa.i = phi float [ 0.000000e+00, %bb.an ], [ %i.kf, %calculate_blur.exit.loopexit.unr-lcssa ], [ %i.ki, %.lr.ph331.i.epil ]
  %i.kj = sitofp nsz i32 %i.iy to float
  %i.kk = fdiv nsz float %.0191.lcssa.i, %i.kj
  %i.kl = fadd nsz float %.098112, %i.kk
  %.pre = load i32, ptr %i.r, align 8, !tbaa !44
  br label %bb.ao

bb.ao:                                            ; preds = %bb.e, %calculate_blur.exit
  %i.km = phi i32 [ %.pre, %calculate_blur.exit ], [ %i.bc, %bb.e ] ; 2 uses
  %.199 = phi nsz float [ %i.kl, %calculate_blur.exit ], [ %.098112, %bb.e ] ; 3 uses
  %.1 = phi i32 [ %i.br, %calculate_blur.exit ], [ %.097113, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next, %i.kn
  br i1 %i.ko, label %bb.c, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @blurdetect_config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80
  %i.l = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.k) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load <2 x i8>, ptr %i.m, align 1, !tbaa !51
  %i.p = zext <2 x i8> %i.o to <2 x i32>
  store <2 x i32> %i.p, ptr %i.n, align 8, !tbaa !47
  %i.q = load i32, ptr %i.j, align 4, !tbaa !80
  %i.r = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.q) #9
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !50
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = load <2 x i32>, ptr %i.e, align 8, !tbaa !47
  store <2 x i32> %i.z, ptr %i.t, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = sext i32 %i.i to i64                    ; 4 uses
  %i.ab = tail call noalias ptr @av_malloc(i64 noundef %i.aa) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !40
  %i.ad = tail call noalias ptr @av_malloc(i64 noundef %i.aa) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !41
  %i.af = tail call noalias ptr @av_calloc(i64 noundef %i.aa, i64 noundef 2) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !42
  %i.ah = tail call noalias ptr @av_malloc(i64 noundef %i.aa) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !43
  %1 = load <2 x i32>, ptr %i.e, align 8, !tbaa !47
  %2 = load <2 x i32>, ptr %i.t, align 8, !tbaa !47
  %3 = sdiv <2 x i32> %1, %2                      ; 2 uses
  %4 = extractelement <2 x i32> %3, i64 0
  %5 = extractelement <2 x i32> %3, i64 1
  %i.aj = mul nsw i32 %5, %4
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noalias ptr @av_calloc(i64 noundef %i.ak, i64 noundef 4) #9 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !48
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !40
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !41
  %.not35 = icmp eq ptr %i.ao, null
  br i1 %.not35, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !42
  %.not36 = icmp eq ptr %i.ap, null
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !43
  %.not37 = icmp eq ptr %i.aq, null
  %.not38 = icmp eq ptr %i.al, null
  %or.cond = select i1 %.not37, i1 true, i1 %.not38
  %spec.select = select i1 %or.cond, i32 -12, i32 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ -12, %bb.d ], [ %spec.select, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @ff_gaussian_blur_8(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_sobel_8(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @ff_non_maximum_suppression(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_double_threshold(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #4

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"p1 float", !9, i64 0}
!25 = !{!"p1 short", !9, i64 0}
!26 = !{!"BLRContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !20, i64 20, !20, i64 24, !5, i64 28, !5, i64 29, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !22, i64 56, !23, i64 64, !24, i64 72, !12, i64 80, !12, i64 88, !25, i64 96, !12, i64 104}
!27 = !{!26, !5, i64 28}
!28 = !{!26, !5, i64 29}
!29 = !{!26, !23, i64 64}
!30 = !{!26, !22, i64 56}
!31 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!32 = !{!"AVRational", !6, i64 0, !6, i64 4}
!33 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!34 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!35 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!36 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!37 = !{!"AVFilterFormatsConfig", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!38 = !{!"AVFilterLink", !31, i64 0, !13, i64 8, !31, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !32, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !33, i64 72, !32, i64 96, !34, i64 104, !6, i64 112, !6, i64 116, !37, i64 120, !37, i64 168}
!39 = !{!38, !31, i64 16}
!40 = !{!26, !12, i64 88}
!41 = !{!26, !12, i64 80}
!42 = !{!26, !25, i64 96}
!43 = !{!26, !12, i64 104}
!44 = !{!26, !6, i64 16}
!45 = !{!38, !6, i64 44}
!46 = !{!38, !6, i64 40}
!47 = !{!6, !6, i64 0}
!48 = !{!26, !24, i64 72}
!49 = !{!26, !6, i64 40}
!50 = !{!26, !6, i64 44}
!51 = !{!5, !5, i64 0}
!52 = distinct !{!52, !76}
!53 = distinct !{!53, !76}
!54 = distinct !{!54, !76}
!55 = distinct !{!55, !76}
!56 = distinct !{!56, !76}
!57 = distinct !{!57, !76}
!58 = distinct !{!58, !76}
!59 = distinct !{!59, !76}
!60 = distinct !{!60, !76}
!61 = distinct !{!61, !76}
!62 = distinct !{!62, !76}
!63 = distinct !{!63, !76}
!64 = distinct !{!64, !79}
!65 = distinct !{!65, !76}
!66 = !{!18, !15, i64 56}
!67 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"FilterLink", !38, i64 0, !16, i64 216, !23, i64 224, !23, i64 232, !6, i64 240, !6, i64 244, !23, i64 248, !23, i64 256, !23, i64 264, !23, i64 272, !32, i64 280, !17, i64 288}
!70 = !{!69, !23, i64 248}
!71 = !{!26, !6, i64 8}
!72 = !{!26, !6, i64 12}
!73 = !{!26, !6, i64 48}
!74 = !{!12, !12, i64 0}
!75 = !{!26, !6, i64 36}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!26, !6, i64 32}
!78 = !{!9, !9, i64 0}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!38, !6, i64 36}
end_hunk_0

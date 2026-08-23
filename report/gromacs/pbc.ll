Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf:bb.a
  %.sroa.9.0 = phi float [ %i.io, %bb.bn ], [ %i.io, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 3 uses
  %.sroa.10.0 = phi float [ %.sroa.speculated.1, %bb.bn ], [ %.sroa.speculated238.1, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 4 uses
  %i.iw = fmul float %.sroa.10.0, %.sroa.10.0
  %i.ix = fadd float %i.ig, %i.iw
  %i.iy = fadd float %.sroa.10.0, %.sroa.9.0      ; 5 uses
  %i.iz = fmul float %i.iy, %i.iy
  %i.ja = fadd float %i.ii, %i.iz
  %i.jb = load float, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  %i.jc = load float, ptr %i.gz, align 4, !tbaa !23 ; 2 uses
  %i.jd = fmul float %i.jc, %i.hm
  %i.je = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.jb, float %i.jd)
  %i.jf = load float, ptr %i.av, align 4, !tbaa !23 ; 2 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.jf, float %i.je) ; 6 uses
  %i.jh = icmp eq i32 %i.hs, 2
  br i1 %i.jh, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = fcmp olt float %i.jg, 0.000000e+00
  br i1 %i.ji, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jj = load float, ptr %i.az, align 4, !tbaa !23 ; 2 uses
  %i.jk = fcmp ogt float %i.jj, %i.jg
  %.sroa.speculated.v.2 = select i1 %i.jk, float %i.jg, float %i.jj
  %.sroa.speculated.2 = fneg float %.sroa.speculated.v.2
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.jl = fneg float %i.jg                        ; 2 uses
  %i.jm = load float, ptr %i.az, align 4, !tbaa !23 ; 2 uses
  %i.jn = fcmp ogt float %i.jm, %i.jl
  %.sroa.speculated238.2 = select i1 %i.jn, float %i.jl, float %i.jm
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bs, %bb.br
  %.sroa.16.0 = phi float [ %i.jg, %bb.br ], [ %i.jg, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 3 uses
  %.sroa.18.0 = phi float [ %.sroa.speculated.2, %bb.br ], [ %.sroa.speculated238.2, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 4 uses
  %i.jo = fmul float %.sroa.18.0, %.sroa.18.0
  %i.jp = fadd float %i.ix, %i.jo                 ; 2 uses
  %i.jq = fadd float %.sroa.18.0, %.sroa.16.0     ; 5 uses
  %i.jr = fmul float %i.jq, %i.jq
  %i.js = fadd float %i.ja, %i.jr                 ; 2 uses
  %i.jt = fmul float %i.js, 1.001000e+00          ; 4 uses
  %i.ju = fcmp olt float %i.jt, %i.jp
  br i1 %i.ju, label %.preheader246.preheader, label %bb.bz

.preheader:                                       ; preds = %.preheader246.preheader
  %i.jv = fneg float %i.hr                        ; 3 uses
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.ht, float %i.ih) ; 2 uses
  %i.jx = fmul float %i.jw, %i.jw
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.ij, float %i.iy) ; 2 uses
  %i.jz = fmul float %i.jy, %i.jy
  %i.ka = fadd float %i.jx, %i.jz
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jb, float %i.jq) ; 2 uses
  %i.kc = fmul float %i.kb, %i.kb
  %i.kd = fadd float %i.ka, %i.kc
  %i.ke = fcmp ugt float %i.kd, %i.jt
  br label %.preheader246.1

.preheader246.1:                                  ; preds = %.preheader, %.preheader246.preheader
  %.2 = phi i1 [ %i.ke, %.preheader ], [ true, %.preheader246.preheader ] ; 2 uses
  br i1 %.not229.1, label %.preheader246.2, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader246.1
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hu, float %i.ih) ; 2 uses
  %i.kg = fmul float %i.kf, %i.kf
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.ik, float %i.iy) ; 2 uses
  %i.ki = fmul float %i.kh, %i.kh
  %i.kj = fadd float %i.kg, %i.ki
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.jc, float %i.jq) ; 2 uses
  %i.kl = fmul float %i.kk, %i.kk
  %i.km = fadd float %i.kj, %i.kl
  %i.kn = fcmp ugt float %i.km, %i.jt
  %.1.1 = select i1 %i.kn, i1 %.2, i1 false
  br label %.preheader246.2

.preheader246.2:                                  ; preds = %.preheader.1, %.preheader246.1
  %.2.1 = phi i1 [ %.1.1, %.preheader.1 ], [ %.2, %.preheader246.1 ] ; 2 uses
  br i1 %.not229.2, label %bb.bu, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader246.2
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hx, float %i.ih) ; 2 uses
  %i.kp = fmul float %i.ko, %i.ko
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.in, float %i.iy) ; 2 uses
  %i.kr = fmul float %i.kq, %i.kq
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.jf, float %i.jq) ; 2 uses
  %i.ku = fmul float %i.kt, %i.kt
  %i.kv = fadd float %i.ks, %i.ku
  %i.kw = fcmp ugt float %i.kv, %i.jt
  %.1.2 = select i1 %i.kw, i1 %.2.1, i1 false
  br i1 %.1.2, label %bb.bv, label %bb.bz

bb.bu:                                            ; preds = %.preheader246.2
  br i1 %.2.1, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.preheader.2, %bb.bu
  %i.kx = load i32, ptr %i.ah, align 4, !tbaa !25 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 11
  br i1 %i.ky, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.la = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.42, i32 noundef 12) #31 ; 0 uses
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !26
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %i.lb, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef 3)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.lc = sext i32 %i.kx to i64                   ; 2 uses
  %i.ld = getelementptr inbounds [12 x i8], ptr %i.gw, i64 %i.lc ; 3 uses
  store float %.sroa.0342.0, ptr %i.ld, align 4, !tbaa !23
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store float %.sroa.9.0, ptr %i.le, align 4, !tbaa !23
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store float %.sroa.16.0, ptr %i.lf, align 4, !tbaa !23
  %i.lg = getelementptr inbounds [12 x i8], ptr %i.gx, i64 %i.lc ; 3 uses
  store i32 %i.hp, ptr %i.lg, align 4, !tbaa !36
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  store i32 %i.hi, ptr %i.lh, align 4, !tbaa !36
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i32 %i.hb, ptr %i.li, align 4, !tbaa !36
  %i.lj = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.lk = add nsw i32 %i.lj, 1                    ; 2 uses
  store i32 %i.lk, ptr %i.ah, align 4, !tbaa !25
  %i.ll = load ptr, ptr @debug, align 8, !tbaa !26 ; 2 uses
  %.not228 = icmp eq ptr %i.ll, null
  br i1 %.not228, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lm = tail call noundef float @sqrtf(float noundef %i.jp) #20
  %i.ln = fpext float %i.lm to double
  %i.lo = tail call noundef float @sqrtf(float noundef %i.js) #20
  %i.lp = fpext float %i.lo to double
  %i.lq = fpext float %.sroa.0342.0 to double
  %i.lr = fpext float %.sroa.9.0 to double
  %i.ls = fpext float %.sroa.16.0 to double
  %i.lt = fpext float %.sroa.0.0 to double
  %i.lu = fpext float %.sroa.10.0 to double
  %i.lv = fpext float %.sroa.18.0 to double
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ll, ptr noundef nonnull @.str.43, i32 noundef %i.lk, i32 noundef %i.hp, i32 noundef %i.hi, i32 noundef %i.hb, double noundef %i.ln, double noundef %i.lp, double noundef %i.lq, double noundef %i.lr, double noundef %i.ls, double noundef %i.lt, double noundef %i.lu, double noundef %i.lv) #20 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bt, %bb.bw, %bb.by, %bb.bx, %bb.bu, %.preheader.2, %.preheader247.split
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next319, 3
  br i1 %exitcond321.not, label %.loopexit, label %.preheader247.split, !llvm.loop !40

.loopexit:                                        ; preds = %bb.bz, %.preheader247, %bb.bg
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next323, 3
  br i1 %exitcond325.not, label %.loopexit249, label %bb.bg, !llvm.loop !41

.loopexit249:                                     ; preds = %.loopexit, %bb.bf
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next327, 3
  br i1 %exitcond329.not, label %.loopexit250, label %bb.bf, !llvm.loop !42

.loopexit250.sink.split:                          ; preds = %_Z16numPbcDimensions7PbcType.exit, %_Z16numPbcDimensions7PbcType.exit.thread, %bb.e
  %.sink = phi i32 [ 10, %bb.e ], [ 9, %_Z16numPbcDimensions7PbcType.exit.thread ], [ 9, %_Z16numPbcDimensions7PbcType.exit ]
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.lx, align 4, !tbaa !19
  br label %.loopexit250

.loopexit250:                                     ; preds = %.loopexit249, %.loopexit250.sink.split, %_Z11max_cutoff27PbcTypePA3_Kf.exit
  ret void

bb.ca:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fc, %bb.aw ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z10set_pbc_ddP5t_pbc7PbcTypePKN3gmx11BasicVectorIiEEbPA3_Kf(ptr nofree noundef captures(ret: address, provenance) initializes((0, 4)) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 4, !tbaa !33
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %4)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 3
  br i1 %i.d, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.e = load i32, ptr %2, align 4, !tbaa !36
  %.fr38 = freeze i32 %i.e
  %i.f = icmp sgt i32 %.fr38, 1
  %spec.select = select i1 %i.f, i32 0, i32 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.g = select i1 %3, i32 1, i32 2
  br label %.split.us.preheader

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.h = select i1 %3, i32 1, i32 2               ; 3 uses
  %i.i = icmp eq i32 %1, 2
  br i1 %i.i, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %.thread, %bb.f
  %i.j = phi i32 [ %i.g, %.thread ], [ %i.h, %bb.f ] ; 3 uses
  %.02945 = phi i32 [ %spec.select, %.thread ], [ %1, %bb.f ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.k = load i32, ptr %2, align 4, !tbaa !36
  %.not.us = icmp sle i32 %i.k, %i.j              ; 3 uses
  %spec.store.select = zext i1 %.not.us to i32
  store i32 %spec.store.select, ptr %i.a, align 4
  %spec.select49 = zext i1 %.not.us to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %.not.us.1 = icmp sgt i32 %i.n, %i.j
  br i1 %.not.us.1, label %.split.us.2, label %bb.g

.split.preheader:                                 ; preds = %bb.f
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.o = load i32, ptr %2, align 4, !tbaa !36
  %.not = icmp sle i32 %i.o, %i.h                 ; 3 uses
  %spec.store.select50 = zext i1 %.not to i32
  store i32 %spec.store.select50, ptr %i.a, align 4
  %spec.select51 = zext i1 %.not to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36
  %.not.1 = icmp sgt i32 %i.r, %i.h
  br i1 %.not.1, label %.split37.us.loopexit, label %bb.h

bb.g:                                             ; preds = %.split.us.preheader
  store i32 1, ptr %i.l, align 4, !tbaa !36
  %i.s = select i1 %.not.us, i32 2, i32 1
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.g, %.split.us.preheader
  %.1.us.1 = phi i32 [ %spec.select49, %.split.us.preheader ], [ %i.s, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36
  %.not.us.2 = icmp sgt i32 %i.v, %i.j
  br i1 %.not.us.2, label %.split37.us, label %.split37.us.thread

.split37.us.thread:                               ; preds = %.split.us.2
  store i32 1, ptr %i.t, align 4, !tbaa !36
  br label %bb.i

.split37.us:                                      ; preds = %.split.us.2, %.split37.us.loopexit
  %.02944 = phi i32 [ 2, %.split37.us.loopexit ], [ %.02945, %.split.us.2 ]
  %.us-phi = phi i32 [ %.1.1, %.split37.us.loopexit ], [ %.1.us.1, %.split.us.2 ]
  %.not52 = icmp eq i32 %.us-phi, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.split.preheader
  store i32 1, ptr %i.p, align 4, !tbaa !36
  %i.w = select i1 %.not, i32 2, i32 1
  br label %.split37.us.loopexit

.split37.us.loopexit:                             ; preds = %.split.preheader, %bb.h
  %.1.1 = phi i32 [ %spec.select51, %.split.preheader ], [ %i.w, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.x, align 4, !tbaa !36
  br label %.split37.us

bb.i:                                             ; preds = %.split37.us.thread, %.split37.us
  %.0294448 = phi i32 [ %.02945, %.split37.us.thread ], [ %.02944, %.split37.us ]
  call fastcc void @_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf(ptr noundef %0, i32 noundef %.0294448, ptr noundef nonnull %i.a, ptr noundef %4)
  br label %bb.k

bb.j:                                             ; preds = %.split37.us
  store i32 1, ptr %0, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.y = load i32, ptr %0, align 4, !tbaa !33
  %.not33 = icmp eq i32 %i.y, 1
  %i.z = select i1 %.not33, ptr null, ptr %0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.028 = phi ptr [ null, %bb.b ], [ %i.z, %bb.l ]
  ret ptr %.028
}

; Function Attrs: mustprogress uwtable
define void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fsub float %i.d, %i.f                    ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 15 uses
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !23
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !23
  %i.k = fsub <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 1   ; 12 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 14 uses
  store <2 x float> %i.k, ptr %3, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 14 uses
  store float %i.g, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  switch i32 %i.p, label %bb.y [
    i32 1, label %.preheader210
    i32 2, label %.preheader218
    i32 3, label %.preheader222
    i32 4, label %.preheader231
    i32 7, label %.preheader236
    i32 9, label %.critedge
    i32 10, label %.critedge
  ]

.preheader236:                                    ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !23
  %i.s = fcmp ogt float %i.m, %i.r
  br i1 %i.s, label %.lr.ph, label %.preheader235

.lr.ph:                                           ; preds = %.preheader236
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.r

.preheader231:                                    ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %.not204 = icmp eq i32 %i.v, 2                  ; 2 uses
  br i1 %.not204, label %.preheader230.1, label %.preheader230

.preheader222:                                    ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %.not205 = icmp eq i32 %i.aa, 0
  br i1 %.not205, label %.preheader221.1, label %.preheader221

.preheader218:                                    ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !23
  %i.aj = fcmp ogt float %i.g, %i.ai
  br i1 %i.aj, label %.preheader214.us.preheader, label %.preheader216

.preheader210:                                    ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.an = load float, ptr %i.ak, align 4, !tbaa !23
  %i.ao = fcmp ogt float %i.m, %i.an
  br i1 %i.ao, label %.lr.ph310, label %.preheader

.preheader:                                       ; preds = %.lr.ph310, %.preheader210
  %i.ap = phi float [ %i.m, %.preheader210 ], [ %i.au, %.lr.ph310 ] ; 2 uses
  %i.aq = load float, ptr %i.al, align 4, !tbaa !23
  %i.ar = fcmp ugt float %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge314, label %.lr.ph313

.lr.ph310:                                        ; preds = %.preheader210, %.lr.ph310
  %i.as = phi float [ %i.au, %.lr.ph310 ], [ %i.m, %.preheader210 ]
  %i.at = load float, ptr %i.am, align 4, !tbaa !23
  %i.au = fsub float %i.as, %i.at                 ; 4 uses
  store float %i.au, ptr %3, align 4, !tbaa !23
  %i.av = load float, ptr %i.ak, align 4, !tbaa !23
  %i.aw = fcmp ogt float %i.au, %i.av
  br i1 %i.aw, label %.lr.ph310, label %.preheader, !llvm.loop !43

.lr.ph313:                                        ; preds = %.preheader, %.lr.ph313
  %i.ax = phi float [ %i.az, %.lr.ph313 ], [ %i.ap, %.preheader ]
  %i.ay = load float, ptr %i.am, align 4, !tbaa !23
  %i.az = fadd float %i.ax, %i.ay                 ; 3 uses
  store float %i.az, ptr %3, align 4, !tbaa !23
  %i.ba = load float, ptr %i.al, align 4, !tbaa !23
  %i.bb = fcmp ugt float %i.az, %i.ba
  br i1 %i.bb, label %._crit_edge314, label %.lr.ph313, !llvm.loop !44
end_hunk_0

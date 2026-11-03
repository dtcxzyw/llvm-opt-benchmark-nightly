Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnffEB6_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0183.0.copyload) ]
  %i.ji = icmp samesign ult i64 %i.h, %1
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.ji, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, label %bb.x

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.jl = icmp eq i64 %i.h, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !9 ; 6 uses
  br i1 %i.jl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.jo = sub i64 %.sroa.7188.0.copyload, %.sroa.5187.0.copyload
  %i.jp = freeze i64 %i.jo                        ; 2 uses
  %xtraiter199 = and i64 %i.jp, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.jq = add nuw i64 %.sroa.5187.0.copyload, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us.prol = icmp ult i64 %i.jq, %i.jn
  br i1 %or.cond125.not.us.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0.copyload
  %i.js = add i64 %.sroa.5187.0.copyload, 1
  %i.jt = load ptr, ptr %i.jj, align 8, !nonnull !9, !align !190, !noundef !9
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jq
  %i.jv = load float, ptr %i.ju, align 4, !noundef !9
  %i.jw = fmul float %i.j, %i.jv
  store float %i.jw, ptr %i.jr, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5187.0393.us.unr = phi i64 [ %.sroa.5187.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.js, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa ]
  %i.jx = icmp eq i64 %i.jp, 1
  br i1 %i.jx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.jy = add i64 %.sroa.4185.0.copyload, %.sroa.5187.0.copyload
  %umax = call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.jy)
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.w
  %.sroa.5187.0393.us = phi i64 [ %i.ki, %bb.w ], [ %.sroa.5187.0393.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.jz = add nuw i64 %.sroa.5187.0393.us, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us = icmp ult i64 %i.jz, %i.jn
  br i1 %or.cond125.not.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0393.us
  %i.kb = add i64 %.sroa.5187.0393.us, 1          ; 2 uses
  %i.kc = load ptr, ptr %i.jj, align 8, !nonnull !9, !align !190, !noundef !9 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.jz
  %i.ke = load float, ptr %i.kd, align 4, !noundef !9
  %i.kf = fmul float %i.j, %i.ke
  store float %i.kf, ptr %i.ka, align 4
  %i.kg = add nuw i64 %i.kb, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us.1 = icmp ult i64 %i.kg, %i.jn
  br i1 %or.cond125.not.us.1, label %bb.w, label %.split395, !prof !11

bb.w:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %i.kb
  %i.ki = add i64 %.sroa.5187.0393.us, 2          ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.kg
  %i.kk = load float, ptr %i.kj, align 4, !noundef !9
  %i.kl = fmul float %i.j, %i.kk
  store float %i.kl, ptr %i.kh, align 4
  %exitcond485.not.1 = icmp eq i64 %i.ki, %.sroa.7188.0.copyload
  br i1 %exitcond485.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge389
  %.sroa.5187.0393 = phi i64 [ %i.km, %._crit_edge389 ], [ %.sroa.5187.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader ] ; 3 uses
  %i.km = add i64 %.sroa.5187.0393, 1             ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0393
  %i.ko = add nuw i64 %.sroa.5187.0393, %.sroa.4185.0.copyload ; 8 uses
  %i.kp = add i64 %i.ko, 1                        ; 4 uses
  %or.cond125.not = icmp ult i64 %i.ko, %i.jn
  br i1 %or.cond125.not, label %.lr.ph388, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge389, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.w, %._crit_edge377
  ret void

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #13
  unreachable

.split395:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi397.in = phi i64 [ %i.kg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.jz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %umax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi398 = phi i64 [ %i.kg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.jz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ko, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi397 = add i64 %.us-phi397.in, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi398, i64 noundef %.us-phi397, i64 noundef %i.jn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #13
  unreachable

.lr.ph388:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.kq = load ptr, ptr %i.jj, align 8, !nonnull !9, !align !190, !noundef !9
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ko
  %i.ks = load float, ptr %i.kr, align 4, !noundef !9
  %i.kt = fmul float %i.j, %i.ks
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph388, %bb.ah
  %.sroa.062.0386 = phi float [ %i.kt, %.lr.ph388 ], [ %i.lq, %bb.ah ] ; 2 uses
  %.sroa.10192.0385 = phi i64 [ 0, %.lr.ph388 ], [ %i.kx, %bb.ah ] ; 4 uses
  %.sroa.7191.0384 = phi i64 [ %i.h, %.lr.ph388 ], [ %i.ku, %bb.ah ]
  %.sroa.0189.0383 = phi ptr [ %5, %.lr.ph388 ], [ %i.kw, %bb.ah ] ; 3 uses
  %i.ku = add nsw i64 %.sroa.7191.0384, -1        ; 2 uses
  %i.kv = icmp eq ptr %.sroa.0189.0383, %i.jk
  br i1 %i.kv, label %._crit_edge389, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0189.0383, i64 4
  %i.kx = add nuw nsw i64 %.sroa.10192.0385, 1
  %i.ky = load float, ptr %.sroa.0189.0383, align 4, !noundef !9
  %i.kz = xor i64 %.sroa.10192.0385, -1
  %i.la = add nsw i64 %6, %i.kz                   ; 3 uses
  %exitcond483.not = icmp eq i64 %.sroa.10192.0385, %1
  br i1 %exitcond483.not, label %bb.ab, label %bb.aa

._crit_edge389:                                   ; preds = %bb.y, %bb.ah
  %.sroa.062.0.lcssa = phi float [ %i.lq, %bb.ah ], [ %.sroa.062.0386, %bb.y ]
  store float %.sroa.062.0.lcssa, ptr %i.kn, align 4
  %exitcond484.not = icmp eq i64 %i.km, %.sroa.7188.0.copyload
  br i1 %exitcond484.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

bb.aa:                                            ; preds = %bb.z
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10192.0385 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !noundef !9 ; 2 uses
  %.not122 = icmp ugt i64 %i.kp, %i.ld
  br i1 %.not122, label %bb.ac, label %bb.ad, !prof !5

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ko, i64 noundef %i.kp, i64 noundef %i.ld, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.le = load ptr, ptr %i.lb, align 8, !nonnull !9, !align !190, !noundef !9
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.ko
  %i.lg = icmp ult i64 %i.la, %1
  br i1 %i.lg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.la ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !noundef !9 ; 2 uses
  %.not123 = icmp ugt i64 %i.kp, %i.lj
  br i1 %.not123, label %bb.ag, label %bb.ah, !prof !5

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ko, i64 noundef %i.kp, i64 noundef %i.lj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #13
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.lk = load ptr, ptr %i.lh, align 8, !nonnull !9, !align !190, !noundef !9
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.ko
  %i.lm = load float, ptr %i.lf, align 4, !noundef !9
  %i.ln = load float, ptr %i.ll, align 4, !noundef !9
  %i.lo = fadd float %i.lm, %i.ln
  %i.lp = fmul float %i.ky, %i.lo
  %i.lq = fadd float %.sroa.062.0386, %i.lp       ; 2 uses
  %i.lr = icmp eq i64 %i.ku, 0
  br i1 %i.lr, label %._crit_edge389, label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 1, 5) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 4                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 4                ; 9 uses
  %i.p = alloca [64 x i8], align 4                ; 9 uses
  %i.q = mul i64 %7, %4
  %i.r = lshr i64 %6, 1                           ; 22 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !noundef !9 ; 23 uses
  %i.u = and i64 %3, 9223372036854775776          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u ; 3 uses
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge617, label %.lr.ph616

.lr.ph616:                                        ; preds = %bb.b
  %i.x = icmp samesign ult i64 %i.r, %1
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.7272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.ab = icmp eq i64 %i.r, 0
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.6300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.7302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.9303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.7315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br i1 %i.x, label %.lr.ph616.split.us, label %.lr.ph616.split

.lr.ph616.split.us:                               ; preds = %.lr.ph616
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !noundef !9 ; 4 uses
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, %.lr.ph616.split.us
  %.sroa.015.0614.us = phi i64 [ 0, %.lr.ph616.split.us ], [ %i.ai, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us ] ; 9 uses
  %.sroa.0117.0613.us = phi ptr [ %2, %.lr.ph616.split.us ], [ %i.ag, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0117.0613.us, i64 32 ; 3 uses
  %i.ah = or disjoint i64 %.sroa.015.0614.us, 16  ; 12 uses
  %.not175.us = icmp ugt i64 %i.ah, %i.af
  br i1 %.not175.us, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ai = add i64 %.sroa.015.0614.us, 32          ; 7 uses
  %i.aj = or disjoint i64 %.sroa.015.0614.us, 31
  %or.cond.not.us = icmp ult i64 %i.aj, %i.af
  br i1 %or.cond.not.us, label %bb.e, label %.split621.us, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.015.0614.us ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull readonly %i.am)
  %.sroa.0268.0.copyload.us = load ptr, ptr %i.n, align 8 ; 9 uses
  %.sroa.4270.0.copyload.us = load ptr, ptr %.sroa.4270.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5271.0.copyload.us = load i64, ptr %.sroa.5271.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7272.0.copyload.us = load i64, ptr %.sroa.7272.0..sroa_idx, align 8 ; 7 uses
  %i.an = icmp ult i64 %.sroa.5271.0.copyload.us, %.sroa.7272.0.copyload.us
  br i1 %i.an, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5271.0604.us = phi i64 [ %i.bi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5271.0604.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %.sroa.5271.0604.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0604.us
  %i.aq = add nuw i64 %.sroa.5271.0604.us, 1      ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1, !noundef !9
  %i.as = zext i8 %i.ar to i32
  %i.at = mul i32 %i.t, %i.as
  store i32 %i.at, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.aq
  %i.aw = add nuw i64 %.sroa.5271.0604.us, 2      ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1, !noundef !9
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul i32 %i.t, %i.ay
  store i32 %i.az, ptr %i.au, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.aw
  %i.bc = add nuw i64 %.sroa.5271.0604.us, 3      ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1, !noundef !9
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul i32 %i.t, %i.be
  store i32 %i.bf, ptr %i.ba, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.bc
  %i.bi = add nuw i64 %.sroa.5271.0604.us, 4      ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1, !noundef !9
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul i32 %i.t, %i.bk
  store i32 %i.bl, ptr %i.bg, align 4
  %exitcond.not.3 = icmp eq i64 %i.bi, %.sroa.7272.0.copyload.us
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !197

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block237, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.bm)
  %.sroa.0273.0.copyload.us = load ptr, ptr %i.m, align 8 ; 9 uses
  %.sroa.4275.0.copyload.us = load ptr, ptr %.sroa.4275.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5277.0.copyload.us = load i64, ptr %.sroa.5277.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7278.0.copyload.us = load i64, ptr %.sroa.7278.0..sroa_idx, align 8 ; 7 uses
  %i.bn = icmp ult i64 %.sroa.5277.0.copyload.us, %.sroa.7278.0.copyload.us
  br i1 %i.bn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us
  %.sroa.5277.0605.us = phi i64 [ %i.ci, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us ], [ %.sroa.5277.0605.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %.sroa.5277.0605.us
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0605.us
  %i.bq = add nuw i64 %.sroa.5277.0605.us, 1      ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !noundef !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul i32 %i.t, %i.bs
  store i32 %i.bt, ptr %i.bo, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.bq
  %i.bw = add nuw i64 %.sroa.5277.0605.us, 2      ; 2 uses
  %i.bx = load i8, ptr %i.bv, align 1, !noundef !9
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul i32 %i.t, %i.by
  store i32 %i.bz, ptr %i.bu, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.bw
  %i.cc = add nuw i64 %.sroa.5277.0605.us, 3      ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !noundef !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul i32 %i.t, %i.ce
  store i32 %i.cf, ptr %i.ca, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.cc
  %i.ci = add nuw i64 %.sroa.5277.0605.us, 4      ; 2 uses
  %i.cj = load i8, ptr %i.ch, align 1, !noundef !9
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul i32 %i.t, %i.ck
  store i32 %i.cl, ptr %i.cg, align 4
  %exitcond834.not.3 = icmp eq i64 %i.ci, %.sroa.7278.0.copyload.us
  br i1 %exitcond834.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us, !llvm.loop !198

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us, %middle.block212, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us
  %.sroa.0279.0610.us = phi ptr [ %i.co, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ %5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ] ; 3 uses
  %.sroa.7281.0609.us = phi i64 [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ %i.r, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ]
  %.sroa.10.0608.us = phi i64 [ %i.cp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ] ; 4 uses
  %i.cm = add nsw i64 %.sroa.7281.0609.us, -1     ; 2 uses
  %i.cn = icmp eq ptr %.sroa.0279.0610.us, %i.aa
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0279.0610.us, i64 4
  %i.cp = add nuw nsw i64 %.sroa.10.0608.us, 1
  %i.cq = load i32, ptr %.sroa.0279.0610.us, align 4, !noundef !9 ; 8 uses
  %i.cr = xor i64 %.sroa.10.0608.us, -1
  %i.cs = add nsw i64 %6, %i.cr                   ; 3 uses
  %exitcond837.not = icmp eq i64 %.sroa.10.0608.us, %1
  br i1 %exitcond837.not, label %.split626.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10.0608.us ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !9 ; 4 uses
  %i.cx = icmp ult i64 %i.cs, %1
  br i1 %i.cx, label %bb.h, label %.split629.us

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !9 ; 4 uses
  %.not183.us = icmp ugt i64 %i.ah, %i.cw
  br i1 %.not183.us, label %.split632.us, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.015.0614.us ; 2 uses
  %.not184.us = icmp ugt i64 %i.ah, %i.db
  br i1 %.not184.us, label %.split637.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.015.0614.us ; 2 uses
  %.not185.us = icmp ugt i64 %i.ai, %i.cw
  br i1 %.not185.us, label %.split642.us, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ah ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_:bb.a
  %wide.load258 = load <4 x i32>, ptr %i.vc, align 4, !alias.scope !288
  %i.vd = add <4 x i32> %wide.load257, splat (i32 16384)
  %i.ve = add <4 x i32> %wide.load258, splat (i32 16384)
  %i.vf = lshr <4 x i32> %i.vd, splat (i32 15)
  %i.vg = lshr <4 x i32> %i.ve, splat (i32 15)
  %i.vh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vf, <4 x i32> splat (i32 255))
  %i.vi = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vg, <4 x i32> splat (i32 255))
  %i.vj = trunc nuw <4 x i32> %i.vh to <4 x i8>
  %i.vk = trunc nuw <4 x i32> %i.vi to <4 x i8>
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store <4 x i8> %i.vj, ptr %i.vb, align 1, !alias.scope !289, !noalias !288
  store <4 x i8> %i.vk, ptr %i.vl, align 1, !alias.scope !289, !noalias !288
  %index.next259 = add nuw i64 %index256, 8       ; 2 uses
  %i.vm = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.vm, label %middle.block260, label %vector.body255, !llvm.loop !259

middle.block260:                                  ; preds = %vector.body255
  %cmp.n261 = icmp eq i64 %i.ur, %n.vec254
  br i1 %cmp.n261, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader: ; preds = %vector.memcheck249, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us, %middle.block260
  %.sroa.5356.0657.us.ph = phi i64 [ %.sroa.5356.0.copyload.us, %vector.memcheck249 ], [ %.sroa.5356.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us ], [ %i.uy, %middle.block260 ] ; 6 uses
  %i.vn = sub i64 %.sroa.7357.0.copyload.us, %.sroa.5356.0657.us.ph
  %.neg446 = add i64 %.sroa.5356.0657.us.ph, 1
  %xtraiter439 = and i64 %i.vn, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.vq = add nuw i64 %.sroa.5356.0657.us.ph, 1
  %i.vr = load i32, ptr %i.vo, align 4, !noundef !9
  %i.vs = add i32 %i.vr, 16384
  %i.vt = lshr i32 %i.vs, 15
  %..i245.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.vt, i32 255)
  %i.vu = trunc nuw i32 %..i245.us.prol to i8
  store i8 %i.vu, ptr %i.vp, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %.sroa.5356.0657.us.unr = phi i64 [ %.sroa.5356.0657.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader ], [ %i.vq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol ]
  %i.vv = icmp eq i64 %.sroa.7357.0.copyload.us, %.neg446
  br i1 %i.vv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us

.lr.ph661.split:                                  ; preds = %.lr.ph661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13
  unreachable

.split.us665:                                     ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.oo, i64 noundef %i.om, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13
  unreachable

.split669.us:                                     ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #13
  unreachable

.split672.us:                                     ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.oo, i64 noundef %i.qb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13
  unreachable

.split677.us:                                     ; preds = %bb.r
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.py, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #13
  unreachable

.split680.us:                                     ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.oo, i64 noundef %i.qh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

._crit_edge662:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, %._crit_edge617
  %.sroa.015.1.lcssa = phi i64 [ %.sroa.015.0.lcssa, %._crit_edge617 ], [ %i.oo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us ] ; 2 uses
  %i.vw = and i64 %3, 12                          ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.vw ; 3 uses
  %i.vy = icmp samesign eq i64 %i.vw, 0
  br i1 %i.vy, label %._crit_edge705, label %.lr.ph704

.lr.ph704:                                        ; preds = %._crit_edge662
  %i.vz = icmp samesign ult i64 %i.r, %1
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.wc = icmp eq i64 %i.r, 0
  br i1 %i.vz, label %.lr.ph704.split, label %bb.v

.lr.ph704.split:                                  ; preds = %.lr.ph704
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !noundef !9 ; 2 uses
  %i.wf = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.wg = shufflevector <4 x i32> %i.wf, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph704.split, %._crit_edge
  %.sroa.015.2702 = phi i64 [ %.sroa.015.1.lcssa, %.lr.ph704.split ], [ %i.wi, %._crit_edge ] ; 8 uses
  %.sroa.0137.0701 = phi ptr [ %i.oe, %.lr.ph704.split ], [ %i.wh, %._crit_edge ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0137.0701, i64 4 ; 2 uses
  %i.wi = add i64 %.sroa.015.2702, 4              ; 7 uses
  %i.wj = or disjoint i64 %.sroa.015.2702, 3
  %or.cond206.not = icmp ult i64 %i.wj, %i.we
  br i1 %or.cond206.not, label %bb.w, label %bb.x, !prof !11

bb.v:                                             ; preds = %.lr.ph704
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.wk = load ptr, ptr %i.wa, align 8, !nonnull !9, !noundef !9
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.sroa.015.2702
  %i.wm = load <4 x i8>, ptr %i.wl, align 1
  %i.wn = zext <4 x i8> %i.wm to <4 x i32>
  %i.wo = mul <4 x i32> %i.wg, %i.wn              ; 2 uses
  br i1 %i.wc, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.u
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.wi, i64 noundef %i.we, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
  unreachable

.lr.ph:                                           ; preds = %bb.w, %bb.af
  %.sroa.10369.0688 = phi i64 [ %i.wt, %bb.af ], [ 0, %bb.w ] ; 4 uses
  %.sroa.7368.0687 = phi i64 [ %i.wq, %bb.af ], [ %i.r, %bb.w ]
  %.sroa.0366.0686 = phi ptr [ %i.ws, %bb.af ], [ %5, %bb.w ] ; 3 uses
  %i.wp = phi <4 x i32> [ %i.xw, %bb.af ], [ %i.wo, %bb.w ] ; 2 uses
  %i.wq = add nsw i64 %.sroa.7368.0687, -1        ; 2 uses
  %i.wr = icmp eq ptr %.sroa.0366.0686, %i.wb
  br i1 %i.wr, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0366.0686, i64 4
  %i.wt = add nuw nsw i64 %.sroa.10369.0688, 1
  %i.wu = load i32, ptr %.sroa.0366.0686, align 4, !noundef !9
  %i.wv = xor i64 %.sroa.10369.0688, -1
  %i.ww = add nsw i64 %6, %i.wv                   ; 3 uses
  %exitcond844.not = icmp eq i64 %.sroa.10369.0688, %1
  br i1 %exitcond844.not, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %.lr.ph, %bb.af, %bb.w
  %i.wx = phi <4 x i32> [ %i.wo, %bb.w ], [ %i.xw, %bb.af ], [ %i.wp, %.lr.ph ]
  %i.wy = add <4 x i32> %i.wx, splat (i32 16384)
  %i.wz = lshr <4 x i32> %i.wy, splat (i32 15)
  %i.xa = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.wz, <4 x i32> splat (i32 255))
  %i.xb = trunc nuw <4 x i32> %i.xa to <4 x i8>
  store <4 x i8> %i.xb, ptr %.sroa.0137.0701, align 1
  %i.xc = icmp eq ptr %i.wh, %i.vx
  br i1 %i.xc, label %._crit_edge705, label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10369.0688 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load i64, ptr %i.xe, align 8, !noundef !9 ; 2 uses
  %.not198 = icmp ugt i64 %i.wi, %i.xf
  br i1 %.not198, label %bb.ac, label %bb.ab, !prof !5

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #13
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.xg = load ptr, ptr %i.xd, align 8, !nonnull !9, !noundef !9
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.sroa.015.2702
  %i.xi = icmp ult i64 %i.ww, %1
  br i1 %i.xi, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.wi, i64 noundef %i.xf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #13
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ww ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xl = load i64, ptr %i.xk, align 8, !noundef !9 ; 2 uses
  %.not199 = icmp ugt i64 %i.wi, %i.xl
  br i1 %.not199, label %bb.ag, label %bb.af, !prof !5

bb.ae:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ww, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #13
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.xm = load ptr, ptr %i.xj, align 8, !nonnull !9, !noundef !9
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sroa.015.2702
  %i.xo = load <4 x i8>, ptr %i.xh, align 1
  %i.xp = zext <4 x i8> %i.xo to <4 x i32>
  %i.xq = load <4 x i8>, ptr %i.xn, align 1
  %i.xr = zext <4 x i8> %i.xq to <4 x i32>
  %i.xs = add nuw nsw <4 x i32> %i.xr, %i.xp
  %i.xt = insertelement <4 x i32> poison, i32 %i.wu, i64 0
  %i.xu = shufflevector <4 x i32> %i.xt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xv = mul <4 x i32> %i.xs, %i.xu
  %i.xw = add <4 x i32> %i.xv, %i.wp              ; 2 uses
  %i.xx = icmp eq i64 %i.wq, 0
  br i1 %i.xx, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.wi, i64 noundef %i.xl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #13
  unreachable

._crit_edge705:                                   ; preds = %._crit_edge, %._crit_edge662
  %.sroa.015.2.lcssa = phi i64 [ %.sroa.015.1.lcssa, %._crit_edge662 ], [ %i.wi, %._crit_edge ]
  %i.xy = and i64 %3, 3
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.xy
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.vx, ptr noundef nonnull %i.xz, i64 noundef %.sroa.015.2.lcssa, i64 noundef %i.q)
  %.sroa.0374.0.copyload = load ptr, ptr %i.d, align 8 ; 5 uses
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4376.0.copyload = load i64, ptr %.sroa.4376.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5378.0.copyload = load i64, ptr %.sroa.5378.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7379.0.copyload = load i64, ptr %.sroa.7379.0..sroa_idx, align 8 ; 4 uses
  %i.ya = icmp ult i64 %.sroa.5378.0.copyload, %.sroa.7379.0.copyload
  br i1 %i.ya, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0374.0.copyload) ]
  %i.yb = icmp samesign ult i64 %i.r, %1
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.yb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, label %bb.ah

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %8 = icmp eq i64 %i.r, 0
  %9 = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %10 = load i64, ptr %9, align 8, !noundef !9    ; 6 uses
  br i1 %8, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %11 = sub i64 %.sroa.7379.0.copyload, %.sroa.5378.0.copyload
  %12 = freeze i64 %11                            ; 2 uses
  %xtraiter456 = and i64 %12, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %13 = add nuw i64 %.sroa.5378.0.copyload, %.sroa.4376.0.copyload ; 3 uses
  %or.cond207.not.us.prol = icmp ult i64 %13, %10
  br i1 %or.cond207.not.us.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.a, label %bb.ai, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.a: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0374.0.copyload, i64 %.sroa.5378.0.copyload
  %15 = add i64 %.sroa.5378.0.copyload, 1
  %16 = load ptr, ptr %i.yc, align 8, !nonnull !9, !noundef !9
  %i.ye = getelementptr inbounds nuw i8, ptr %16, i64 %13
  %17 = load i8, ptr %i.ye, align 1, !noundef !9
  %18 = zext i8 %17 to i32
  %19 = mul i32 %i.t, %18
  %20 = add i32 %19, 16384
  %21 = lshr i32 %20, 15
  %..i267.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %21, i32 255)
  %22 = trunc nuw i32 %..i267.us.prol to i8
  store i8 %22, ptr %14, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.a, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5378.0717.us.unr = phi i64 [ %.sroa.5378.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.a ]
  %23 = icmp eq i64 %12, 1
  br i1 %23, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %._crit_edge713.us.1
  %.sroa.5378.0717.us = phi i64 [ %37, %._crit_edge713.us.1 ], [ %.sroa.5378.0717.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %24 = add nuw i64 %.sroa.5378.0717.us, %.sroa.4376.0.copyload ; 3 uses
  %or.cond207.not.us = icmp ult i64 %24, %10
  br i1 %or.cond207.not.us, label %._crit_edge713.us, label %bb.ai, !prof !11

._crit_edge713.us:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.0374.0.copyload, i64 %.sroa.5378.0717.us
  %26 = add i64 %.sroa.5378.0717.us, 1            ; 2 uses
  %27 = load ptr, ptr %i.yc, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %24
  %29 = load i8, ptr %28, align 1, !noundef !9
  %30 = zext i8 %29 to i32
  %31 = mul i32 %i.t, %30
  %32 = add i32 %31, 16384
  %33 = lshr i32 %32, 15
  %..i267.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %33, i32 255)
  %34 = trunc nuw i32 %..i267.us to i8
  store i8 %34, ptr %25, align 1
  %35 = add nuw i64 %26, %.sroa.4376.0.copyload   ; 3 uses
  %or.cond207.not.us.1 = icmp ult i64 %35, %10
  br i1 %or.cond207.not.us.1, label %._crit_edge713.us.1, label %bb.ai, !prof !11

._crit_edge713.us.1:                              ; preds = %._crit_edge713.us
  %36 = getelementptr inbounds nuw i8, ptr %.sroa.0374.0.copyload, i64 %26
  %37 = add i64 %.sroa.5378.0717.us, 2            ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %27, i64 %35
  %39 = load i8, ptr %38, align 1, !noundef !9
  %40 = zext i8 %39 to i32
  %41 = mul i32 %i.t, %40
  %42 = add i32 %41, 16384
  %43 = lshr i32 %42, 15
  %..i267.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %43, i32 255)
  %44 = trunc nuw i32 %..i267.us.1 to i8
  store i8 %44, ptr %36, align 1
  %exitcond846.us.not.1 = icmp eq i64 %37, %.sroa.7379.0.copyload
  br i1 %exitcond846.us.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, %._crit_edge713
  %.sroa.5378.0717 = phi i64 [ %i.yf, %._crit_edge713 ], [ %.sroa.5378.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split ] ; 3 uses
  %i.yf = add i64 %.sroa.5378.0717, 1             ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0374.0.copyload, i64 %.sroa.5378.0717
  %i.yh = add nuw i64 %.sroa.5378.0717, %.sroa.4376.0.copyload ; 8 uses
  %i.yi = add i64 %i.yh, 1                        ; 4 uses
  %or.cond207.not = icmp ult i64 %i.yh, %10
  br i1 %or.cond207.not, label %bb.aj, label %bb.ai, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge713, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %._crit_edge713.us.1, %._crit_edge705
  ret void

bb.ah:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #13
  unreachable

bb.ai:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %._crit_edge713.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi = phi i64 [ %35, %._crit_edge713.us ], [ %13, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %24, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.yh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %i.yj = add i64 %.sroa.4376.0.copyload, %.sroa.5378.0.copyload
  %umax = call i64 @llvm.umax.i64(i64 %10, i64 %i.yj)
  %i.yk = add i64 %umax, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.yk, i64 noundef %10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #13
  unreachable

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.yl = load ptr, ptr %i.yc, align 8, !nonnull !9, !noundef !9
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yh
  %i.yn = load i8, ptr %i.ym, align 1, !noundef !9
  %i.yo = zext i8 %i.yn to i32
  %i.yp = mul i32 %i.t, %i.yo
  br label %.lr.ph712

.lr.ph712:                                        ; preds = %bb.aj, %bb.as
  %.sroa.0105.0710 = phi i32 [ %i.zr, %bb.as ], [ %i.yp, %bb.aj ] ; 2 uses
  %.sroa.10383.0709 = phi i64 [ %i.yt, %bb.as ], [ 0, %bb.aj ] ; 4 uses
  %.sroa.7382.0708 = phi i64 [ %i.yq, %bb.as ], [ %i.r, %bb.aj ]
  %.sroa.0380.0707 = phi ptr [ %i.ys, %bb.as ], [ %5, %bb.aj ] ; 3 uses
  %i.yq = add nsw i64 %.sroa.7382.0708, -1        ; 2 uses
  %i.yr = icmp eq ptr %.sroa.0380.0707, %i.yd
  br i1 %i.yr, label %._crit_edge713, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph712
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.0380.0707, i64 4
  %i.yt = add nuw nsw i64 %.sroa.10383.0709, 1
  %i.yu = load i32, ptr %.sroa.0380.0707, align 4, !noundef !9
  %i.yv = xor i64 %.sroa.10383.0709, -1
  %i.yw = add nsw i64 %6, %i.yv                   ; 3 uses
  %exitcond845.not = icmp eq i64 %.sroa.10383.0709, %1
  br i1 %exitcond845.not, label %bb.am, label %bb.al

._crit_edge713:                                   ; preds = %bb.as, %.lr.ph712
  %.sroa.0105.0.lcssa.ph = phi i32 [ %.sroa.0105.0710, %.lr.ph712 ], [ %i.zr, %bb.as ]
  %i.yx = add i32 %.sroa.0105.0.lcssa.ph, 16384
  %i.yy = lshr i32 %i.yx, 15
  %..i267 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.yy, i32 255)
  %i.yz = trunc nuw i32 %..i267 to i8
  store i8 %i.yz, ptr %i.yg, align 1
  %exitcond846.not = icmp eq i64 %i.yf, %.sroa.7379.0.copyload
  br i1 %exitcond846.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

bb.al:                                            ; preds = %bb.ak
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10383.0709 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load i64, ptr %i.zb, align 8, !noundef !9 ; 2 uses
  %.not203 = icmp ugt i64 %i.yi, %i.zc
  br i1 %.not203, label %bb.an, label %bb.ao, !prof !5

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.yh, i64 noundef %i.yi, i64 noundef %i.zc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.zd = load ptr, ptr %i.za, align 8, !nonnull !9, !noundef !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yh
  %i.zf = icmp ult i64 %i.yw, %1
  br i1 %i.zf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.zg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.yw ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load i64, ptr %i.zh, align 8, !noundef !9 ; 2 uses
  %.not204 = icmp ugt i64 %i.yi, %i.zi
  br i1 %.not204, label %bb.ar, label %bb.as, !prof !5

bb.aq:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.yw, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #13
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.yh, i64 noundef %i.yi, i64 noundef %i.zi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #13
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.zj = load ptr, ptr %i.zg, align 8, !nonnull !9, !noundef !9
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.yh
  %i.zl = load i8, ptr %i.ze, align 1, !noundef !9
  %i.zm = zext i8 %i.zl to i32
  %i.zn = load i8, ptr %i.zk, align 1, !noundef !9
  %i.zo = zext i8 %i.zn to i32
  %i.zp = add nuw nsw i32 %i.zo, %i.zm
  %i.zq = mul i32 %i.zp, %i.yu
  %i.zr = add i32 %i.zq, %.sroa.0105.0710         ; 2 uses
  %i.zs = icmp eq i64 %i.yq, 0
  br i1 %i.zs, label %._crit_edge713, label %.lr.ph712
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columntmEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 1, 5) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 4                ; 8 uses
  %i.g = mul i64 %7, %4
  %i.h = lshr i64 %6, 1                           ; 17 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !noundef !9 ; 11 uses
  %i.k = and i64 %3, 4611686018427387888
  %i.l = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.l, 9223372036854775776       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.n = icmp samesign eq i64 %.idx, 0
  br i1 %i.n, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.b
  %i.o = icmp samesign ult i64 %i.h, %1
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.s = icmp eq i64 %i.h, 0
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br i1 %i.o, label %.lr.ph342.split.us, label %.lr.ph342.split

.lr.ph342.split.us:                               ; preds = %.lr.ph342
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !9 ; 2 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %.lr.ph342.split.us
  %.sroa.011.0340.us = phi i64 [ 0, %.lr.ph342.split.us ], [ %i.w, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 8 uses
  %.sroa.074.0339.us = phi ptr [ %2, %.lr.ph342.split.us ], [ %i.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.074.0339.us, i64 32 ; 3 uses
  %i.w = add nuw i64 %.sroa.011.0340.us, 16       ; 7 uses
  %i.x = or disjoint i64 %.sroa.011.0340.us, 15
  %or.cond.not.us = icmp ult i64 %i.x, %i.u
  br i1 %or.cond.not.us, label %bb.d, label %.split.us, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8, !nonnull !9, !align !311, !noundef !9
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.sroa.011.0340.us ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 2 %i.z, ptr noundef nonnull readonly %i.aa)
  %.sroa.0147.0.copyload.us = load ptr, ptr %i.e, align 8 ; 9 uses
  %.sroa.4149.0.copyload.us = load ptr, ptr %.sroa.4149.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5150.0.copyload.us = load i64, ptr %.sroa.5150.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7151.0.copyload.us = load i64, ptr %.sroa.7151.0..sroa_idx, align 8 ; 7 uses
  %i.ab = icmp ult i64 %.sroa.5150.0.copyload.us, %.sroa.7151.0.copyload.us
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5150.0333.us = phi i64 [ %i.aw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5150.0333.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %.sroa.5150.0333.us
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %.sroa.5150.0333.us
  %i.ae = add nuw i64 %.sroa.5150.0333.us, 1      ; 2 uses
  %i.af = load i16, ptr %i.ad, align 2, !noundef !9
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul i32 %i.j, %i.ag
  store i32 %i.ah, ptr %i.ac, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.ae
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.ae
  %i.ak = add nuw i64 %.sroa.5150.0333.us, 2      ; 2 uses
  %i.al = load i16, ptr %i.aj, align 2, !noundef !9
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %i.j, %i.am
  store i32 %i.an, ptr %i.ai, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.ak
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.ak
  %i.aq = add nuw i64 %.sroa.5150.0333.us, 3      ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 2, !noundef !9
  %i.as = zext i16 %i.ar to i32
  %i.at = mul i32 %i.j, %i.as
  store i32 %i.at, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.aq
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.aq
  %i.aw = add nuw i64 %.sroa.5150.0333.us, 4      ; 2 uses
  %i.ax = load i16, ptr %i.av, align 2, !noundef !9
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul i32 %i.j, %i.ay
  store i32 %i.az, ptr %i.au, align 4
  %exitcond.not.3 = icmp eq i64 %i.aw, %.sroa.7151.0.copyload.us
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !290

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block123, %bb.d
  br i1 %i.s, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us
  %.sroa.0152.0337.us = phi ptr [ %i.bc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ %5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 3 uses
  %.sroa.7154.0336.us = phi i64 [ %i.ba, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ %i.h, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ]
  %.sroa.10.0335.us = phi i64 [ %i.bd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 4 uses
  %i.ba = add nsw i64 %.sroa.7154.0336.us, -1     ; 2 uses
  %i.bb = icmp eq ptr %.sroa.0152.0337.us, %i.r
  br i1 %i.bb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0152.0337.us, i64 4
  %i.bd = add nuw nsw i64 %.sroa.10.0335.us, 1
  %i.be = load i32, ptr %.sroa.0152.0337.us, align 4, !noundef !9 ; 4 uses
  %i.bf = xor i64 %.sroa.10.0335.us, -1
  %i.bg = add nsw i64 %6, %i.bf                   ; 3 uses
  %exitcond473.not = icmp eq i64 %.sroa.10.0335.us, %1
  br i1 %exitcond473.not, label %.split347.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10.0335.us ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !9 ; 2 uses
  %.not112.us = icmp ugt i64 %i.w, %i.bj
  br i1 %.not112.us, label %.split350.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.bh, align 8, !nonnull !9, !align !311, !noundef !9
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %.sroa.011.0340.us ; 2 uses
  %i.bm = icmp ult i64 %i.bg, %1
  br i1 %i.bm, label %bb.h, label %.split355.us

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !9 ; 2 uses
end_hunk_1

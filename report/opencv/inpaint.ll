Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/inpaint?download=true
inline.NumInlined: 1195
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.flo = fadd double %i.fkf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adw:                                           ; preds = %bb.adu
  %i.flp = fadd double %i.flb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i: ; preds = %bb.adw, %bb.adv, %bb.adt, %bb.ads, %bb.adr
  %.0.i505.i = phi double [ %i.flg, %bb.adr ], [ %i.flm, %bb.ads ], [ %i.fln, %bb.adt ], [ %i.flo, %bb.adv ], [ %i.flp, %bb.adw ]
  %i.flq = fptrunc double %.0.i505.i to float     ; 2 uses
  %i.flr = fcmp ogt float %i.fjb, %i.fka
  %i.fls = select i1 %i.flr, float %i.fka, float %i.fjb ; 2 uses
  %i.flt = fcmp ogt float %i.fkz, %i.flq
  %i.flu = select i1 %i.flt, float %i.flq, float %i.fkz ; 2 uses
  %i.flv = fcmp ogt float %i.fls, %i.flu
  %i.flw = select i1 %i.flv, float %i.flu, float %i.fls ; 2 uses
  %i.flx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1207, i64 %i.fhm
  store float %i.flw, ptr %i.flx, align 4, !tbaa !46
  %i.fly = add nuw nsw i32 %.2404.fr.i, %i.di
  %i.flz = sub nsw i32 %.2404.fr.i, %i.di
  %i.fma = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.fmb = add nsw i32 %i.fma, -2
  %i.fmc = add nsw i32 %i.fma, -1
  %i.fmd = add nuw nsw i32 %.2401.i, %i.di
  %i.fme = sub nsw i32 %.2401.i, %i.di
  %i.fmf = load i32, ptr %i.el, align 4, !tbaa !145 ; 2 uses
  %i.fmg = add nsw i32 %i.fmf, -2
  %i.fmh = add nsw i32 %i.fmf, -1
  %i.fmi = sext i32 %i.fme to i64
  %i.fmj = sext i32 %i.fmh to i64
  %i.fmk = zext nneg i32 %i.fmd to i64
  %sext.i1214 = sext i32 %i.fmg to i64
  %i.fml = load i64, ptr %i.ffv, align 8          ; 3 uses
  br label %.lr.ph756.i

.preheader712.loopexit.i:                         ; preds = %._crit_edge757.i
  %i.fmm = fpext float %.sroa.0789.4.i to double
  %i.fmn = fpext float %.sroa.0.4.i1220 to double
  %i.fmo = fdiv double %i.fmm, %i.fmn
  %i.fmp = fpext float %.sroa.6791.4.i to double
  %i.fmq = fpext float %.sroa.6.4.i1219 to double
  %i.fmr = fdiv double %i.fmp, %i.fmq
  %i.fms = fpext float %.sroa.9793.4.i to double
  %i.fmt = fpext float %.sroa.9.4.i1218 to double
  %i.fmu = fdiv double %i.fms, %i.fmt
  %i.fmv = insertelement <2 x double> poison, double %i.fmo, i64 0
  %i.fmw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fmv)
  %i.fmx = call i32 @llvm.smax.i32(i32 %i.fmw, i32 0)
  %i.fmy = call i32 @llvm.umin.i32(i32 %i.fmx, i32 255)
  %i.fmz = trunc nuw i32 %i.fmy to i8
  %i.fna = load i32, ptr %i.fgc, align 4, !tbaa !148
  %i.fnb = icmp slt i32 %i.fna, 2
  %i.fnc = load ptr, ptr %i.fgd, align 8, !tbaa !149
  %i.fnd = load i64, ptr %i.fge, align 8
  %i.fne = mul i64 %i.fnd, %i.fhw
  %.sink.idx.i557.i = select i1 %i.fnb, i64 0, i64 %i.fne
  %.sink.i558.i = getelementptr inbounds nuw i8, ptr %i.fnc, i64 %.sink.idx.i557.i
  %i.fnf = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i, i64 %i.fic
  store i8 %i.fmz, ptr %i.fnf, align 1, !tbaa !21
  %i.fng = insertelement <2 x double> poison, double %i.fmr, i64 0
  %i.fnh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fng)
  %i.fni = call i32 @llvm.smax.i32(i32 %i.fnh, i32 0)
  %i.fnj = call i32 @llvm.umin.i32(i32 %i.fni, i32 255)
  %i.fnk = trunc nuw i32 %i.fnj to i8
  %i.fnl = load i32, ptr %i.fgc, align 4, !tbaa !148
  %i.fnm = icmp slt i32 %i.fnl, 2
  %i.fnn = load ptr, ptr %i.fgd, align 8, !tbaa !149
  %i.fno = load i64, ptr %i.fge, align 8
  %i.fnp = mul i64 %i.fno, %i.fhw
  %.sink.idx.i557.1.i = select i1 %i.fnm, i64 0, i64 %i.fnp
  %.sink.i558.1.i = getelementptr inbounds nuw i8, ptr %i.fnn, i64 %.sink.idx.i557.1.i
  %i.fnq = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i, i64 %i.fic
  %i.fnr = getelementptr inbounds nuw i8, ptr %i.fnq, i64 1
  store i8 %i.fnk, ptr %i.fnr, align 1, !tbaa !21
  %i.fns = insertelement <2 x double> poison, double %i.fmu, i64 0
  %i.fnt = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fns)
  %i.fnu = call i32 @llvm.smax.i32(i32 %i.fnt, i32 0)
  %i.fnv = call i32 @llvm.umin.i32(i32 %i.fnu, i32 255)
  %i.fnw = trunc nuw i32 %i.fnv to i8
  %i.fnx = load i32, ptr %i.fgc, align 4, !tbaa !148
  %i.fny = icmp slt i32 %i.fnx, 2
  %i.fnz = load ptr, ptr %i.fgd, align 8, !tbaa !149
  %i.foa = load i64, ptr %i.fge, align 8
  %i.fob = mul i64 %i.foa, %i.fhw
  %.sink.idx.i557.2.i = select i1 %i.fny, i64 0, i64 %i.fob
  %.sink.i558.2.i = getelementptr inbounds nuw i8, ptr %i.fnz, i64 %.sink.idx.i557.2.i
  %i.foc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i, i64 %i.fic
  %i.fod = getelementptr inbounds nuw i8, ptr %i.foc, i64 2
  store i8 %i.fnw, ptr %i.fod, align 1, !tbaa !21
  %i.foe = load i32, ptr %i.fft, align 4, !tbaa !148
  %i.fof = icmp slt i32 %i.foe, 2
  %i.fog = load ptr, ptr %i.ffu, align 8, !tbaa !149
  %i.foh = load i64, ptr %i.ffv, align 8
  %i.foi = mul i64 %i.foh, %i.fhk
  %.sink.idx.i559.i = select i1 %i.fof, i64 0, i64 %i.foi
  %.sink.i560.i = getelementptr inbounds nuw i8, ptr %i.fog, i64 %.sink.idx.i559.i
  %i.foj = getelementptr inbounds nuw i8, ptr %.sink.i560.i, i64 %i.fhm
  store i8 1, ptr %i.foj, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store float %i.flw, ptr %10, align 4, !tbaa !50
  store i32 %.2404.fr.i, ptr %i.fgf, align 4, !tbaa !169
  store i32 %.2401.i, ptr %i.fgg, align 4, !tbaa !170
  %i.fok = load i32, ptr %i.fgi, align 8, !tbaa !162
  store i32 %i.fok, ptr %i.fgh, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %.noexc1237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1237:                                       ; preds = %.preheader712.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.fol = load i32, ptr %i.fgi, align 8, !tbaa !162
  %i.fom = add nsw i32 %i.fol, 1
  store i32 %i.fom, ptr %i.fgi, align 8, !tbaa !162
  br label %bb.afo

.lr.ph756.i:                                      ; preds = %._crit_edge757.i, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i
  %.sroa.0789.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0789.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.6791.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6791.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9793.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9793.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9.1.i1215 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9.4.i1218, %._crit_edge757.i ] ; 3 uses
  %.sroa.6.1.i1216 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6.4.i1219, %._crit_edge757.i ] ; 3 uses
  %.sroa.0.1.i1217 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0.4.i1220, %._crit_edge757.i ] ; 3 uses
  %.0397764.i = phi i32 [ %i.flz, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %i.foz, %._crit_edge757.i ] ; 9 uses
  %i.fon = add nsw i32 %.0397764.i, -1            ; 3 uses
  %i.foo = icmp eq i32 %.0397764.i, 1
  %i.fop = zext i1 %i.foo to i32
  %i.foq = add nuw nsw i32 %i.fon, %i.fop         ; 2 uses
  %i.for = icmp eq i32 %.0397764.i, %i.fmb
  %.neg423.i = sext i1 %i.for to i32              ; 2 uses
  %i.fos = add i32 %i.fon, %.neg423.i
  %i.fot = icmp sgt i32 %.0397764.i, 0
  %i.fou = zext nneg i32 %.0397764.i to i64
  %i.fov = sub nsw i32 %.0397764.i, %.2404.fr.i   ; 3 uses
  %i.fow = mul nsw i32 %i.fov, %i.fov
  %i.fox = sitofp i32 %i.fov to float             ; 5 uses
  %i.foy = fmul nnan float %i.fox, %i.fox
  %i.foz = add i32 %.0397764.i, 1                 ; 3 uses
  %i.fpa = zext nneg i32 %i.foz to i64
  %i.fpb = sext i32 %i.fon to i64                 ; 2 uses
  %i.fpc = add nsw i32 %.0397764.i, %.neg423.i
  %i.fpd = sext i32 %i.fpc to i64                 ; 3 uses
  %i.fpe = sext i32 %i.fos to i64                 ; 6 uses
  %i.fpf = add nsw i32 %i.foq, -1
  %i.fpg = sext i32 %i.fpf to i64                 ; 6 uses
  %i.fph = sext i32 %i.foq to i64                 ; 6 uses
  br i1 %i.fot, label %.lr.ph756.split.i, label %._crit_edge757.i

.lr.ph756.split.i:                                ; preds = %.lr.ph756.i
  %i.fpi = icmp slt i32 %.0397764.i, %i.fmc
  %.fr762.i = freeze i1 %i.fpi
  br i1 %.fr762.i, label %.lr.ph756.split.split.i.preheader, label %._crit_edge757.i

.lr.ph756.split.split.i.preheader:                ; preds = %.lr.ph756.split.i
  %i.fpj = mul i64 %i.fml, %i.fou
  %.sink.idx.i509.i = select i1 %i.fhh, i64 0, i64 %i.fpj
  %.sink.i510.i = getelementptr inbounds nuw i8, ptr %i.fhi, i64 %.sink.idx.i509.i ; 2 uses
  %i.fpk = mul i64 %i.fml, %i.fpa
  %.sink.idx.i511.i = select i1 %i.fhh, i64 0, i64 %i.fpk
  %.sink.i512.i = getelementptr inbounds nuw i8, ptr %i.fhi, i64 %.sink.idx.i511.i
  %i.fpl = mul i64 %i.fml, %i.fpb
  %.sink.idx.i513.i = select i1 %i.fhh, i64 0, i64 %i.fpl
  %invariant.gep1981 = getelementptr i8, ptr %i.fhi, i64 %.sink.idx.i513.i
  br label %.lr.ph756.split.split.i

.lr.ph756.split.split.i:                          ; preds = %.lr.ph756.split.split.i.preheader, %.loopexit.i1225
  %.sroa.0789.2.i = phi float [ %.sroa.0789.3.i, %.loopexit.i1225 ], [ %.sroa.0789.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6791.2.i = phi float [ %.sroa.6791.3.i, %.loopexit.i1225 ], [ %.sroa.6791.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9793.2.i = phi float [ %.sroa.9793.3.i, %.loopexit.i1225 ], [ %.sroa.9793.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9.2.i1221 = phi float [ %.sroa.9.3.i1226, %.loopexit.i1225 ], [ %.sroa.9.1.i1215, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6.2.i1222 = phi float [ %.sroa.6.3.i1227, %.loopexit.i1225 ], [ %.sroa.6.1.i1216, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.0.2.i1223 = phi float [ %.sroa.0.3.i1228, %.loopexit.i1225 ], [ %.sroa.0.1.i1217, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %indvars.iv.i1224 = phi i64 [ %indvars.iv.next.i1229, %.loopexit.i1225 ], [ %i.fmi, %.lr.ph756.split.split.i.preheader ] ; 12 uses
  %i.fpm = add nsw i64 %indvars.iv.i1224, -1      ; 3 uses
  %i.fpn = icmp eq i64 %indvars.iv.i1224, 1
  %i.fpo = zext i1 %i.fpn to i64
  %i.fpp = add nuw nsw i64 %i.fpm, %i.fpo         ; 21 uses
  %i.fpq = icmp eq i64 %indvars.iv.i1224, %sext.i1214
  %i.fpr = icmp sgt i64 %indvars.iv.i1224, 0
  %i.fps = icmp slt i64 %indvars.iv.i1224, %i.fmj
  %or.cond770.i = select i1 %i.fpr, i1 %i.fps, i1 false
  br i1 %or.cond770.i, label %bb.adx, label %.loopexit.i1225

bb.adx:                                           ; preds = %.lr.ph756.split.split.i
  %i.fpt = getelementptr inbounds nuw i8, ptr %.sink.i510.i, i64 %indvars.iv.i1224 ; 2 uses
  %i.fpu = load i8, ptr %i.fpt, align 1, !tbaa !21
  %.not426.i = icmp eq i8 %i.fpu, 2
  br i1 %.not426.i, label %.loopexit.i1225, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.fpv = trunc nuw nsw i64 %indvars.iv.i1224 to i32
  %i.fpw = sub nsw i32 %i.fpv, %.2401.i           ; 3 uses
  %i.fpx = mul nsw i32 %i.fpw, %i.fpw
  %i.fpy = add nuw nsw i32 %i.fpx, %i.fow
  %.not427.i = icmp samesign ugt i32 %i.fpy, %i.fgb
  br i1 %.not427.i, label %.loopexit.i1225, label %.preheader.i1230

.preheader.i1230:                                 ; preds = %bb.ady
  %i.fpz = sitofp i32 %i.fpw to float             ; 5 uses
  %i.fqa = call noundef float @llvm.fmuladd.f32(float %i.fpz, float %i.fpz, float %i.foy) ; 5 uses
  %i.fqb = call nnan float @llvm.fmuladd.f32(float %i.fqa, float %i.fqa, float 1.000000e+00)
  %i.fqc = fdiv nnan float 1.000000e+00, %i.fqb   ; 3 uses
  %i.fqd = getelementptr inbounds nuw i8, ptr %.sink.i512.i, i64 %indvars.iv.i1224 ; 3 uses
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.fpt, i64 1 ; 3 uses
  %i.fqf = load i32, ptr %i.fgc, align 4, !tbaa !148
  %i.fqg = icmp slt i32 %i.fqf, 2                 ; 22 uses
  %i.fqh = load ptr, ptr %i.fgd, align 8, !tbaa !149 ; 22 uses
  %i.fqi = load i64, ptr %i.fge, align 8          ; 22 uses
  %i.fqj = mul i64 %i.fqi, %i.fpb
  %.sink.idx.i555.i = select i1 %i.fqg, i64 0, i64 %i.fqj
  %.sink.i556.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i555.i
  %i.fqk = getelementptr inbounds [3 x i8], ptr %.sink.i556.i, i64 %i.fpm ; 3 uses
  %gep1982 = getelementptr i8, ptr %invariant.gep1981, i64 %indvars.iv.i1224 ; 3 uses
  %i.fql = getelementptr inbounds i8, ptr %.sink.i510.i, i64 %i.fpm ; 3 uses
  %i.fqm = sext i1 %i.fpq to i64
  %i.fqn = add nsw i64 %indvars.iv.i1224, %i.fqm  ; 3 uses
  %80 = load i8, ptr %i.fqd, align 1, !tbaa !21   ; 2 uses
  %.not428.i = icmp eq i8 %80, 2
  %i.fqo = load i8, ptr %gep1982, align 1, !tbaa !21 ; 2 uses
  %.not429.i = icmp eq i8 %i.fqo, 2               ; 2 uses
  br i1 %.not428.i, label %bb.aec, label %bb.adz

bb.adz:                                           ; preds = %.preheader.i1230
  %i.fqp = mul i64 %i.fqi, %i.fpd
  %.sink.idx.i523.i = select i1 %i.fqg, i64 0, i64 %i.fqp
  %.sink.i524.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i523.i
  %i.fqq = getelementptr inbounds [3 x i8], ptr %.sink.i524.i, i64 %i.fpp
  %i.fqr = load i8, ptr %i.fqq, align 1, !tbaa !21
  %i.fqs = zext i8 %i.fqr to i32
  %i.fqt = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i525.i = select i1 %i.fqg, i64 0, i64 %i.fqt
  %.sink.i526.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i525.i
  %i.fqu = getelementptr inbounds [3 x i8], ptr %.sink.i526.i, i64 %i.fpp
  %i.fqv = load i8, ptr %i.fqu, align 1, !tbaa !21
  %i.fqw = zext i8 %i.fqv to i32                  ; 2 uses
  %i.fqx = sub nsw i32 %i.fqs, %i.fqw
  %i.fqy = call i32 @llvm.abs.i32(i32 %i.fqx, i1 true) ; 2 uses
  br i1 %.not429.i, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.fqz = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i521.i = select i1 %i.fqg, i64 0, i64 %i.fqz
  %.sink.i522.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i521.i
  %i.fra = getelementptr inbounds [3 x i8], ptr %.sink.i522.i, i64 %i.fpp
  %i.frb = load i8, ptr %i.fra, align 1, !tbaa !21
  %i.frc = zext i8 %i.frb to i32
  %i.frd = sub nsw i32 %i.fqw, %i.frc
  %i.fre = call i32 @llvm.abs.i32(i32 %i.frd, i1 true)
  %i.frf = add nuw nsw i32 %i.fre, %i.fqy
  %i.frg = uitofp nneg i32 %i.frf to float
  br label %bb.aee

bb.aeb:                                           ; preds = %bb.adz
  %i.frh = uitofp nneg i32 %i.fqy to float
  %i.fri = fmul nnan float %i.frh, 2.000000e+00
  br label %bb.aee

bb.aec:                                           ; preds = %.preheader.i1230
  br i1 %.not429.i, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.frj = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i529.i = select i1 %i.fqg, i64 0, i64 %i.frj
  %.sink.i530.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i529.i
  %i.frk = getelementptr inbounds [3 x i8], ptr %.sink.i530.i, i64 %i.fpp
  %i.frl = load i8, ptr %i.frk, align 1, !tbaa !21
  %i.frm = zext i8 %i.frl to i32
  %i.frn = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i531.i = select i1 %i.fqg, i64 0, i64 %i.frn
  %.sink.i532.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i531.i
  %i.fro = getelementptr inbounds [3 x i8], ptr %.sink.i532.i, i64 %i.fpp
  %i.frp = load i8, ptr %i.fro, align 1, !tbaa !21
  %i.frq = zext i8 %i.frp to i32
  %i.frr = sub nsw i32 %i.frm, %i.frq
  %i.frs = call i32 @llvm.abs.i32(i32 %i.frr, i1 true)
  %i.frt = uitofp nneg i32 %i.frs to float
  %i.fru = fmul nnan float %i.frt, 2.000000e+00
  br label %bb.aee

bb.aee:                                           ; preds = %bb.aed, %bb.aec, %bb.aeb, %bb.aea
  %.sroa.0671.0.i = phi float [ %i.frg, %bb.aea ], [ %i.fru, %bb.aed ], [ %i.fri, %bb.aeb ], [ 0.000000e+00, %bb.aec ] ; 3 uses
  %81 = load i8, ptr %i.fqe, align 1, !tbaa !21
  %.not431.i = icmp eq i8 %81, 2
  %i.frv = load i8, ptr %i.fql, align 1, !tbaa !21
  %.not432.i = icmp eq i8 %i.frv, 2               ; 2 uses
  br i1 %.not431.i, label %bb.aei, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  %i.frw = mul i64 %i.fqi, %i.fph
  %.sink.idx.i545.i = select i1 %i.fqg, i64 0, i64 %i.frw
  %.sink.i546.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i545.i ; 2 uses
  %i.frx = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i, i64 %i.fqn
  %i.fry = load i8, ptr %i.frx, align 1, !tbaa !21
  %i.frz = zext i8 %i.fry to i32
  %i.fsa = getelementptr [3 x i8], ptr %.sink.i546.i, i64 %i.fpp ; 2 uses
  %i.fsb = load i8, ptr %i.fsa, align 1, !tbaa !21
  %i.fsc = zext i8 %i.fsb to i32                  ; 2 uses
  %i.fsd = sub nsw i32 %i.frz, %i.fsc
  %i.fse = call i32 @llvm.abs.i32(i32 %i.fsd, i1 true) ; 2 uses
  br i1 %.not432.i, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.fsf = getelementptr i8, ptr %i.fsa, i64 -3
  %i.fsg = load i8, ptr %i.fsf, align 1, !tbaa !21
  %i.fsh = zext i8 %i.fsg to i32
  %i.fsi = sub nsw i32 %i.fsc, %i.fsh
  %i.fsj = call i32 @llvm.abs.i32(i32 %i.fsi, i1 true)
  %i.fsk = add nuw nsw i32 %i.fsj, %i.fse
  %i.fsl = uitofp nneg i32 %i.fsk to float
  br label %bb.aek

bb.aeh:                                           ; preds = %bb.aef
  %i.fsm = uitofp nneg i32 %i.fse to float
  %i.fsn = fmul nnan float %i.fsm, 2.000000e+00
  br label %bb.aek

bb.aei:                                           ; preds = %bb.aee
  br i1 %.not432.i, label %bb.aek, label %bb.aej

bb.aej:                                           ; preds = %bb.aei
  %i.fso = mul i64 %i.fqi, %i.fph
  %.sink.idx.i551.i = select i1 %i.fqg, i64 0, i64 %i.fso
  %.sink.i552.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i551.i
  %i.fsp = getelementptr [3 x i8], ptr %.sink.i552.i, i64 %i.fpp ; 2 uses
  %i.fsq = load i8, ptr %i.fsp, align 1, !tbaa !21
  %i.fsr = zext i8 %i.fsq to i32
  %i.fss = getelementptr i8, ptr %i.fsp, i64 -3
  %i.fst = load i8, ptr %i.fss, align 1, !tbaa !21
  %i.fsu = zext i8 %i.fst to i32
  %i.fsv = sub nsw i32 %i.fsr, %i.fsu
  %i.fsw = call i32 @llvm.abs.i32(i32 %i.fsv, i1 true)
  %i.fsx = uitofp nneg i32 %i.fsw to float
  %i.fsy = fmul nnan float %i.fsx, 2.000000e+00
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aej, %bb.aei, %bb.aeh, %bb.aeg
  %.sroa.12672.0.i = phi float [ %i.fsl, %bb.aeg ], [ %i.fsy, %bb.aej ], [ %i.fsn, %bb.aeh ], [ 0.000000e+00, %bb.aei ] ; 3 uses
  %i.fsz = fneg float %.sroa.0671.0.i
  %i.fta = fmul float %.sroa.12672.0.i, %i.fox
  %i.ftb = call noundef float @llvm.fmuladd.f32(float %i.fpz, float %i.fsz, float %i.fta) ; 2 uses
  %i.ftc = call float @llvm.fabs.f32(float %i.ftb)
  %i.ftd = fpext float %i.ftc to double
  %i.fte = fcmp ugt double %i.ftd, 1.000000e-02
  br i1 %i.fte, label %bb.ael, label %bb.aem

bb.ael:                                           ; preds = %bb.aek
  %i.ftf = fmul float %.sroa.12672.0.i, %.sroa.12672.0.i
  %i.ftg = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i, float %.sroa.0671.0.i, float %i.ftf)
  %i.fth = fmul float %i.fqa, %i.ftg
  %i.fti = call noundef float @sqrtf(float noundef %i.fth) #20
  %i.ftj = fdiv float %i.ftb, %i.fti
  %i.ftk = call float @llvm.fabs.f32(float %i.ftj)
  %.pre798.i = load i8, ptr %i.fqd, align 1, !tbaa !21
  %.pre2119 = load i8, ptr %gep1982, align 1, !tbaa !21
  br label %bb.aem

bb.aem:                                           ; preds = %bb.ael, %bb.aek
  %82 = phi i8 [ %.pre2119, %bb.ael ], [ %i.fqo, %bb.aek ] ; 2 uses
  %83 = phi i8 [ %.pre798.i, %bb.ael ], [ %80, %bb.aek ] ; 2 uses
  %.0390.i = phi float [ %i.ftk, %bb.ael ], [ f0x358637BD, %bb.aek ]
  %i.ftl = fmul float %i.fqc, %.0390.i            ; 2 uses
  %i.ftm = load i8, ptr %i.fqk, align 1, !tbaa !21
  %i.ftn = uitofp i8 %i.ftm to float
  %i.fto = call float @llvm.fmuladd.f32(float %i.ftl, float %i.ftn, float %.sroa.0789.2.i)
  %i.ftp = fadd float %.sroa.0.2.i1223, %i.ftl
  %.not428.1.i = icmp eq i8 %83, 2
  %.not429.1.i = icmp eq i8 %82, 2                ; 2 uses
  br i1 %.not428.1.i, label %bb.aeq, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %i.ftq = mul i64 %i.fqi, %i.fpd
  %.sink.idx.i523.1.i = select i1 %i.fqg, i64 0, i64 %i.ftq
  %.sink.i524.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i523.1.i
  %i.ftr = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i, i64 %i.fpp
  %i.fts = getelementptr inbounds nuw i8, ptr %i.ftr, i64 1
  %i.ftt = load i8, ptr %i.fts, align 1, !tbaa !21
  %i.ftu = zext i8 %i.ftt to i32
  %i.ftv = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i525.1.i = select i1 %i.fqg, i64 0, i64 %i.ftv
  %.sink.i526.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i525.1.i
  %i.ftw = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i, i64 %i.fpp
  %i.ftx = getelementptr inbounds nuw i8, ptr %i.ftw, i64 1
  %i.fty = load i8, ptr %i.ftx, align 1, !tbaa !21
  %i.ftz = zext i8 %i.fty to i32                  ; 2 uses
  %i.fua = sub nsw i32 %i.ftu, %i.ftz
  %i.fub = call i32 @llvm.abs.i32(i32 %i.fua, i1 true) ; 2 uses
  br i1 %.not429.1.i, label %bb.aep, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  %i.fuc = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i521.1.i = select i1 %i.fqg, i64 0, i64 %i.fuc
  %.sink.i522.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i521.1.i
  %i.fud = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i, i64 %i.fpp
  %i.fue = getelementptr inbounds nuw i8, ptr %i.fud, i64 1
  %i.fuf = load i8, ptr %i.fue, align 1, !tbaa !21
  %i.fug = zext i8 %i.fuf to i32
  %i.fuh = sub nsw i32 %i.ftz, %i.fug
  %i.fui = call i32 @llvm.abs.i32(i32 %i.fuh, i1 true)
  %i.fuj = add nuw nsw i32 %i.fui, %i.fub
  %i.fuk = uitofp nneg i32 %i.fuj to float
  br label %bb.aes

bb.aep:                                           ; preds = %bb.aen
  %i.ful = uitofp nneg i32 %i.fub to float
  %i.fum = fmul nnan float %i.ful, 2.000000e+00
  br label %bb.aes

bb.aeq:                                           ; preds = %bb.aem
  br i1 %.not429.1.i, label %bb.aes, label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  %i.fun = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i529.1.i = select i1 %i.fqg, i64 0, i64 %i.fun
  %.sink.i530.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i529.1.i
  %i.fuo = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i, i64 %i.fpp
  %i.fup = getelementptr inbounds nuw i8, ptr %i.fuo, i64 1
  %i.fuq = load i8, ptr %i.fup, align 1, !tbaa !21
  %i.fur = zext i8 %i.fuq to i32
  %i.fus = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i531.1.i = select i1 %i.fqg, i64 0, i64 %i.fus
  %.sink.i532.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i531.1.i
  %i.fut = getelementptr inbounds [3 x i8], ptr %.sink.i532.1.i, i64 %i.fpp
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fut, i64 1
  %i.fuv = load i8, ptr %i.fuu, align 1, !tbaa !21
  %i.fuw = zext i8 %i.fuv to i32
  %i.fux = sub nsw i32 %i.fur, %i.fuw
  %i.fuy = call i32 @llvm.abs.i32(i32 %i.fux, i1 true)
  %i.fuz = uitofp nneg i32 %i.fuy to float
  %i.fva = fmul nnan float %i.fuz, 2.000000e+00
  br label %bb.aes

bb.aes:                                           ; preds = %bb.aer, %bb.aeq, %bb.aep, %bb.aeo
  %.sroa.0671.0.1.i = phi float [ %i.fuk, %bb.aeo ], [ %i.fva, %bb.aer ], [ %i.fum, %bb.aep ], [ 0.000000e+00, %bb.aeq ] ; 3 uses
  %84 = load i8, ptr %i.fqe, align 1, !tbaa !21
  %.not431.1.i = icmp eq i8 %84, 2
  %85 = load i8, ptr %i.fql, align 1, !tbaa !21
  %.not432.1.i = icmp eq i8 %85, 2                ; 2 uses
  br i1 %.not431.1.i, label %bb.aew, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.fvb = mul i64 %i.fqi, %i.fph
  %.sink.idx.i545.1.i = select i1 %i.fqg, i64 0, i64 %i.fvb
  %.sink.i546.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i545.1.i ; 2 uses
  %i.fvc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.1.i, i64 %i.fqn
  %i.fvd = getelementptr inbounds nuw i8, ptr %i.fvc, i64 1
  %i.fve = load i8, ptr %i.fvd, align 1, !tbaa !21
  %i.fvf = zext i8 %i.fve to i32
  %i.fvg = getelementptr [3 x i8], ptr %.sink.i546.1.i, i64 %i.fpp ; 2 uses
  %i.fvh = getelementptr inbounds nuw i8, ptr %i.fvg, i64 1
  %i.fvi = load i8, ptr %i.fvh, align 1, !tbaa !21
  %i.fvj = zext i8 %i.fvi to i32                  ; 2 uses
  %i.fvk = sub nsw i32 %i.fvf, %i.fvj
  %i.fvl = call i32 @llvm.abs.i32(i32 %i.fvk, i1 true) ; 2 uses
  br i1 %.not432.1.i, label %bb.aev, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.fvm = getelementptr i8, ptr %i.fvg, i64 -2
  %i.fvn = load i8, ptr %i.fvm, align 1, !tbaa !21
  %i.fvo = zext i8 %i.fvn to i32
  %i.fvp = sub nsw i32 %i.fvj, %i.fvo
  %i.fvq = call i32 @llvm.abs.i32(i32 %i.fvp, i1 true)
  %i.fvr = add nuw nsw i32 %i.fvq, %i.fvl
  %i.fvs = uitofp nneg i32 %i.fvr to float
  br label %bb.aey

bb.aev:                                           ; preds = %bb.aet
  %i.fvt = uitofp nneg i32 %i.fvl to float
  %i.fvu = fmul nnan float %i.fvt, 2.000000e+00
  br label %bb.aey

bb.aew:                                           ; preds = %bb.aes
  br i1 %.not432.1.i, label %bb.aey, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %i.fvv = mul i64 %i.fqi, %i.fph
  %.sink.idx.i551.1.i = select i1 %i.fqg, i64 0, i64 %i.fvv
  %.sink.i552.1.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i551.1.i
  %i.fvw = getelementptr [3 x i8], ptr %.sink.i552.1.i, i64 %i.fpp ; 2 uses
  %i.fvx = getelementptr inbounds nuw i8, ptr %i.fvw, i64 1
  %i.fvy = load i8, ptr %i.fvx, align 1, !tbaa !21
  %i.fvz = zext i8 %i.fvy to i32
  %i.fwa = getelementptr i8, ptr %i.fvw, i64 -2
  %i.fwb = load i8, ptr %i.fwa, align 1, !tbaa !21
  %i.fwc = zext i8 %i.fwb to i32
  %i.fwd = sub nsw i32 %i.fvz, %i.fwc
  %i.fwe = call i32 @llvm.abs.i32(i32 %i.fwd, i1 true)
  %i.fwf = uitofp nneg i32 %i.fwe to float
  %i.fwg = fmul nnan float %i.fwf, 2.000000e+00
  br label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aew, %bb.aev, %bb.aeu
  %.sroa.12672.0.1.i = phi float [ %i.fvs, %bb.aeu ], [ %i.fwg, %bb.aex ], [ %i.fvu, %bb.aev ], [ 0.000000e+00, %bb.aew ] ; 3 uses
  %i.fwh = fneg float %.sroa.0671.0.1.i
  %i.fwi = fmul float %.sroa.12672.0.1.i, %i.fox
  %i.fwj = call noundef float @llvm.fmuladd.f32(float %i.fpz, float %i.fwh, float %i.fwi) ; 2 uses
  %i.fwk = call float @llvm.fabs.f32(float %i.fwj)
  %i.fwl = fpext float %i.fwk to double
  %i.fwm = fcmp ugt double %i.fwl, 1.000000e-02
  br i1 %i.fwm, label %bb.aez, label %bb.afa

bb.aez:                                           ; preds = %bb.aey
  %i.fwn = fmul float %.sroa.12672.0.1.i, %.sroa.12672.0.1.i
  %i.fwo = call float @llvm.fmuladd.f32(float %.sroa.0671.0.1.i, float %.sroa.0671.0.1.i, float %i.fwn)
  %i.fwp = fmul float %i.fqa, %i.fwo
  %i.fwq = call noundef float @sqrtf(float noundef %i.fwp) #20
  %i.fwr = fdiv float %i.fwj, %i.fwq
  %i.fws = call float @llvm.fabs.f32(float %i.fwr)
  %.pre799.i = load i8, ptr %i.fqd, align 1, !tbaa !21
  %.pre2120 = load i8, ptr %gep1982, align 1, !tbaa !21
  br label %bb.afa

bb.afa:                                           ; preds = %bb.aez, %bb.aey
  %86 = phi i8 [ %.pre2120, %bb.aez ], [ %82, %bb.aey ]
  %87 = phi i8 [ %.pre799.i, %bb.aez ], [ %83, %bb.aey ]
  %.0390.1.i = phi float [ %i.fws, %bb.aez ], [ f0x358637BD, %bb.aey ]
  %i.fwt = fmul float %i.fqc, %.0390.1.i          ; 2 uses
  %i.fwu = getelementptr inbounds nuw i8, ptr %i.fqk, i64 1
  %i.fwv = load i8, ptr %i.fwu, align 1, !tbaa !21
  %i.fww = uitofp i8 %i.fwv to float
  %i.fwx = call float @llvm.fmuladd.f32(float %i.fwt, float %i.fww, float %.sroa.6791.2.i)
  %i.fwy = fadd float %.sroa.6.2.i1222, %i.fwt
  %.not428.2.i = icmp eq i8 %87, 2
  %.not429.2.i = icmp eq i8 %86, 2                ; 2 uses
  br i1 %.not428.2.i, label %bb.afe, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  %i.fwz = mul i64 %i.fqi, %i.fpd
  %.sink.idx.i523.2.i = select i1 %i.fqg, i64 0, i64 %i.fwz
  %.sink.i524.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i523.2.i
  %i.fxa = getelementptr inbounds [3 x i8], ptr %.sink.i524.2.i, i64 %i.fpp
  %i.fxb = getelementptr inbounds nuw i8, ptr %i.fxa, i64 2
  %i.fxc = load i8, ptr %i.fxb, align 1, !tbaa !21
  %i.fxd = zext i8 %i.fxc to i32
  %i.fxe = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i525.2.i = select i1 %i.fqg, i64 0, i64 %i.fxe
  %.sink.i526.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i525.2.i
  %i.fxf = getelementptr inbounds [3 x i8], ptr %.sink.i526.2.i, i64 %i.fpp
  %i.fxg = getelementptr inbounds nuw i8, ptr %i.fxf, i64 2
  %i.fxh = load i8, ptr %i.fxg, align 1, !tbaa !21
  %i.fxi = zext i8 %i.fxh to i32                  ; 2 uses
  %i.fxj = sub nsw i32 %i.fxd, %i.fxi
  %i.fxk = call i32 @llvm.abs.i32(i32 %i.fxj, i1 true) ; 2 uses
  br i1 %.not429.2.i, label %bb.afd, label %bb.afc

bb.afc:                                           ; preds = %bb.afb
  %i.fxl = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i521.2.i = select i1 %i.fqg, i64 0, i64 %i.fxl
  %.sink.i522.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i521.2.i
  %i.fxm = getelementptr inbounds [3 x i8], ptr %.sink.i522.2.i, i64 %i.fpp
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxm, i64 2
  %i.fxo = load i8, ptr %i.fxn, align 1, !tbaa !21
  %i.fxp = zext i8 %i.fxo to i32
  %i.fxq = sub nsw i32 %i.fxi, %i.fxp
  %i.fxr = call i32 @llvm.abs.i32(i32 %i.fxq, i1 true)
  %i.fxs = add nuw nsw i32 %i.fxr, %i.fxk
  %i.fxt = uitofp nneg i32 %i.fxs to float
  br label %bb.afg

bb.afd:                                           ; preds = %bb.afb
  %i.fxu = uitofp nneg i32 %i.fxk to float
  %i.fxv = fmul nnan float %i.fxu, 2.000000e+00
  br label %bb.afg

bb.afe:                                           ; preds = %bb.afa
  br i1 %.not429.2.i, label %bb.afg, label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  %i.fxw = mul i64 %i.fqi, %i.fpe
  %.sink.idx.i529.2.i = select i1 %i.fqg, i64 0, i64 %i.fxw
  %.sink.i530.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i529.2.i
  %i.fxx = getelementptr inbounds [3 x i8], ptr %.sink.i530.2.i, i64 %i.fpp
  %i.fxy = getelementptr inbounds nuw i8, ptr %i.fxx, i64 2
  %i.fxz = load i8, ptr %i.fxy, align 1, !tbaa !21
  %i.fya = zext i8 %i.fxz to i32
  %i.fyb = mul i64 %i.fqi, %i.fpg
  %.sink.idx.i531.2.i = select i1 %i.fqg, i64 0, i64 %i.fyb
  %.sink.i532.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i531.2.i
  %i.fyc = getelementptr inbounds [3 x i8], ptr %.sink.i532.2.i, i64 %i.fpp
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fyc, i64 2
  %i.fye = load i8, ptr %i.fyd, align 1, !tbaa !21
  %i.fyf = zext i8 %i.fye to i32
  %i.fyg = sub nsw i32 %i.fya, %i.fyf
  %i.fyh = call i32 @llvm.abs.i32(i32 %i.fyg, i1 true)
  %i.fyi = uitofp nneg i32 %i.fyh to float
  %i.fyj = fmul nnan float %i.fyi, 2.000000e+00
  br label %bb.afg

bb.afg:                                           ; preds = %bb.aff, %bb.afe, %bb.afd, %bb.afc
  %.sroa.0671.0.2.i = phi float [ %i.fxt, %bb.afc ], [ %i.fyj, %bb.aff ], [ %i.fxv, %bb.afd ], [ 0.000000e+00, %bb.afe ] ; 3 uses
  %88 = load i8, ptr %i.fqe, align 1, !tbaa !21
  %.not431.2.i = icmp eq i8 %88, 2
  %89 = load i8, ptr %i.fql, align 1, !tbaa !21
  %.not432.2.i = icmp eq i8 %89, 2                ; 2 uses
  br i1 %.not431.2.i, label %bb.afk, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  %i.fyk = mul i64 %i.fqi, %i.fph
  %.sink.idx.i545.2.i = select i1 %i.fqg, i64 0, i64 %i.fyk
  %.sink.i546.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i545.2.i ; 2 uses
  %i.fyl = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.2.i, i64 %i.fqn
  %i.fym = getelementptr inbounds nuw i8, ptr %i.fyl, i64 2
  %i.fyn = load i8, ptr %i.fym, align 1, !tbaa !21
  %i.fyo = zext i8 %i.fyn to i32
  %i.fyp = getelementptr [3 x i8], ptr %.sink.i546.2.i, i64 %i.fpp ; 2 uses
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.fyp, i64 2
  %i.fyr = load i8, ptr %i.fyq, align 1, !tbaa !21
  %i.fys = zext i8 %i.fyr to i32                  ; 2 uses
  %i.fyt = sub nsw i32 %i.fyo, %i.fys
  %i.fyu = call i32 @llvm.abs.i32(i32 %i.fyt, i1 true) ; 2 uses
  br i1 %.not432.2.i, label %bb.afj, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.fyv = getelementptr i8, ptr %i.fyp, i64 -1
  %i.fyw = load i8, ptr %i.fyv, align 1, !tbaa !21
  %i.fyx = zext i8 %i.fyw to i32
  %i.fyy = sub nsw i32 %i.fys, %i.fyx
  %i.fyz = call i32 @llvm.abs.i32(i32 %i.fyy, i1 true)
  %i.fza = add nuw nsw i32 %i.fyz, %i.fyu
  %i.fzb = uitofp nneg i32 %i.fza to float
  br label %bb.afm

bb.afj:                                           ; preds = %bb.afh
  %i.fzc = uitofp nneg i32 %i.fyu to float
  %i.fzd = fmul nnan float %i.fzc, 2.000000e+00
  br label %bb.afm

bb.afk:                                           ; preds = %bb.afg
  br i1 %.not432.2.i, label %bb.afm, label %bb.afl

bb.afl:                                           ; preds = %bb.afk
  %i.fze = mul i64 %i.fqi, %i.fph
  %.sink.idx.i551.2.i = select i1 %i.fqg, i64 0, i64 %i.fze
  %.sink.i552.2.i = getelementptr inbounds nuw i8, ptr %i.fqh, i64 %.sink.idx.i551.2.i
  %i.fzf = getelementptr [3 x i8], ptr %.sink.i552.2.i, i64 %i.fpp ; 2 uses
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fzf, i64 2
  %i.fzh = load i8, ptr %i.fzg, align 1, !tbaa !21
  %i.fzi = zext i8 %i.fzh to i32
  %i.fzj = getelementptr i8, ptr %i.fzf, i64 -1
  %i.fzk = load i8, ptr %i.fzj, align 1, !tbaa !21
  %i.fzl = zext i8 %i.fzk to i32
  %i.fzm = sub nsw i32 %i.fzi, %i.fzl
  %i.fzn = call i32 @llvm.abs.i32(i32 %i.fzm, i1 true)
  %i.fzo = uitofp nneg i32 %i.fzn to float
  %i.fzp = fmul nnan float %i.fzo, 2.000000e+00
  br label %bb.afm

bb.afm:                                           ; preds = %bb.afl, %bb.afk, %bb.afj, %bb.afi
  %.sroa.12672.0.2.i = phi float [ %i.fzb, %bb.afi ], [ %i.fzp, %bb.afl ], [ %i.fzd, %bb.afj ], [ 0.000000e+00, %bb.afk ] ; 3 uses
  %i.fzq = fneg float %.sroa.0671.0.2.i
  %i.fzr = fmul float %.sroa.12672.0.2.i, %i.fox
  %i.fzs = call noundef float @llvm.fmuladd.f32(float %i.fpz, float %i.fzq, float %i.fzr) ; 2 uses
  %i.fzt = call float @llvm.fabs.f32(float %i.fzs)
  %i.fzu = fpext float %i.fzt to double
  %i.fzv = fcmp ugt double %i.fzu, 1.000000e-02
  br i1 %i.fzv, label %bb.afn, label %.loopexit.loopexit.i1233

bb.afn:                                           ; preds = %bb.afm
  %i.fzw = fmul float %.sroa.12672.0.2.i, %.sroa.12672.0.2.i
  %i.fzx = call float @llvm.fmuladd.f32(float %.sroa.0671.0.2.i, float %.sroa.0671.0.2.i, float %i.fzw)
  %i.fzy = fmul float %i.fqa, %i.fzx
  %i.fzz = call noundef float @sqrtf(float noundef %i.fzy) #20
  %i.gaa = fdiv float %i.fzs, %i.fzz
  %i.gab = call float @llvm.fabs.f32(float %i.gaa)
  br label %.loopexit.loopexit.i1233

.loopexit.loopexit.i1233:                         ; preds = %bb.afn, %bb.afm
  %.0390.2.i = phi float [ %i.gab, %bb.afn ], [ f0x358637BD, %bb.afm ]
  %i.gac = fmul float %i.fqc, %.0390.2.i          ; 2 uses
  %i.gad = getelementptr inbounds nuw i8, ptr %i.fqk, i64 2
  %i.gae = load i8, ptr %i.gad, align 1, !tbaa !21
  %i.gaf = uitofp i8 %i.gae to float
  %i.gag = call float @llvm.fmuladd.f32(float %i.gac, float %i.gaf, float %.sroa.9793.2.i)
  %i.gah = fadd float %.sroa.9.2.i1221, %i.gac
  br label %.loopexit.i1225

.loopexit.i1225:                                  ; preds = %.loopexit.loopexit.i1233, %bb.ady, %bb.adx, %.lr.ph756.split.split.i
  %.sroa.0789.3.i = phi float [ %.sroa.0789.2.i, %bb.adx ], [ %.sroa.0789.2.i, %bb.ady ], [ %i.fto, %.loopexit.loopexit.i1233 ], [ %.sroa.0789.2.i, %.lr.ph756.split.split.i ] ; 2 uses
  %.sroa.6791.3.i = phi float [ %.sroa.6791.2.i, %bb.adx ], [ %.sroa.6791.2.i, %bb.ady ], [ %i.fwx, %.loopexit.loopexit.i1233 ], [ %.sroa.6791.2.i, %.lr.ph756.split.split.i ] ; 2 uses
  %.sroa.9793.3.i = phi float [ %.sroa.9793.2.i, %bb.adx ], [ %.sroa.9793.2.i, %bb.ady ], [ %i.gag, %.loopexit.loopexit.i1233 ], [ %.sroa.9793.2.i, %.lr.ph756.split.split.i ] ; 2 uses
  %.sroa.9.3.i1226 = phi float [ %.sroa.9.2.i1221, %bb.adx ], [ %.sroa.9.2.i1221, %bb.ady ], [ %i.gah, %.loopexit.loopexit.i1233 ], [ %.sroa.9.2.i1221, %.lr.ph756.split.split.i ] ; 2 uses
  %.sroa.6.3.i1227 = phi float [ %.sroa.6.2.i1222, %bb.adx ], [ %.sroa.6.2.i1222, %bb.ady ], [ %i.fwy, %.loopexit.loopexit.i1233 ], [ %.sroa.6.2.i1222, %.lr.ph756.split.split.i ] ; 2 uses
  %.sroa.0.3.i1228 = phi float [ %.sroa.0.2.i1223, %bb.adx ], [ %.sroa.0.2.i1223, %bb.ady ], [ %i.ftp, %.loopexit.loopexit.i1233 ], [ %.sroa.0.2.i1223, %.lr.ph756.split.split.i ] ; 2 uses
  %indvars.iv.next.i1229 = add nsw i64 %indvars.iv.i1224, 1
  %.not424.not.i = icmp slt i64 %indvars.iv.i1224, %i.fmk
  br i1 %.not424.not.i, label %.lr.ph756.split.split.i, label %._crit_edge757.i, !llvm.loop !122

._crit_edge757.i:                                 ; preds = %.loopexit.i1225, %.lr.ph756.split.i, %.lr.ph756.i
  %.sroa.0789.4.i = phi float [ %.sroa.0789.1.i, %.lr.ph756.split.i ], [ %.sroa.0789.1.i, %.lr.ph756.i ], [ %.sroa.0789.3.i, %.loopexit.i1225 ] ; 2 uses
  %.sroa.6791.4.i = phi float [ %.sroa.6791.1.i, %.lr.ph756.split.i ], [ %.sroa.6791.1.i, %.lr.ph756.i ], [ %.sroa.6791.3.i, %.loopexit.i1225 ] ; 2 uses
  %.sroa.9793.4.i = phi float [ %.sroa.9793.1.i, %.lr.ph756.split.i ], [ %.sroa.9793.1.i, %.lr.ph756.i ], [ %.sroa.9793.3.i, %.loopexit.i1225 ] ; 2 uses
  %.sroa.9.4.i1218 = phi float [ %.sroa.9.1.i1215, %.lr.ph756.split.i ], [ %.sroa.9.1.i1215, %.lr.ph756.i ], [ %.sroa.9.3.i1226, %.loopexit.i1225 ] ; 2 uses
  %.sroa.6.4.i1219 = phi float [ %.sroa.6.1.i1216, %.lr.ph756.split.i ], [ %.sroa.6.1.i1216, %.lr.ph756.i ], [ %.sroa.6.3.i1227, %.loopexit.i1225 ] ; 2 uses
  %.sroa.0.4.i1220 = phi float [ %.sroa.0.1.i1217, %.lr.ph756.split.i ], [ %.sroa.0.1.i1217, %.lr.ph756.i ], [ %.sroa.0.3.i1228, %.loopexit.i1225 ] ; 2 uses
  %.not422.i = icmp sgt i32 %i.foz, %i.fly
  br i1 %.not422.i, label %.preheader712.loopexit.i, label %.lr.ph756.i, !llvm.loop !123

bb.afo:                                           ; preds = %.noexc1237, %bb.acp, %bb.aco
  %i.gai = add nuw nsw i32 %.0393767.i, 1         ; 2 uses
  %exitcond785.not.i = icmp eq i32 %i.gai, 4
  br i1 %exitcond785.not.i, label %.loopexit713.i, label %bb.ack, !llvm.loop !124

.loopexit715.i:                                   ; preds = %bb.ahx
  %i.gaj = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.gak = load ptr, ptr %i.fex, align 8, !tbaa !47
  %.not710.i = icmp eq ptr %i.gaj, %i.gak
  br i1 %.not710.i, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.afp, !llvm.loop !125

bb.afp:                                           ; preds = %.loopexit715.i, %.lr.ph749.i
  %i.gal = phi ptr [ %i.fey, %.lr.ph749.i ], [ %i.gaj, %.loopexit715.i ] ; 2 uses
  %i.gam = getelementptr inbounds nuw i8, ptr %i.gal, i64 4
  %i.gan = load i32, ptr %i.gam, align 4, !tbaa !169 ; 5 uses
  %i.gao = getelementptr inbounds nuw i8, ptr %i.gal, i64 8
  %i.gap = load i32, ptr %i.gao, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.mc)
          to label %.noexc1238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1238:                                       ; preds = %bb.afp
  %i.gaq = load i32, ptr %i.ffa, align 4, !tbaa !148
  %i.gar = icmp slt i32 %i.gaq, 2
  %i.gas = load ptr, ptr %i.ffb, align 8, !tbaa !149
  %i.gat = load i64, ptr %i.ffc, align 8
  %i.gau = sext i32 %i.gan to i64
  %i.gav = mul i64 %i.gat, %i.gau
  %.sink.idx.i562.i = select i1 %i.gar, i64 0, i64 %i.gav
  %.sink.i563.i = getelementptr inbounds nuw i8, ptr %i.gas, i64 %.sink.idx.i562.i
  %i.gaw = sext i32 %i.gap to i64
  %i.gax = getelementptr inbounds i8, ptr %.sink.i563.i, i64 %i.gaw
  store i8 0, ptr %i.gax, align 1, !tbaa !21
  %i.gay = add nsw i32 %i.gap, 1
  %i.gaz = add nsw i32 %i.gan, 1
  %i.gba = add nsw i32 %i.gap, -1
  %i.gbb = add nsw i32 %i.gan, -1
  br label %bb.afq

bb.afq:                                           ; preds = %bb.ahx, %.noexc1238
  %.1394747.i = phi i32 [ 0, %.noexc1238 ], [ %i.gni, %bb.ahx ] ; 2 uses
  switch i32 %.1394747.i, label %default.unreachable709.i [
    i32 0, label %bb.afu
    i32 1, label %bb.afr
    i32 2, label %bb.afs
    i32 3, label %bb.aft
  ]

bb.afr:                                           ; preds = %bb.afq
  br label %bb.afu

bb.afs:                                           ; preds = %bb.afq
  br label %bb.afu

bb.aft:                                           ; preds = %bb.afq
  br label %bb.afu

default.unreachable709.i:                         ; preds = %bb.afq
  unreachable

bb.afu:                                           ; preds = %bb.aft, %bb.afs, %bb.afr, %bb.afq
  %.5407.i = phi i32 [ %i.gan, %bb.aft ], [ %i.gan, %bb.afr ], [ %i.gaz, %bb.afs ], [ %i.gbb, %bb.afq ]
  %.5.i1186 = phi i32 [ %i.gay, %bb.aft ], [ %i.gba, %bb.afr ], [ %i.gap, %bb.afs ], [ %i.gap, %bb.afq ] ; 10 uses
  %.5407.fr.i = freeze i32 %.5407.i               ; 10 uses
  %i.gbc = icmp slt i32 %.5407.fr.i, 1
  %i.gbd = icmp slt i32 %.5.i1186, 1
  %or.cond5.i1187 = select i1 %i.gbc, i1 true, i1 %i.gbd
  br i1 %or.cond5.i1187, label %bb.ahx, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.gbe = load i32, ptr %i.ffd, align 8, !tbaa !146 ; 3 uses
  %.not.i1188 = icmp slt i32 %.5407.fr.i, %i.gbe
  br i1 %.not.i1188, label %bb.afw, label %bb.ahx

bb.afw:                                           ; preds = %bb.afv
  %i.gbf = load i32, ptr %i.ffe, align 4, !tbaa !145 ; 3 uses
  %.not408.i = icmp slt i32 %.5.i1186, %i.gbf
  br i1 %.not408.i, label %bb.afx, label %bb.ahx

bb.afx:                                           ; preds = %bb.afw
  %i.gbg = load i32, ptr %i.ffa, align 4, !tbaa !148
  %i.gbh = icmp slt i32 %i.gbg, 2                 ; 6 uses
  %i.gbi = load ptr, ptr %i.ffb, align 8, !tbaa !149 ; 6 uses
  %i.gbj = load i64, ptr %i.ffc, align 8          ; 3 uses
  %i.gbk = zext nneg i32 %.5407.fr.i to i64       ; 3 uses
  %i.gbl = mul i64 %i.gbj, %i.gbk
  %.sink.idx.i564.i = select i1 %i.gbh, i64 0, i64 %i.gbl
  %.sink.i565.i = getelementptr inbounds nuw i8, ptr %i.gbi, i64 %.sink.idx.i564.i ; 3 uses
  %i.gbm = zext nneg i32 %.5.i1186 to i64         ; 7 uses
  %i.gbn = getelementptr inbounds nuw i8, ptr %.sink.i565.i, i64 %i.gbm
  %i.gbo = load i8, ptr %i.gbn, align 1, !tbaa !21
  %i.gbp = icmp eq i8 %i.gbo, 2
  br i1 %i.gbp, label %bb.afy, label %bb.ahx

bb.afy:                                           ; preds = %bb.afx
  %i.gbq = add nsw i32 %.5407.fr.i, -1
  %i.gbr = add nsw i32 %.5.i1186, -1
  %i.gbs = load i32, ptr %i.fff, align 4, !tbaa !148
  %i.gbt = icmp slt i32 %i.gbs, 2                 ; 3 uses
  %i.gbu = load ptr, ptr %i.ffg, align 8, !tbaa !149 ; 3 uses
  %i.gbv = load i64, ptr %i.ffh, align 8          ; 3 uses
  %i.gbw = zext nneg i32 %i.gbq to i64            ; 3 uses
  %i.gbx = mul i64 %i.gbv, %i.gbw
  %.sink.idx.i.i566.i = select i1 %i.gbt, i64 0, i64 %i.gbx
  %.sink.i.i567.i = getelementptr inbounds nuw i8, ptr %i.gbu, i64 %.sink.idx.i.i566.i
  %i.gby = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i567.i, i64 %i.gbm
  %i.gbz = load float, ptr %i.gby, align 4, !tbaa !46 ; 3 uses
  %i.gca = fpext float %i.gbz to double           ; 8 uses
  %i.gcb = mul i64 %i.gbv, %i.gbk
  %.sink.idx.i33.i568.i = select i1 %i.gbt, i64 0, i64 %i.gcb
  %.sink.i34.i569.i = getelementptr inbounds nuw i8, ptr %i.gbu, i64 %.sink.idx.i33.i568.i ; 3 uses
  %i.gcc = zext nneg i32 %i.gbr to i64            ; 3 uses
  %i.gcd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gcc
  %i.gce = load float, ptr %i.gcd, align 4, !tbaa !46 ; 3 uses
  %i.gcf = fpext float %i.gce to double           ; 8 uses
  %i.gcg = fcmp ogt float %i.gbz, %i.gce
  %i.gch = select i1 %i.gcg, double %i.gcf, double %i.gca ; 2 uses
  %i.gci = mul i64 %i.gbj, %i.gbw
  %.sink.idx.i35.i570.i = select i1 %i.gbh, i64 0, i64 %i.gci
  %.sink.i36.i571.i = getelementptr inbounds nuw i8, ptr %i.gbi, i64 %.sink.idx.i35.i570.i
  %i.gcj = getelementptr inbounds nuw i8, ptr %.sink.i36.i571.i, i64 %i.gbm ; 2 uses
  %i.gck = load i8, ptr %i.gcj, align 1, !tbaa !21
  %.not.i572.i = icmp eq i8 %i.gck, 2
  %i.gcl = getelementptr inbounds nuw i8, ptr %.sink.i565.i, i64 %i.gcc ; 2 uses
  %i.gcm = load i8, ptr %i.gcl, align 1, !tbaa !21
  %.not31.i575.i = icmp eq i8 %i.gcm, 2           ; 2 uses
  br i1 %.not.i572.i, label %bb.age, label %bb.afz

bb.afz:                                           ; preds = %bb.afy
  br i1 %.not31.i575.i, label %bb.agd, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  %i.gcn = fsub double %i.gca, %i.gcf             ; 3 uses
  %i.gco = call double @llvm.fabs.f64(double %i.gcn)
  %i.gcp = fcmp ult double %i.gco, 1.000000e+00
  br i1 %i.gcp, label %bb.agc, label %bb.agb

bb.agb:                                           ; preds = %bb.aga
  %i.gcq = fadd double %i.gch, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

bb.agc:                                           ; preds = %bb.aga
  %i.gcr = fadd double %i.gca, %i.gcf
  %i.gcs = fneg double %i.gcn
  %i.gct = call double @llvm.fmuladd.f64(double %i.gcs, double %i.gcn, double 2.000000e+00)
  %i.gcu = call double @sqrt(double noundef %i.gct) #20
  %i.gcv = fadd double %i.gcr, %i.gcu
  %i.gcw = fmul double %i.gcv, 5.000000e-01
  %.pre.i1200 = load i8, ptr %i.gcl, align 1, !tbaa !21
  %i.gcx = icmp eq i8 %.pre.i1200, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

bb.agd:                                           ; preds = %bb.afz
  %i.gcy = fadd double %i.gca, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

bb.age:                                           ; preds = %bb.afy
  br i1 %.not31.i575.i, label %bb.agg, label %bb.agf

bb.agf:                                           ; preds = %bb.age
  %i.gcz = fadd double %i.gcf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

bb.agg:                                           ; preds = %bb.age
  %i.gda = fadd double %i.gch, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
end_hunk_0
begin_hunk_1_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.ghg = mul i64 %i.ggg, %i.ggw
  %.sink.idx.i634.i = select i1 %i.gbh, i64 0, i64 %i.ghg
  %.sink.i635.i = getelementptr inbounds nuw i8, ptr %i.gbi, i64 %.sink.idx.i634.i
  br label %.lr.ph.split.split.i1197

.lr.ph.split.split.i1197:                         ; preds = %.lr.ph.split.split.i1197.preheader, %bb.ahw
  %.1722.i = phi float [ %.2.i1198, %bb.ahw ], [ %.0386740.i, %.lr.ph.split.split.i1197.preheader ] ; 4 uses
  %.1388721.i = phi float [ %.2389.i, %bb.ahw ], [ %.0387739.i, %.lr.ph.split.split.i1197.preheader ] ; 4 uses
  %.1396719.i = phi i32 [ %i.gmk, %bb.ahw ], [ %i.gga, %.lr.ph.split.split.i1197.preheader ] ; 11 uses
  %i.ghh = add nsw i32 %.1396719.i, -1            ; 2 uses
  %i.ghi = icmp eq i32 %.1396719.i, 1
  %i.ghj = zext i1 %i.ghi to i32
  %i.ghk = add nuw nsw i32 %i.ghh, %i.ghj         ; 4 uses
  %i.ghl = icmp eq i32 %.1396719.i, %i.ggc
  %.neg411.i = sext i1 %i.ghl to i32
  %i.ghm = icmp sgt i32 %.1396719.i, 0
  %i.ghn = icmp slt i32 %.1396719.i, %i.gge
  %or.cond771.i = select i1 %i.ghm, i1 %i.ghn, i1 false
  br i1 %or.cond771.i, label %bb.ahf, label %bb.ahw

bb.ahf:                                           ; preds = %.lr.ph.split.split.i1197
  %i.gho = zext nneg i32 %.1396719.i to i64       ; 3 uses
  %i.ghp = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gho ; 2 uses
  %i.ghq = load i8, ptr %i.ghp, align 1, !tbaa !21
  %.not412.i = icmp eq i8 %i.ghq, 2
  br i1 %.not412.i, label %bb.ahw, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.ghr = sub nsw i32 %.1396719.i, %.5.i1186     ; 2 uses
  %i.ghs = mul nsw i32 %i.ghr, %i.ghr
  %i.ght = add nuw nsw i32 %i.ghs, %i.ggq
  %.not413.i = icmp samesign ugt i32 %i.ght, %i.ffi
  br i1 %.not413.i, label %bb.ahw, label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg
  %i.ghu = sub nsw i32 %.5.i1186, %.1396719.i
  %i.ghv = sitofp i32 %i.ghu to float             ; 3 uses
  %i.ghw = call noundef float @llvm.fmuladd.f32(float %i.ghv, float %i.ghv, float %i.ggt) ; 3 uses
  %i.ghx = call nnan float @llvm.fmuladd.f32(float %i.ghw, float %i.ghw, float 1.000000e+00)
  %i.ghy = fdiv nnan float 1.000000e+00, %i.ghx
  %i.ghz = getelementptr inbounds nuw i8, ptr %.sink.i619.i, i64 %i.gho
  %i.gia = load i8, ptr %i.ghz, align 1, !tbaa !21
  %.not414.i = icmp eq i8 %i.gia, 2
  %i.gib = getelementptr inbounds nuw i8, ptr %.sink.i635.i, i64 %i.gho
  %i.gic = load i8, ptr %i.gib, align 1, !tbaa !21
  %.not415.i = icmp eq i8 %i.gic, 2               ; 2 uses
  br i1 %.not414.i, label %bb.ahl, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  %i.gid = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gie = icmp slt i32 %i.gid, 2                 ; 3 uses
  %i.gif = load ptr, ptr %i.ffk, align 8, !tbaa !149 ; 3 uses
  %i.gig = load i64, ptr %i.ffl, align 8          ; 3 uses
  %i.gih = mul i64 %i.gig, %i.ggy
  %.sink.idx.i630.i = select i1 %i.gie, i64 0, i64 %i.gih
  %.sink.i631.i = getelementptr inbounds nuw i8, ptr %i.gif, i64 %.sink.idx.i630.i
  %i.gii = sext i32 %i.ghk to i64                 ; 3 uses
  %i.gij = getelementptr inbounds i8, ptr %.sink.i631.i, i64 %i.gii
  %i.gik = load i8, ptr %i.gij, align 1, !tbaa !21
  %i.gil = zext i8 %i.gik to i32
  %i.gim = mul i64 %i.gig, %i.ggz
  %.sink.idx.i632.i = select i1 %i.gie, i64 0, i64 %i.gim
  %.sink.i633.i = getelementptr inbounds nuw i8, ptr %i.gif, i64 %.sink.idx.i632.i
  %i.gin = getelementptr inbounds i8, ptr %.sink.i633.i, i64 %i.gii
  %i.gio = load i8, ptr %i.gin, align 1, !tbaa !21
  %i.gip = zext i8 %i.gio to i32                  ; 2 uses
  %i.giq = sub nsw i32 %i.gil, %i.gip
  %i.gir = call i32 @llvm.abs.i32(i32 %i.giq, i1 true) ; 2 uses
  br i1 %.not415.i, label %bb.ahk, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi
  %i.gis = mul i64 %i.gig, %i.ghb
  %.sink.idx.i628.i = select i1 %i.gie, i64 0, i64 %i.gis
  %.sink.i629.i = getelementptr inbounds nuw i8, ptr %i.gif, i64 %.sink.idx.i628.i
  %i.git = getelementptr inbounds i8, ptr %.sink.i629.i, i64 %i.gii
  %i.giu = load i8, ptr %i.git, align 1, !tbaa !21
  %i.giv = zext i8 %i.giu to i32
  %i.giw = sub nsw i32 %i.gip, %i.giv
  %i.gix = call i32 @llvm.abs.i32(i32 %i.giw, i1 true)
  %i.giy = add nuw nsw i32 %i.gix, %i.gir
  %i.giz = uitofp nneg i32 %i.giy to float
  br label %bb.ahn

bb.ahk:                                           ; preds = %bb.ahi
  %i.gja = uitofp nneg i32 %i.gir to float
  %i.gjb = fmul nnan float %i.gja, 2.000000e+00
  br label %bb.ahn

bb.ahl:                                           ; preds = %bb.ahh
  br i1 %.not415.i, label %bb.ahn, label %bb.ahm

bb.ahm:                                           ; preds = %bb.ahl
  %i.gjc = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gjd = icmp slt i32 %i.gjc, 2                 ; 2 uses
  %i.gje = load ptr, ptr %i.ffk, align 8, !tbaa !149 ; 2 uses
  %i.gjf = load i64, ptr %i.ffl, align 8          ; 2 uses
  %i.gjg = mul i64 %i.gjf, %i.ggz
  %.sink.idx.i636.i = select i1 %i.gjd, i64 0, i64 %i.gjg
  %.sink.i637.i = getelementptr inbounds nuw i8, ptr %i.gje, i64 %.sink.idx.i636.i
  %i.gjh = sext i32 %i.ghk to i64                 ; 2 uses
  %i.gji = getelementptr inbounds i8, ptr %.sink.i637.i, i64 %i.gjh
  %i.gjj = load i8, ptr %i.gji, align 1, !tbaa !21
  %i.gjk = zext i8 %i.gjj to i32
  %i.gjl = mul i64 %i.gjf, %i.ghb
  %.sink.idx.i638.i = select i1 %i.gjd, i64 0, i64 %i.gjl
  %.sink.i639.i = getelementptr inbounds nuw i8, ptr %i.gje, i64 %.sink.idx.i638.i
  %i.gjm = getelementptr inbounds i8, ptr %.sink.i639.i, i64 %i.gjh
  %i.gjn = load i8, ptr %i.gjm, align 1, !tbaa !21
  %i.gjo = zext i8 %i.gjn to i32
  %i.gjp = sub nsw i32 %i.gjk, %i.gjo
  %i.gjq = call i32 @llvm.abs.i32(i32 %i.gjp, i1 true)
  %i.gjr = uitofp nneg i32 %i.gjq to float
  %i.gjs = fmul nnan float %i.gjr, 2.000000e+00
  br label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm, %bb.ahl, %bb.ahk, %bb.ahj
  %.sroa.0668.0.i = phi float [ %i.giz, %bb.ahj ], [ %i.gjs, %bb.ahm ], [ %i.gjb, %bb.ahk ], [ 0.000000e+00, %bb.ahl ] ; 3 uses
  %i.gjt = getelementptr inbounds nuw i8, ptr %i.ghp, i64 1
  %i.gju = load i8, ptr %i.gjt, align 1, !tbaa !21
  %.not417.i = icmp eq i8 %i.gju, 2
  %i.gjv = zext nneg i32 %i.ghh to i64            ; 2 uses
  %i.gjw = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gjv
  %i.gjx = load i8, ptr %i.gjw, align 1, !tbaa !21
  %.not418.i = icmp eq i8 %i.gjx, 2               ; 2 uses
  br i1 %.not417.i, label %bb.ahr, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.gjy = add nsw i32 %.1396719.i, %.neg411.i
  %i.gjz = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gka = icmp slt i32 %i.gjz, 2
  %i.gkb = load ptr, ptr %i.ffk, align 8, !tbaa !149
  %i.gkc = load i64, ptr %i.ffl, align 8
  %i.gkd = mul i64 %i.gkc, %i.ghc
  %.sink.idx.i652.i = select i1 %i.gka, i64 0, i64 %i.gkd
  %.sink.i653.i = getelementptr inbounds nuw i8, ptr %i.gkb, i64 %.sink.idx.i652.i ; 2 uses
  %i.gke = zext nneg i32 %i.gjy to i64
  %i.gkf = getelementptr inbounds nuw i8, ptr %.sink.i653.i, i64 %i.gke
  %i.gkg = load i8, ptr %i.gkf, align 1, !tbaa !21
  %i.gkh = zext i8 %i.gkg to i32
  %i.gki = sext i32 %i.ghk to i64
  %i.gkj = getelementptr i8, ptr %.sink.i653.i, i64 %i.gki ; 2 uses
  %i.gkk = load i8, ptr %i.gkj, align 1, !tbaa !21
  %i.gkl = zext i8 %i.gkk to i32                  ; 2 uses
  %i.gkm = sub nsw i32 %i.gkh, %i.gkl
  %i.gkn = call i32 @llvm.abs.i32(i32 %i.gkm, i1 true) ; 2 uses
  br i1 %.not418.i, label %bb.ahq, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  %i.gko = getelementptr i8, ptr %i.gkj, i64 -1
  %i.gkp = load i8, ptr %i.gko, align 1, !tbaa !21
  %i.gkq = zext i8 %i.gkp to i32
  %i.gkr = sub nsw i32 %i.gkl, %i.gkq
  %i.gks = call i32 @llvm.abs.i32(i32 %i.gkr, i1 true)
  %i.gkt = add nuw nsw i32 %i.gks, %i.gkn
  %i.gku = uitofp nneg i32 %i.gkt to float
  br label %bb.aht

bb.ahq:                                           ; preds = %bb.aho
  %i.gkv = uitofp nneg i32 %i.gkn to float
  %i.gkw = fmul nnan float %i.gkv, 2.000000e+00
  br label %bb.aht

bb.ahr:                                           ; preds = %bb.ahn
  br i1 %.not418.i, label %bb.aht, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  %i.gkx = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gky = icmp slt i32 %i.gkx, 2
  %i.gkz = load ptr, ptr %i.ffk, align 8, !tbaa !149
  %i.gla = load i64, ptr %i.ffl, align 8
  %i.glb = mul i64 %i.gla, %i.ghc
  %.sink.idx.i658.i = select i1 %i.gky, i64 0, i64 %i.glb
  %.sink.i659.i = getelementptr inbounds nuw i8, ptr %i.gkz, i64 %.sink.idx.i658.i
  %i.glc = sext i32 %i.ghk to i64
  %i.gld = getelementptr i8, ptr %.sink.i659.i, i64 %i.glc ; 2 uses
  %i.gle = load i8, ptr %i.gld, align 1, !tbaa !21
  %i.glf = zext i8 %i.gle to i32
  %i.glg = getelementptr i8, ptr %i.gld, i64 -1
  %i.glh = load i8, ptr %i.glg, align 1, !tbaa !21
  %i.gli = zext i8 %i.glh to i32
  %i.glj = sub nsw i32 %i.glf, %i.gli
  %i.glk = call i32 @llvm.abs.i32(i32 %i.glj, i1 true)
  %i.gll = uitofp nneg i32 %i.glk to float
  %i.glm = fmul nnan float %i.gll, 2.000000e+00
  br label %bb.aht

bb.aht:                                           ; preds = %bb.ahs, %bb.ahr, %bb.ahq, %bb.ahp
  %.sroa.12.0.i = phi float [ %i.gku, %bb.ahp ], [ %i.glm, %bb.ahs ], [ %i.gkw, %bb.ahq ], [ 0.000000e+00, %bb.ahr ] ; 3 uses
  %i.gln = fneg float %.sroa.0668.0.i
  %i.glo = fmul float %.sroa.12.0.i, %i.ggs
  %i.glp = call noundef float @llvm.fmuladd.f32(float %i.ghv, float %i.gln, float %i.glo) ; 2 uses
  %i.glq = call float @llvm.fabs.f32(float %i.glp)
  %i.glr = fpext float %i.glq to double
  %i.gls = fcmp ugt double %i.glr, 1.000000e-02
  br i1 %i.gls, label %bb.ahu, label %bb.ahv

bb.ahu:                                           ; preds = %bb.aht
  %i.glt = fmul float %.sroa.12.0.i, %.sroa.12.0.i
  %i.glu = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i, float %.sroa.0668.0.i, float %i.glt)
  %i.glv = fmul float %i.ghw, %i.glu
  %i.glw = call noundef float @sqrtf(float noundef %i.glv) #20
  %i.glx = fdiv float %i.glp, %i.glw
  %i.gly = call float @llvm.fabs.f32(float %i.glx)
  br label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu, %bb.aht
  %.0.i = phi float [ %i.gly, %bb.ahu ], [ f0x358637BD, %bb.aht ]
  %i.glz = fmul float %i.ghy, %.0.i               ; 2 uses
  %i.gma = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gmb = icmp slt i32 %i.gma, 2
  %i.gmc = load ptr, ptr %i.ffk, align 8, !tbaa !149
  %i.gmd = load i64, ptr %i.ffl, align 8
  %i.gme = mul i64 %i.gmd, %i.ggw
  %.sink.idx.i662.i1199 = select i1 %i.gmb, i64 0, i64 %i.gme
  %.sink.i663.i = getelementptr inbounds nuw i8, ptr %i.gmc, i64 %.sink.idx.i662.i1199
  %i.gmf = getelementptr inbounds nuw i8, ptr %.sink.i663.i, i64 %i.gjv
  %i.gmg = load i8, ptr %i.gmf, align 1, !tbaa !21
  %i.gmh = uitofp i8 %i.gmg to float
  %i.gmi = call float @llvm.fmuladd.f32(float %i.glz, float %i.gmh, float %.1388721.i)
  %i.gmj = fadd float %.1722.i, %i.glz
  br label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv, %bb.ahg, %bb.ahf, %.lr.ph.split.split.i1197
  %.2389.i = phi float [ %i.gmi, %bb.ahv ], [ %.1388721.i, %bb.ahg ], [ %.1388721.i, %bb.ahf ], [ %.1388721.i, %.lr.ph.split.split.i1197 ] ; 2 uses
  %.2.i1198 = phi float [ %i.gmj, %bb.ahv ], [ %.1722.i, %bb.ahg ], [ %.1722.i, %bb.ahf ], [ %.1722.i, %.lr.ph.split.split.i1197 ] ; 2 uses
  %i.gmk = add nsw i32 %.1396719.i, 1
  %.not410.not.i = icmp slt i32 %.1396719.i, %i.ggb
  br i1 %.not410.not.i, label %.lr.ph.split.split.i1197, label %._crit_edge.i1193, !llvm.loop !126

._crit_edge.i1193:                                ; preds = %bb.ahw, %.lr.ph.split.i1196, %.lr.ph.i1191
  %.us-phi.i1194 = phi float [ %.0387739.i, %.lr.ph.i1191 ], [ %.0387739.i, %.lr.ph.split.i1196 ], [ %.2389.i, %bb.ahw ] ; 2 uses
  %.us-phi724.i = phi float [ %.0386740.i, %.lr.ph.i1191 ], [ %.0386740.i, %.lr.ph.split.i1196 ], [ %.2.i1198, %bb.ahw ] ; 2 uses
  %.not409.i = icmp sgt i32 %i.ggu, %i.gfy
  br i1 %.not409.i, label %._crit_edge742.loopexit776.i, label %.lr.ph.i1191, !llvm.loop !127

._crit_edge742.loopexit776.i:                     ; preds = %._crit_edge.i1193
  %i.gml = fpext float %.us-phi.i1194 to double
  %i.gmm = fpext float %.us-phi724.i to double
  %i.gmn = fdiv double %i.gml, %i.gmm
  %i.gmo = insertelement <2 x double> poison, double %i.gmn, i64 0
  %i.gmp = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gmo)
  %i.gmq = call i32 @llvm.smax.i32(i32 %i.gmp, i32 0)
  %i.gmr = call i32 @llvm.umin.i32(i32 %i.gmq, i32 255)
  %i.gms = trunc nuw i32 %i.gmr to i8
  %i.gmt = load i32, ptr %i.ffj, align 4, !tbaa !148
  %i.gmu = icmp slt i32 %i.gmt, 2
  %i.gmv = load ptr, ptr %i.ffk, align 8, !tbaa !149
  %i.gmw = load i64, ptr %i.ffl, align 8
  %i.gmx = mul i64 %i.gmw, %i.gbw
  %.sink.idx.i664.i = select i1 %i.gmu, i64 0, i64 %i.gmx
  %.sink.i665.i = getelementptr inbounds nuw i8, ptr %i.gmv, i64 %.sink.idx.i664.i
  %i.gmy = getelementptr inbounds nuw i8, ptr %.sink.i665.i, i64 %i.gcc
  store i8 %i.gms, ptr %i.gmy, align 1, !tbaa !21
  %i.gmz = load i32, ptr %i.ffa, align 4, !tbaa !148
  %i.gna = icmp slt i32 %i.gmz, 2
  %i.gnb = load ptr, ptr %i.ffb, align 8, !tbaa !149
  %i.gnc = load i64, ptr %i.ffc, align 8
  %i.gnd = mul i64 %i.gnc, %i.gbk
  %.sink.idx.i666.i1195 = select i1 %i.gna, i64 0, i64 %i.gnd
  %.sink.i667.i = getelementptr inbounds nuw i8, ptr %i.gnb, i64 %.sink.idx.i666.i1195
  %i.gne = getelementptr inbounds nuw i8, ptr %.sink.i667.i, i64 %i.gbm
  store i8 1, ptr %i.gne, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store float %i.gfw, ptr %9, align 4, !tbaa !50
  store i32 %.5407.fr.i, ptr %i.ffm, align 4, !tbaa !169
  store i32 %.5.i1186, ptr %i.ffn, align 4, !tbaa !170
  %i.gnf = load i32, ptr %i.ffp, align 8, !tbaa !162
  store i32 %i.gnf, ptr %i.ffo, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %.noexc1239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1239:                                       ; preds = %._crit_edge742.loopexit776.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.gng = load i32, ptr %i.ffp, align 8, !tbaa !162
  %i.gnh = add nsw i32 %i.gng, 1
  store i32 %i.gnh, ptr %i.ffp, align 8, !tbaa !162
  br label %bb.ahx

bb.ahx:                                           ; preds = %.noexc1239, %bb.afx, %bb.afw, %bb.afv, %bb.afu
  %i.gni = add nuw nsw i32 %.1394747.i, 1         ; 2 uses
  %exitcond.not.i1189 = icmp eq i32 %i.gni, 4
  br i1 %exitcond.not.i1189, label %.loopexit715.i, label %bb.afq, !llvm.loop !128

bb.ahy:                                           ; preds = %bb.ach
  %i.gnj = lshr i32 %i.fet, 5
  %i.gnk = and i32 %i.gnj, 127
  switch i32 %i.gnk, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit [
    i32 2, label %.preheader714.i1343
    i32 0, label %.preheader716.i1240
  ]

.preheader716.i1240:                              ; preds = %bb.ahy
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.gnm = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.gnn = load ptr, ptr %i.gnl, align 8, !tbaa !47
  %.not710748.i1241 = icmp eq ptr %i.gnm, %i.gnn
  br i1 %.not710748.i1241, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %.lr.ph749.i1242

.lr.ph749.i1242:                                  ; preds = %.preheader716.i1240
  %i.gno = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %i.gnp = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.gnq = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 4 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.gns = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.gnt = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.gnu = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.gnv = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.gnw = mul nuw nsw i32 %i.di, %i.di
  %i.gnx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.gny = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.gnz = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.goa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gob = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.goc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.god = getelementptr inbounds nuw i8, ptr %i.mc, i64 32 ; 3 uses
  br label %bb.alf

.preheader714.i1343:                              ; preds = %bb.ahy
  %i.goe = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.gof = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.gog = load ptr, ptr %i.goe, align 8, !tbaa !47
  %.not711768.i1344 = icmp eq ptr %i.gof, %i.gog
  br i1 %.not711768.i1344, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %.lr.ph769.i1345

.lr.ph769.i1345:                                  ; preds = %.preheader714.i1343
  %i.goh = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.goi = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  %i.goj = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 4 uses
  %i.gok = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.gol = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.gom = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.gon = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.goo = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.gop = mul nuw nsw i32 %i.di, %i.di
  %i.goq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.gor = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.gos = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.got = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gou = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gov = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gow = getelementptr inbounds nuw i8, ptr %i.mc, i64 32 ; 3 uses
  br label %bb.ahz

.loopexit713.i1355:                               ; preds = %bb.ale
  %i.gox = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.goy = load ptr, ptr %i.goe, align 8, !tbaa !47
  %.not711.i1356 = icmp eq ptr %i.gox, %i.goy
  br i1 %.not711.i1356, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.ahz, !llvm.loop !129

bb.ahz:                                           ; preds = %.loopexit713.i1355, %.lr.ph769.i1345
  %i.goz = phi ptr [ %i.gof, %.lr.ph769.i1345 ], [ %i.gox, %.loopexit713.i1355 ] ; 2 uses
  %i.gpa = getelementptr inbounds nuw i8, ptr %i.goz, i64 4
  %i.gpb = load i32, ptr %i.gpa, align 4, !tbaa !169 ; 5 uses
  %i.gpc = getelementptr inbounds nuw i8, ptr %i.goz, i64 8
  %i.gpd = load i32, ptr %i.gpc, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.mc)
          to label %.noexc1514.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1514.a:                                     ; preds = %bb.ahz
  %i.gpe = load i32, ptr %i.goh, align 4, !tbaa !148
  %i.gpf = icmp slt i32 %i.gpe, 2
  %i.gpg = load ptr, ptr %i.goi, align 8, !tbaa !149
  %i.gph = load i64, ptr %i.goj, align 8
  %i.gpi = sext i32 %i.gpb to i64
  %i.gpj = mul i64 %i.gph, %i.gpi
  %.sink.idx.i.i1346 = select i1 %i.gpf, i64 0, i64 %i.gpj
  %.sink.i.i1347 = getelementptr inbounds nuw i8, ptr %i.gpg, i64 %.sink.idx.i.i1346
  %i.gpk = sext i32 %i.gpd to i64
  %i.gpl = getelementptr inbounds i8, ptr %.sink.i.i1347, i64 %i.gpk
  store i8 0, ptr %i.gpl, align 1, !tbaa !21
  %i.gpm = add nsw i32 %i.gpd, 1
  %i.gpn = add nsw i32 %i.gpb, 1
  %i.gpo = add nsw i32 %i.gpd, -1
  %i.gpp = add nsw i32 %i.gpb, -1
  br label %bb.aia

bb.aia:                                           ; preds = %bb.ale, %.noexc1514.a
  %.0393767.i1348 = phi i32 [ 0, %.noexc1514.a ], [ %i.hiw, %bb.ale ] ; 2 uses
  switch i32 %.0393767.i1348, label %default.unreachable.i1513 [
    i32 0, label %bb.aie
    i32 1, label %bb.aib
    i32 2, label %bb.aic
    i32 3, label %bb.aid
  ]

bb.aib:                                           ; preds = %bb.aia
  br label %bb.aie

bb.aic:                                           ; preds = %bb.aia
  br label %bb.aie

bb.aid:                                           ; preds = %bb.aia
  br label %bb.aie

default.unreachable.i1513:                        ; preds = %bb.aia
  unreachable

bb.aie:                                           ; preds = %bb.aid, %bb.aic, %bb.aib, %bb.aia
  %.2404.i1349 = phi i32 [ %i.gpb, %bb.aid ], [ %i.gpb, %bb.aib ], [ %i.gpn, %bb.aic ], [ %i.gpp, %bb.aia ]
  %.2401.i1350 = phi i32 [ %i.gpm, %bb.aid ], [ %i.gpo, %bb.aib ], [ %i.gpd, %bb.aic ], [ %i.gpd, %bb.aia ] ; 9 uses
  %.2404.fr.i1351 = freeze i32 %.2404.i1349       ; 9 uses
end_hunk_1
begin_hunk_2_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.guc = fadd double %i.gst, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384

bb.ajm:                                           ; preds = %bb.ajk
  %i.gud = fadd double %i.gtp, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384: ; preds = %bb.ajm, %bb.ajl, %bb.ajj, %bb.aji, %bb.ajh
  %.0.i505.i1385 = phi double [ %i.gtu, %bb.ajh ], [ %i.gua, %bb.aji ], [ %i.gub, %bb.ajj ], [ %i.guc, %bb.ajl ], [ %i.gud, %bb.ajm ]
  %i.gue = fptrunc double %.0.i505.i1385 to float ; 2 uses
  %i.guf = fcmp ogt float %i.grp, %i.gso
  %i.gug = select i1 %i.guf, float %i.gso, float %i.grp ; 2 uses
  %i.guh = fcmp ogt float %i.gtn, %i.gue
  %i.gui = select i1 %i.guh, float %i.gue, float %i.gtn ; 2 uses
  %i.guj = fcmp ogt float %i.gug, %i.gui
  %i.guk = select i1 %i.guj, float %i.gui, float %i.gug ; 2 uses
  %i.gul = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1363, i64 %i.gqa
  store float %i.guk, ptr %i.gul, align 4, !tbaa !46
  %i.gum = add nuw nsw i32 %.2404.fr.i1351, %i.di
  %i.gun = sub nsw i32 %.2404.fr.i1351, %i.di
  %i.guo = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.gup = add nsw i32 %i.guo, -2
  %i.guq = add nsw i32 %i.guo, -1
  %i.gur = add nuw nsw i32 %.2401.i1350, %i.di
  %i.gus = sub nsw i32 %.2401.i1350, %i.di
  %i.gut = load i32, ptr %i.el, align 4, !tbaa !145 ; 2 uses
  %i.guu = add nsw i32 %i.gut, -2
  %i.guv = add nsw i32 %i.gut, -1
  %i.guw = sext i32 %i.gus to i64
  %i.gux = sext i32 %i.guv to i64
  %i.guy = zext nneg i32 %i.gur to i64
  %sext.i1386 = sext i32 %i.guu to i64
  %i.guz = load i64, ptr %i.goj, align 8          ; 3 uses
  br label %.lr.ph756.i1387

.preheader712.loopexit.i1404:                     ; preds = %._crit_edge757.i1396
  %i.gva = fpext float %.sroa.0789.4.i1397 to double
  %i.gvb = fpext float %.sroa.0.4.i1402 to double
  %i.gvc = fdiv double %i.gva, %i.gvb
  %i.gvd = fpext float %.sroa.6791.4.i1398 to double
  %i.gve = fpext float %.sroa.6.4.i1401 to double
  %i.gvf = fdiv double %i.gvd, %i.gve
  %i.gvg = fpext float %.sroa.9793.4.i1399 to double
  %i.gvh = fpext float %.sroa.9.4.i1400 to double
  %i.gvi = fdiv double %i.gvg, %i.gvh
  %i.gvj = insertelement <2 x double> poison, double %i.gvc, i64 0
  %i.gvk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gvj)
  %i.gvl = call i32 @llvm.smax.i32(i32 %i.gvk, i32 0)
  %i.gvm = call i32 @llvm.umin.i32(i32 %i.gvl, i32 255)
  %i.gvn = trunc nuw i32 %i.gvm to i8
  %i.gvo = load i32, ptr %i.goq, align 4, !tbaa !148
  %i.gvp = icmp slt i32 %i.gvo, 2
  %i.gvq = load ptr, ptr %i.gor, align 8, !tbaa !149
  %i.gvr = load i64, ptr %i.gos, align 8
  %i.gvs = mul i64 %i.gvr, %i.gqk
  %.sink.idx.i557.i1405 = select i1 %i.gvp, i64 0, i64 %i.gvs
  %.sink.i558.i1406 = getelementptr inbounds nuw i8, ptr %i.gvq, i64 %.sink.idx.i557.i1405
  %i.gvt = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1406, i64 %i.gqq
  store i8 %i.gvn, ptr %i.gvt, align 1, !tbaa !21
  %i.gvu = insertelement <2 x double> poison, double %i.gvf, i64 0
  %i.gvv = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gvu)
  %i.gvw = call i32 @llvm.smax.i32(i32 %i.gvv, i32 0)
  %i.gvx = call i32 @llvm.umin.i32(i32 %i.gvw, i32 255)
  %i.gvy = trunc nuw i32 %i.gvx to i8
  %i.gvz = load i32, ptr %i.goq, align 4, !tbaa !148
  %i.gwa = icmp slt i32 %i.gvz, 2
  %i.gwb = load ptr, ptr %i.gor, align 8, !tbaa !149
  %i.gwc = load i64, ptr %i.gos, align 8
  %i.gwd = mul i64 %i.gwc, %i.gqk
  %.sink.idx.i557.1.i1407 = select i1 %i.gwa, i64 0, i64 %i.gwd
  %.sink.i558.1.i1408 = getelementptr inbounds nuw i8, ptr %i.gwb, i64 %.sink.idx.i557.1.i1407
  %i.gwe = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1408, i64 %i.gqq
  %i.gwf = getelementptr inbounds nuw i8, ptr %i.gwe, i64 1
  store i8 %i.gvy, ptr %i.gwf, align 1, !tbaa !21
  %i.gwg = insertelement <2 x double> poison, double %i.gvi, i64 0
  %i.gwh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gwg)
  %i.gwi = call i32 @llvm.smax.i32(i32 %i.gwh, i32 0)
  %i.gwj = call i32 @llvm.umin.i32(i32 %i.gwi, i32 255)
  %i.gwk = trunc nuw i32 %i.gwj to i8
  %i.gwl = load i32, ptr %i.goq, align 4, !tbaa !148
  %i.gwm = icmp slt i32 %i.gwl, 2
  %i.gwn = load ptr, ptr %i.gor, align 8, !tbaa !149
  %i.gwo = load i64, ptr %i.gos, align 8
  %i.gwp = mul i64 %i.gwo, %i.gqk
  %.sink.idx.i557.2.i1409 = select i1 %i.gwm, i64 0, i64 %i.gwp
  %.sink.i558.2.i1410 = getelementptr inbounds nuw i8, ptr %i.gwn, i64 %.sink.idx.i557.2.i1409
  %i.gwq = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1410, i64 %i.gqq
  %i.gwr = getelementptr inbounds nuw i8, ptr %i.gwq, i64 2
  store i8 %i.gwk, ptr %i.gwr, align 1, !tbaa !21
  %i.gws = load i32, ptr %i.goh, align 4, !tbaa !148
  %i.gwt = icmp slt i32 %i.gws, 2
  %i.gwu = load ptr, ptr %i.goi, align 8, !tbaa !149
  %i.gwv = load i64, ptr %i.goj, align 8
  %i.gww = mul i64 %i.gwv, %i.gpy
  %.sink.idx.i559.i1411 = select i1 %i.gwt, i64 0, i64 %i.gww
  %.sink.i560.i1412 = getelementptr inbounds nuw i8, ptr %i.gwu, i64 %.sink.idx.i559.i1411
  %i.gwx = getelementptr inbounds nuw i8, ptr %.sink.i560.i1412, i64 %i.gqa
  store i8 1, ptr %i.gwx, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store float %i.guk, ptr %8, align 4, !tbaa !50
  store i32 %.2404.fr.i1351, ptr %i.got, align 4, !tbaa !169
  store i32 %.2401.i1350, ptr %i.gou, align 4, !tbaa !170
  %i.gwy = load i32, ptr %i.gow, align 8, !tbaa !162
  store i32 %i.gwy, ptr %i.gov, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %.noexc1515 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1515:                                       ; preds = %.preheader712.loopexit.i1404
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gwz = load i32, ptr %i.gow, align 8, !tbaa !162
  %i.gxa = add nsw i32 %i.gwz, 1
  store i32 %i.gxa, ptr %i.gow, align 8, !tbaa !162
  br label %bb.ale

.lr.ph756.i1387:                                  ; preds = %._crit_edge757.i1396, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384
  %.sroa.0789.1.i1388 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.0789.4.i1397, %._crit_edge757.i1396 ] ; 3 uses
  %.sroa.6791.1.i1389 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.6791.4.i1398, %._crit_edge757.i1396 ] ; 3 uses
  %.sroa.9793.1.i1390 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.9793.4.i1399, %._crit_edge757.i1396 ] ; 3 uses
  %.sroa.9.1.i1391 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.9.4.i1400, %._crit_edge757.i1396 ] ; 3 uses
  %.sroa.6.1.i1392 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.6.4.i1401, %._crit_edge757.i1396 ] ; 3 uses
  %.sroa.0.1.i1393 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %.sroa.0.4.i1402, %._crit_edge757.i1396 ] ; 3 uses
  %.0397764.i1394 = phi i32 [ %i.gun, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1384 ], [ %i.gxn, %._crit_edge757.i1396 ] ; 9 uses
  %i.gxb = add nsw i32 %.0397764.i1394, -1        ; 3 uses
  %i.gxc = icmp eq i32 %.0397764.i1394, 1
  %i.gxd = zext i1 %i.gxc to i32
  %i.gxe = add nuw nsw i32 %i.gxb, %i.gxd         ; 2 uses
  %i.gxf = icmp eq i32 %.0397764.i1394, %i.gup
  %.neg423.i1395 = sext i1 %i.gxf to i32          ; 2 uses
  %i.gxg = add i32 %i.gxb, %.neg423.i1395
  %i.gxh = icmp sgt i32 %.0397764.i1394, 0
  %i.gxi = zext nneg i32 %.0397764.i1394 to i64
  %i.gxj = sub nsw i32 %.0397764.i1394, %.2404.fr.i1351 ; 3 uses
  %i.gxk = mul nsw i32 %i.gxj, %i.gxj
  %i.gxl = sitofp i32 %i.gxj to float             ; 5 uses
  %i.gxm = fmul nnan float %i.gxl, %i.gxl
  %i.gxn = add i32 %.0397764.i1394, 1             ; 3 uses
  %i.gxo = zext nneg i32 %i.gxn to i64
  %i.gxp = sext i32 %i.gxb to i64                 ; 2 uses
  %i.gxq = add nsw i32 %.0397764.i1394, %.neg423.i1395
  %i.gxr = sext i32 %i.gxq to i64                 ; 3 uses
  %i.gxs = sext i32 %i.gxg to i64                 ; 6 uses
  %i.gxt = add nsw i32 %i.gxe, -1
  %i.gxu = sext i32 %i.gxt to i64                 ; 6 uses
  %i.gxv = sext i32 %i.gxe to i64                 ; 6 uses
  br i1 %i.gxh, label %.lr.ph756.split.i1413, label %._crit_edge757.i1396

.lr.ph756.split.i1413:                            ; preds = %.lr.ph756.i1387
  %i.gxw = icmp slt i32 %.0397764.i1394, %i.guq
  %.fr762.i1414 = freeze i1 %i.gxw
  br i1 %.fr762.i1414, label %.lr.ph756.split.split.i1415.preheader, label %._crit_edge757.i1396

.lr.ph756.split.split.i1415.preheader:            ; preds = %.lr.ph756.split.i1413
  %i.gxx = mul i64 %i.guz, %i.gxi
  %.sink.idx.i509.i1433 = select i1 %i.gpv, i64 0, i64 %i.gxx
  %.sink.i510.i1434 = getelementptr inbounds nuw i8, ptr %i.gpw, i64 %.sink.idx.i509.i1433 ; 2 uses
  %i.gxy = mul i64 %i.guz, %i.gxo
  %.sink.idx.i511.i1438 = select i1 %i.gpv, i64 0, i64 %i.gxy
  %.sink.i512.i1439 = getelementptr inbounds nuw i8, ptr %i.gpw, i64 %.sink.idx.i511.i1438
  %i.gxz = mul i64 %i.guz, %i.gxp
  %.sink.idx.i513.i1443 = select i1 %i.gpv, i64 0, i64 %i.gxz
  %invariant.gep1979 = getelementptr i8, ptr %i.gpw, i64 %.sink.idx.i513.i1443
  br label %.lr.ph756.split.split.i1415

.lr.ph756.split.split.i1415:                      ; preds = %.lr.ph756.split.split.i1415.preheader, %.loopexit.i1424
  %.sroa.0789.2.i1416 = phi float [ %.sroa.0789.3.i1425, %.loopexit.i1424 ], [ %.sroa.0789.1.i1388, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %.sroa.6791.2.i1417 = phi float [ %.sroa.6791.3.i1426, %.loopexit.i1424 ], [ %.sroa.6791.1.i1389, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %.sroa.9793.2.i1418 = phi float [ %.sroa.9793.3.i1427, %.loopexit.i1424 ], [ %.sroa.9793.1.i1390, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %.sroa.9.2.i1419 = phi float [ %.sroa.9.3.i1428, %.loopexit.i1424 ], [ %.sroa.9.1.i1391, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %.sroa.6.2.i1420 = phi float [ %.sroa.6.3.i1429, %.loopexit.i1424 ], [ %.sroa.6.1.i1392, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %.sroa.0.2.i1421 = phi float [ %.sroa.0.3.i1430, %.loopexit.i1424 ], [ %.sroa.0.1.i1393, %.lr.ph756.split.split.i1415.preheader ] ; 4 uses
  %indvars.iv.i1422 = phi i64 [ %indvars.iv.next.i1431, %.loopexit.i1424 ], [ %i.guw, %.lr.ph756.split.split.i1415.preheader ] ; 12 uses
  %i.gya = add nsw i64 %indvars.iv.i1422, -1      ; 3 uses
  %i.gyb = icmp eq i64 %indvars.iv.i1422, 1
  %i.gyc = zext i1 %i.gyb to i64
  %i.gyd = add nuw nsw i64 %i.gya, %i.gyc         ; 21 uses
  %i.gye = icmp eq i64 %indvars.iv.i1422, %sext.i1386
  %i.gyf = icmp sgt i64 %indvars.iv.i1422, 0
  %i.gyg = icmp slt i64 %indvars.iv.i1422, %i.gux
  %or.cond770.i1423 = select i1 %i.gyf, i1 %i.gyg, i1 false
  br i1 %or.cond770.i1423, label %bb.ajn, label %.loopexit.i1424

bb.ajn:                                           ; preds = %.lr.ph756.split.split.i1415
  %i.gyh = getelementptr inbounds nuw i8, ptr %.sink.i510.i1434, i64 %indvars.iv.i1422 ; 2 uses
  %i.gyi = load i8, ptr %i.gyh, align 1, !tbaa !21
  %.not426.i1435 = icmp eq i8 %i.gyi, 2
  br i1 %.not426.i1435, label %.loopexit.i1424, label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn
  %i.gyj = trunc nuw nsw i64 %indvars.iv.i1422 to i32
  %i.gyk = sub nsw i32 %i.gyj, %.2401.i1350       ; 3 uses
  %i.gyl = mul nsw i32 %i.gyk, %i.gyk
  %i.gym = add nuw nsw i32 %i.gyl, %i.gxk
  %.not427.i1436 = icmp samesign ugt i32 %i.gym, %i.gop
  br i1 %.not427.i1436, label %.loopexit.i1424, label %.preheader.i1437

.preheader.i1437:                                 ; preds = %bb.ajo
  %i.gyn = sitofp i32 %i.gyk to float             ; 5 uses
  %i.gyo = call noundef float @llvm.fmuladd.f32(float %i.gyn, float %i.gyn, float %i.gxm) ; 5 uses
  %i.gyp = call nnan float @llvm.fmuladd.f32(float %i.gyo, float %i.gyo, float 1.000000e+00)
  %i.gyq = fdiv nnan float 1.000000e+00, %i.gyp   ; 3 uses
  %i.gyr = getelementptr inbounds nuw i8, ptr %.sink.i512.i1439, i64 %indvars.iv.i1422 ; 3 uses
  %i.gys = getelementptr inbounds nuw i8, ptr %i.gyh, i64 1 ; 3 uses
  %i.gyt = load i32, ptr %i.goq, align 4, !tbaa !148
  %i.gyu = icmp slt i32 %i.gyt, 2                 ; 22 uses
  %i.gyv = load ptr, ptr %i.gor, align 8, !tbaa !149 ; 22 uses
  %i.gyw = load i64, ptr %i.gos, align 8          ; 22 uses
  %i.gyx = mul i64 %i.gyw, %i.gxp
  %.sink.idx.i555.i1441 = select i1 %i.gyu, i64 0, i64 %i.gyx
  %.sink.i556.i1442 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i555.i1441
  %i.gyy = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1442, i64 %i.gya ; 3 uses
  %gep1980 = getelementptr i8, ptr %invariant.gep1979, i64 %indvars.iv.i1422 ; 3 uses
  %i.gyz = getelementptr inbounds i8, ptr %.sink.i510.i1434, i64 %i.gya ; 3 uses
  %i.gza = sext i1 %i.gye to i64
  %i.gzb = add nsw i64 %indvars.iv.i1422, %i.gza  ; 3 uses
  %90 = load i8, ptr %i.gyr, align 1, !tbaa !21   ; 2 uses
  %.not428.i1445 = icmp eq i8 %90, 2
  %i.gzc = load i8, ptr %gep1980, align 1, !tbaa !21 ; 2 uses
  %.not429.i1446 = icmp eq i8 %i.gzc, 2           ; 2 uses
  br i1 %.not428.i1445, label %bb.ajs, label %bb.ajp

bb.ajp:                                           ; preds = %.preheader.i1437
  %i.gzd = mul i64 %i.gyw, %i.gxr
  %.sink.idx.i523.i1447 = select i1 %i.gyu, i64 0, i64 %i.gzd
  %.sink.i524.i1448 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i523.i1447
  %i.gze = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1448, i64 %i.gyd
  %i.gzf = load i8, ptr %i.gze, align 1, !tbaa !21
  %i.gzg = zext i8 %i.gzf to i32
  %i.gzh = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i525.i1449 = select i1 %i.gyu, i64 0, i64 %i.gzh
  %.sink.i526.i1450 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i525.i1449
  %i.gzi = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1450, i64 %i.gyd
  %i.gzj = load i8, ptr %i.gzi, align 1, !tbaa !21
  %i.gzk = zext i8 %i.gzj to i32                  ; 2 uses
  %i.gzl = sub nsw i32 %i.gzg, %i.gzk
  %i.gzm = call i32 @llvm.abs.i32(i32 %i.gzl, i1 true) ; 2 uses
  br i1 %.not429.i1446, label %bb.ajr, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.gzn = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i521.i1451 = select i1 %i.gyu, i64 0, i64 %i.gzn
  %.sink.i522.i1452 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i521.i1451
  %i.gzo = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1452, i64 %i.gyd
  %i.gzp = load i8, ptr %i.gzo, align 1, !tbaa !21
  %i.gzq = zext i8 %i.gzp to i32
  %i.gzr = sub nsw i32 %i.gzk, %i.gzq
  %i.gzs = call i32 @llvm.abs.i32(i32 %i.gzr, i1 true)
  %i.gzt = add nuw nsw i32 %i.gzs, %i.gzm
  %i.gzu = uitofp nneg i32 %i.gzt to float
  br label %bb.aju

bb.ajr:                                           ; preds = %bb.ajp
  %i.gzv = uitofp nneg i32 %i.gzm to float
  %i.gzw = fmul nnan float %i.gzv, 2.000000e+00
  br label %bb.aju

bb.ajs:                                           ; preds = %.preheader.i1437
  br i1 %.not429.i1446, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.gzx = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i529.i1507 = select i1 %i.gyu, i64 0, i64 %i.gzx
  %.sink.i530.i1508 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i529.i1507
  %i.gzy = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1508, i64 %i.gyd
  %i.gzz = load i8, ptr %i.gzy, align 1, !tbaa !21
  %i.haa = zext i8 %i.gzz to i32
  %i.hab = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i531.i1509 = select i1 %i.gyu, i64 0, i64 %i.hab
  %.sink.i532.i1510 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i531.i1509
  %i.hac = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1510, i64 %i.gyd
  %i.had = load i8, ptr %i.hac, align 1, !tbaa !21
  %i.hae = zext i8 %i.had to i32
  %i.haf = sub nsw i32 %i.haa, %i.hae
  %i.hag = call i32 @llvm.abs.i32(i32 %i.haf, i1 true)
  %i.hah = uitofp nneg i32 %i.hag to float
  %i.hai = fmul nnan float %i.hah, 2.000000e+00
  br label %bb.aju

bb.aju:                                           ; preds = %bb.ajt, %bb.ajs, %bb.ajr, %bb.ajq
  %.sroa.0671.0.i1453 = phi float [ %i.gzu, %bb.ajq ], [ %i.hai, %bb.ajt ], [ %i.gzw, %bb.ajr ], [ 0.000000e+00, %bb.ajs ] ; 3 uses
  %91 = load i8, ptr %i.gys, align 1, !tbaa !21
  %.not431.i1454 = icmp eq i8 %91, 2
  %i.haj = load i8, ptr %i.gyz, align 1, !tbaa !21
  %.not432.i1455 = icmp eq i8 %i.haj, 2           ; 2 uses
  br i1 %.not431.i1454, label %bb.ajy, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  %i.hak = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i545.i1456 = select i1 %i.gyu, i64 0, i64 %i.hak
  %.sink.i546.i1457 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i545.i1456 ; 2 uses
  %i.hal = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1457, i64 %i.gzb
  %i.ham = load i8, ptr %i.hal, align 1, !tbaa !21
  %i.han = zext i8 %i.ham to i32
  %i.hao = getelementptr [3 x i8], ptr %.sink.i546.i1457, i64 %i.gyd ; 2 uses
  %i.hap = load i8, ptr %i.hao, align 1, !tbaa !21
  %i.haq = zext i8 %i.hap to i32                  ; 2 uses
  %i.har = sub nsw i32 %i.han, %i.haq
  %i.has = call i32 @llvm.abs.i32(i32 %i.har, i1 true) ; 2 uses
  br i1 %.not432.i1455, label %bb.ajx, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  %i.hat = getelementptr i8, ptr %i.hao, i64 -3
  %i.hau = load i8, ptr %i.hat, align 1, !tbaa !21
  %i.hav = zext i8 %i.hau to i32
  %i.haw = sub nsw i32 %i.haq, %i.hav
  %i.hax = call i32 @llvm.abs.i32(i32 %i.haw, i1 true)
  %i.hay = add nuw nsw i32 %i.hax, %i.has
  %i.haz = uitofp nneg i32 %i.hay to float
  br label %bb.aka

bb.ajx:                                           ; preds = %bb.ajv
  %i.hba = uitofp nneg i32 %i.has to float
  %i.hbb = fmul nnan float %i.hba, 2.000000e+00
  br label %bb.aka

bb.ajy:                                           ; preds = %bb.aju
  br i1 %.not432.i1455, label %bb.aka, label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy
  %i.hbc = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i551.i1505 = select i1 %i.gyu, i64 0, i64 %i.hbc
  %.sink.i552.i1506 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i551.i1505
  %i.hbd = getelementptr [3 x i8], ptr %.sink.i552.i1506, i64 %i.gyd ; 2 uses
  %i.hbe = load i8, ptr %i.hbd, align 1, !tbaa !21
  %i.hbf = zext i8 %i.hbe to i32
  %i.hbg = getelementptr i8, ptr %i.hbd, i64 -3
  %i.hbh = load i8, ptr %i.hbg, align 1, !tbaa !21
  %i.hbi = zext i8 %i.hbh to i32
  %i.hbj = sub nsw i32 %i.hbf, %i.hbi
  %i.hbk = call i32 @llvm.abs.i32(i32 %i.hbj, i1 true)
  %i.hbl = uitofp nneg i32 %i.hbk to float
  %i.hbm = fmul nnan float %i.hbl, 2.000000e+00
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajz, %bb.ajy, %bb.ajx, %bb.ajw
  %.sroa.12672.0.i1458 = phi float [ %i.haz, %bb.ajw ], [ %i.hbm, %bb.ajz ], [ %i.hbb, %bb.ajx ], [ 0.000000e+00, %bb.ajy ] ; 3 uses
  %i.hbn = fneg float %.sroa.0671.0.i1453
  %i.hbo = fmul float %.sroa.12672.0.i1458, %i.gxl
  %i.hbp = call noundef float @llvm.fmuladd.f32(float %i.gyn, float %i.hbn, float %i.hbo) ; 2 uses
  %i.hbq = call float @llvm.fabs.f32(float %i.hbp)
  %i.hbr = fpext float %i.hbq to double
  %i.hbs = fcmp ugt double %i.hbr, 1.000000e-02
  br i1 %i.hbs, label %bb.akb, label %bb.akc

bb.akb:                                           ; preds = %bb.aka
  %i.hbt = fmul float %.sroa.12672.0.i1458, %.sroa.12672.0.i1458
  %i.hbu = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1453, float %.sroa.0671.0.i1453, float %i.hbt)
  %i.hbv = fmul float %i.gyo, %i.hbu
  %i.hbw = call noundef float @sqrtf(float noundef %i.hbv) #20
  %i.hbx = fdiv float %i.hbp, %i.hbw
  %i.hby = call float @llvm.fabs.f32(float %i.hbx)
  %.pre798.i1504 = load i8, ptr %i.gyr, align 1, !tbaa !21
  %.pre2117 = load i8, ptr %gep1980, align 1, !tbaa !21
  br label %bb.akc

bb.akc:                                           ; preds = %bb.akb, %bb.aka
  %92 = phi i8 [ %.pre2117, %bb.akb ], [ %i.gzc, %bb.aka ] ; 2 uses
  %93 = phi i8 [ %.pre798.i1504, %bb.akb ], [ %90, %bb.aka ] ; 2 uses
  %.0390.i1459 = phi float [ %i.hby, %bb.akb ], [ f0x358637BD, %bb.aka ]
  %i.hbz = fmul float %i.gyq, %.0390.i1459        ; 2 uses
  %i.hca = load i8, ptr %i.gyy, align 1, !tbaa !21
  %i.hcb = uitofp i8 %i.hca to float
  %i.hcc = call float @llvm.fmuladd.f32(float %i.hbz, float %i.hcb, float %.sroa.0789.2.i1416)
  %i.hcd = fadd float %.sroa.0.2.i1421, %i.hbz
  %.not428.1.i1460 = icmp eq i8 %93, 2
  %.not429.1.i1461 = icmp eq i8 %92, 2            ; 2 uses
  br i1 %.not428.1.i1460, label %bb.akg, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.hce = mul i64 %i.gyw, %i.gxr
  %.sink.idx.i523.1.i1462 = select i1 %i.gyu, i64 0, i64 %i.hce
  %.sink.i524.1.i1463 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i523.1.i1462
  %i.hcf = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1463, i64 %i.gyd
  %i.hcg = getelementptr inbounds nuw i8, ptr %i.hcf, i64 1
  %i.hch = load i8, ptr %i.hcg, align 1, !tbaa !21
  %i.hci = zext i8 %i.hch to i32
  %i.hcj = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i525.1.i1464 = select i1 %i.gyu, i64 0, i64 %i.hcj
  %.sink.i526.1.i1465 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i525.1.i1464
  %i.hck = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i1465, i64 %i.gyd
  %i.hcl = getelementptr inbounds nuw i8, ptr %i.hck, i64 1
  %i.hcm = load i8, ptr %i.hcl, align 1, !tbaa !21
  %i.hcn = zext i8 %i.hcm to i32                  ; 2 uses
  %i.hco = sub nsw i32 %i.hci, %i.hcn
  %i.hcp = call i32 @llvm.abs.i32(i32 %i.hco, i1 true) ; 2 uses
  br i1 %.not429.1.i1461, label %bb.akf, label %bb.ake

bb.ake:                                           ; preds = %bb.akd
  %i.hcq = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i521.1.i1466 = select i1 %i.gyu, i64 0, i64 %i.hcq
  %.sink.i522.1.i1467 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i521.1.i1466
  %i.hcr = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i1467, i64 %i.gyd
  %i.hcs = getelementptr inbounds nuw i8, ptr %i.hcr, i64 1
  %i.hct = load i8, ptr %i.hcs, align 1, !tbaa !21
  %i.hcu = zext i8 %i.hct to i32
  %i.hcv = sub nsw i32 %i.hcn, %i.hcu
  %i.hcw = call i32 @llvm.abs.i32(i32 %i.hcv, i1 true)
  %i.hcx = add nuw nsw i32 %i.hcw, %i.hcp
  %i.hcy = uitofp nneg i32 %i.hcx to float
  br label %bb.aki

bb.akf:                                           ; preds = %bb.akd
  %i.hcz = uitofp nneg i32 %i.hcp to float
  %i.hda = fmul nnan float %i.hcz, 2.000000e+00
  br label %bb.aki

bb.akg:                                           ; preds = %bb.akc
  br i1 %.not429.1.i1461, label %bb.aki, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.hdb = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i529.1.i1500 = select i1 %i.gyu, i64 0, i64 %i.hdb
  %.sink.i530.1.i1501 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i529.1.i1500
  %i.hdc = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i1501, i64 %i.gyd
  %i.hdd = getelementptr inbounds nuw i8, ptr %i.hdc, i64 1
  %i.hde = load i8, ptr %i.hdd, align 1, !tbaa !21
  %i.hdf = zext i8 %i.hde to i32
  %i.hdg = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i531.1.i1502 = select i1 %i.gyu, i64 0, i64 %i.hdg
  %.sink.i532.1.i1503 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i531.1.i1502
  %i.hdh = getelementptr inbounds [3 x i8], ptr %.sink.i532.1.i1503, i64 %i.gyd
  %i.hdi = getelementptr inbounds nuw i8, ptr %i.hdh, i64 1
  %i.hdj = load i8, ptr %i.hdi, align 1, !tbaa !21
  %i.hdk = zext i8 %i.hdj to i32
  %i.hdl = sub nsw i32 %i.hdf, %i.hdk
  %i.hdm = call i32 @llvm.abs.i32(i32 %i.hdl, i1 true)
  %i.hdn = uitofp nneg i32 %i.hdm to float
  %i.hdo = fmul nnan float %i.hdn, 2.000000e+00
  br label %bb.aki

bb.aki:                                           ; preds = %bb.akh, %bb.akg, %bb.akf, %bb.ake
  %.sroa.0671.0.1.i1468 = phi float [ %i.hcy, %bb.ake ], [ %i.hdo, %bb.akh ], [ %i.hda, %bb.akf ], [ 0.000000e+00, %bb.akg ] ; 3 uses
  %94 = load i8, ptr %i.gys, align 1, !tbaa !21
  %.not431.1.i1469 = icmp eq i8 %94, 2
  %95 = load i8, ptr %i.gyz, align 1, !tbaa !21
  %.not432.1.i1470 = icmp eq i8 %95, 2            ; 2 uses
  br i1 %.not431.1.i1469, label %bb.akm, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.hdp = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i545.1.i1471 = select i1 %i.gyu, i64 0, i64 %i.hdp
  %.sink.i546.1.i1472 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i545.1.i1471 ; 2 uses
  %i.hdq = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.1.i1472, i64 %i.gzb
  %i.hdr = getelementptr inbounds nuw i8, ptr %i.hdq, i64 1
  %i.hds = load i8, ptr %i.hdr, align 1, !tbaa !21
  %i.hdt = zext i8 %i.hds to i32
  %i.hdu = getelementptr [3 x i8], ptr %.sink.i546.1.i1472, i64 %i.gyd ; 2 uses
  %i.hdv = getelementptr inbounds nuw i8, ptr %i.hdu, i64 1
  %i.hdw = load i8, ptr %i.hdv, align 1, !tbaa !21
  %i.hdx = zext i8 %i.hdw to i32                  ; 2 uses
  %i.hdy = sub nsw i32 %i.hdt, %i.hdx
  %i.hdz = call i32 @llvm.abs.i32(i32 %i.hdy, i1 true) ; 2 uses
  br i1 %.not432.1.i1470, label %bb.akl, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.hea = getelementptr i8, ptr %i.hdu, i64 -2
  %i.heb = load i8, ptr %i.hea, align 1, !tbaa !21
  %i.hec = zext i8 %i.heb to i32
  %i.hed = sub nsw i32 %i.hdx, %i.hec
  %i.hee = call i32 @llvm.abs.i32(i32 %i.hed, i1 true)
  %i.hef = add nuw nsw i32 %i.hee, %i.hdz
  %i.heg = uitofp nneg i32 %i.hef to float
  br label %bb.ako

bb.akl:                                           ; preds = %bb.akj
  %i.heh = uitofp nneg i32 %i.hdz to float
  %i.hei = fmul nnan float %i.heh, 2.000000e+00
  br label %bb.ako

bb.akm:                                           ; preds = %bb.aki
  br i1 %.not432.1.i1470, label %bb.ako, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  %i.hej = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i551.1.i1498 = select i1 %i.gyu, i64 0, i64 %i.hej
  %.sink.i552.1.i1499 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i551.1.i1498
  %i.hek = getelementptr [3 x i8], ptr %.sink.i552.1.i1499, i64 %i.gyd ; 2 uses
  %i.hel = getelementptr inbounds nuw i8, ptr %i.hek, i64 1
  %i.hem = load i8, ptr %i.hel, align 1, !tbaa !21
  %i.hen = zext i8 %i.hem to i32
  %i.heo = getelementptr i8, ptr %i.hek, i64 -2
  %i.hep = load i8, ptr %i.heo, align 1, !tbaa !21
  %i.heq = zext i8 %i.hep to i32
  %i.her = sub nsw i32 %i.hen, %i.heq
  %i.hes = call i32 @llvm.abs.i32(i32 %i.her, i1 true)
  %i.het = uitofp nneg i32 %i.hes to float
  %i.heu = fmul nnan float %i.het, 2.000000e+00
  br label %bb.ako

bb.ako:                                           ; preds = %bb.akn, %bb.akm, %bb.akl, %bb.akk
  %.sroa.12672.0.1.i1473 = phi float [ %i.heg, %bb.akk ], [ %i.heu, %bb.akn ], [ %i.hei, %bb.akl ], [ 0.000000e+00, %bb.akm ] ; 3 uses
  %i.hev = fneg float %.sroa.0671.0.1.i1468
  %i.hew = fmul float %.sroa.12672.0.1.i1473, %i.gxl
  %i.hex = call noundef float @llvm.fmuladd.f32(float %i.gyn, float %i.hev, float %i.hew) ; 2 uses
  %i.hey = call float @llvm.fabs.f32(float %i.hex)
  %i.hez = fpext float %i.hey to double
  %i.hfa = fcmp ugt double %i.hez, 1.000000e-02
  br i1 %i.hfa, label %bb.akp, label %bb.akq

bb.akp:                                           ; preds = %bb.ako
  %i.hfb = fmul float %.sroa.12672.0.1.i1473, %.sroa.12672.0.1.i1473
  %i.hfc = call float @llvm.fmuladd.f32(float %.sroa.0671.0.1.i1468, float %.sroa.0671.0.1.i1468, float %i.hfb)
  %i.hfd = fmul float %i.gyo, %i.hfc
  %i.hfe = call noundef float @sqrtf(float noundef %i.hfd) #20
  %i.hff = fdiv float %i.hex, %i.hfe
  %i.hfg = call float @llvm.fabs.f32(float %i.hff)
  %.pre799.i1497 = load i8, ptr %i.gyr, align 1, !tbaa !21
  %.pre2118 = load i8, ptr %gep1980, align 1, !tbaa !21
  br label %bb.akq

bb.akq:                                           ; preds = %bb.akp, %bb.ako
  %96 = phi i8 [ %.pre2118, %bb.akp ], [ %92, %bb.ako ]
  %97 = phi i8 [ %.pre799.i1497, %bb.akp ], [ %93, %bb.ako ]
  %.0390.1.i1474 = phi float [ %i.hfg, %bb.akp ], [ f0x358637BD, %bb.ako ]
  %i.hfh = fmul float %i.gyq, %.0390.1.i1474      ; 2 uses
  %i.hfi = getelementptr inbounds nuw i8, ptr %i.gyy, i64 1
  %i.hfj = load i8, ptr %i.hfi, align 1, !tbaa !21
  %i.hfk = uitofp i8 %i.hfj to float
  %i.hfl = call float @llvm.fmuladd.f32(float %i.hfh, float %i.hfk, float %.sroa.6791.2.i1417)
  %i.hfm = fadd float %.sroa.6.2.i1420, %i.hfh
  %.not428.2.i1475 = icmp eq i8 %97, 2
  %.not429.2.i1476 = icmp eq i8 %96, 2            ; 2 uses
  br i1 %.not428.2.i1475, label %bb.aku, label %bb.akr

bb.akr:                                           ; preds = %bb.akq
  %i.hfn = mul i64 %i.gyw, %i.gxr
  %.sink.idx.i523.2.i1477 = select i1 %i.gyu, i64 0, i64 %i.hfn
  %.sink.i524.2.i1478 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i523.2.i1477
  %i.hfo = getelementptr inbounds [3 x i8], ptr %.sink.i524.2.i1478, i64 %i.gyd
  %i.hfp = getelementptr inbounds nuw i8, ptr %i.hfo, i64 2
  %i.hfq = load i8, ptr %i.hfp, align 1, !tbaa !21
  %i.hfr = zext i8 %i.hfq to i32
  %i.hfs = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i525.2.i1479 = select i1 %i.gyu, i64 0, i64 %i.hfs
  %.sink.i526.2.i1480 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i525.2.i1479
  %i.hft = getelementptr inbounds [3 x i8], ptr %.sink.i526.2.i1480, i64 %i.gyd
  %i.hfu = getelementptr inbounds nuw i8, ptr %i.hft, i64 2
  %i.hfv = load i8, ptr %i.hfu, align 1, !tbaa !21
  %i.hfw = zext i8 %i.hfv to i32                  ; 2 uses
  %i.hfx = sub nsw i32 %i.hfr, %i.hfw
  %i.hfy = call i32 @llvm.abs.i32(i32 %i.hfx, i1 true) ; 2 uses
  br i1 %.not429.2.i1476, label %bb.akt, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.hfz = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i521.2.i1481 = select i1 %i.gyu, i64 0, i64 %i.hfz
  %.sink.i522.2.i1482 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i521.2.i1481
  %i.hga = getelementptr inbounds [3 x i8], ptr %.sink.i522.2.i1482, i64 %i.gyd
  %i.hgb = getelementptr inbounds nuw i8, ptr %i.hga, i64 2
  %i.hgc = load i8, ptr %i.hgb, align 1, !tbaa !21
  %i.hgd = zext i8 %i.hgc to i32
  %i.hge = sub nsw i32 %i.hfw, %i.hgd
  %i.hgf = call i32 @llvm.abs.i32(i32 %i.hge, i1 true)
  %i.hgg = add nuw nsw i32 %i.hgf, %i.hfy
  %i.hgh = uitofp nneg i32 %i.hgg to float
  br label %bb.akw

bb.akt:                                           ; preds = %bb.akr
  %i.hgi = uitofp nneg i32 %i.hfy to float
  %i.hgj = fmul nnan float %i.hgi, 2.000000e+00
  br label %bb.akw

bb.aku:                                           ; preds = %bb.akq
  br i1 %.not429.2.i1476, label %bb.akw, label %bb.akv

bb.akv:                                           ; preds = %bb.aku
  %i.hgk = mul i64 %i.gyw, %i.gxs
  %.sink.idx.i529.2.i1493 = select i1 %i.gyu, i64 0, i64 %i.hgk
  %.sink.i530.2.i1494 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i529.2.i1493
  %i.hgl = getelementptr inbounds [3 x i8], ptr %.sink.i530.2.i1494, i64 %i.gyd
  %i.hgm = getelementptr inbounds nuw i8, ptr %i.hgl, i64 2
  %i.hgn = load i8, ptr %i.hgm, align 1, !tbaa !21
  %i.hgo = zext i8 %i.hgn to i32
  %i.hgp = mul i64 %i.gyw, %i.gxu
  %.sink.idx.i531.2.i1495 = select i1 %i.gyu, i64 0, i64 %i.hgp
  %.sink.i532.2.i1496 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i531.2.i1495
  %i.hgq = getelementptr inbounds [3 x i8], ptr %.sink.i532.2.i1496, i64 %i.gyd
  %i.hgr = getelementptr inbounds nuw i8, ptr %i.hgq, i64 2
  %i.hgs = load i8, ptr %i.hgr, align 1, !tbaa !21
  %i.hgt = zext i8 %i.hgs to i32
  %i.hgu = sub nsw i32 %i.hgo, %i.hgt
  %i.hgv = call i32 @llvm.abs.i32(i32 %i.hgu, i1 true)
  %i.hgw = uitofp nneg i32 %i.hgv to float
  %i.hgx = fmul nnan float %i.hgw, 2.000000e+00
  br label %bb.akw

bb.akw:                                           ; preds = %bb.akv, %bb.aku, %bb.akt, %bb.aks
  %.sroa.0671.0.2.i1483 = phi float [ %i.hgh, %bb.aks ], [ %i.hgx, %bb.akv ], [ %i.hgj, %bb.akt ], [ 0.000000e+00, %bb.aku ] ; 3 uses
  %98 = load i8, ptr %i.gys, align 1, !tbaa !21
  %.not431.2.i1484 = icmp eq i8 %98, 2
  %99 = load i8, ptr %i.gyz, align 1, !tbaa !21
  %.not432.2.i1485 = icmp eq i8 %99, 2            ; 2 uses
  br i1 %.not431.2.i1484, label %bb.ala, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  %i.hgy = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i545.2.i1486 = select i1 %i.gyu, i64 0, i64 %i.hgy
  %.sink.i546.2.i1487 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i545.2.i1486 ; 2 uses
  %i.hgz = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.2.i1487, i64 %i.gzb
  %i.hha = getelementptr inbounds nuw i8, ptr %i.hgz, i64 2
  %i.hhb = load i8, ptr %i.hha, align 1, !tbaa !21
  %i.hhc = zext i8 %i.hhb to i32
  %i.hhd = getelementptr [3 x i8], ptr %.sink.i546.2.i1487, i64 %i.gyd ; 2 uses
  %i.hhe = getelementptr inbounds nuw i8, ptr %i.hhd, i64 2
  %i.hhf = load i8, ptr %i.hhe, align 1, !tbaa !21
  %i.hhg = zext i8 %i.hhf to i32                  ; 2 uses
  %i.hhh = sub nsw i32 %i.hhc, %i.hhg
  %i.hhi = call i32 @llvm.abs.i32(i32 %i.hhh, i1 true) ; 2 uses
  br i1 %.not432.2.i1485, label %bb.akz, label %bb.aky

bb.aky:                                           ; preds = %bb.akx
  %i.hhj = getelementptr i8, ptr %i.hhd, i64 -1
  %i.hhk = load i8, ptr %i.hhj, align 1, !tbaa !21
  %i.hhl = zext i8 %i.hhk to i32
  %i.hhm = sub nsw i32 %i.hhg, %i.hhl
  %i.hhn = call i32 @llvm.abs.i32(i32 %i.hhm, i1 true)
  %i.hho = add nuw nsw i32 %i.hhn, %i.hhi
  %i.hhp = uitofp nneg i32 %i.hho to float
  br label %bb.alc

bb.akz:                                           ; preds = %bb.akx
  %i.hhq = uitofp nneg i32 %i.hhi to float
  %i.hhr = fmul nnan float %i.hhq, 2.000000e+00
  br label %bb.alc

bb.ala:                                           ; preds = %bb.akw
  br i1 %.not432.2.i1485, label %bb.alc, label %bb.alb

bb.alb:                                           ; preds = %bb.ala
  %i.hhs = mul i64 %i.gyw, %i.gxv
  %.sink.idx.i551.2.i1491 = select i1 %i.gyu, i64 0, i64 %i.hhs
  %.sink.i552.2.i1492 = getelementptr inbounds nuw i8, ptr %i.gyv, i64 %.sink.idx.i551.2.i1491
  %i.hht = getelementptr [3 x i8], ptr %.sink.i552.2.i1492, i64 %i.gyd ; 2 uses
  %i.hhu = getelementptr inbounds nuw i8, ptr %i.hht, i64 2
  %i.hhv = load i8, ptr %i.hhu, align 1, !tbaa !21
  %i.hhw = zext i8 %i.hhv to i32
  %i.hhx = getelementptr i8, ptr %i.hht, i64 -1
  %i.hhy = load i8, ptr %i.hhx, align 1, !tbaa !21
  %i.hhz = zext i8 %i.hhy to i32
  %i.hia = sub nsw i32 %i.hhw, %i.hhz
  %i.hib = call i32 @llvm.abs.i32(i32 %i.hia, i1 true)
  %i.hic = uitofp nneg i32 %i.hib to float
  %i.hid = fmul nnan float %i.hic, 2.000000e+00
  br label %bb.alc

bb.alc:                                           ; preds = %bb.alb, %bb.ala, %bb.akz, %bb.aky
  %.sroa.12672.0.2.i1488 = phi float [ %i.hhp, %bb.aky ], [ %i.hid, %bb.alb ], [ %i.hhr, %bb.akz ], [ 0.000000e+00, %bb.ala ] ; 3 uses
  %i.hie = fneg float %.sroa.0671.0.2.i1483
  %i.hif = fmul float %.sroa.12672.0.2.i1488, %i.gxl
  %i.hig = call noundef float @llvm.fmuladd.f32(float %i.gyn, float %i.hie, float %i.hif) ; 2 uses
  %i.hih = call float @llvm.fabs.f32(float %i.hig)
  %i.hii = fpext float %i.hih to double
  %i.hij = fcmp ugt double %i.hii, 1.000000e-02
  br i1 %i.hij, label %bb.ald, label %.loopexit.loopexit.i1489

bb.ald:                                           ; preds = %bb.alc
  %i.hik = fmul float %.sroa.12672.0.2.i1488, %.sroa.12672.0.2.i1488
  %i.hil = call float @llvm.fmuladd.f32(float %.sroa.0671.0.2.i1483, float %.sroa.0671.0.2.i1483, float %i.hik)
  %i.him = fmul float %i.gyo, %i.hil
  %i.hin = call noundef float @sqrtf(float noundef %i.him) #20
  %i.hio = fdiv float %i.hig, %i.hin
  %i.hip = call float @llvm.fabs.f32(float %i.hio)
  br label %.loopexit.loopexit.i1489

.loopexit.loopexit.i1489:                         ; preds = %bb.ald, %bb.alc
  %.0390.2.i1490 = phi float [ %i.hip, %bb.ald ], [ f0x358637BD, %bb.alc ]
  %i.hiq = fmul float %i.gyq, %.0390.2.i1490      ; 2 uses
  %i.hir = getelementptr inbounds nuw i8, ptr %i.gyy, i64 2
  %i.his = load i8, ptr %i.hir, align 1, !tbaa !21
  %i.hit = uitofp i8 %i.his to float
  %i.hiu = call float @llvm.fmuladd.f32(float %i.hiq, float %i.hit, float %.sroa.9793.2.i1418)
  %i.hiv = fadd float %.sroa.9.2.i1419, %i.hiq
  br label %.loopexit.i1424

.loopexit.i1424:                                  ; preds = %.loopexit.loopexit.i1489, %bb.ajo, %bb.ajn, %.lr.ph756.split.split.i1415
  %.sroa.0789.3.i1425 = phi float [ %.sroa.0789.2.i1416, %bb.ajn ], [ %.sroa.0789.2.i1416, %bb.ajo ], [ %i.hcc, %.loopexit.loopexit.i1489 ], [ %.sroa.0789.2.i1416, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %.sroa.6791.3.i1426 = phi float [ %.sroa.6791.2.i1417, %bb.ajn ], [ %.sroa.6791.2.i1417, %bb.ajo ], [ %i.hfl, %.loopexit.loopexit.i1489 ], [ %.sroa.6791.2.i1417, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %.sroa.9793.3.i1427 = phi float [ %.sroa.9793.2.i1418, %bb.ajn ], [ %.sroa.9793.2.i1418, %bb.ajo ], [ %i.hiu, %.loopexit.loopexit.i1489 ], [ %.sroa.9793.2.i1418, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %.sroa.9.3.i1428 = phi float [ %.sroa.9.2.i1419, %bb.ajn ], [ %.sroa.9.2.i1419, %bb.ajo ], [ %i.hiv, %.loopexit.loopexit.i1489 ], [ %.sroa.9.2.i1419, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %.sroa.6.3.i1429 = phi float [ %.sroa.6.2.i1420, %bb.ajn ], [ %.sroa.6.2.i1420, %bb.ajo ], [ %i.hfm, %.loopexit.loopexit.i1489 ], [ %.sroa.6.2.i1420, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %.sroa.0.3.i1430 = phi float [ %.sroa.0.2.i1421, %bb.ajn ], [ %.sroa.0.2.i1421, %bb.ajo ], [ %i.hcd, %.loopexit.loopexit.i1489 ], [ %.sroa.0.2.i1421, %.lr.ph756.split.split.i1415 ] ; 2 uses
  %indvars.iv.next.i1431 = add nsw i64 %indvars.iv.i1422, 1
  %.not424.not.i1432 = icmp slt i64 %indvars.iv.i1422, %i.guy
  br i1 %.not424.not.i1432, label %.lr.ph756.split.split.i1415, label %._crit_edge757.i1396, !llvm.loop !130

._crit_edge757.i1396:                             ; preds = %.loopexit.i1424, %.lr.ph756.split.i1413, %.lr.ph756.i1387
  %.sroa.0789.4.i1397 = phi float [ %.sroa.0789.1.i1388, %.lr.ph756.split.i1413 ], [ %.sroa.0789.1.i1388, %.lr.ph756.i1387 ], [ %.sroa.0789.3.i1425, %.loopexit.i1424 ] ; 2 uses
  %.sroa.6791.4.i1398 = phi float [ %.sroa.6791.1.i1389, %.lr.ph756.split.i1413 ], [ %.sroa.6791.1.i1389, %.lr.ph756.i1387 ], [ %.sroa.6791.3.i1426, %.loopexit.i1424 ] ; 2 uses
  %.sroa.9793.4.i1399 = phi float [ %.sroa.9793.1.i1390, %.lr.ph756.split.i1413 ], [ %.sroa.9793.1.i1390, %.lr.ph756.i1387 ], [ %.sroa.9793.3.i1427, %.loopexit.i1424 ] ; 2 uses
  %.sroa.9.4.i1400 = phi float [ %.sroa.9.1.i1391, %.lr.ph756.split.i1413 ], [ %.sroa.9.1.i1391, %.lr.ph756.i1387 ], [ %.sroa.9.3.i1428, %.loopexit.i1424 ] ; 2 uses
  %.sroa.6.4.i1401 = phi float [ %.sroa.6.1.i1392, %.lr.ph756.split.i1413 ], [ %.sroa.6.1.i1392, %.lr.ph756.i1387 ], [ %.sroa.6.3.i1429, %.loopexit.i1424 ] ; 2 uses
  %.sroa.0.4.i1402 = phi float [ %.sroa.0.1.i1393, %.lr.ph756.split.i1413 ], [ %.sroa.0.1.i1393, %.lr.ph756.i1387 ], [ %.sroa.0.3.i1430, %.loopexit.i1424 ] ; 2 uses
  %.not422.i1403 = icmp sgt i32 %i.gxn, %i.gum
  br i1 %.not422.i1403, label %.preheader712.loopexit.i1404, label %.lr.ph756.i1387, !llvm.loop !131

bb.ale:                                           ; preds = %.noexc1515, %bb.aif, %bb.aie
  %i.hiw = add nuw nsw i32 %.0393767.i1348, 1     ; 2 uses
  %exitcond785.not.i1354 = icmp eq i32 %i.hiw, 4
  br i1 %exitcond785.not.i1354, label %.loopexit713.i1355, label %bb.aia, !llvm.loop !132

.loopexit715.i1252:                               ; preds = %bb.ann
  %i.hix = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.hiy = load ptr, ptr %i.gnl, align 8, !tbaa !47
  %.not710.i1253 = icmp eq ptr %i.hix, %i.hiy
  br i1 %.not710.i1253, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.alf, !llvm.loop !133

bb.alf:                                           ; preds = %.loopexit715.i1252, %.lr.ph749.i1242
  %i.hiz = phi ptr [ %i.gnm, %.lr.ph749.i1242 ], [ %i.hix, %.loopexit715.i1252 ] ; 2 uses
  %i.hja = getelementptr inbounds nuw i8, ptr %i.hiz, i64 4
  %i.hjb = load i32, ptr %i.hja, align 4, !tbaa !169 ; 5 uses
  %i.hjc = getelementptr inbounds nuw i8, ptr %i.hiz, i64 8
  %i.hjd = load i32, ptr %i.hjc, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.mc)
          to label %.noexc1516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1516:                                       ; preds = %bb.alf
  %i.hje = load i32, ptr %i.gno, align 4, !tbaa !148
  %i.hjf = icmp slt i32 %i.hje, 2
  %i.hjg = load ptr, ptr %i.gnp, align 8, !tbaa !149
  %i.hjh = load i64, ptr %i.gnq, align 8
  %i.hji = sext i32 %i.hjb to i64
  %i.hjj = mul i64 %i.hjh, %i.hji
  %.sink.idx.i562.i1243 = select i1 %i.hjf, i64 0, i64 %i.hjj
  %.sink.i563.i1244 = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %.sink.idx.i562.i1243
  %i.hjk = sext i32 %i.hjd to i64
  %i.hjl = getelementptr inbounds i8, ptr %.sink.i563.i1244, i64 %i.hjk
  store i8 0, ptr %i.hjl, align 1, !tbaa !21
  %i.hjm = add nsw i32 %i.hjd, 1
  %i.hjn = add nsw i32 %i.hjb, 1
  %i.hjo = add nsw i32 %i.hjd, -1
  %i.hjp = add nsw i32 %i.hjb, -1
  br label %bb.alg

bb.alg:                                           ; preds = %bb.ann, %.noexc1516
  %.1394747.i1245 = phi i32 [ 0, %.noexc1516 ], [ %i.hvt, %bb.ann ] ; 2 uses
  switch i32 %.1394747.i1245, label %default.unreachable709.i1342 [
    i32 0, label %bb.alk
    i32 1, label %bb.alh
    i32 2, label %bb.ali
    i32 3, label %bb.alj
  ]

bb.alh:                                           ; preds = %bb.alg
  br label %bb.alk

bb.ali:                                           ; preds = %bb.alg
  br label %bb.alk

bb.alj:                                           ; preds = %bb.alg
  br label %bb.alk

default.unreachable709.i1342:                     ; preds = %bb.alg
  unreachable

bb.alk:                                           ; preds = %bb.alj, %bb.ali, %bb.alh, %bb.alg
  %.5407.i1246 = phi i32 [ %i.hjb, %bb.alj ], [ %i.hjb, %bb.alh ], [ %i.hjn, %bb.ali ], [ %i.hjp, %bb.alg ]
  %.5.i1247 = phi i32 [ %i.hjm, %bb.alj ], [ %i.hjo, %bb.alh ], [ %i.hjd, %bb.ali ], [ %i.hjd, %bb.alg ] ; 10 uses
  %.5407.fr.i1248 = freeze i32 %.5407.i1246       ; 10 uses
  %i.hjq = icmp slt i32 %.5407.fr.i1248, 1
  %i.hjr = icmp slt i32 %.5.i1247, 1
  %or.cond5.i1249 = select i1 %i.hjq, i1 true, i1 %i.hjr
  br i1 %or.cond5.i1249, label %bb.ann, label %bb.all

bb.all:                                           ; preds = %bb.alk
  %i.hjs = load i32, ptr %i.gnr, align 8, !tbaa !146 ; 3 uses
  %.not.i1250 = icmp slt i32 %.5407.fr.i1248, %i.hjs
  br i1 %.not.i1250, label %bb.alm, label %bb.ann

bb.alm:                                           ; preds = %bb.all
  %i.hjt = load i32, ptr %i.gns, align 4, !tbaa !145 ; 3 uses
  %.not408.i1255 = icmp slt i32 %.5.i1247, %i.hjt
  br i1 %.not408.i1255, label %bb.aln, label %bb.ann

bb.aln:                                           ; preds = %bb.alm
  %i.hju = load i32, ptr %i.gno, align 4, !tbaa !148
  %i.hjv = icmp slt i32 %i.hju, 2                 ; 7 uses
  %i.hjw = load ptr, ptr %i.gnp, align 8, !tbaa !149 ; 7 uses
  %i.hjx = load i64, ptr %i.gnq, align 8          ; 3 uses
  %i.hjy = zext nneg i32 %.5407.fr.i1248 to i64   ; 3 uses
  %i.hjz = mul i64 %i.hjx, %i.hjy
  %.sink.idx.i564.i1256 = select i1 %i.hjv, i64 0, i64 %i.hjz
  %.sink.i565.i1257 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.sink.idx.i564.i1256 ; 3 uses
  %i.hka = zext nneg i32 %.5.i1247 to i64         ; 7 uses
  %i.hkb = getelementptr inbounds nuw i8, ptr %.sink.i565.i1257, i64 %i.hka
  %i.hkc = load i8, ptr %i.hkb, align 1, !tbaa !21
  %i.hkd = icmp eq i8 %i.hkc, 2
  br i1 %i.hkd, label %bb.alo, label %bb.ann

bb.alo:                                           ; preds = %bb.aln
  %i.hke = add nsw i32 %.5407.fr.i1248, -1
  %i.hkf = add nsw i32 %.5.i1247, -1
  %i.hkg = load i32, ptr %i.gnt, align 4, !tbaa !148
  %i.hkh = icmp slt i32 %i.hkg, 2                 ; 3 uses
  %i.hki = load ptr, ptr %i.gnu, align 8, !tbaa !149 ; 3 uses
  %i.hkj = load i64, ptr %i.gnv, align 8          ; 3 uses
  %i.hkk = zext nneg i32 %i.hke to i64            ; 3 uses
  %i.hkl = mul i64 %i.hkj, %i.hkk
  %.sink.idx.i.i566.i1258 = select i1 %i.hkh, i64 0, i64 %i.hkl
  %.sink.i.i567.i1259 = getelementptr inbounds nuw i8, ptr %i.hki, i64 %.sink.idx.i.i566.i1258
  %i.hkm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i567.i1259, i64 %i.hka
  %i.hkn = load float, ptr %i.hkm, align 4, !tbaa !46 ; 3 uses
  %i.hko = fpext float %i.hkn to double           ; 8 uses
  %i.hkp = mul i64 %i.hkj, %i.hjy
  %.sink.idx.i33.i568.i1260 = select i1 %i.hkh, i64 0, i64 %i.hkp
  %.sink.i34.i569.i1261 = getelementptr inbounds nuw i8, ptr %i.hki, i64 %.sink.idx.i33.i568.i1260 ; 3 uses
  %i.hkq = zext nneg i32 %i.hkf to i64            ; 3 uses
  %i.hkr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1261, i64 %i.hkq
  %i.hks = load float, ptr %i.hkr, align 4, !tbaa !46 ; 3 uses
  %i.hkt = fpext float %i.hks to double           ; 8 uses
  %i.hku = fcmp ogt float %i.hkn, %i.hks
  %i.hkv = select i1 %i.hku, double %i.hkt, double %i.hko ; 2 uses
  %i.hkw = mul i64 %i.hjx, %i.hkk
  %.sink.idx.i35.i570.i1262 = select i1 %i.hjv, i64 0, i64 %i.hkw
  %.sink.i36.i571.i1263 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.sink.idx.i35.i570.i1262
  %i.hkx = getelementptr inbounds nuw i8, ptr %.sink.i36.i571.i1263, i64 %i.hka ; 2 uses
  %i.hky = load i8, ptr %i.hkx, align 1, !tbaa !21
  %.not.i572.i1264 = icmp eq i8 %i.hky, 2
  %i.hkz = getelementptr inbounds nuw i8, ptr %.sink.i565.i1257, i64 %i.hkq ; 2 uses
  %i.hla = load i8, ptr %i.hkz, align 1, !tbaa !21
  %.not31.i575.i1265 = icmp eq i8 %i.hla, 2       ; 2 uses
  br i1 %.not.i572.i1264, label %bb.alu, label %bb.alp

bb.alp:                                           ; preds = %bb.alo
  br i1 %.not31.i575.i1265, label %bb.alt, label %bb.alq

bb.alq:                                           ; preds = %bb.alp
  %i.hlb = fsub double %i.hko, %i.hkt             ; 3 uses
  %i.hlc = call double @llvm.fabs.f64(double %i.hlb)
  %i.hld = fcmp ult double %i.hlc, 1.000000e+00
  br i1 %i.hld, label %bb.als, label %bb.alr

bb.alr:                                           ; preds = %bb.alq
  %i.hle = fadd double %i.hkv, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1266

bb.als:                                           ; preds = %bb.alq
  %i.hlf = fadd double %i.hko, %i.hkt
  %i.hlg = fneg double %i.hlb
  %i.hlh = call double @llvm.fmuladd.f64(double %i.hlg, double %i.hlb, double 2.000000e+00)
  %i.hli = call double @sqrt(double noundef %i.hlh) #20
  %i.hlj = fadd double %i.hlf, %i.hli
  %i.hlk = fmul double %i.hlj, 5.000000e-01
  %.pre.i1341 = load i8, ptr %i.hkz, align 1, !tbaa !21
  %i.hll = icmp eq i8 %.pre.i1341, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1266

bb.alt:                                           ; preds = %bb.alp
  %i.hlm = fadd double %i.hko, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1266

bb.alu:                                           ; preds = %bb.alo
  br i1 %.not31.i575.i1265, label %bb.alw, label %bb.alv

bb.alv:                                           ; preds = %bb.alu
  %i.hln = fadd double %i.hkt, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1266

bb.alw:                                           ; preds = %bb.alu
  %i.hlo = fadd double %i.hkv, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1266
end_hunk_2
begin_hunk_3_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.hpu = mul i64 %i.hou, %i.hpk
  %.sink.idx.i634.i1316 = select i1 %i.hjv, i64 0, i64 %i.hpu
  %.sink.i635.i1317 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.sink.idx.i634.i1316
  br label %.lr.ph.split.split.i1300

.lr.ph.split.split.i1300:                         ; preds = %.lr.ph.split.split.i1300.preheader, %bb.anm
  %.1722.i1301 = phi float [ %.2.i1307, %bb.anm ], [ %.0386740.i1285, %.lr.ph.split.split.i1300.preheader ] ; 4 uses
  %.1388721.i1302 = phi float [ %.2389.i1306, %bb.anm ], [ %.0387739.i1286, %.lr.ph.split.split.i1300.preheader ] ; 4 uses
  %.1396719.i1303 = phi i32 [ %i.huy, %bb.anm ], [ %i.hoo, %.lr.ph.split.split.i1300.preheader ] ; 11 uses
  %i.hpv = add nsw i32 %.1396719.i1303, -1        ; 2 uses
  %i.hpw = icmp eq i32 %.1396719.i1303, 1
  %i.hpx = zext i1 %i.hpw to i32
  %i.hpy = add nuw nsw i32 %i.hpv, %i.hpx         ; 4 uses
  %i.hpz = icmp eq i32 %.1396719.i1303, %i.hoq
  %.neg411.i1304 = sext i1 %i.hpz to i32
  %i.hqa = icmp sgt i32 %.1396719.i1303, 0
  %i.hqb = icmp slt i32 %.1396719.i1303, %i.hos
  %or.cond771.i1305 = select i1 %i.hqa, i1 %i.hqb, i1 false
  br i1 %or.cond771.i1305, label %bb.amv, label %bb.anm

bb.amv:                                           ; preds = %.lr.ph.split.split.i1300
  %i.hqc = zext nneg i32 %.1396719.i1303 to i64   ; 3 uses
  %i.hqd = getelementptr inbounds nuw i8, ptr %.sink.i617.i1310, i64 %i.hqc ; 2 uses
  %i.hqe = load i8, ptr %i.hqd, align 1, !tbaa !21
  %.not412.i1311 = icmp eq i8 %i.hqe, 2
  br i1 %.not412.i1311, label %bb.anm, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  %i.hqf = sub nsw i32 %.1396719.i1303, %.5.i1247 ; 2 uses
  %i.hqg = mul nsw i32 %i.hqf, %i.hqf
  %i.hqh = add nuw nsw i32 %i.hqg, %i.hpe
  %.not413.i1312 = icmp samesign ugt i32 %i.hqh, %i.gnw
  br i1 %.not413.i1312, label %bb.anm, label %bb.amx

bb.amx:                                           ; preds = %bb.amw
  %i.hqi = sub nsw i32 %.5.i1247, %.1396719.i1303
  %i.hqj = sitofp i32 %i.hqi to float             ; 3 uses
  %i.hqk = call noundef float @llvm.fmuladd.f32(float %i.hqj, float %i.hqj, float %i.hph) ; 3 uses
  %i.hql = call nnan float @llvm.fmuladd.f32(float %i.hqk, float %i.hqk, float 1.000000e+00)
  %i.hqm = fdiv nnan float 1.000000e+00, %i.hql
  %i.hqn = getelementptr inbounds nuw i8, ptr %.sink.i619.i1314, i64 %i.hqc
  %i.hqo = load i8, ptr %i.hqn, align 1, !tbaa !21
  %.not414.i1315 = icmp eq i8 %i.hqo, 2
  %i.hqp = getelementptr inbounds nuw i8, ptr %.sink.i635.i1317, i64 %i.hqc
  %i.hqq = load i8, ptr %i.hqp, align 1, !tbaa !21
  %.not415.i1318 = icmp eq i8 %i.hqq, 2           ; 2 uses
  br i1 %.not414.i1315, label %bb.anb, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.hqr = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.hqs = icmp slt i32 %i.hqr, 2                 ; 3 uses
  %i.hqt = load ptr, ptr %i.gny, align 8, !tbaa !149 ; 3 uses
  %i.hqu = load i64, ptr %i.gnz, align 8          ; 3 uses
  %i.hqv = mul i64 %i.hqu, %i.hpm
  %.sink.idx.i630.i1319 = select i1 %i.hqs, i64 0, i64 %i.hqv
  %.sink.i631.i1320 = getelementptr inbounds nuw i8, ptr %i.hqt, i64 %.sink.idx.i630.i1319
  %i.hqw = sext i32 %i.hpy to i64                 ; 3 uses
  %i.hqx = getelementptr inbounds [2 x i8], ptr %.sink.i631.i1320, i64 %i.hqw
  %i.hqy = load i16, ptr %i.hqx, align 2, !tbaa !172
  %i.hqz = zext i16 %i.hqy to i32
  %i.hra = mul i64 %i.hqu, %i.hpn
  %.sink.idx.i632.i1321 = select i1 %i.hqs, i64 0, i64 %i.hra
  %.sink.i633.i1322 = getelementptr inbounds nuw i8, ptr %i.hqt, i64 %.sink.idx.i632.i1321
  %i.hrb = getelementptr inbounds [2 x i8], ptr %.sink.i633.i1322, i64 %i.hqw
  %i.hrc = load i16, ptr %i.hrb, align 2, !tbaa !172
  %i.hrd = zext i16 %i.hrc to i32                 ; 2 uses
  %i.hre = sub nsw i32 %i.hqz, %i.hrd
  %i.hrf = call i32 @llvm.abs.i32(i32 %i.hre, i1 true) ; 2 uses
  br i1 %.not415.i1318, label %bb.ana, label %bb.amz

bb.amz:                                           ; preds = %bb.amy
  %i.hrg = mul i64 %i.hqu, %i.hpp
  %.sink.idx.i628.i1323 = select i1 %i.hqs, i64 0, i64 %i.hrg
  %.sink.i629.i1324 = getelementptr inbounds nuw i8, ptr %i.hqt, i64 %.sink.idx.i628.i1323
  %i.hrh = getelementptr inbounds [2 x i8], ptr %.sink.i629.i1324, i64 %i.hqw
  %i.hri = load i16, ptr %i.hrh, align 2, !tbaa !172
  %i.hrj = zext i16 %i.hri to i32
  %i.hrk = sub nsw i32 %i.hrd, %i.hrj
  %i.hrl = call i32 @llvm.abs.i32(i32 %i.hrk, i1 true)
  %i.hrm = add nuw nsw i32 %i.hrl, %i.hrf
  %i.hrn = uitofp nneg i32 %i.hrm to float
  br label %bb.and

bb.ana:                                           ; preds = %bb.amy
  %i.hro = uitofp nneg i32 %i.hrf to float
  %i.hrp = fmul nnan float %i.hro, 2.000000e+00
  br label %bb.and

bb.anb:                                           ; preds = %bb.amx
  br i1 %.not415.i1318, label %bb.and, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.hrq = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.hrr = icmp slt i32 %i.hrq, 2                 ; 2 uses
  %i.hrs = load ptr, ptr %i.gny, align 8, !tbaa !149 ; 2 uses
  %i.hrt = load i64, ptr %i.gnz, align 8          ; 2 uses
  %i.hru = mul i64 %i.hrt, %i.hpn
  %.sink.idx.i636.i1336 = select i1 %i.hrr, i64 0, i64 %i.hru
  %.sink.i637.i1337 = getelementptr inbounds nuw i8, ptr %i.hrs, i64 %.sink.idx.i636.i1336
  %i.hrv = sext i32 %i.hpy to i64                 ; 2 uses
  %i.hrw = getelementptr inbounds [2 x i8], ptr %.sink.i637.i1337, i64 %i.hrv
  %i.hrx = load i16, ptr %i.hrw, align 2, !tbaa !172
  %i.hry = zext i16 %i.hrx to i32
  %i.hrz = mul i64 %i.hrt, %i.hpp
  %.sink.idx.i638.i1338 = select i1 %i.hrr, i64 0, i64 %i.hrz
  %.sink.i639.i1339 = getelementptr inbounds nuw i8, ptr %i.hrs, i64 %.sink.idx.i638.i1338
  %i.hsa = getelementptr inbounds [2 x i8], ptr %.sink.i639.i1339, i64 %i.hrv
  %i.hsb = load i16, ptr %i.hsa, align 2, !tbaa !172
  %i.hsc = zext i16 %i.hsb to i32
  %i.hsd = sub nsw i32 %i.hry, %i.hsc
  %i.hse = call i32 @llvm.abs.i32(i32 %i.hsd, i1 true)
  %i.hsf = uitofp nneg i32 %i.hse to float
  %i.hsg = fmul nnan float %i.hsf, 2.000000e+00
  br label %bb.and

bb.and:                                           ; preds = %bb.anc, %bb.anb, %bb.ana, %bb.amz
  %.sroa.0668.0.i1325 = phi float [ %i.hrn, %bb.amz ], [ %i.hsg, %bb.anc ], [ %i.hrp, %bb.ana ], [ 0.000000e+00, %bb.anb ] ; 3 uses
  %i.hsh = getelementptr inbounds nuw i8, ptr %i.hqd, i64 1
  %i.hsi = load i8, ptr %i.hsh, align 1, !tbaa !21
  %.not417.i1326 = icmp eq i8 %i.hsi, 2
  %i.hsj = zext nneg i32 %i.hpv to i64            ; 2 uses
  %i.hsk = getelementptr inbounds nuw i8, ptr %.sink.i617.i1310, i64 %i.hsj
  %i.hsl = load i8, ptr %i.hsk, align 1, !tbaa !21
  %.not418.i1327 = icmp eq i8 %i.hsl, 2           ; 2 uses
  br i1 %.not417.i1326, label %bb.anh, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.hsm = add nsw i32 %.1396719.i1303, %.neg411.i1304
  %i.hsn = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.hso = icmp slt i32 %i.hsn, 2
  %i.hsp = load ptr, ptr %i.gny, align 8, !tbaa !149
  %i.hsq = load i64, ptr %i.gnz, align 8
  %i.hsr = mul i64 %i.hsq, %i.hpq
  %.sink.idx.i652.i1328 = select i1 %i.hso, i64 0, i64 %i.hsr
  %.sink.i653.i1329 = getelementptr inbounds nuw i8, ptr %i.hsp, i64 %.sink.idx.i652.i1328 ; 2 uses
  %i.hss = zext nneg i32 %i.hsm to i64
  %i.hst = getelementptr inbounds nuw [2 x i8], ptr %.sink.i653.i1329, i64 %i.hss
  %i.hsu = load i16, ptr %i.hst, align 2, !tbaa !172
  %i.hsv = zext i16 %i.hsu to i32
  %i.hsw = sext i32 %i.hpy to i64
  %i.hsx = getelementptr [2 x i8], ptr %.sink.i653.i1329, i64 %i.hsw ; 2 uses
  %i.hsy = load i16, ptr %i.hsx, align 2, !tbaa !172
  %i.hsz = zext i16 %i.hsy to i32                 ; 2 uses
  %i.hta = sub nsw i32 %i.hsv, %i.hsz
  %i.htb = call i32 @llvm.abs.i32(i32 %i.hta, i1 true) ; 2 uses
  br i1 %.not418.i1327, label %bb.ang, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  %i.htc = getelementptr i8, ptr %i.hsx, i64 -2
  %i.htd = load i16, ptr %i.htc, align 2, !tbaa !172
  %i.hte = zext i16 %i.htd to i32
  %i.htf = sub nsw i32 %i.hsz, %i.hte
  %i.htg = call i32 @llvm.abs.i32(i32 %i.htf, i1 true)
  %i.hth = add nuw nsw i32 %i.htg, %i.htb
  %i.hti = uitofp nneg i32 %i.hth to float
  br label %bb.anj

bb.ang:                                           ; preds = %bb.ane
  %i.htj = uitofp nneg i32 %i.htb to float
  %i.htk = fmul nnan float %i.htj, 2.000000e+00
  br label %bb.anj

bb.anh:                                           ; preds = %bb.and
  br i1 %.not418.i1327, label %bb.anj, label %bb.ani

bb.ani:                                           ; preds = %bb.anh
  %i.htl = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.htm = icmp slt i32 %i.htl, 2
  %i.htn = load ptr, ptr %i.gny, align 8, !tbaa !149
  %i.hto = load i64, ptr %i.gnz, align 8
  %i.htp = mul i64 %i.hto, %i.hpq
  %.sink.idx.i658.i1334 = select i1 %i.htm, i64 0, i64 %i.htp
  %.sink.i659.i1335 = getelementptr inbounds nuw i8, ptr %i.htn, i64 %.sink.idx.i658.i1334
  %i.htq = sext i32 %i.hpy to i64
  %i.htr = getelementptr [2 x i8], ptr %.sink.i659.i1335, i64 %i.htq ; 2 uses
  %i.hts = load i16, ptr %i.htr, align 2, !tbaa !172
  %i.htt = zext i16 %i.hts to i32
  %i.htu = getelementptr i8, ptr %i.htr, i64 -2
  %i.htv = load i16, ptr %i.htu, align 2, !tbaa !172
  %i.htw = zext i16 %i.htv to i32
  %i.htx = sub nsw i32 %i.htt, %i.htw
  %i.hty = call i32 @llvm.abs.i32(i32 %i.htx, i1 true)
  %i.htz = uitofp nneg i32 %i.hty to float
  %i.hua = fmul nnan float %i.htz, 2.000000e+00
  br label %bb.anj

bb.anj:                                           ; preds = %bb.ani, %bb.anh, %bb.ang, %bb.anf
  %.sroa.12.0.i1330 = phi float [ %i.hti, %bb.anf ], [ %i.hua, %bb.ani ], [ %i.htk, %bb.ang ], [ 0.000000e+00, %bb.anh ] ; 3 uses
  %i.hub = fneg float %.sroa.0668.0.i1325
  %i.huc = fmul float %.sroa.12.0.i1330, %i.hpg
  %i.hud = call noundef float @llvm.fmuladd.f32(float %i.hqj, float %i.hub, float %i.huc) ; 2 uses
  %i.hue = call float @llvm.fabs.f32(float %i.hud)
  %i.huf = fpext float %i.hue to double
  %i.hug = fcmp ugt double %i.huf, 1.000000e-02
  br i1 %i.hug, label %bb.ank, label %bb.anl

bb.ank:                                           ; preds = %bb.anj
  %i.huh = fmul float %.sroa.12.0.i1330, %.sroa.12.0.i1330
  %i.hui = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i1325, float %.sroa.0668.0.i1325, float %i.huh)
  %i.huj = fmul float %i.hqk, %i.hui
  %i.huk = call noundef float @sqrtf(float noundef %i.huj) #20
  %i.hul = fdiv float %i.hud, %i.huk
  %i.hum = call float @llvm.fabs.f32(float %i.hul)
  br label %bb.anl

bb.anl:                                           ; preds = %bb.ank, %bb.anj
  %.0.i1331 = phi float [ %i.hum, %bb.ank ], [ f0x358637BD, %bb.anj ]
  %i.hun = fmul float %i.hqm, %.0.i1331           ; 2 uses
  %i.huo = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.hup = icmp slt i32 %i.huo, 2
  %i.huq = load ptr, ptr %i.gny, align 8, !tbaa !149
  %i.hur = load i64, ptr %i.gnz, align 8
  %i.hus = mul i64 %i.hur, %i.hpk
  %.sink.idx.i662.i1332 = select i1 %i.hup, i64 0, i64 %i.hus
  %.sink.i663.i1333 = getelementptr inbounds nuw i8, ptr %i.huq, i64 %.sink.idx.i662.i1332
  %i.hut = getelementptr inbounds nuw [2 x i8], ptr %.sink.i663.i1333, i64 %i.hsj
  %i.huu = load i16, ptr %i.hut, align 2, !tbaa !172
  %i.huv = uitofp i16 %i.huu to float
  %i.huw = call float @llvm.fmuladd.f32(float %i.hun, float %i.huv, float %.1388721.i1302)
  %i.hux = fadd float %.1722.i1301, %i.hun
  br label %bb.anm

bb.anm:                                           ; preds = %bb.anl, %bb.amw, %bb.amv, %.lr.ph.split.split.i1300
  %.2389.i1306 = phi float [ %i.huw, %bb.anl ], [ %.1388721.i1302, %bb.amw ], [ %.1388721.i1302, %bb.amv ], [ %.1388721.i1302, %.lr.ph.split.split.i1300 ] ; 2 uses
  %.2.i1307 = phi float [ %i.hux, %bb.anl ], [ %.1722.i1301, %bb.amw ], [ %.1722.i1301, %bb.amv ], [ %.1722.i1301, %.lr.ph.split.split.i1300 ] ; 2 uses
  %i.huy = add nsw i32 %.1396719.i1303, 1
  %.not410.not.i1308 = icmp slt i32 %.1396719.i1303, %i.hop
  br i1 %.not410.not.i1308, label %.lr.ph.split.split.i1300, label %._crit_edge.i1289, !llvm.loop !134

._crit_edge.i1289:                                ; preds = %bb.anm, %.lr.ph.split.i1298, %.lr.ph.i1284
  %.us-phi.i1290 = phi float [ %.0387739.i1286, %.lr.ph.i1284 ], [ %.0387739.i1286, %.lr.ph.split.i1298 ], [ %.2389.i1306, %bb.anm ] ; 2 uses
  %.us-phi724.i1291 = phi float [ %.0386740.i1285, %.lr.ph.i1284 ], [ %.0386740.i1285, %.lr.ph.split.i1298 ], [ %.2.i1307, %bb.anm ] ; 2 uses
  %.not409.i1292 = icmp sgt i32 %i.hpi, %i.hom
  br i1 %.not409.i1292, label %._crit_edge742.loopexit776.i1293, label %.lr.ph.i1284, !llvm.loop !135

._crit_edge742.loopexit776.i1293:                 ; preds = %._crit_edge.i1289
  %i.huz = fpext float %.us-phi.i1290 to double
  %i.hva = fpext float %.us-phi724.i1291 to double
  %i.hvb = fdiv double %i.huz, %i.hva
  %i.hvc = insertelement <2 x double> poison, double %i.hvb, i64 0
  %i.hvd = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.hvc)
  %i.hve = call i32 @llvm.smax.i32(i32 %i.hvd, i32 0)
  %i.hvf = call i32 @llvm.umin.i32(i32 %i.hve, i32 65535)
  %i.hvg = trunc nuw i32 %i.hvf to i16
  %i.hvh = load i32, ptr %i.gnx, align 4, !tbaa !148
  %i.hvi = icmp slt i32 %i.hvh, 2
  %i.hvj = load ptr, ptr %i.gny, align 8, !tbaa !149
  %i.hvk = load i64, ptr %i.gnz, align 8
  %i.hvl = mul i64 %i.hvk, %i.hkk
  %.sink.idx.i664.i1294 = select i1 %i.hvi, i64 0, i64 %i.hvl
  %.sink.i665.i1295 = getelementptr inbounds nuw i8, ptr %i.hvj, i64 %.sink.idx.i664.i1294
  %i.hvm = getelementptr inbounds nuw [2 x i8], ptr %.sink.i665.i1295, i64 %i.hkq
  store i16 %i.hvg, ptr %i.hvm, align 2, !tbaa !172
  %i.hvn = load i64, ptr %i.gnq, align 8
  %i.hvo = mul i64 %i.hvn, %i.hjy
  %.sink.idx.i666.i1296 = select i1 %i.hjv, i64 0, i64 %i.hvo
  %.sink.i667.i1297 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.sink.idx.i666.i1296
  %i.hvp = getelementptr inbounds nuw i8, ptr %.sink.i667.i1297, i64 %i.hka
  store i8 1, ptr %i.hvp, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store float %i.hok, ptr %7, align 4, !tbaa !50
  store i32 %.5407.fr.i1248, ptr %i.goa, align 4, !tbaa !169
  store i32 %.5.i1247, ptr %i.gob, align 4, !tbaa !170
  %i.hvq = load i32, ptr %i.god, align 8, !tbaa !162
  store i32 %i.hvq, ptr %i.goc, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %.noexc1517 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1517:                                       ; preds = %._crit_edge742.loopexit776.i1293
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.hvr = load i32, ptr %i.god, align 8, !tbaa !162
  %i.hvs = add nsw i32 %i.hvr, 1
  store i32 %i.hvs, ptr %i.god, align 8, !tbaa !162
  br label %bb.ann

bb.ann:                                           ; preds = %.noexc1517, %bb.aln, %bb.alm, %bb.all, %bb.alk
  %i.hvt = add nuw nsw i32 %.1394747.i1245, 1     ; 2 uses
  %exitcond.not.i1251 = icmp eq i32 %i.hvt, 4
  br i1 %exitcond.not.i1251, label %.loopexit715.i1252, label %bb.alg, !llvm.loop !136

bb.ano:                                           ; preds = %bb.ach
  %i.hvu = lshr i32 %i.fet, 5
  %i.hvv = and i32 %i.hvu, 127
  switch i32 %i.hvv, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit [
    i32 2, label %.preheader714.i1621
    i32 0, label %.preheader716.i1518
  ]

.preheader716.i1518:                              ; preds = %bb.ano
  %i.hvw = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.hvx = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.hvy = load ptr, ptr %i.hvw, align 8, !tbaa !47
  %.not710748.i1519 = icmp eq ptr %i.hvx, %i.hvy
  br i1 %.not710748.i1519, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %.lr.ph749.i1520

.lr.ph749.i1520:                                  ; preds = %.preheader716.i1518
  %i.hvz = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %i.hwa = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.hwb = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 4 uses
  %i.hwc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hwd = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.hwe = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.hwf = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.hwg = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.hwh = mul nuw nsw i32 %i.di, %i.di
  %i.hwi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.hwj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.hwk = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.hwl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.hwm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hwn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.hwo = getelementptr inbounds nuw i8, ptr %i.mc, i64 32 ; 3 uses
  br label %bb.aqv

.preheader714.i1621:                              ; preds = %bb.ano
  %i.hwp = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.hwq = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.hwr = load ptr, ptr %i.hwp, align 8, !tbaa !47
  %.not711768.i1622 = icmp eq ptr %i.hwq, %i.hwr
  br i1 %.not711768.i1622, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %.lr.ph769.i1623

.lr.ph769.i1623:                                  ; preds = %.preheader714.i1621
  %i.hws = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.hwt = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  %i.hwu = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 4 uses
  %i.hwv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hww = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.hwx = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.hwy = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.hwz = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.hxa = mul nuw nsw i32 %i.di, %i.di
  %i.hxb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.hxc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.hxd = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.hxe = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hxf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hxg = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.hxh = getelementptr inbounds nuw i8, ptr %i.mc, i64 32 ; 3 uses
  br label %bb.anp

.loopexit713.i1633:                               ; preds = %bb.aqu
  %i.hxi = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.hxj = load ptr, ptr %i.hwp, align 8, !tbaa !47
  %.not711.i1634 = icmp eq ptr %i.hxi, %i.hxj
  br i1 %.not711.i1634, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.anp, !llvm.loop !137

bb.anp:                                           ; preds = %.loopexit713.i1633, %.lr.ph769.i1623
  %i.hxk = phi ptr [ %i.hwq, %.lr.ph769.i1623 ], [ %i.hxi, %.loopexit713.i1633 ] ; 2 uses
  %i.hxl = getelementptr inbounds nuw i8, ptr %i.hxk, i64 4
  %i.hxm = load i32, ptr %i.hxl, align 4, !tbaa !169 ; 5 uses
  %i.hxn = getelementptr inbounds nuw i8, ptr %i.hxk, i64 8
  %i.hxo = load i32, ptr %i.hxn, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.mc)
          to label %.noexc1792 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1792:                                       ; preds = %bb.anp
  %i.hxp = load i32, ptr %i.hws, align 4, !tbaa !148
  %i.hxq = icmp slt i32 %i.hxp, 2
  %i.hxr = load ptr, ptr %i.hwt, align 8, !tbaa !149
  %i.hxs = load i64, ptr %i.hwu, align 8
  %i.hxt = sext i32 %i.hxm to i64
  %i.hxu = mul i64 %i.hxs, %i.hxt
  %.sink.idx.i.i1624 = select i1 %i.hxq, i64 0, i64 %i.hxu
  %.sink.i.i1625 = getelementptr inbounds nuw i8, ptr %i.hxr, i64 %.sink.idx.i.i1624
  %i.hxv = sext i32 %i.hxo to i64
  %i.hxw = getelementptr inbounds i8, ptr %.sink.i.i1625, i64 %i.hxv
  store i8 0, ptr %i.hxw, align 1, !tbaa !21
  %i.hxx = add nsw i32 %i.hxo, 1
  %i.hxy = add nsw i32 %i.hxm, 1
  %i.hxz = add nsw i32 %i.hxo, -1
  %i.hya = add nsw i32 %i.hxm, -1
  br label %bb.anq

bb.anq:                                           ; preds = %bb.aqu, %.noexc1792
  %.0393767.i1626 = phi i32 [ 0, %.noexc1792 ], [ %i.irh, %bb.aqu ] ; 2 uses
  switch i32 %.0393767.i1626, label %default.unreachable.i1791 [
    i32 0, label %bb.anu
    i32 1, label %bb.anr
    i32 2, label %bb.ans
    i32 3, label %bb.ant
  ]

bb.anr:                                           ; preds = %bb.anq
  br label %bb.anu

bb.ans:                                           ; preds = %bb.anq
  br label %bb.anu

bb.ant:                                           ; preds = %bb.anq
  br label %bb.anu

default.unreachable.i1791:                        ; preds = %bb.anq
  unreachable

bb.anu:                                           ; preds = %bb.ant, %bb.ans, %bb.anr, %bb.anq
  %.2404.i1627 = phi i32 [ %i.hxm, %bb.ant ], [ %i.hxm, %bb.anr ], [ %i.hxy, %bb.ans ], [ %i.hya, %bb.anq ]
  %.2401.i1628 = phi i32 [ %i.hxx, %bb.ant ], [ %i.hxz, %bb.anr ], [ %i.hxo, %bb.ans ], [ %i.hxo, %bb.anq ] ; 9 uses
  %.2404.fr.i1629 = freeze i32 %.2404.i1627       ; 9 uses
  %i.hyb = icmp sgt i32 %.2404.fr.i1629, 0
  %i.hyc = icmp sgt i32 %.2401.i1628, 0
  %or.cond.i1630.not1860 = select i1 %i.hyb, i1 %i.hyc, i1 false
end_hunk_3
begin_hunk_4_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.icn = fadd double %i.ibe, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662

bb.apc:                                           ; preds = %bb.apa
  %i.ico = fadd double %i.ica, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662: ; preds = %bb.apc, %bb.apb, %bb.aoz, %bb.aoy, %bb.aox
  %.0.i505.i1663 = phi double [ %i.icf, %bb.aox ], [ %i.icl, %bb.aoy ], [ %i.icm, %bb.aoz ], [ %i.icn, %bb.apb ], [ %i.ico, %bb.apc ]
  %i.icp = fptrunc double %.0.i505.i1663 to float ; 2 uses
  %i.icq = fcmp ogt float %i.iaa, %i.iaz
  %i.icr = select i1 %i.icq, float %i.iaz, float %i.iaa ; 2 uses
  %i.ics = fcmp ogt float %i.iby, %i.icp
  %i.ict = select i1 %i.ics, float %i.icp, float %i.iby ; 2 uses
  %i.icu = fcmp ogt float %i.icr, %i.ict
  %i.icv = select i1 %i.icu, float %i.ict, float %i.icr ; 2 uses
  %i.icw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1641, i64 %i.hyl
  store float %i.icv, ptr %i.icw, align 4, !tbaa !46
  %i.icx = add nuw nsw i32 %.2404.fr.i1629, %i.di
  %i.icy = sub nsw i32 %.2404.fr.i1629, %i.di
  %i.icz = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.ida = add nsw i32 %i.icz, -2
  %i.idb = add nsw i32 %i.icz, -1
  %i.idc = add nuw nsw i32 %.2401.i1628, %i.di
  %i.idd = sub nsw i32 %.2401.i1628, %i.di
  %i.ide = load i32, ptr %i.el, align 4, !tbaa !145 ; 2 uses
  %i.idf = add nsw i32 %i.ide, -2
  %i.idg = add nsw i32 %i.ide, -1
  %i.idh = sext i32 %i.idd to i64
  %i.idi = sext i32 %i.idg to i64
  %i.idj = zext nneg i32 %i.idc to i64
  %sext.i1664 = sext i32 %i.idf to i64
  %i.idk = load i64, ptr %i.hwu, align 8          ; 3 uses
  br label %.lr.ph756.i1665

.preheader712.loopexit.i1682:                     ; preds = %._crit_edge757.i1674
  %i.idl = fpext float %.sroa.0789.4.i1675 to double
  %i.idm = fpext float %.sroa.0.4.i1680 to double
  %i.idn = fdiv double %i.idl, %i.idm
  %i.ido = fpext float %.sroa.6791.4.i1676 to double
  %i.idp = fpext float %.sroa.6.4.i1679 to double
  %i.idq = fdiv double %i.ido, %i.idp
  %i.idr = fpext float %.sroa.9793.4.i1677 to double
  %i.ids = fpext float %.sroa.9.4.i1678 to double
  %i.idt = fdiv double %i.idr, %i.ids
  %i.idu = insertelement <2 x double> poison, double %i.idn, i64 0
  %i.idv = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.idu)
  %i.idw = call i32 @llvm.smax.i32(i32 %i.idv, i32 0)
  %i.idx = call i32 @llvm.umin.i32(i32 %i.idw, i32 255)
  %i.idy = trunc nuw i32 %i.idx to i8
  %i.idz = load i32, ptr %i.hxb, align 4, !tbaa !148
  %i.iea = icmp slt i32 %i.idz, 2
  %i.ieb = load ptr, ptr %i.hxc, align 8, !tbaa !149
  %i.iec = load i64, ptr %i.hxd, align 8
  %i.ied = mul i64 %i.iec, %i.hyv
  %.sink.idx.i557.i1683 = select i1 %i.iea, i64 0, i64 %i.ied
  %.sink.i558.i1684 = getelementptr inbounds nuw i8, ptr %i.ieb, i64 %.sink.idx.i557.i1683
  %i.iee = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1684, i64 %i.hzb
  store i8 %i.idy, ptr %i.iee, align 1, !tbaa !21
  %i.ief = insertelement <2 x double> poison, double %i.idq, i64 0
  %i.ieg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ief)
  %i.ieh = call i32 @llvm.smax.i32(i32 %i.ieg, i32 0)
  %i.iei = call i32 @llvm.umin.i32(i32 %i.ieh, i32 255)
  %i.iej = trunc nuw i32 %i.iei to i8
  %i.iek = load i32, ptr %i.hxb, align 4, !tbaa !148
  %i.iel = icmp slt i32 %i.iek, 2
  %i.iem = load ptr, ptr %i.hxc, align 8, !tbaa !149
  %i.ien = load i64, ptr %i.hxd, align 8
  %i.ieo = mul i64 %i.ien, %i.hyv
  %.sink.idx.i557.1.i1685 = select i1 %i.iel, i64 0, i64 %i.ieo
  %.sink.i558.1.i1686 = getelementptr inbounds nuw i8, ptr %i.iem, i64 %.sink.idx.i557.1.i1685
  %i.iep = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1686, i64 %i.hzb
  %i.ieq = getelementptr inbounds nuw i8, ptr %i.iep, i64 1
  store i8 %i.iej, ptr %i.ieq, align 1, !tbaa !21
  %i.ier = insertelement <2 x double> poison, double %i.idt, i64 0
  %i.ies = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ier)
  %i.iet = call i32 @llvm.smax.i32(i32 %i.ies, i32 0)
  %i.ieu = call i32 @llvm.umin.i32(i32 %i.iet, i32 255)
  %i.iev = trunc nuw i32 %i.ieu to i8
  %i.iew = load i32, ptr %i.hxb, align 4, !tbaa !148
  %i.iex = icmp slt i32 %i.iew, 2
  %i.iey = load ptr, ptr %i.hxc, align 8, !tbaa !149
  %i.iez = load i64, ptr %i.hxd, align 8
  %i.ifa = mul i64 %i.iez, %i.hyv
  %.sink.idx.i557.2.i1687 = select i1 %i.iex, i64 0, i64 %i.ifa
  %.sink.i558.2.i1688 = getelementptr inbounds nuw i8, ptr %i.iey, i64 %.sink.idx.i557.2.i1687
  %i.ifb = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1688, i64 %i.hzb
  %i.ifc = getelementptr inbounds nuw i8, ptr %i.ifb, i64 2
  store i8 %i.iev, ptr %i.ifc, align 1, !tbaa !21
  %i.ifd = load i32, ptr %i.hws, align 4, !tbaa !148
  %i.ife = icmp slt i32 %i.ifd, 2
  %i.iff = load ptr, ptr %i.hwt, align 8, !tbaa !149
  %i.ifg = load i64, ptr %i.hwu, align 8
  %i.ifh = mul i64 %i.ifg, %i.hyj
  %.sink.idx.i559.i1689 = select i1 %i.ife, i64 0, i64 %i.ifh
  %.sink.i560.i1690 = getelementptr inbounds nuw i8, ptr %i.iff, i64 %.sink.idx.i559.i1689
  %i.ifi = getelementptr inbounds nuw i8, ptr %.sink.i560.i1690, i64 %i.hyl
  store i8 1, ptr %i.ifi, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store float %i.icv, ptr %6, align 4, !tbaa !50
  store i32 %.2404.fr.i1629, ptr %i.hxe, align 4, !tbaa !169
  store i32 %.2401.i1628, ptr %i.hxf, align 4, !tbaa !170
  %i.ifj = load i32, ptr %i.hxh, align 8, !tbaa !162
  store i32 %i.ifj, ptr %i.hxg, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %.noexc1793 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1793:                                       ; preds = %.preheader712.loopexit.i1682
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ifk = load i32, ptr %i.hxh, align 8, !tbaa !162
  %i.ifl = add nsw i32 %i.ifk, 1
  store i32 %i.ifl, ptr %i.hxh, align 8, !tbaa !162
  br label %bb.aqu

.lr.ph756.i1665:                                  ; preds = %._crit_edge757.i1674, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662
  %.sroa.0789.1.i1666 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.0789.4.i1675, %._crit_edge757.i1674 ] ; 3 uses
  %.sroa.6791.1.i1667 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.6791.4.i1676, %._crit_edge757.i1674 ] ; 3 uses
  %.sroa.9793.1.i1668 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.9793.4.i1677, %._crit_edge757.i1674 ] ; 3 uses
  %.sroa.9.1.i1669 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.9.4.i1678, %._crit_edge757.i1674 ] ; 3 uses
  %.sroa.6.1.i1670 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.6.4.i1679, %._crit_edge757.i1674 ] ; 3 uses
  %.sroa.0.1.i1671 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %.sroa.0.4.i1680, %._crit_edge757.i1674 ] ; 3 uses
  %.0397764.i1672 = phi i32 [ %i.icy, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1662 ], [ %i.ify, %._crit_edge757.i1674 ] ; 9 uses
  %i.ifm = add nsw i32 %.0397764.i1672, -1        ; 3 uses
  %i.ifn = icmp eq i32 %.0397764.i1672, 1
  %i.ifo = zext i1 %i.ifn to i32
  %i.ifp = add nuw nsw i32 %i.ifm, %i.ifo         ; 2 uses
  %i.ifq = icmp eq i32 %.0397764.i1672, %i.ida
  %.neg423.i1673 = sext i1 %i.ifq to i32          ; 2 uses
  %i.ifr = add i32 %i.ifm, %.neg423.i1673
  %i.ifs = icmp sgt i32 %.0397764.i1672, 0
  %i.ift = zext nneg i32 %.0397764.i1672 to i64
  %i.ifu = sub nsw i32 %.0397764.i1672, %.2404.fr.i1629 ; 3 uses
  %i.ifv = mul nsw i32 %i.ifu, %i.ifu
  %i.ifw = sitofp i32 %i.ifu to float             ; 5 uses
  %i.ifx = fmul nnan float %i.ifw, %i.ifw
  %i.ify = add i32 %.0397764.i1672, 1             ; 3 uses
  %i.ifz = zext nneg i32 %i.ify to i64
  %i.iga = sext i32 %i.ifm to i64                 ; 2 uses
  %i.igb = add nsw i32 %.0397764.i1672, %.neg423.i1673
  %i.igc = sext i32 %i.igb to i64                 ; 3 uses
  %i.igd = sext i32 %i.ifr to i64                 ; 6 uses
  %i.ige = add nsw i32 %i.ifp, -1
  %i.igf = sext i32 %i.ige to i64                 ; 6 uses
  %i.igg = sext i32 %i.ifp to i64                 ; 6 uses
  br i1 %i.ifs, label %.lr.ph756.split.i1691, label %._crit_edge757.i1674

.lr.ph756.split.i1691:                            ; preds = %.lr.ph756.i1665
  %i.igh = icmp slt i32 %.0397764.i1672, %i.idb
  %.fr762.i1692 = freeze i1 %i.igh
  br i1 %.fr762.i1692, label %.lr.ph756.split.split.i1693.preheader, label %._crit_edge757.i1674

.lr.ph756.split.split.i1693.preheader:            ; preds = %.lr.ph756.split.i1691
  %i.igi = mul i64 %i.idk, %i.ift
  %.sink.idx.i509.i1711 = select i1 %i.hyg, i64 0, i64 %i.igi
  %.sink.i510.i1712 = getelementptr inbounds nuw i8, ptr %i.hyh, i64 %.sink.idx.i509.i1711 ; 2 uses
  %i.igj = mul i64 %i.idk, %i.ifz
  %.sink.idx.i511.i1716 = select i1 %i.hyg, i64 0, i64 %i.igj
  %.sink.i512.i1717 = getelementptr inbounds nuw i8, ptr %i.hyh, i64 %.sink.idx.i511.i1716
  %i.igk = mul i64 %i.idk, %i.iga
  %.sink.idx.i513.i1721 = select i1 %i.hyg, i64 0, i64 %i.igk
  %invariant.gep = getelementptr i8, ptr %i.hyh, i64 %.sink.idx.i513.i1721
  br label %.lr.ph756.split.split.i1693

.lr.ph756.split.split.i1693:                      ; preds = %.lr.ph756.split.split.i1693.preheader, %.loopexit.i1702
  %.sroa.0789.2.i1694 = phi float [ %.sroa.0789.3.i1703, %.loopexit.i1702 ], [ %.sroa.0789.1.i1666, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %.sroa.6791.2.i1695 = phi float [ %.sroa.6791.3.i1704, %.loopexit.i1702 ], [ %.sroa.6791.1.i1667, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %.sroa.9793.2.i1696 = phi float [ %.sroa.9793.3.i1705, %.loopexit.i1702 ], [ %.sroa.9793.1.i1668, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %.sroa.9.2.i1697 = phi float [ %.sroa.9.3.i1706, %.loopexit.i1702 ], [ %.sroa.9.1.i1669, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %.sroa.6.2.i1698 = phi float [ %.sroa.6.3.i1707, %.loopexit.i1702 ], [ %.sroa.6.1.i1670, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %.sroa.0.2.i1699 = phi float [ %.sroa.0.3.i1708, %.loopexit.i1702 ], [ %.sroa.0.1.i1671, %.lr.ph756.split.split.i1693.preheader ] ; 4 uses
  %indvars.iv.i1700 = phi i64 [ %indvars.iv.next.i1709, %.loopexit.i1702 ], [ %i.idh, %.lr.ph756.split.split.i1693.preheader ] ; 12 uses
  %i.igl = add nsw i64 %indvars.iv.i1700, -1      ; 3 uses
  %i.igm = icmp eq i64 %indvars.iv.i1700, 1
  %i.ign = zext i1 %i.igm to i64
  %i.igo = add nuw nsw i64 %i.igl, %i.ign         ; 21 uses
  %i.igp = icmp eq i64 %indvars.iv.i1700, %sext.i1664
  %i.igq = icmp sgt i64 %indvars.iv.i1700, 0
  %i.igr = icmp slt i64 %indvars.iv.i1700, %i.idi
  %or.cond770.i1701 = select i1 %i.igq, i1 %i.igr, i1 false
  br i1 %or.cond770.i1701, label %bb.apd, label %.loopexit.i1702

bb.apd:                                           ; preds = %.lr.ph756.split.split.i1693
  %i.igs = getelementptr inbounds nuw i8, ptr %.sink.i510.i1712, i64 %indvars.iv.i1700 ; 2 uses
  %i.igt = load i8, ptr %i.igs, align 1, !tbaa !21
  %.not426.i1713 = icmp eq i8 %i.igt, 2
  br i1 %.not426.i1713, label %.loopexit.i1702, label %bb.ape

bb.ape:                                           ; preds = %bb.apd
  %i.igu = trunc nuw nsw i64 %indvars.iv.i1700 to i32
  %i.igv = sub nsw i32 %i.igu, %.2401.i1628       ; 3 uses
  %i.igw = mul nsw i32 %i.igv, %i.igv
  %i.igx = add nuw nsw i32 %i.igw, %i.ifv
  %.not427.i1714 = icmp samesign ugt i32 %i.igx, %i.hxa
  br i1 %.not427.i1714, label %.loopexit.i1702, label %.preheader.i1715

.preheader.i1715:                                 ; preds = %bb.ape
  %i.igy = sitofp i32 %i.igv to float             ; 5 uses
  %i.igz = call noundef float @llvm.fmuladd.f32(float %i.igy, float %i.igy, float %i.ifx) ; 5 uses
  %i.iha = call nnan float @llvm.fmuladd.f32(float %i.igz, float %i.igz, float 1.000000e+00)
  %i.ihb = fdiv nnan float 1.000000e+00, %i.iha   ; 3 uses
  %i.ihc = getelementptr inbounds nuw i8, ptr %.sink.i512.i1717, i64 %indvars.iv.i1700 ; 3 uses
  %i.ihd = getelementptr inbounds nuw i8, ptr %i.igs, i64 1 ; 3 uses
  %i.ihe = load i32, ptr %i.hxb, align 4, !tbaa !148
  %i.ihf = icmp slt i32 %i.ihe, 2                 ; 22 uses
  %i.ihg = load ptr, ptr %i.hxc, align 8, !tbaa !149 ; 22 uses
  %i.ihh = load i64, ptr %i.hxd, align 8          ; 22 uses
  %i.ihi = mul i64 %i.ihh, %i.iga
  %.sink.idx.i555.i1719 = select i1 %i.ihf, i64 0, i64 %i.ihi
  %.sink.i556.i1720 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i555.i1719
  %i.ihj = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1720, i64 %i.igl ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i1700 ; 3 uses
  %i.ihk = getelementptr inbounds i8, ptr %.sink.i510.i1712, i64 %i.igl ; 3 uses
  %i.ihl = sext i1 %i.igp to i64
  %i.ihm = add nsw i64 %indvars.iv.i1700, %i.ihl  ; 3 uses
  %100 = load i8, ptr %i.ihc, align 1, !tbaa !21  ; 2 uses
  %.not428.i1723 = icmp eq i8 %100, 2
  %i.ihn = load i8, ptr %gep, align 1, !tbaa !21  ; 2 uses
  %.not429.i1724 = icmp eq i8 %i.ihn, 2           ; 2 uses
  br i1 %.not428.i1723, label %bb.api, label %bb.apf

bb.apf:                                           ; preds = %.preheader.i1715
  %i.iho = mul i64 %i.ihh, %i.igc
  %.sink.idx.i523.i1725 = select i1 %i.ihf, i64 0, i64 %i.iho
  %.sink.i524.i1726 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i523.i1725
  %i.ihp = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1726, i64 %i.igo
  %i.ihq = load i8, ptr %i.ihp, align 1, !tbaa !21
  %i.ihr = zext i8 %i.ihq to i32
  %i.ihs = mul i64 %i.ihh, %i.igd
  %.sink.idx.i525.i1727 = select i1 %i.ihf, i64 0, i64 %i.ihs
  %.sink.i526.i1728 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i525.i1727
  %i.iht = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1728, i64 %i.igo
  %i.ihu = load i8, ptr %i.iht, align 1, !tbaa !21
  %i.ihv = zext i8 %i.ihu to i32                  ; 2 uses
  %i.ihw = sub nsw i32 %i.ihr, %i.ihv
  %i.ihx = call i32 @llvm.abs.i32(i32 %i.ihw, i1 true) ; 2 uses
  br i1 %.not429.i1724, label %bb.aph, label %bb.apg

bb.apg:                                           ; preds = %bb.apf
  %i.ihy = mul i64 %i.ihh, %i.igf
  %.sink.idx.i521.i1729 = select i1 %i.ihf, i64 0, i64 %i.ihy
  %.sink.i522.i1730 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i521.i1729
  %i.ihz = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1730, i64 %i.igo
  %i.iia = load i8, ptr %i.ihz, align 1, !tbaa !21
  %i.iib = zext i8 %i.iia to i32
  %i.iic = sub nsw i32 %i.ihv, %i.iib
  %i.iid = call i32 @llvm.abs.i32(i32 %i.iic, i1 true)
  %i.iie = add nuw nsw i32 %i.iid, %i.ihx
  %i.iif = uitofp nneg i32 %i.iie to float
  br label %bb.apk

bb.aph:                                           ; preds = %bb.apf
  %i.iig = uitofp nneg i32 %i.ihx to float
  %i.iih = fmul nnan float %i.iig, 2.000000e+00
  br label %bb.apk

bb.api:                                           ; preds = %.preheader.i1715
  br i1 %.not429.i1724, label %bb.apk, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.iii = mul i64 %i.ihh, %i.igd
  %.sink.idx.i529.i1785 = select i1 %i.ihf, i64 0, i64 %i.iii
  %.sink.i530.i1786 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i529.i1785
  %i.iij = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1786, i64 %i.igo
  %i.iik = load i8, ptr %i.iij, align 1, !tbaa !21
  %i.iil = zext i8 %i.iik to i32
  %i.iim = mul i64 %i.ihh, %i.igf
  %.sink.idx.i531.i1787 = select i1 %i.ihf, i64 0, i64 %i.iim
  %.sink.i532.i1788 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i531.i1787
  %i.iin = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1788, i64 %i.igo
  %i.iio = load i8, ptr %i.iin, align 1, !tbaa !21
  %i.iip = zext i8 %i.iio to i32
  %i.iiq = sub nsw i32 %i.iil, %i.iip
  %i.iir = call i32 @llvm.abs.i32(i32 %i.iiq, i1 true)
  %i.iis = uitofp nneg i32 %i.iir to float
  %i.iit = fmul nnan float %i.iis, 2.000000e+00
  br label %bb.apk

bb.apk:                                           ; preds = %bb.apj, %bb.api, %bb.aph, %bb.apg
  %.sroa.0671.0.i1731 = phi float [ %i.iif, %bb.apg ], [ %i.iit, %bb.apj ], [ %i.iih, %bb.aph ], [ 0.000000e+00, %bb.api ] ; 3 uses
  %101 = load i8, ptr %i.ihd, align 1, !tbaa !21
  %.not431.i1732 = icmp eq i8 %101, 2
  %i.iiu = load i8, ptr %i.ihk, align 1, !tbaa !21
  %.not432.i1733 = icmp eq i8 %i.iiu, 2           ; 2 uses
  br i1 %.not431.i1732, label %bb.apo, label %bb.apl

bb.apl:                                           ; preds = %bb.apk
  %i.iiv = mul i64 %i.ihh, %i.igg
  %.sink.idx.i545.i1734 = select i1 %i.ihf, i64 0, i64 %i.iiv
  %.sink.i546.i1735 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i545.i1734 ; 2 uses
  %i.iiw = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1735, i64 %i.ihm
  %i.iix = load i8, ptr %i.iiw, align 1, !tbaa !21
  %i.iiy = zext i8 %i.iix to i32
  %i.iiz = getelementptr [3 x i8], ptr %.sink.i546.i1735, i64 %i.igo ; 2 uses
  %i.ija = load i8, ptr %i.iiz, align 1, !tbaa !21
  %i.ijb = zext i8 %i.ija to i32                  ; 2 uses
  %i.ijc = sub nsw i32 %i.iiy, %i.ijb
  %i.ijd = call i32 @llvm.abs.i32(i32 %i.ijc, i1 true) ; 2 uses
  br i1 %.not432.i1733, label %bb.apn, label %bb.apm

bb.apm:                                           ; preds = %bb.apl
  %i.ije = getelementptr i8, ptr %i.iiz, i64 -3
  %i.ijf = load i8, ptr %i.ije, align 1, !tbaa !21
  %i.ijg = zext i8 %i.ijf to i32
  %i.ijh = sub nsw i32 %i.ijb, %i.ijg
  %i.iji = call i32 @llvm.abs.i32(i32 %i.ijh, i1 true)
  %i.ijj = add nuw nsw i32 %i.iji, %i.ijd
  %i.ijk = uitofp nneg i32 %i.ijj to float
  br label %bb.apq

bb.apn:                                           ; preds = %bb.apl
  %i.ijl = uitofp nneg i32 %i.ijd to float
  %i.ijm = fmul nnan float %i.ijl, 2.000000e+00
  br label %bb.apq

bb.apo:                                           ; preds = %bb.apk
  br i1 %.not432.i1733, label %bb.apq, label %bb.app

bb.app:                                           ; preds = %bb.apo
  %i.ijn = mul i64 %i.ihh, %i.igg
  %.sink.idx.i551.i1783 = select i1 %i.ihf, i64 0, i64 %i.ijn
  %.sink.i552.i1784 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i551.i1783
  %i.ijo = getelementptr [3 x i8], ptr %.sink.i552.i1784, i64 %i.igo ; 2 uses
  %i.ijp = load i8, ptr %i.ijo, align 1, !tbaa !21
  %i.ijq = zext i8 %i.ijp to i32
  %i.ijr = getelementptr i8, ptr %i.ijo, i64 -3
  %i.ijs = load i8, ptr %i.ijr, align 1, !tbaa !21
  %i.ijt = zext i8 %i.ijs to i32
  %i.iju = sub nsw i32 %i.ijq, %i.ijt
  %i.ijv = call i32 @llvm.abs.i32(i32 %i.iju, i1 true)
  %i.ijw = uitofp nneg i32 %i.ijv to float
  %i.ijx = fmul nnan float %i.ijw, 2.000000e+00
  br label %bb.apq

bb.apq:                                           ; preds = %bb.app, %bb.apo, %bb.apn, %bb.apm
  %.sroa.12672.0.i1736 = phi float [ %i.ijk, %bb.apm ], [ %i.ijx, %bb.app ], [ %i.ijm, %bb.apn ], [ 0.000000e+00, %bb.apo ] ; 3 uses
  %i.ijy = fneg float %.sroa.0671.0.i1731
  %i.ijz = fmul float %.sroa.12672.0.i1736, %i.ifw
  %i.ika = call noundef float @llvm.fmuladd.f32(float %i.igy, float %i.ijy, float %i.ijz) ; 2 uses
  %i.ikb = call float @llvm.fabs.f32(float %i.ika)
  %i.ikc = fpext float %i.ikb to double
  %i.ikd = fcmp ugt double %i.ikc, 1.000000e-02
  br i1 %i.ikd, label %bb.apr, label %bb.aps

bb.apr:                                           ; preds = %bb.apq
  %i.ike = fmul float %.sroa.12672.0.i1736, %.sroa.12672.0.i1736
  %i.ikf = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1731, float %.sroa.0671.0.i1731, float %i.ike)
  %i.ikg = fmul float %i.igz, %i.ikf
  %i.ikh = call noundef float @sqrtf(float noundef %i.ikg) #20
  %i.iki = fdiv float %i.ika, %i.ikh
  %i.ikj = call float @llvm.fabs.f32(float %i.iki)
  %.pre798.i1782 = load i8, ptr %i.ihc, align 1, !tbaa !21
  %.pre2115 = load i8, ptr %gep, align 1, !tbaa !21
  br label %bb.aps

bb.aps:                                           ; preds = %bb.apr, %bb.apq
  %102 = phi i8 [ %.pre2115, %bb.apr ], [ %i.ihn, %bb.apq ] ; 2 uses
  %103 = phi i8 [ %.pre798.i1782, %bb.apr ], [ %100, %bb.apq ] ; 2 uses
  %.0390.i1737 = phi float [ %i.ikj, %bb.apr ], [ f0x358637BD, %bb.apq ]
  %i.ikk = fmul float %i.ihb, %.0390.i1737        ; 2 uses
  %i.ikl = load i8, ptr %i.ihj, align 1, !tbaa !21
  %i.ikm = uitofp i8 %i.ikl to float
  %i.ikn = call float @llvm.fmuladd.f32(float %i.ikk, float %i.ikm, float %.sroa.0789.2.i1694)
  %i.iko = fadd float %.sroa.0.2.i1699, %i.ikk
  %.not428.1.i1738 = icmp eq i8 %103, 2
  %.not429.1.i1739 = icmp eq i8 %102, 2           ; 2 uses
  br i1 %.not428.1.i1738, label %bb.apw, label %bb.apt

bb.apt:                                           ; preds = %bb.aps
  %i.ikp = mul i64 %i.ihh, %i.igc
  %.sink.idx.i523.1.i1740 = select i1 %i.ihf, i64 0, i64 %i.ikp
  %.sink.i524.1.i1741 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i523.1.i1740
  %i.ikq = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1741, i64 %i.igo
  %i.ikr = getelementptr inbounds nuw i8, ptr %i.ikq, i64 1
  %i.iks = load i8, ptr %i.ikr, align 1, !tbaa !21
  %i.ikt = zext i8 %i.iks to i32
  %i.iku = mul i64 %i.ihh, %i.igd
  %.sink.idx.i525.1.i1742 = select i1 %i.ihf, i64 0, i64 %i.iku
  %.sink.i526.1.i1743 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i525.1.i1742
  %i.ikv = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i1743, i64 %i.igo
  %i.ikw = getelementptr inbounds nuw i8, ptr %i.ikv, i64 1
  %i.ikx = load i8, ptr %i.ikw, align 1, !tbaa !21
  %i.iky = zext i8 %i.ikx to i32                  ; 2 uses
  %i.ikz = sub nsw i32 %i.ikt, %i.iky
  %i.ila = call i32 @llvm.abs.i32(i32 %i.ikz, i1 true) ; 2 uses
  br i1 %.not429.1.i1739, label %bb.apv, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %i.ilb = mul i64 %i.ihh, %i.igf
  %.sink.idx.i521.1.i1744 = select i1 %i.ihf, i64 0, i64 %i.ilb
  %.sink.i522.1.i1745 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i521.1.i1744
  %i.ilc = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i1745, i64 %i.igo
  %i.ild = getelementptr inbounds nuw i8, ptr %i.ilc, i64 1
  %i.ile = load i8, ptr %i.ild, align 1, !tbaa !21
  %i.ilf = zext i8 %i.ile to i32
  %i.ilg = sub nsw i32 %i.iky, %i.ilf
  %i.ilh = call i32 @llvm.abs.i32(i32 %i.ilg, i1 true)
  %i.ili = add nuw nsw i32 %i.ilh, %i.ila
  %i.ilj = uitofp nneg i32 %i.ili to float
  br label %bb.apy

bb.apv:                                           ; preds = %bb.apt
  %i.ilk = uitofp nneg i32 %i.ila to float
  %i.ill = fmul nnan float %i.ilk, 2.000000e+00
  br label %bb.apy

bb.apw:                                           ; preds = %bb.aps
  br i1 %.not429.1.i1739, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %i.ilm = mul i64 %i.ihh, %i.igd
  %.sink.idx.i529.1.i1778 = select i1 %i.ihf, i64 0, i64 %i.ilm
  %.sink.i530.1.i1779 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i529.1.i1778
  %i.iln = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i1779, i64 %i.igo
  %i.ilo = getelementptr inbounds nuw i8, ptr %i.iln, i64 1
  %i.ilp = load i8, ptr %i.ilo, align 1, !tbaa !21
  %i.ilq = zext i8 %i.ilp to i32
  %i.ilr = mul i64 %i.ihh, %i.igf
  %.sink.idx.i531.1.i1780 = select i1 %i.ihf, i64 0, i64 %i.ilr
  %.sink.i532.1.i1781 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i531.1.i1780
  %i.ils = getelementptr inbounds [3 x i8], ptr %.sink.i532.1.i1781, i64 %i.igo
  %i.ilt = getelementptr inbounds nuw i8, ptr %i.ils, i64 1
  %i.ilu = load i8, ptr %i.ilt, align 1, !tbaa !21
  %i.ilv = zext i8 %i.ilu to i32
  %i.ilw = sub nsw i32 %i.ilq, %i.ilv
  %i.ilx = call i32 @llvm.abs.i32(i32 %i.ilw, i1 true)
  %i.ily = uitofp nneg i32 %i.ilx to float
  %i.ilz = fmul nnan float %i.ily, 2.000000e+00
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %bb.apw, %bb.apv, %bb.apu
  %.sroa.0671.0.1.i1746 = phi float [ %i.ilj, %bb.apu ], [ %i.ilz, %bb.apx ], [ %i.ill, %bb.apv ], [ 0.000000e+00, %bb.apw ] ; 3 uses
  %104 = load i8, ptr %i.ihd, align 1, !tbaa !21
  %.not431.1.i1747 = icmp eq i8 %104, 2
  %105 = load i8, ptr %i.ihk, align 1, !tbaa !21
  %.not432.1.i1748 = icmp eq i8 %105, 2           ; 2 uses
  br i1 %.not431.1.i1747, label %bb.aqc, label %bb.apz

bb.apz:                                           ; preds = %bb.apy
  %i.ima = mul i64 %i.ihh, %i.igg
  %.sink.idx.i545.1.i1749 = select i1 %i.ihf, i64 0, i64 %i.ima
  %.sink.i546.1.i1750 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i545.1.i1749 ; 2 uses
  %i.imb = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.1.i1750, i64 %i.ihm
  %i.imc = getelementptr inbounds nuw i8, ptr %i.imb, i64 1
  %i.imd = load i8, ptr %i.imc, align 1, !tbaa !21
  %i.ime = zext i8 %i.imd to i32
  %i.imf = getelementptr [3 x i8], ptr %.sink.i546.1.i1750, i64 %i.igo ; 2 uses
  %i.img = getelementptr inbounds nuw i8, ptr %i.imf, i64 1
  %i.imh = load i8, ptr %i.img, align 1, !tbaa !21
  %i.imi = zext i8 %i.imh to i32                  ; 2 uses
  %i.imj = sub nsw i32 %i.ime, %i.imi
  %i.imk = call i32 @llvm.abs.i32(i32 %i.imj, i1 true) ; 2 uses
  br i1 %.not432.1.i1748, label %bb.aqb, label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz
  %i.iml = getelementptr i8, ptr %i.imf, i64 -2
  %i.imm = load i8, ptr %i.iml, align 1, !tbaa !21
  %i.imn = zext i8 %i.imm to i32
  %i.imo = sub nsw i32 %i.imi, %i.imn
  %i.imp = call i32 @llvm.abs.i32(i32 %i.imo, i1 true)
  %i.imq = add nuw nsw i32 %i.imp, %i.imk
  %i.imr = uitofp nneg i32 %i.imq to float
  br label %bb.aqe

bb.aqb:                                           ; preds = %bb.apz
  %i.ims = uitofp nneg i32 %i.imk to float
  %i.imt = fmul nnan float %i.ims, 2.000000e+00
  br label %bb.aqe

bb.aqc:                                           ; preds = %bb.apy
  br i1 %.not432.1.i1748, label %bb.aqe, label %bb.aqd

bb.aqd:                                           ; preds = %bb.aqc
  %i.imu = mul i64 %i.ihh, %i.igg
  %.sink.idx.i551.1.i1776 = select i1 %i.ihf, i64 0, i64 %i.imu
  %.sink.i552.1.i1777 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i551.1.i1776
  %i.imv = getelementptr [3 x i8], ptr %.sink.i552.1.i1777, i64 %i.igo ; 2 uses
  %i.imw = getelementptr inbounds nuw i8, ptr %i.imv, i64 1
  %i.imx = load i8, ptr %i.imw, align 1, !tbaa !21
  %i.imy = zext i8 %i.imx to i32
  %i.imz = getelementptr i8, ptr %i.imv, i64 -2
  %i.ina = load i8, ptr %i.imz, align 1, !tbaa !21
  %i.inb = zext i8 %i.ina to i32
  %i.inc = sub nsw i32 %i.imy, %i.inb
  %i.ind = call i32 @llvm.abs.i32(i32 %i.inc, i1 true)
  %i.ine = uitofp nneg i32 %i.ind to float
  %i.inf = fmul nnan float %i.ine, 2.000000e+00
  br label %bb.aqe

bb.aqe:                                           ; preds = %bb.aqd, %bb.aqc, %bb.aqb, %bb.aqa
  %.sroa.12672.0.1.i1751 = phi float [ %i.imr, %bb.aqa ], [ %i.inf, %bb.aqd ], [ %i.imt, %bb.aqb ], [ 0.000000e+00, %bb.aqc ] ; 3 uses
  %i.ing = fneg float %.sroa.0671.0.1.i1746
  %i.inh = fmul float %.sroa.12672.0.1.i1751, %i.ifw
  %i.ini = call noundef float @llvm.fmuladd.f32(float %i.igy, float %i.ing, float %i.inh) ; 2 uses
  %i.inj = call float @llvm.fabs.f32(float %i.ini)
  %i.ink = fpext float %i.inj to double
  %i.inl = fcmp ugt double %i.ink, 1.000000e-02
  br i1 %i.inl, label %bb.aqf, label %bb.aqg

bb.aqf:                                           ; preds = %bb.aqe
  %i.inm = fmul float %.sroa.12672.0.1.i1751, %.sroa.12672.0.1.i1751
  %i.inn = call float @llvm.fmuladd.f32(float %.sroa.0671.0.1.i1746, float %.sroa.0671.0.1.i1746, float %i.inm)
  %i.ino = fmul float %i.igz, %i.inn
  %i.inp = call noundef float @sqrtf(float noundef %i.ino) #20
  %i.inq = fdiv float %i.ini, %i.inp
  %i.inr = call float @llvm.fabs.f32(float %i.inq)
  %.pre799.i1775 = load i8, ptr %i.ihc, align 1, !tbaa !21
  %.pre2116 = load i8, ptr %gep, align 1, !tbaa !21
  br label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf, %bb.aqe
  %106 = phi i8 [ %.pre2116, %bb.aqf ], [ %102, %bb.aqe ]
  %107 = phi i8 [ %.pre799.i1775, %bb.aqf ], [ %103, %bb.aqe ]
  %.0390.1.i1752 = phi float [ %i.inr, %bb.aqf ], [ f0x358637BD, %bb.aqe ]
  %i.ins = fmul float %i.ihb, %.0390.1.i1752      ; 2 uses
  %i.int = getelementptr inbounds nuw i8, ptr %i.ihj, i64 1
  %i.inu = load i8, ptr %i.int, align 1, !tbaa !21
  %i.inv = uitofp i8 %i.inu to float
  %i.inw = call float @llvm.fmuladd.f32(float %i.ins, float %i.inv, float %.sroa.6791.2.i1695)
  %i.inx = fadd float %.sroa.6.2.i1698, %i.ins
  %.not428.2.i1753 = icmp eq i8 %107, 2
  %.not429.2.i1754 = icmp eq i8 %106, 2           ; 2 uses
  br i1 %.not428.2.i1753, label %bb.aqk, label %bb.aqh

bb.aqh:                                           ; preds = %bb.aqg
  %i.iny = mul i64 %i.ihh, %i.igc
  %.sink.idx.i523.2.i1755 = select i1 %i.ihf, i64 0, i64 %i.iny
  %.sink.i524.2.i1756 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i523.2.i1755
  %i.inz = getelementptr inbounds [3 x i8], ptr %.sink.i524.2.i1756, i64 %i.igo
  %i.ioa = getelementptr inbounds nuw i8, ptr %i.inz, i64 2
  %i.iob = load i8, ptr %i.ioa, align 1, !tbaa !21
  %i.ioc = zext i8 %i.iob to i32
  %i.iod = mul i64 %i.ihh, %i.igd
  %.sink.idx.i525.2.i1757 = select i1 %i.ihf, i64 0, i64 %i.iod
  %.sink.i526.2.i1758 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i525.2.i1757
  %i.ioe = getelementptr inbounds [3 x i8], ptr %.sink.i526.2.i1758, i64 %i.igo
  %i.iof = getelementptr inbounds nuw i8, ptr %i.ioe, i64 2
  %i.iog = load i8, ptr %i.iof, align 1, !tbaa !21
  %i.ioh = zext i8 %i.iog to i32                  ; 2 uses
  %i.ioi = sub nsw i32 %i.ioc, %i.ioh
  %i.ioj = call i32 @llvm.abs.i32(i32 %i.ioi, i1 true) ; 2 uses
  br i1 %.not429.2.i1754, label %bb.aqj, label %bb.aqi

bb.aqi:                                           ; preds = %bb.aqh
  %i.iok = mul i64 %i.ihh, %i.igf
  %.sink.idx.i521.2.i1759 = select i1 %i.ihf, i64 0, i64 %i.iok
  %.sink.i522.2.i1760 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i521.2.i1759
  %i.iol = getelementptr inbounds [3 x i8], ptr %.sink.i522.2.i1760, i64 %i.igo
  %i.iom = getelementptr inbounds nuw i8, ptr %i.iol, i64 2
  %i.ion = load i8, ptr %i.iom, align 1, !tbaa !21
  %i.ioo = zext i8 %i.ion to i32
  %i.iop = sub nsw i32 %i.ioh, %i.ioo
  %i.ioq = call i32 @llvm.abs.i32(i32 %i.iop, i1 true)
  %i.ior = add nuw nsw i32 %i.ioq, %i.ioj
  %i.ios = uitofp nneg i32 %i.ior to float
  br label %bb.aqm

bb.aqj:                                           ; preds = %bb.aqh
  %i.iot = uitofp nneg i32 %i.ioj to float
  %i.iou = fmul nnan float %i.iot, 2.000000e+00
  br label %bb.aqm

bb.aqk:                                           ; preds = %bb.aqg
  br i1 %.not429.2.i1754, label %bb.aqm, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  %i.iov = mul i64 %i.ihh, %i.igd
  %.sink.idx.i529.2.i1771 = select i1 %i.ihf, i64 0, i64 %i.iov
  %.sink.i530.2.i1772 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i529.2.i1771
  %i.iow = getelementptr inbounds [3 x i8], ptr %.sink.i530.2.i1772, i64 %i.igo
  %i.iox = getelementptr inbounds nuw i8, ptr %i.iow, i64 2
  %i.ioy = load i8, ptr %i.iox, align 1, !tbaa !21
  %i.ioz = zext i8 %i.ioy to i32
  %i.ipa = mul i64 %i.ihh, %i.igf
  %.sink.idx.i531.2.i1773 = select i1 %i.ihf, i64 0, i64 %i.ipa
  %.sink.i532.2.i1774 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i531.2.i1773
  %i.ipb = getelementptr inbounds [3 x i8], ptr %.sink.i532.2.i1774, i64 %i.igo
  %i.ipc = getelementptr inbounds nuw i8, ptr %i.ipb, i64 2
  %i.ipd = load i8, ptr %i.ipc, align 1, !tbaa !21
  %i.ipe = zext i8 %i.ipd to i32
  %i.ipf = sub nsw i32 %i.ioz, %i.ipe
  %i.ipg = call i32 @llvm.abs.i32(i32 %i.ipf, i1 true)
  %i.iph = uitofp nneg i32 %i.ipg to float
  %i.ipi = fmul nnan float %i.iph, 2.000000e+00
  br label %bb.aqm

bb.aqm:                                           ; preds = %bb.aql, %bb.aqk, %bb.aqj, %bb.aqi
  %.sroa.0671.0.2.i1761 = phi float [ %i.ios, %bb.aqi ], [ %i.ipi, %bb.aql ], [ %i.iou, %bb.aqj ], [ 0.000000e+00, %bb.aqk ] ; 3 uses
  %108 = load i8, ptr %i.ihd, align 1, !tbaa !21
  %.not431.2.i1762 = icmp eq i8 %108, 2
  %109 = load i8, ptr %i.ihk, align 1, !tbaa !21
  %.not432.2.i1763 = icmp eq i8 %109, 2           ; 2 uses
  br i1 %.not431.2.i1762, label %bb.aqq, label %bb.aqn

bb.aqn:                                           ; preds = %bb.aqm
  %i.ipj = mul i64 %i.ihh, %i.igg
  %.sink.idx.i545.2.i1764 = select i1 %i.ihf, i64 0, i64 %i.ipj
  %.sink.i546.2.i1765 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i545.2.i1764 ; 2 uses
  %i.ipk = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.2.i1765, i64 %i.ihm
  %i.ipl = getelementptr inbounds nuw i8, ptr %i.ipk, i64 2
  %i.ipm = load i8, ptr %i.ipl, align 1, !tbaa !21
  %i.ipn = zext i8 %i.ipm to i32
  %i.ipo = getelementptr [3 x i8], ptr %.sink.i546.2.i1765, i64 %i.igo ; 2 uses
  %i.ipp = getelementptr inbounds nuw i8, ptr %i.ipo, i64 2
  %i.ipq = load i8, ptr %i.ipp, align 1, !tbaa !21
  %i.ipr = zext i8 %i.ipq to i32                  ; 2 uses
  %i.ips = sub nsw i32 %i.ipn, %i.ipr
  %i.ipt = call i32 @llvm.abs.i32(i32 %i.ips, i1 true) ; 2 uses
  br i1 %.not432.2.i1763, label %bb.aqp, label %bb.aqo

bb.aqo:                                           ; preds = %bb.aqn
  %i.ipu = getelementptr i8, ptr %i.ipo, i64 -1
  %i.ipv = load i8, ptr %i.ipu, align 1, !tbaa !21
  %i.ipw = zext i8 %i.ipv to i32
  %i.ipx = sub nsw i32 %i.ipr, %i.ipw
  %i.ipy = call i32 @llvm.abs.i32(i32 %i.ipx, i1 true)
  %i.ipz = add nuw nsw i32 %i.ipy, %i.ipt
  %i.iqa = uitofp nneg i32 %i.ipz to float
  br label %bb.aqs

bb.aqp:                                           ; preds = %bb.aqn
  %i.iqb = uitofp nneg i32 %i.ipt to float
  %i.iqc = fmul nnan float %i.iqb, 2.000000e+00
  br label %bb.aqs

bb.aqq:                                           ; preds = %bb.aqm
  br i1 %.not432.2.i1763, label %bb.aqs, label %bb.aqr

bb.aqr:                                           ; preds = %bb.aqq
  %i.iqd = mul i64 %i.ihh, %i.igg
  %.sink.idx.i551.2.i1769 = select i1 %i.ihf, i64 0, i64 %i.iqd
  %.sink.i552.2.i1770 = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %.sink.idx.i551.2.i1769
  %i.iqe = getelementptr [3 x i8], ptr %.sink.i552.2.i1770, i64 %i.igo ; 2 uses
  %i.iqf = getelementptr inbounds nuw i8, ptr %i.iqe, i64 2
  %i.iqg = load i8, ptr %i.iqf, align 1, !tbaa !21
  %i.iqh = zext i8 %i.iqg to i32
  %i.iqi = getelementptr i8, ptr %i.iqe, i64 -1
  %i.iqj = load i8, ptr %i.iqi, align 1, !tbaa !21
  %i.iqk = zext i8 %i.iqj to i32
  %i.iql = sub nsw i32 %i.iqh, %i.iqk
  %i.iqm = call i32 @llvm.abs.i32(i32 %i.iql, i1 true)
  %i.iqn = uitofp nneg i32 %i.iqm to float
  %i.iqo = fmul nnan float %i.iqn, 2.000000e+00
  br label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr, %bb.aqq, %bb.aqp, %bb.aqo
  %.sroa.12672.0.2.i1766 = phi float [ %i.iqa, %bb.aqo ], [ %i.iqo, %bb.aqr ], [ %i.iqc, %bb.aqp ], [ 0.000000e+00, %bb.aqq ] ; 3 uses
  %i.iqp = fneg float %.sroa.0671.0.2.i1761
  %i.iqq = fmul float %.sroa.12672.0.2.i1766, %i.ifw
  %i.iqr = call noundef float @llvm.fmuladd.f32(float %i.igy, float %i.iqp, float %i.iqq) ; 2 uses
  %i.iqs = call float @llvm.fabs.f32(float %i.iqr)
  %i.iqt = fpext float %i.iqs to double
  %i.iqu = fcmp ugt double %i.iqt, 1.000000e-02
  br i1 %i.iqu, label %bb.aqt, label %.loopexit.loopexit.i1767

bb.aqt:                                           ; preds = %bb.aqs
  %i.iqv = fmul float %.sroa.12672.0.2.i1766, %.sroa.12672.0.2.i1766
  %i.iqw = call float @llvm.fmuladd.f32(float %.sroa.0671.0.2.i1761, float %.sroa.0671.0.2.i1761, float %i.iqv)
  %i.iqx = fmul float %i.igz, %i.iqw
  %i.iqy = call noundef float @sqrtf(float noundef %i.iqx) #20
  %i.iqz = fdiv float %i.iqr, %i.iqy
  %i.ira = call float @llvm.fabs.f32(float %i.iqz)
  br label %.loopexit.loopexit.i1767

.loopexit.loopexit.i1767:                         ; preds = %bb.aqt, %bb.aqs
  %.0390.2.i1768 = phi float [ %i.ira, %bb.aqt ], [ f0x358637BD, %bb.aqs ]
  %i.irb = fmul float %i.ihb, %.0390.2.i1768      ; 2 uses
  %i.irc = getelementptr inbounds nuw i8, ptr %i.ihj, i64 2
  %i.ird = load i8, ptr %i.irc, align 1, !tbaa !21
  %i.ire = uitofp i8 %i.ird to float
  %i.irf = call float @llvm.fmuladd.f32(float %i.irb, float %i.ire, float %.sroa.9793.2.i1696)
  %i.irg = fadd float %.sroa.9.2.i1697, %i.irb
  br label %.loopexit.i1702

.loopexit.i1702:                                  ; preds = %.loopexit.loopexit.i1767, %bb.ape, %bb.apd, %.lr.ph756.split.split.i1693
  %.sroa.0789.3.i1703 = phi float [ %.sroa.0789.2.i1694, %bb.apd ], [ %.sroa.0789.2.i1694, %bb.ape ], [ %i.ikn, %.loopexit.loopexit.i1767 ], [ %.sroa.0789.2.i1694, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %.sroa.6791.3.i1704 = phi float [ %.sroa.6791.2.i1695, %bb.apd ], [ %.sroa.6791.2.i1695, %bb.ape ], [ %i.inw, %.loopexit.loopexit.i1767 ], [ %.sroa.6791.2.i1695, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %.sroa.9793.3.i1705 = phi float [ %.sroa.9793.2.i1696, %bb.apd ], [ %.sroa.9793.2.i1696, %bb.ape ], [ %i.irf, %.loopexit.loopexit.i1767 ], [ %.sroa.9793.2.i1696, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %.sroa.9.3.i1706 = phi float [ %.sroa.9.2.i1697, %bb.apd ], [ %.sroa.9.2.i1697, %bb.ape ], [ %i.irg, %.loopexit.loopexit.i1767 ], [ %.sroa.9.2.i1697, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %.sroa.6.3.i1707 = phi float [ %.sroa.6.2.i1698, %bb.apd ], [ %.sroa.6.2.i1698, %bb.ape ], [ %i.inx, %.loopexit.loopexit.i1767 ], [ %.sroa.6.2.i1698, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %.sroa.0.3.i1708 = phi float [ %.sroa.0.2.i1699, %bb.apd ], [ %.sroa.0.2.i1699, %bb.ape ], [ %i.iko, %.loopexit.loopexit.i1767 ], [ %.sroa.0.2.i1699, %.lr.ph756.split.split.i1693 ] ; 2 uses
  %indvars.iv.next.i1709 = add nsw i64 %indvars.iv.i1700, 1
  %.not424.not.i1710 = icmp slt i64 %indvars.iv.i1700, %i.idj
  br i1 %.not424.not.i1710, label %.lr.ph756.split.split.i1693, label %._crit_edge757.i1674, !llvm.loop !138

._crit_edge757.i1674:                             ; preds = %.loopexit.i1702, %.lr.ph756.split.i1691, %.lr.ph756.i1665
  %.sroa.0789.4.i1675 = phi float [ %.sroa.0789.1.i1666, %.lr.ph756.split.i1691 ], [ %.sroa.0789.1.i1666, %.lr.ph756.i1665 ], [ %.sroa.0789.3.i1703, %.loopexit.i1702 ] ; 2 uses
  %.sroa.6791.4.i1676 = phi float [ %.sroa.6791.1.i1667, %.lr.ph756.split.i1691 ], [ %.sroa.6791.1.i1667, %.lr.ph756.i1665 ], [ %.sroa.6791.3.i1704, %.loopexit.i1702 ] ; 2 uses
  %.sroa.9793.4.i1677 = phi float [ %.sroa.9793.1.i1668, %.lr.ph756.split.i1691 ], [ %.sroa.9793.1.i1668, %.lr.ph756.i1665 ], [ %.sroa.9793.3.i1705, %.loopexit.i1702 ] ; 2 uses
  %.sroa.9.4.i1678 = phi float [ %.sroa.9.1.i1669, %.lr.ph756.split.i1691 ], [ %.sroa.9.1.i1669, %.lr.ph756.i1665 ], [ %.sroa.9.3.i1706, %.loopexit.i1702 ] ; 2 uses
  %.sroa.6.4.i1679 = phi float [ %.sroa.6.1.i1670, %.lr.ph756.split.i1691 ], [ %.sroa.6.1.i1670, %.lr.ph756.i1665 ], [ %.sroa.6.3.i1707, %.loopexit.i1702 ] ; 2 uses
  %.sroa.0.4.i1680 = phi float [ %.sroa.0.1.i1671, %.lr.ph756.split.i1691 ], [ %.sroa.0.1.i1671, %.lr.ph756.i1665 ], [ %.sroa.0.3.i1708, %.loopexit.i1702 ] ; 2 uses
  %.not422.i1681 = icmp sgt i32 %i.ify, %i.icx
  br i1 %.not422.i1681, label %.preheader712.loopexit.i1682, label %.lr.ph756.i1665, !llvm.loop !139

bb.aqu:                                           ; preds = %.noexc1793, %bb.anv, %bb.anu
  %i.irh = add nuw nsw i32 %.0393767.i1626, 1     ; 2 uses
  %exitcond785.not.i1632 = icmp eq i32 %i.irh, 4
  br i1 %exitcond785.not.i1632, label %.loopexit713.i1633, label %bb.anq, !llvm.loop !140

.loopexit715.i1530:                               ; preds = %bb.atd
  %i.iri = load ptr, ptr %i.mc, align 8, !tbaa !47 ; 2 uses
  %i.irj = load ptr, ptr %i.hvw, align 8, !tbaa !47
  %.not710.i1531 = icmp eq ptr %i.iri, %i.irj
  br i1 %.not710.i1531, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.aqv, !llvm.loop !141

bb.aqv:                                           ; preds = %.loopexit715.i1530, %.lr.ph749.i1520
  %i.irk = phi ptr [ %i.hvx, %.lr.ph749.i1520 ], [ %i.iri, %.loopexit715.i1530 ] ; 2 uses
  %i.irl = getelementptr inbounds nuw i8, ptr %i.irk, i64 4
  %i.irm = load i32, ptr %i.irl, align 4, !tbaa !169 ; 5 uses
  %i.irn = getelementptr inbounds nuw i8, ptr %i.irk, i64 8
  %i.iro = load i32, ptr %i.irn, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.mc)
          to label %.noexc1794 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1794:                                       ; preds = %bb.aqv
  %i.irp = load i32, ptr %i.hvz, align 4, !tbaa !148
  %i.irq = icmp slt i32 %i.irp, 2
  %i.irr = load ptr, ptr %i.hwa, align 8, !tbaa !149
  %i.irs = load i64, ptr %i.hwb, align 8
  %i.irt = sext i32 %i.irm to i64
  %i.iru = mul i64 %i.irs, %i.irt
  %.sink.idx.i562.i1521 = select i1 %i.irq, i64 0, i64 %i.iru
  %.sink.i563.i1522 = getelementptr inbounds nuw i8, ptr %i.irr, i64 %.sink.idx.i562.i1521
  %i.irv = sext i32 %i.iro to i64
  %i.irw = getelementptr inbounds i8, ptr %.sink.i563.i1522, i64 %i.irv
  store i8 0, ptr %i.irw, align 1, !tbaa !21
  %i.irx = add nsw i32 %i.iro, 1
  %i.iry = add nsw i32 %i.irm, 1
  %i.irz = add nsw i32 %i.iro, -1
  %i.isa = add nsw i32 %i.irm, -1
  br label %bb.aqw

bb.aqw:                                           ; preds = %bb.atd, %.noexc1794
  %.1394747.i1523 = phi i32 [ 0, %.noexc1794 ], [ %i.jdg, %bb.atd ] ; 2 uses
  switch i32 %.1394747.i1523, label %default.unreachable709.i1620 [
    i32 0, label %bb.ara
    i32 1, label %bb.aqx
    i32 2, label %bb.aqy
    i32 3, label %bb.aqz
  ]

bb.aqx:                                           ; preds = %bb.aqw
  br label %bb.ara

bb.aqy:                                           ; preds = %bb.aqw
  br label %bb.ara

bb.aqz:                                           ; preds = %bb.aqw
  br label %bb.ara

default.unreachable709.i1620:                     ; preds = %bb.aqw
  unreachable

bb.ara:                                           ; preds = %bb.aqz, %bb.aqy, %bb.aqx, %bb.aqw
  %.5407.i1524 = phi i32 [ %i.irm, %bb.aqz ], [ %i.irm, %bb.aqx ], [ %i.iry, %bb.aqy ], [ %i.isa, %bb.aqw ]
  %.5.i1525 = phi i32 [ %i.irx, %bb.aqz ], [ %i.irz, %bb.aqx ], [ %i.iro, %bb.aqy ], [ %i.iro, %bb.aqw ] ; 10 uses
  %.5407.fr.i1526 = freeze i32 %.5407.i1524       ; 10 uses
  %i.isb = icmp slt i32 %.5407.fr.i1526, 1
  %i.isc = icmp slt i32 %.5.i1525, 1
  %or.cond5.i1527 = select i1 %i.isb, i1 true, i1 %i.isc
  br i1 %or.cond5.i1527, label %bb.atd, label %bb.arb

bb.arb:                                           ; preds = %bb.ara
  %i.isd = load i32, ptr %i.hwc, align 8, !tbaa !146 ; 3 uses
  %.not.i1528 = icmp slt i32 %.5407.fr.i1526, %i.isd
  br i1 %.not.i1528, label %bb.arc, label %bb.atd

bb.arc:                                           ; preds = %bb.arb
  %i.ise = load i32, ptr %i.hwd, align 4, !tbaa !145 ; 3 uses
  %.not408.i1533 = icmp slt i32 %.5.i1525, %i.ise
  br i1 %.not408.i1533, label %bb.ard, label %bb.atd

bb.ard:                                           ; preds = %bb.arc
  %i.isf = load i32, ptr %i.hvz, align 4, !tbaa !148
  %i.isg = icmp slt i32 %i.isf, 2                 ; 7 uses
  %i.ish = load ptr, ptr %i.hwa, align 8, !tbaa !149 ; 7 uses
  %i.isi = load i64, ptr %i.hwb, align 8          ; 3 uses
  %i.isj = zext nneg i32 %.5407.fr.i1526 to i64   ; 3 uses
  %i.isk = mul i64 %i.isi, %i.isj
  %.sink.idx.i564.i1534 = select i1 %i.isg, i64 0, i64 %i.isk
  %.sink.i565.i1535 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i564.i1534 ; 3 uses
  %i.isl = zext nneg i32 %.5.i1525 to i64         ; 7 uses
  %i.ism = getelementptr inbounds nuw i8, ptr %.sink.i565.i1535, i64 %i.isl
  %i.isn = load i8, ptr %i.ism, align 1, !tbaa !21
  %i.iso = icmp eq i8 %i.isn, 2
  br i1 %i.iso, label %bb.are, label %bb.atd

bb.are:                                           ; preds = %bb.ard
  %i.isp = add nsw i32 %.5407.fr.i1526, -1
  %i.isq = add nsw i32 %.5.i1525, -1
  %i.isr = load i32, ptr %i.hwe, align 4, !tbaa !148
  %i.iss = icmp slt i32 %i.isr, 2                 ; 3 uses
  %i.ist = load ptr, ptr %i.hwf, align 8, !tbaa !149 ; 3 uses
  %i.isu = load i64, ptr %i.hwg, align 8          ; 3 uses
  %i.isv = zext nneg i32 %i.isp to i64            ; 3 uses
  %i.isw = mul i64 %i.isu, %i.isv
  %.sink.idx.i.i566.i1536 = select i1 %i.iss, i64 0, i64 %i.isw
  %.sink.i.i567.i1537 = getelementptr inbounds nuw i8, ptr %i.ist, i64 %.sink.idx.i.i566.i1536
  %i.isx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i567.i1537, i64 %i.isl
  %i.isy = load float, ptr %i.isx, align 4, !tbaa !46 ; 3 uses
  %i.isz = fpext float %i.isy to double           ; 8 uses
  %i.ita = mul i64 %i.isu, %i.isj
  %.sink.idx.i33.i568.i1538 = select i1 %i.iss, i64 0, i64 %i.ita
  %.sink.i34.i569.i1539 = getelementptr inbounds nuw i8, ptr %i.ist, i64 %.sink.idx.i33.i568.i1538 ; 3 uses
  %i.itb = zext nneg i32 %i.isq to i64            ; 3 uses
  %i.itc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1539, i64 %i.itb
  %i.itd = load float, ptr %i.itc, align 4, !tbaa !46 ; 3 uses
  %i.ite = fpext float %i.itd to double           ; 8 uses
  %i.itf = fcmp ogt float %i.isy, %i.itd
  %i.itg = select i1 %i.itf, double %i.ite, double %i.isz ; 2 uses
  %i.ith = mul i64 %i.isi, %i.isv
  %.sink.idx.i35.i570.i1540 = select i1 %i.isg, i64 0, i64 %i.ith
  %.sink.i36.i571.i1541 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i35.i570.i1540
  %i.iti = getelementptr inbounds nuw i8, ptr %.sink.i36.i571.i1541, i64 %i.isl ; 2 uses
  %i.itj = load i8, ptr %i.iti, align 1, !tbaa !21
  %.not.i572.i1542 = icmp eq i8 %i.itj, 2
  %i.itk = getelementptr inbounds nuw i8, ptr %.sink.i565.i1535, i64 %i.itb ; 2 uses
  %i.itl = load i8, ptr %i.itk, align 1, !tbaa !21
  %.not31.i575.i1543 = icmp eq i8 %i.itl, 2       ; 2 uses
  br i1 %.not.i572.i1542, label %bb.ark, label %bb.arf

bb.arf:                                           ; preds = %bb.are
  br i1 %.not31.i575.i1543, label %bb.arj, label %bb.arg

bb.arg:                                           ; preds = %bb.arf
  %i.itm = fsub double %i.isz, %i.ite             ; 3 uses
  %i.itn = call double @llvm.fabs.f64(double %i.itm)
  %i.ito = fcmp ult double %i.itn, 1.000000e+00
  br i1 %i.ito, label %bb.ari, label %bb.arh

bb.arh:                                           ; preds = %bb.arg
  %i.itp = fadd double %i.itg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1544

bb.ari:                                           ; preds = %bb.arg
  %i.itq = fadd double %i.isz, %i.ite
  %i.itr = fneg double %i.itm
  %i.its = call double @llvm.fmuladd.f64(double %i.itr, double %i.itm, double 2.000000e+00)
  %i.itt = call double @sqrt(double noundef %i.its) #20
  %i.itu = fadd double %i.itq, %i.itt
  %i.itv = fmul double %i.itu, 5.000000e-01
  %.pre.i1619 = load i8, ptr %i.itk, align 1, !tbaa !21
  %i.itw = icmp eq i8 %.pre.i1619, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1544

bb.arj:                                           ; preds = %bb.arf
  %i.itx = fadd double %i.isz, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1544

bb.ark:                                           ; preds = %bb.are
  br i1 %.not31.i575.i1543, label %bb.arm, label %bb.arl

bb.arl:                                           ; preds = %bb.ark
  %i.ity = fadd double %i.ite, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1544

bb.arm:                                           ; preds = %bb.ark
  %i.itz = fadd double %i.itg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1544
end_hunk_4
begin_hunk_5_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.iya = sext i32 %i.ixz to i64                 ; 2 uses
  %i.iyb = sext i32 %i.ixj to i64                 ; 2 uses
  br i1 %i.ixm, label %.lr.ph.split.i1576, label %._crit_edge.i1567

.lr.ph.split.i1576:                               ; preds = %.lr.ph.i1562
  %i.iyc = icmp slt i32 %.1398738.i1565, %i.ixc
  %.fr736.i1577 = freeze i1 %i.iyc
  br i1 %.fr736.i1577, label %.lr.ph.split.split.i1578.preheader, label %._crit_edge.i1567

.lr.ph.split.split.i1578.preheader:               ; preds = %.lr.ph.split.i1576
  %i.iyd = mul i64 %i.ixf, %i.ixn
  %.sink.idx.i616.i1587 = select i1 %i.isg, i64 0, i64 %i.iyd
  %.sink.i617.i1588 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i616.i1587 ; 2 uses
  %i.iye = mul i64 %i.ixf, %i.ixu
  %.sink.idx.i618.i1591 = select i1 %i.isg, i64 0, i64 %i.iye
  %.sink.i619.i1592 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i618.i1591
  %i.iyf = mul i64 %i.ixf, %i.ixv
  %.sink.idx.i634.i1594 = select i1 %i.isg, i64 0, i64 %i.iyf
  %.sink.i635.i1595 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i634.i1594
  br label %.lr.ph.split.split.i1578

.lr.ph.split.split.i1578:                         ; preds = %.lr.ph.split.split.i1578.preheader, %bb.atc
  %.1722.i1579 = phi float [ %.2.i1585, %bb.atc ], [ %.0386740.i1563, %.lr.ph.split.split.i1578.preheader ] ; 4 uses
  %.1388721.i1580 = phi float [ %.2389.i1584, %bb.atc ], [ %.0387739.i1564, %.lr.ph.split.split.i1578.preheader ] ; 4 uses
  %.1396719.i1581 = phi i32 [ %i.jcs, %bb.atc ], [ %i.iwz, %.lr.ph.split.split.i1578.preheader ] ; 11 uses
  %i.iyg = add nsw i32 %.1396719.i1581, -1        ; 2 uses
  %i.iyh = icmp eq i32 %.1396719.i1581, 1
  %i.iyi = zext i1 %i.iyh to i32
  %i.iyj = add nuw nsw i32 %i.iyg, %i.iyi         ; 4 uses
  %i.iyk = icmp eq i32 %.1396719.i1581, %i.ixb
  %.neg411.i1582 = sext i1 %i.iyk to i32
  %i.iyl = icmp sgt i32 %.1396719.i1581, 0
  %i.iym = icmp slt i32 %.1396719.i1581, %i.ixd
  %or.cond771.i1583 = select i1 %i.iyl, i1 %i.iym, i1 false
  br i1 %or.cond771.i1583, label %bb.asl, label %bb.atc

bb.asl:                                           ; preds = %.lr.ph.split.split.i1578
  %i.iyn = zext nneg i32 %.1396719.i1581 to i64   ; 3 uses
  %i.iyo = getelementptr inbounds nuw i8, ptr %.sink.i617.i1588, i64 %i.iyn ; 2 uses
  %i.iyp = load i8, ptr %i.iyo, align 1, !tbaa !21
  %.not412.i1589 = icmp eq i8 %i.iyp, 2
  br i1 %.not412.i1589, label %bb.atc, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.iyq = sub nsw i32 %.1396719.i1581, %.5.i1525 ; 2 uses
  %i.iyr = mul nsw i32 %i.iyq, %i.iyq
  %i.iys = add nuw nsw i32 %i.iyr, %i.ixp
  %.not413.i1590 = icmp samesign ugt i32 %i.iys, %i.hwh
  br i1 %.not413.i1590, label %bb.atc, label %bb.asn

bb.asn:                                           ; preds = %bb.asm
  %i.iyt = sub nsw i32 %.5.i1525, %.1396719.i1581
  %i.iyu = sitofp i32 %i.iyt to float             ; 3 uses
  %i.iyv = call noundef float @llvm.fmuladd.f32(float %i.iyu, float %i.iyu, float %i.ixs) ; 3 uses
  %i.iyw = call nnan float @llvm.fmuladd.f32(float %i.iyv, float %i.iyv, float 1.000000e+00)
  %i.iyx = fdiv nnan float 1.000000e+00, %i.iyw
  %i.iyy = getelementptr inbounds nuw i8, ptr %.sink.i619.i1592, i64 %i.iyn
  %i.iyz = load i8, ptr %i.iyy, align 1, !tbaa !21
  %.not414.i1593 = icmp eq i8 %i.iyz, 2
  %i.iza = getelementptr inbounds nuw i8, ptr %.sink.i635.i1595, i64 %i.iyn
  %i.izb = load i8, ptr %i.iza, align 1, !tbaa !21
  %.not415.i1596 = icmp eq i8 %i.izb, 2           ; 2 uses
  br i1 %.not414.i1593, label %bb.asr, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.izc = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.izd = icmp slt i32 %i.izc, 2                 ; 3 uses
  %i.ize = load ptr, ptr %i.hwj, align 8, !tbaa !149 ; 3 uses
  %i.izf = load i64, ptr %i.hwk, align 8          ; 3 uses
  %i.izg = mul i64 %i.izf, %i.ixx
  %.sink.idx.i630.i1597 = select i1 %i.izd, i64 0, i64 %i.izg
  %.sink.i631.i1598 = getelementptr inbounds nuw i8, ptr %i.ize, i64 %.sink.idx.i630.i1597
  %i.izh = sext i32 %i.iyj to i64                 ; 3 uses
  %i.izi = getelementptr inbounds [4 x i8], ptr %.sink.i631.i1598, i64 %i.izh
  %i.izj = load float, ptr %i.izi, align 4, !tbaa !46
  %i.izk = mul i64 %i.izf, %i.ixy
  %.sink.idx.i632.i1599 = select i1 %i.izd, i64 0, i64 %i.izk
  %.sink.i633.i1600 = getelementptr inbounds nuw i8, ptr %i.ize, i64 %.sink.idx.i632.i1599
  %i.izl = getelementptr inbounds [4 x i8], ptr %.sink.i633.i1600, i64 %i.izh
  %i.izm = load float, ptr %i.izl, align 4, !tbaa !46 ; 2 uses
  %i.izn = fsub float %i.izj, %i.izm
  %i.izo = call noundef float @llvm.fabs.f32(float %i.izn) ; 2 uses
  br i1 %.not415.i1596, label %bb.asq, label %bb.asp

bb.asp:                                           ; preds = %bb.aso
  %i.izp = mul i64 %i.izf, %i.iya
  %.sink.idx.i628.i1601 = select i1 %i.izd, i64 0, i64 %i.izp
  %.sink.i629.i1602 = getelementptr inbounds nuw i8, ptr %i.ize, i64 %.sink.idx.i628.i1601
  %i.izq = getelementptr inbounds [4 x i8], ptr %.sink.i629.i1602, i64 %i.izh
  %i.izr = load float, ptr %i.izq, align 4, !tbaa !46
  %i.izs = fsub float %i.izm, %i.izr
  %i.izt = call noundef float @llvm.fabs.f32(float %i.izs)
  %i.izu = fadd float %i.izo, %i.izt
  br label %bb.ast

bb.asq:                                           ; preds = %bb.aso
  %i.izv = fmul float %i.izo, 2.000000e+00
  br label %bb.ast

bb.asr:                                           ; preds = %bb.asn
  br i1 %.not415.i1596, label %bb.ast, label %bb.ass

bb.ass:                                           ; preds = %bb.asr
  %i.izw = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.izx = icmp slt i32 %i.izw, 2                 ; 2 uses
  %i.izy = load ptr, ptr %i.hwj, align 8, !tbaa !149 ; 2 uses
  %i.izz = load i64, ptr %i.hwk, align 8          ; 2 uses
  %i.jaa = mul i64 %i.izz, %i.ixy
  %.sink.idx.i636.i1614 = select i1 %i.izx, i64 0, i64 %i.jaa
  %.sink.i637.i1615 = getelementptr inbounds nuw i8, ptr %i.izy, i64 %.sink.idx.i636.i1614
  %i.jab = sext i32 %i.iyj to i64                 ; 2 uses
  %i.jac = getelementptr inbounds [4 x i8], ptr %.sink.i637.i1615, i64 %i.jab
  %i.jad = load float, ptr %i.jac, align 4, !tbaa !46
  %i.jae = mul i64 %i.izz, %i.iya
  %.sink.idx.i638.i1616 = select i1 %i.izx, i64 0, i64 %i.jae
  %.sink.i639.i1617 = getelementptr inbounds nuw i8, ptr %i.izy, i64 %.sink.idx.i638.i1616
  %i.jaf = getelementptr inbounds [4 x i8], ptr %.sink.i639.i1617, i64 %i.jab
  %i.jag = load float, ptr %i.jaf, align 4, !tbaa !46
  %i.jah = fsub float %i.jad, %i.jag
  %i.jai = call noundef float @llvm.fabs.f32(float %i.jah)
  %i.jaj = fmul float %i.jai, 2.000000e+00
  br label %bb.ast

bb.ast:                                           ; preds = %bb.ass, %bb.asr, %bb.asq, %bb.asp
  %.sroa.0668.0.i1603 = phi float [ %i.izu, %bb.asp ], [ %i.jaj, %bb.ass ], [ %i.izv, %bb.asq ], [ 0.000000e+00, %bb.asr ] ; 3 uses
  %i.jak = getelementptr inbounds nuw i8, ptr %i.iyo, i64 1
  %i.jal = load i8, ptr %i.jak, align 1, !tbaa !21
  %.not417.i1604 = icmp eq i8 %i.jal, 2
  %i.jam = zext nneg i32 %i.iyg to i64            ; 2 uses
  %i.jan = getelementptr inbounds nuw i8, ptr %.sink.i617.i1588, i64 %i.jam
  %i.jao = load i8, ptr %i.jan, align 1, !tbaa !21
  %.not418.i1605 = icmp eq i8 %i.jao, 2           ; 2 uses
  br i1 %.not417.i1604, label %bb.asx, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %i.jap = add nsw i32 %.1396719.i1581, %.neg411.i1582
  %i.jaq = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.jar = icmp slt i32 %i.jaq, 2
  %i.jas = load ptr, ptr %i.hwj, align 8, !tbaa !149
  %i.jat = load i64, ptr %i.hwk, align 8
  %i.jau = mul i64 %i.jat, %i.iyb
  %.sink.idx.i652.i1606 = select i1 %i.jar, i64 0, i64 %i.jau
  %.sink.i653.i1607 = getelementptr inbounds nuw i8, ptr %i.jas, i64 %.sink.idx.i652.i1606 ; 2 uses
  %i.jav = zext nneg i32 %i.jap to i64
  %i.jaw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i653.i1607, i64 %i.jav
  %i.jax = load float, ptr %i.jaw, align 4, !tbaa !46
  %i.jay = sext i32 %i.iyj to i64
  %i.jaz = getelementptr [4 x i8], ptr %.sink.i653.i1607, i64 %i.jay ; 2 uses
  %i.jba = load float, ptr %i.jaz, align 4, !tbaa !46 ; 2 uses
  %i.jbb = fsub float %i.jax, %i.jba
  %i.jbc = call noundef float @llvm.fabs.f32(float %i.jbb) ; 2 uses
  br i1 %.not418.i1605, label %bb.asw, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.jbd = getelementptr i8, ptr %i.jaz, i64 -4
  %i.jbe = load float, ptr %i.jbd, align 4, !tbaa !46
  %i.jbf = fsub float %i.jba, %i.jbe
  %i.jbg = call noundef float @llvm.fabs.f32(float %i.jbf)
  %i.jbh = fadd float %i.jbc, %i.jbg
  br label %bb.asz

bb.asw:                                           ; preds = %bb.asu
  %i.jbi = fmul float %i.jbc, 2.000000e+00
  br label %bb.asz

bb.asx:                                           ; preds = %bb.ast
  br i1 %.not418.i1605, label %bb.asz, label %bb.asy

bb.asy:                                           ; preds = %bb.asx
  %i.jbj = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.jbk = icmp slt i32 %i.jbj, 2
  %i.jbl = load ptr, ptr %i.hwj, align 8, !tbaa !149
  %i.jbm = load i64, ptr %i.hwk, align 8
  %i.jbn = mul i64 %i.jbm, %i.iyb
  %.sink.idx.i658.i1612 = select i1 %i.jbk, i64 0, i64 %i.jbn
  %.sink.i659.i1613 = getelementptr inbounds nuw i8, ptr %i.jbl, i64 %.sink.idx.i658.i1612
  %i.jbo = sext i32 %i.iyj to i64
  %i.jbp = getelementptr [4 x i8], ptr %.sink.i659.i1613, i64 %i.jbo ; 2 uses
  %i.jbq = load float, ptr %i.jbp, align 4, !tbaa !46
  %i.jbr = getelementptr i8, ptr %i.jbp, i64 -4
  %i.jbs = load float, ptr %i.jbr, align 4, !tbaa !46
  %i.jbt = fsub float %i.jbq, %i.jbs
  %i.jbu = call noundef float @llvm.fabs.f32(float %i.jbt)
  %i.jbv = fmul float %i.jbu, 2.000000e+00
  br label %bb.asz

bb.asz:                                           ; preds = %bb.asy, %bb.asx, %bb.asw, %bb.asv
  %.sroa.12.0.i1608 = phi float [ %i.jbh, %bb.asv ], [ %i.jbv, %bb.asy ], [ %i.jbi, %bb.asw ], [ 0.000000e+00, %bb.asx ] ; 3 uses
  %i.jbw = fneg float %.sroa.0668.0.i1603
  %i.jbx = fmul float %.sroa.12.0.i1608, %i.ixr
  %i.jby = call noundef float @llvm.fmuladd.f32(float %i.iyu, float %i.jbw, float %i.jbx) ; 2 uses
  %i.jbz = call float @llvm.fabs.f32(float %i.jby)
  %i.jca = fpext float %i.jbz to double
  %i.jcb = fcmp ugt double %i.jca, 1.000000e-02
  br i1 %i.jcb, label %bb.ata, label %bb.atb

bb.ata:                                           ; preds = %bb.asz
  %i.jcc = fmul float %.sroa.12.0.i1608, %.sroa.12.0.i1608
  %i.jcd = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i1603, float %.sroa.0668.0.i1603, float %i.jcc)
  %i.jce = fmul float %i.iyv, %i.jcd
  %i.jcf = call noundef float @sqrtf(float noundef %i.jce) #20
  %i.jcg = fdiv float %i.jby, %i.jcf
  %i.jch = call float @llvm.fabs.f32(float %i.jcg)
  br label %bb.atb

bb.atb:                                           ; preds = %bb.ata, %bb.asz
  %.0.i1609 = phi float [ %i.jch, %bb.ata ], [ f0x358637BD, %bb.asz ]
  %i.jci = fmul float %i.iyx, %.0.i1609           ; 2 uses
  %i.jcj = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.jck = icmp slt i32 %i.jcj, 2
  %i.jcl = load ptr, ptr %i.hwj, align 8, !tbaa !149
  %i.jcm = load i64, ptr %i.hwk, align 8
  %i.jcn = mul i64 %i.jcm, %i.ixv
  %.sink.idx.i662.i1610 = select i1 %i.jck, i64 0, i64 %i.jcn
  %.sink.i663.i1611 = getelementptr inbounds nuw i8, ptr %i.jcl, i64 %.sink.idx.i662.i1610
  %i.jco = getelementptr inbounds nuw [4 x i8], ptr %.sink.i663.i1611, i64 %i.jam
  %i.jcp = load float, ptr %i.jco, align 4, !tbaa !46
  %i.jcq = call float @llvm.fmuladd.f32(float %i.jci, float %i.jcp, float %.1388721.i1580)
  %i.jcr = fadd float %.1722.i1579, %i.jci
  br label %bb.atc

bb.atc:                                           ; preds = %bb.atb, %bb.asm, %bb.asl, %.lr.ph.split.split.i1578
  %.2389.i1584 = phi float [ %i.jcq, %bb.atb ], [ %.1388721.i1580, %bb.asm ], [ %.1388721.i1580, %bb.asl ], [ %.1388721.i1580, %.lr.ph.split.split.i1578 ] ; 2 uses
  %.2.i1585 = phi float [ %i.jcr, %bb.atb ], [ %.1722.i1579, %bb.asm ], [ %.1722.i1579, %bb.asl ], [ %.1722.i1579, %.lr.ph.split.split.i1578 ] ; 2 uses
  %i.jcs = add nsw i32 %.1396719.i1581, 1
  %.not410.not.i1586 = icmp slt i32 %.1396719.i1581, %i.ixa
  br i1 %.not410.not.i1586, label %.lr.ph.split.split.i1578, label %._crit_edge.i1567, !llvm.loop !142

._crit_edge.i1567:                                ; preds = %bb.atc, %.lr.ph.split.i1576, %.lr.ph.i1562
  %.us-phi.i1568 = phi float [ %.0387739.i1564, %.lr.ph.i1562 ], [ %.0387739.i1564, %.lr.ph.split.i1576 ], [ %.2389.i1584, %bb.atc ] ; 2 uses
  %.us-phi724.i1569 = phi float [ %.0386740.i1563, %.lr.ph.i1562 ], [ %.0386740.i1563, %.lr.ph.split.i1576 ], [ %.2.i1585, %bb.atc ] ; 2 uses
  %.not409.i1570 = icmp sgt i32 %i.ixt, %i.iwx
  br i1 %.not409.i1570, label %._crit_edge742.loopexit776.i1571, label %.lr.ph.i1562, !llvm.loop !143

._crit_edge742.loopexit776.i1571:                 ; preds = %._crit_edge.i1567
  %i.jct = fdiv float %.us-phi.i1568, %.us-phi724.i1569
  %i.jcu = load i32, ptr %i.hwi, align 4, !tbaa !148
  %i.jcv = icmp slt i32 %i.jcu, 2
  %i.jcw = load ptr, ptr %i.hwj, align 8, !tbaa !149
  %i.jcx = load i64, ptr %i.hwk, align 8
  %i.jcy = mul i64 %i.jcx, %i.isv
  %.sink.idx.i664.i1572 = select i1 %i.jcv, i64 0, i64 %i.jcy
  %.sink.i665.i1573 = getelementptr inbounds nuw i8, ptr %i.jcw, i64 %.sink.idx.i664.i1572
  %i.jcz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i665.i1573, i64 %i.itb
  store float %i.jct, ptr %i.jcz, align 4, !tbaa !46
  %i.jda = load i64, ptr %i.hwb, align 8
  %i.jdb = mul i64 %i.jda, %i.isj
  %.sink.idx.i666.i1574 = select i1 %i.isg, i64 0, i64 %i.jdb
  %.sink.i667.i1575 = getelementptr inbounds nuw i8, ptr %i.ish, i64 %.sink.idx.i666.i1574
  %i.jdc = getelementptr inbounds nuw i8, ptr %.sink.i667.i1575, i64 %i.isl
  store i8 1, ptr %i.jdc, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store float %i.iwv, ptr %5, align 4, !tbaa !50
  store i32 %.5407.fr.i1526, ptr %i.hwl, align 4, !tbaa !169
  store i32 %.5.i1525, ptr %i.hwm, align 4, !tbaa !170
  %i.jdd = load i32, ptr %i.hwo, align 8, !tbaa !162
  store i32 %i.jdd, ptr %i.hwn, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %.noexc1795 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2706

.noexc1795:                                       ; preds = %._crit_edge742.loopexit776.i1571
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.jde = load i32, ptr %i.hwo, align 8, !tbaa !162
  %i.jdf = add nsw i32 %i.jde, 1
  store i32 %i.jdf, ptr %i.hwo, align 8, !tbaa !162
  br label %bb.atd

bb.atd:                                           ; preds = %.noexc1795, %bb.ard, %bb.arc, %bb.arb, %bb.ara
  %i.jdg = add nuw nsw i32 %.1394747.i1523, 1     ; 2 uses
  %exitcond.not.i1529 = icmp eq i32 %i.jdg, 4
  br i1 %exitcond.not.i1529, label %.loopexit715.i1530, label %bb.aqw, !llvm.loop !144

bb.ate:                                           ; preds = %bb.ach
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %77)
          to label %bb.atf unwind label %bb.ath

bb.atf:                                           ; preds = %bb.ate
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @__func__._ZL10icvInpaintRKN2cv3MatES2_RS0_di, ptr noundef nonnull @.str.1, i32 noundef 784) #21
          to label %bb.atg unwind label %bb.ati

bb.atg:                                           ; preds = %bb.atf
  unreachable

bb.ath:                                           ; preds = %bb.ate
  %i.jdh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1798

bb.ati:                                           ; preds = %bb.atf
  %i.jdi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jdj = load ptr, ptr %76, align 8, !tbaa !20  ; 2 uses
  %i.jdk = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.jdl = icmp eq ptr %i.jdj, %i.jdk
  br i1 %i.jdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1798, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1796

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1796: ; preds = %bb.ati
  %i.jdm = load i64, ptr %i.jdk, align 8, !tbaa !21
  %i.jdn = add i64 %i.jdm, 1
  call void @_ZdlPvm(ptr noundef %i.jdj, i64 noundef %i.jdn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1798

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1798: ; preds = %bb.ati, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1796, %bb.ath
  %.pn180 = phi { ptr, i32 } [ %i.jdh, %bb.ath ], [ %i.jdi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1796 ], [ %i.jdi, %bb.ati ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #20
  br label %.body

bb.atj:                                           ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %bb.atk unwind label %bb.atm

bb.atk:                                           ; preds = %bb.atj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @__func__._ZL10icvInpaintRKN2cv3MatES2_RS0_di, ptr noundef nonnull @.str.1, i32 noundef 787) #21
          to label %bb.atl unwind label %bb.atn

bb.atl:                                           ; preds = %bb.atk
  unreachable

bb.atm:                                           ; preds = %bb.atj
  %i.jdo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1801

bb.atn:                                           ; preds = %bb.atk
  %i.jdp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jdq = load ptr, ptr %78, align 8, !tbaa !20  ; 2 uses
  %i.jdr = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.jds = icmp eq ptr %i.jdq, %i.jdr
  br i1 %i.jds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1801, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1799

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1799: ; preds = %bb.atn
  %i.jdt = load i64, ptr %i.jdr, align 8, !tbaa !21
  %i.jdu = add i64 %i.jdt, 1
  call void @_ZdlPvm(ptr noundef %i.jdq, i64 noundef %i.jdu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1801

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1801: ; preds = %bb.atn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1799, %bb.atm
  %.pn178 = phi { ptr, i32 } [ %i.jdo, %bb.atm ], [ %i.jdp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1799 ], [ %i.jdp, %bb.atn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  br label %.body

_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit: ; preds = %.loopexit715.i1530, %.loopexit713.i1633, %.loopexit715.i1252, %.loopexit713.i1355, %.loopexit715.i, %.loopexit713.i, %.loopexit918.i784, %.loopexit916.i931, %.loopexit918.i373, %.loopexit916.i520, %.loopexit918.i, %.loopexit916.i, %.preheader714.i1621, %.preheader716.i1518, %bb.ano, %.preheader714.i1343, %.preheader716.i1240, %bb.ahy, %.preheader714.i, %.preheader716.i, %bb.aci, %.preheader917.i919, %.preheader919.i772, %bb.uw, %.preheader917.i508, %.preheader919.i361, %bb.nq, %.preheader917.i, %.preheader919.i, %bb.gk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.jdv = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jdw = load ptr, ptr %i.jdv, align 8, !tbaa !41 ; 8 uses
  %.not.i.i1802 = icmp eq ptr %i.jdw, null
  br i1 %.not.i.i1802, label %_ZNSt12__shared_ptrI20CvPriorityQueueFloatLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1806, label %bb.ato

bb.ato:                                           ; preds = %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit
  %i.jdx = getelementptr inbounds nuw i8, ptr %i.jdw, i64 8 ; 4 uses
  %i.jdy = load atomic i64, ptr %i.jdx acquire, align 8 ; 2 uses
  %i.jdz = icmp eq i64 %i.jdy, 4294967297
  %i.jea = trunc i64 %i.jdy to i32                ; 2 uses
  br i1 %i.jdz, label %bb.atp, label %bb.atq

bb.atp:                                           ; preds = %bb.ato
  store i32 0, ptr %i.jdx, align 8, !tbaa !33
  %i.jeb = getelementptr inbounds nuw i8, ptr %i.jdw, i64 12
  store i32 0, ptr %i.jeb, align 4, !tbaa !34
  %i.jec = load ptr, ptr %i.jdw, align 8, !tbaa !36
  %i.jed = getelementptr inbounds nuw i8, ptr %i.jec, i64 16
  %i.jee = load ptr, ptr %i.jed, align 8
  call void %i.jee(ptr noundef nonnull align 8 dereferenceable(16) %i.jdw) #20, !inline_history !76
  %i.jef = load ptr, ptr %i.jdw, align 8, !tbaa !36
  %i.jeg = getelementptr inbounds nuw i8, ptr %i.jef, i64 24
  %i.jeh = load ptr, ptr %i.jeg, align 8
  call void %i.jeh(ptr noundef nonnull align 8 dereferenceable(16) %i.jdw) #20, !inline_history !76
  br label %_ZNSt12__shared_ptrI20CvPriorityQueueFloatLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1806

bb.atq:                                           ; preds = %bb.ato
  %i.jei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i1803 = icmp eq i8 %i.jei, 0
  br i1 %.not.i.i.i1803, label %bb.ats, label %bb.atr

bb.atr:                                           ; preds = %bb.atq
  %i.jej = add nsw i32 %i.jea, -1
  store i32 %i.jej, ptr %i.jdx, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1804

bb.ats:                                           ; preds = %bb.atq
  %i.jek = atomicrmw volatile add ptr %i.jdx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1804

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1804: ; preds = %bb.ats, %bb.atr
  %.0.i.i.i.i1805 = phi i32 [ %i.jea, %bb.atr ], [ %i.jek, %bb.ats ]
  %i.jel = icmp eq i32 %.0.i.i.i.i1805, 1
  br i1 %i.jel, label %bb.att, label %_ZNSt12__shared_ptrI20CvPriorityQueueFloatLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1806, !prof !42

bb.att:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1804
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jdw) #20
  br label %_ZNSt12__shared_ptrI20CvPriorityQueueFloatLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1806
end_hunk_5
begin_hunk_6_@_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_:bb.a
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 4                 ; 2 uses
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = icmp sgt i64 %i.af, 1
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorI10CvHeapElemSaIS0_EE9push_backEOS0_.exit
  %.sroa.012.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload.i to i32
  %i.ai = bitcast i32 %.sroa.012.sroa.0.0.extract.trunc.i.i to float ; 2 uses
  %.sroa.3.12.extract.shift.i.i = lshr i64 %.sroa.4.0.copyload.i, 32
  %.sroa.3.12.extract.trunc.i.i = trunc nuw i64 %.sroa.3.12.extract.shift.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.0925.i78.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i ] ; 4 uses
  %.0925.in.i.i = add nsw i64 %.024.i.i, -1
  %.0925.i78.i = lshr i64 %.0925.in.i.i, 1        ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0925.i78.i ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !50 ; 2 uses
  %i.al = fcmp ogt float %i.ak, %i.ai
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = fcmp olt float %i.ak, %i.ai
  br i1 %i.am, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = icmp sgt i32 %i.ao, %.sroa.3.12.extract.trunc.i.i
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i, %bb.g
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %.024.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !52
  %.not.i = icmp eq i64 %.0925.i78.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit, label %bb.g, !llvm.loop !0

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i, %_ZNSt6vectorI10CvHeapElemSaIS0_EE9push_backEOS0_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ag, %_ZNSt6vectorI10CvHeapElemSaIS0_EE9push_backEOS0_.exit ], [ %.024.i.i, %bb.h ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i ], [ %.024.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i ]
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.02.0.copyload.i, ptr %i.ar, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i, align 4, !tbaa !22
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 16
  br i1 %i.g, label %bb.b, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.h, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !22 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !52
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = sdiv i64 %i.l, 2
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i
  %.042.i.i.i = phi i64 [ %i.ac, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.042.i.i.i, 1                   ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 3 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load float, ptr %i.q, align 4, !tbaa !50 ; 2 uses
  %i.u = load float, ptr %i.s, align 4, !tbaa !50 ; 2 uses
  %i.v = fcmp ogt float %i.t, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = fcmp olt float %i.t, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = icmp sgt i32 %i.y, %i.aa
  %cond.fr.i.i.i = freeze i1 %i.ab
  br i1 %cond.fr.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.i.i.i, %bb.c
  %i.ac = phi i64 [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread.i.i.i ], [ %i.p, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.i.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.042.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !52
  %i.af = icmp slt i64 %i.ac, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !180

._crit_edge.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESC_EEbT_T0_.exit.thread39.i.i.i ] ; 5 uses
  %i.ag = and i64 %i.j, 16
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = add nsw i64 %i.k, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa.i.i.i, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.am
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa.i.i.i, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %.sroa.012.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i to i32
  %i.aq = bitcast i32 %.sroa.012.sroa.0.0.extract.trunc.i.i.i.i to float ; 2 uses
  %.sroa.3.12.extract.shift.i.i.i.i = lshr i64 %.sroa.4.0.copyload.i.i, 32
  %.sroa.3.12.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.12.extract.shift.i.i.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.024.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.0925.i.i89.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i ] ; 4 uses
  %.0925.in.i.i.i.i = add nsw i64 %.024.i.i.i.i, -1
  %.0925.i.i89.i.i = lshr i64 %.0925.in.i.i.i.i, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0925.i.i89.i.i ; 3 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50 ; 2 uses
  %i.at = fcmp ogt float %i.as, %i.aq
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = fcmp olt float %i.as, %i.aq
  br i1 %i.au, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51
  %i.ax = icmp sgt i32 %i.aw, %.sroa.3.12.extract.trunc.i.i.i.i
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.024.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !52
  %.not.i.i = icmp eq i64 %.0925.i.i89.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i, label %bb.g, !llvm.loop !0

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i.i.i, %bb.h, %bb.f
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.f ], [ %.024.i.i.i.i, %bb.h ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.024.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterI10CvHeapElemEEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_.exit.i.i.i.i ]
  %i.az = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i, ptr %i.az, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !22
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEESt7greaterIS2_EEvT_SA_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i
  %i.ba = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP10CvHeapElemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS2_EEEEvT_SD_SD_RT0_.exit.i ]
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !31}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!11 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !10, i64 16}
!12 = !{!11, !9, i64 8}
!13 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!14 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !13, i64 4, !6, i64 8, !5, i64 12}
!15 = !{!14, !6, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !5, i64 16}
!20 = !{!19, !16, i64 0}
!21 = !{!5, !5, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!24 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!25 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !23, i64 56, !24, i64 64, !14, i64 72, !25, i64 128}
!27 = !{!26, !6, i64 0}
!28 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !9, i64 0}
!29 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !28, i64 0, !6, i64 8}
!30 = !{!29, !6, i64 8}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !6, i64 12}
!35 = !{!"vtable pointer", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS10CvHeapElem", !9, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseI10CvHeapElemSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!40 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!38, !37, i64 8}
!44 = !{!38, !37, i64 16}
!45 = !{!"float", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!38, !37, i64 0}
!49 = !{!"_ZTS10CvHeapElem", !45, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!50 = !{!49, !45, i64 0}
!51 = !{!49, !6, i64 12}
!52 = !{i64 0, i64 4, !46, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22}
!53 = distinct !{!53, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!54 = distinct !{!54, !53, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!56 = distinct !{!56, !55, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!58 = distinct !{!58, !57, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!59 = !{!54}
!60 = !{!56}
!61 = !{!58}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = distinct !{!67, i1 true, !"_ZN2cvL28morphologyDefaultBorderValueEv"}
!68 = distinct !{!68, !67, !"_ZN2cvL28morphologyDefaultBorderValueEv: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!70 = distinct !{!70, !69, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZN2cvL7makePtrI20CvPriorityQueueFloatJEEENS_3PtrIT_EEDpRKT0_"}
!72 = distinct !{!72, !71, !"_ZN2cvL7makePtrI20CvPriorityQueueFloatJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZSt11make_sharedI20CvPriorityQueueFloatJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES3_E4typeEEDpOT0_"}
!74 = distinct !{!74, !73, !"_ZSt11make_sharedI20CvPriorityQueueFloatJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES3_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{null, null, null, null, null}
!76 = distinct !{ptr @_ZNSt12__shared_ptrI20CvPriorityQueueFloatLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31, !166}
!82 = distinct !{!82, i1 true, !"_ZN2cvL28morphologyDefaultBorderValueEv"}
!83 = distinct !{!83, !82, !"_ZN2cvL28morphologyDefaultBorderValueEv: argument 0"}
!84 = distinct !{!84, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!85 = distinct !{!85, !84, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZN2cvL7makePtrI20CvPriorityQueueFloatJEEENS_3PtrIT_EEDpRKT0_"}
!87 = distinct !{!87, !86, !"_ZN2cvL7makePtrI20CvPriorityQueueFloatJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZSt11make_sharedI20CvPriorityQueueFloatJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES3_E4typeEEDpOT0_"}
!89 = distinct !{!89, !88, !"_ZSt11make_sharedI20CvPriorityQueueFloatJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES3_E4typeEEDpOT0_: argument 0"}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31, !166}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !31}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
end_hunk_6

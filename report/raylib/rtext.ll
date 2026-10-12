Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a

bb.kk:                                            ; preds = %bb.kj
  %shift728 = shufflevector <2 x float> %i.avo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop729 = fmul <2 x float> %i.aqr, %shift728
  %i.blq = extractelement <2 x float> %foldExtExtBinop729, i64 0
  %i.blr = fsub float %i.avt, %i.aiy
  %i.bls = fdiv float %i.blq, %i.blr
  %i.blt = fadd float %i.alo, %i.bls
  %.055.i443.i.i.i.i.i.i.i = select i1 %i.aqq, float %i.blt, float %i.alo ; 4 uses
  %i.blu = fcmp ogt float %i.avt, %i.aqo
  br i1 %i.blu, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.blv = fsub float %i.avl, %.055.i443.i.i.i.i.i.i.i
  %i.blw = fsub float %i.aqo, %i.avt
  %i.blx = fmul float %i.blw, %i.blv
  %i.bly = fsub float %i.avt, %.0301.i.i.i.i.i.i.i
  %i.blz = fdiv float %i.blx, %i.bly
  %i.bma = fadd float %i.blz, %i.avl
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.053.i445.i.i.i.i.i.i.i = phi float [ %i.bma, %bb.kl ], [ %i.avl, %bb.kk ] ; 3 uses
  %.0.i446.i.i.i.i.i.i.i = phi float [ %i.aqo, %bb.kl ], [ %i.avt, %bb.kk ] ; 2 uses
  %i.bmb = fcmp ugt float %.055.i443.i.i.i.i.i.i.i, %i.avj
  %i.bmc = fcmp ugt float %.053.i445.i.i.i.i.i.i.i, %i.avj
  %or.cond.i447.i.i.i.i.i.i.i = select i1 %i.bmb, i1 true, i1 %i.bmc
  br i1 %or.cond.i447.i.i.i.i.i.i.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bmd = load float, ptr %i.auu, align 4
  %i.bme = fsub float %.0.i446.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bmg = load float, ptr %i.bmf, align 4
  %i.bmh = call float @llvm.fmuladd.f32(float %i.bmd, float %i.bme, float %i.bmg)
  store float %i.bmh, ptr %i.bmf, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

bb.ko:                                            ; preds = %bb.km
  %i.bmi = fcmp ult float %.055.i443.i.i.i.i.i.i.i, %i.avl
  %i.bmj = fcmp ult float %.053.i445.i.i.i.i.i.i.i, %i.avl
  %or.cond62.i448.i.i.i.i.i.i.i = select i1 %i.bmi, i1 true, i1 %i.bmj
  br i1 %or.cond62.i448.i.i.i.i.i.i.i, label %bb.kp, label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

bb.kp:                                            ; preds = %bb.ko
  %i.bmk = load float, ptr %i.auu, align 4
  %i.bml = fsub float %.0.i446.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bmm = fmul float %i.bml, %i.bmk
  %i.bmn = fsub float %.055.i443.i.i.i.i.i.i.i, %i.avj
  %i.bmo = fsub float %.053.i445.i.i.i.i.i.i.i, %i.avj
  %i.bmp = fadd float %i.bmn, %i.bmo
  %i.bmq = fmul float %i.bmp, 5.000000e-01
  %i.bmr = fsub float 1.000000e+00, %i.bmq
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bmt = load float, ptr %i.bms, align 4
  %i.bmu = call float @llvm.fmuladd.f32(float %i.bmm, float %i.bmr, float %i.bmt)
  store float %i.bmu, ptr %i.bms, align 4
  br label %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i: ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.kj
  %i.bmv = fcmp oeq float %i.avt, %i.aiz
  %i.bmw = fcmp ogt float %i.avt, %i.aqo
  %or.cond33.i.i.i.i.i.i = select i1 %i.bmv, i1 true, i1 %i.bmw
  %or.cond34.i.i.i.i.i.i = or i1 %i.auw, %or.cond33.i.i.i.i.i.i
  br i1 %or.cond34.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kq

bb.kq:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i
  br i1 %i.blp, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bmx = fsub float %i.aqj, %i.avl
  %i.bmy = fsub float %i.aqp, %i.avt
  %i.bmz = fmul float %i.bmx, %i.bmy
  %i.bna = fsub float %i.aiz, %i.avt
  %i.bnb = fdiv float %i.bmz, %i.bna
  %i.bnc = fadd float %i.bnb, %i.avl
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.055.i450.i.i.i.i.i.i.i = phi float [ %i.bnc, %bb.kr ], [ %i.avl, %bb.kq ] ; 4 uses
  %.054.i451.i.i.i.i.i.i.i = phi float [ %i.aqp, %bb.kr ], [ %i.avt, %bb.kq ] ; 3 uses
  br i1 %i.aqy, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bnd = fsub float %i.aqj, %.055.i450.i.i.i.i.i.i.i
  %i.bne = fmul float %i.avc, %i.bnd
  %i.bnf = fsub float %i.aiz, %.054.i451.i.i.i.i.i.i.i
  %i.bng = fdiv float %i.bne, %i.bnf
  %i.bnh = fadd float %i.aqj, %i.bng
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.053.i452.i.i.i.i.i.i.i = phi float [ %i.bnh, %bb.kt ], [ %i.aqj, %bb.ks ] ; 3 uses
  %.0.i453.i.i.i.i.i.i.i = phi float [ %i.aqo, %bb.kt ], [ %i.aiz, %bb.ks ] ; 2 uses
  %i.bni = fcmp ugt float %.055.i450.i.i.i.i.i.i.i, %i.avj
  %i.bnj = fcmp ugt float %.053.i452.i.i.i.i.i.i.i, %i.avj
  %or.cond.i454.i.i.i.i.i.i.i = select i1 %i.bni, i1 true, i1 %i.bnj
  br i1 %or.cond.i454.i.i.i.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bnk = load float, ptr %i.auu, align 4
  %i.bnl = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bnn = load float, ptr %i.bnm, align 4
  %i.bno = call float @llvm.fmuladd.f32(float %i.bnk, float %i.bnl, float %i.bnn)
  store float %i.bno, ptr %i.bnm, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.bnp = fcmp ult float %.055.i450.i.i.i.i.i.i.i, %i.avl
  %i.bnq = fcmp ult float %.053.i452.i.i.i.i.i.i.i, %i.avl
  %or.cond62.i455.i.i.i.i.i.i.i = select i1 %i.bnp, i1 true, i1 %i.bnq
  br i1 %or.cond62.i455.i.i.i.i.i.i.i, label %bb.kx, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  %i.bnr = load float, ptr %i.auu, align 4
  %i.bns = fsub float %.0.i453.i.i.i.i.i.i.i, %.054.i451.i.i.i.i.i.i.i
  %i.bnt = fmul float %i.bns, %i.bnr
  %i.bnu = fsub float %.055.i450.i.i.i.i.i.i.i, %i.avj
  %i.bnv = fsub float %.053.i452.i.i.i.i.i.i.i, %i.avj
  %i.bnw = fadd float %i.bnu, %i.bnv
  %i.bnx = fmul float %i.bnw, 5.000000e-01
  %i.bny = fsub float 1.000000e+00, %i.bnx
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.boa = load float, ptr %i.bnz, align 4
  %i.bob = call float @llvm.fmuladd.f32(float %i.bnt, float %i.bny, float %i.boa)
  store float %i.bob, ptr %i.bnz, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ky:                                            ; preds = %bb.ki
  br i1 %or.cond36.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.boc = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.bod = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.boc, i1 true, i1 %i.bod
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.boe = load float, ptr %i.auu, align 4
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bog = load float, ptr %i.bof, align 4
  %i.boh = call float @llvm.fmuladd.f32(float %i.boe, float %i.avh, float %i.bog)
  store float %i.boh, ptr %i.bof, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.boi = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avl
  %i.boj = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avl
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.boi, i1 true, i1 %i.boj
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.lc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.bok = load float, ptr %i.auu, align 4
  %i.bol = fmul float %i.avh, %i.bok
  %i.bom = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.bon = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %i.boo = fadd float %i.bom, %i.bon
  %i.bop = fmul float %i.boo, 5.000000e-01
  %i.boq = fsub float 1.000000e+00, %i.bop
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bos = load float, ptr %i.bor, align 4
  %i.bot = call float @llvm.fmuladd.f32(float %i.bol, float %i.boq, float %i.bos)
  store float %i.bot, ptr %i.bor, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.kh, %bb.kg, %bb.kf, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.jr, %bb.jq, %bb.jp, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jb, %bb.ja, %bb.iz, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.il, %bb.ik, %bb.ij, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hn, %bb.hm, %bb.hl, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gq

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gp, %._crit_edge.i.i.i.i.i.i.i, %bb.gl, %bb.gh, %bb.gg, %bb.gf, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.fg, %bb.ff, %bb.fe, %bb.fc
  %i.bou = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bou, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aiw, label %.lr.ph52.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph52.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bov = mul nuw nsw i32 %.07660.i.i.i.i.i.i, %i.zx
  br label %.lr.ph52.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph52.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

.lr.ph52.i.i.i.i.i.i:                             ; preds = %.lr.ph52.i.i.i.i.i.i, %.lr.ph52.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i ], [ 0, %.lr.ph52.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07751.i.i.i.i.i.i = phi float [ %i.boy, %.lr.ph52.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph52.i.i.i.preheader.i.i.i ]
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv.i.i.i.i.i.i
  %i.box = load float, ptr %i.bow, align 4
  %i.boy = fadd float %.07751.i.i.i.i.i.i, %i.box ; 2 uses
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bpa = load float, ptr %i.boz, align 4
  %i.bpb = fadd float %i.bpa, %i.boy
  %i.bpc = call float @llvm.fabs.f32(float %i.bpb)
  %i.bpd = call float @llvm.fmuladd.f32(float %i.bpc, float 2.550000e+02, float 5.000000e-01)
  %i.bpe = fptosi float %i.bpd to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.bpe, i32 255)
  %i.bpf = trunc nuw i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bpg = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bph = add nuw nsw i32 %i.bov, %i.bpg
  %10 = zext nneg i32 %i.bph to i64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %10
  store i8 %i.bpf, ptr %i.bpi, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aih
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph55.i.i.i.i.i.i
  %i.bpj = phi ptr [ %i.bpo, %.lr.ph55.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.254.i.i.i.i.i.i = phi ptr [ %i.bpn, %.lr.ph55.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 8 ; 2 uses
  %i.bpl = load <2 x float>, ptr %i.bpk, align 8
  %i.bpm = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bpl)
  store float %i.bpm, ptr %i.bpk, align 8
  %i.bpn = load ptr, ptr %.254.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bpo = load ptr, ptr %i.bpn, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bpo, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge56.i.i.i.i.i.i, label %.lr.ph55.i.i.i.i.i.i

._crit_edge56.i.i.i.i.i.i:                        ; preds = %.lr.ph55.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bpp = add nsw i32 %.07561.i.i.i.i.i.i, 1
  %i.bpq = add nuw nsw i32 %.07660.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bpq, %i.aaa
  br i1 %exitcond61.not.i.i.i, label %._crit_edge65.i.i.i.i.i.i, label %bb.eo

._crit_edge65.i.i.i.i.i.i:                        ; preds = %._crit_edge56.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge65.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bpr, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i ] ; 2 uses
  %i.bpr = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bpr, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge65.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.ld, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agm) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.ace) #39
  call void @free(ptr noundef %i.aeb) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zx, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zx, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zx, %bb.dp ], [ %i.zx, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aaa, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aaa, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aaa, %bb.dp ], [ %i.aaa, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aaf, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aaf, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.bps = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.bps) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.le:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zn, 32
  br i1 %.not141, label %bb.nl, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %bb.lg, label %stbtt_GetCodepointSDF.exit

bb.lg:                                            ; preds = %bb.lf
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zo, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bpv = load i32, ptr %i.a, align 4            ; 4 uses
  %i.bpw = load i32, ptr %i.c, align 4            ; 9 uses
  %i.bpx = icmp eq i32 %i.bpv, %i.bpw
  br i1 %i.bpx, label %stbtt_GetCodepointSDF.exit, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bpy = load i32, ptr %i.b, align 4            ; 2 uses
  %i.bpz = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bqa = icmp eq i32 %i.bpy, %i.bpz
  br i1 %i.bqa, label %stbtt_GetCodepointSDF.exit, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bqb = add i32 %i.bpv, -4                     ; 4 uses
  %i.bqc = add i32 %i.bpy, -4                     ; 7 uses
  %i.bqd = add i32 %i.bpw, 4                      ; 6 uses
  %i.bqe = add i32 %i.bpz, 4                      ; 4 uses
  %i.bqf = sub i32 %i.bqd, %i.bqb                 ; 4 uses
  %i.bqg = sub nsw i32 %i.bqe, %i.bqc             ; 2 uses
  store i32 %i.bqb, ptr %i.bpt, align 4
  store i32 %i.bqc, ptr %i.bpu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bqh = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zo, ptr noundef %i.e) ; 5 uses
  %i.bqi = mul nsw i32 %i.bqg, %i.bqf
  %i.bqj = sext i32 %i.bqi to i64
  %i.bqk = call noalias ptr @malloc(i64 noundef %i.bqj) #42 ; 23 uses
  %i.bql = sext i32 %i.bqh to i64
  %i.bqm = shl nsw i64 %i.bql, 2
  %i.bqn = call noalias ptr @malloc(i64 noundef %i.bqm) #42 ; 4 uses
  %i.bqo = icmp sgt i32 %i.bqh, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bqo, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.li
  %i.bqp = add nsw i32 %i.bqh, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bqh to i64
  %i.bqq = zext nneg i32 %i.bqp to i64
  br label %bb.ng

.preheader485.i.i:                                ; preds = %bb.nk, %bb.li
  %i.bqr = icmp slt i32 %i.bqc, %i.bqe
  br i1 %i.bqr, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bqs = icmp slt i32 %i.bqb, %i.bqd
  %wide.trip.count.i.i.i156 = zext i32 %i.bqh to i64 ; 2 uses
  br i1 %i.bqs, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bqt = zext i32 %i.bqb to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bpv              ; 2 uses
  br i1 %i.bqo, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bqu = add i32 %i.bpw, 7
  %i.bqv = sub i32 %i.bqu, %i.bpv                 ; 8 uses
  %i.bqw = zext i32 %i.bqv to i64
  %i.bqx = add nuw nsw i64 %i.bqw, 1              ; 15 uses
  %i.bqy = add i32 %i.bpw, 3
  %i.bqz = add i32 %i.bpw, 3
  %i.bra = add i32 %i.bpw, 3
  %min.iters.check662 = icmp ult i32 %i.bqv, 7
  %min.iters.check690 = icmp ult i32 %i.bqv, 31
  %i.brb = and i64 %i.bqx, 24
  %n.vec692 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.brc = add nuw nsw i64 %n.vec692, %i.bqt
  %cmp.n697 = icmp eq i64 %i.bqx, %n.vec692
  %min.epilog.iters.check703 = icmp eq i64 %i.brb, 0
  %n.vec705 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brd = add nuw nsw i64 %n.vec705, %i.bqt
  %cmp.n710 = icmp eq i64 %i.bqx, %n.vec705
  %min.iters.check664 = icmp ult i32 %i.bqv, 31
  %i.bre = and i64 %i.bqx, 24
  %n.vec666 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.brf = add nuw nsw i64 %n.vec666, %i.bqt
  %cmp.n671 = icmp eq i64 %i.bqx, %n.vec666
  %min.epilog.iters.check677 = icmp eq i64 %i.bre, 0
  %n.vec679 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brg = add nuw nsw i64 %n.vec679, %i.bqt
  %cmp.n684 = icmp eq i64 %i.bqx, %n.vec679
  %min.iters.check636 = icmp ult i32 %i.bqv, 7
  %min.iters.check638 = icmp ult i32 %i.bqv, 31
  %i.brh = and i64 %i.bqx, 24
  %n.vec640 = and i64 %i.bqx, 8589934560          ; 4 uses
  %i.bri = add nuw nsw i64 %n.vec640, %i.bqt
  %cmp.n645 = icmp eq i64 %i.bqx, %n.vec640
  %min.epilog.iters.check651 = icmp eq i64 %i.brh, 0
  %n.vec653 = and i64 %i.bqx, 8589934584          ; 3 uses
  %i.brj = add nuw nsw i64 %n.vec653, %i.bqt
  %cmp.n658 = icmp eq i64 %i.bqx, %n.vec653
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cjj, %._crit_edge493.i.split.us.us.i ], [ %i.bqc, %.preheader.preheader.i.i ] ; 3 uses
  %i.brk = sitofp i32 %.0435494.i.us.i to float
  %i.brl = fadd float %i.brk, 5.000000e-01        ; 8 uses
  %i.brm = fdiv float %i.brl, %i.yu               ; 4 uses
  %i.brn = fpext float %i.brm to double
  %i.bro = fadd float %i.brm, f0xBC23D70A
  %i.brp = fadd float %i.brm, f0x3C23D70A
  %i.brq = sub nsw i32 %.0435494.i.us.i, %i.bqc
  %i.brr = mul nuw nsw i32 %i.brq, %i.bqf
  %.reass.i.us.i = add i32 %i.brr, %reass.sub.i.i
  br label %bb.lj

bb.lj:                                            ; preds = %bb.nf, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bqt, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.nf ] ; 2 uses
  %i.brs = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.brt = sitofp i32 %i.brs to float
  %i.bru = fadd float %i.brt, 5.000000e-01        ; 8 uses
  %i.brv = fdiv float %i.bru, %i.yc               ; 7 uses
  %i.brw = call double @fmod(double noundef %i.brn, double noundef 1.000000e+00) #39 ; 2 uses
  %i.brx = fcmp olt double %i.brw, f0x3F847AE130000000
  br i1 %i.brx, label %.lr.ph.i.i.us.us.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bry = fcmp ogt double %i.brw, f0x3FEFAE1490000000
  br i1 %i.bry, label %bb.ll, label %.lr.ph.i.i.us.us.i

bb.ll:                                            ; preds = %bb.lk
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.b, %bb.z
  %.02329.i = phi ptr [ %.023.ph.i, %bb.z ], [ null, %bb.b ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.02329.i, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !44, !range !45, !noundef !46
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !47 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !48 ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bk                ; 91 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49
  %i.bq = sdiv i32 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !50 ; 47 uses
  %i.bt = insertelement <2 x i32> <i32 poison, i32 -1>, i32 %i.bq, i64 0
  %i.bu = insertelement <2 x i32> <i32 poison, i32 1>, i32 %i.bs, i64 0
  %i.bv = sdiv <2 x i32> %i.bt, %i.bu             ; 11 uses
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bx = extractelement <2 x i32> %i.bv, i64 0   ; 133 uses
  br i1 %i.bi, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 520
  call fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i32 noundef %i.bx, i32 noundef %i.bs, i32 noundef %i.bk, i32 noundef %i.bm)
  %i.ca = load i8, ptr %1, align 8, !tbaa !51, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.ab, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i115, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.ad, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 3 uses
  %.not3.i.i116 = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !20 ; 3 uses
  br i1 %.not3.i.i116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci), !inline_history !717
  br label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.af:                                            ; preds = %bb.ad
  %.not.i3.i = icmp eq ptr %i.ci, null
  br i1 %.not.i3.i, label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ci) #9
  br label %_ZN4ncnn24Deconvolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE.exit.sink.split

bb.ah:                                            ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52, !range !45, !noundef !46
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cp = and i32 %i.bs, 15
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = and i32 %i.bs, 7
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = and i32 %i.bs, 3
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = select i1 %i.cu, i32 4, i32 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ah
  %.053 = phi i32 [ 1, %bb.ah ], [ 16, %bb.ai ], [ %i.cv, %bb.ak ], [ 8, %bb.aj ] ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !53, !range !45, !noundef !46
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.am, label %bb.dc

bb.am:                                            ; preds = %bb.al
  %i.cz = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 2, i32 noundef 1)
          to label %bb.an unwind label %bb.bg

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 3, i32 noundef 0)
          to label %bb.ao unwind label %bb.bg

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 4, i32 noundef 1)
          to label %bb.ap unwind label %bb.bg

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 5, i32 noundef 0)
          to label %bb.aq unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 6, i32 noundef 1)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dc = mul nsw i32 %i.db, %i.bn
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 7, i32 noundef %i.dc)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 8, i32 noundef 0)
          to label %bb.at unwind label %bb.bg

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 9, i32 noundef %i.bx)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 10, i32 noundef -1)
          to label %bb.av unwind label %bb.bg

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 11, i32 noundef 0)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 12, i32 noundef %.053)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(208) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bg     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 0, ptr %i.dp, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dr = load i32, ptr %i.br, align 8, !tbaa !50
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i32 noundef %i.bn, i32 noundef %i.bx, i32 noundef %i.dr, ptr noundef null)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ds = load i32, ptr %i.br, align 8, !tbaa !50
  %i.dt = mul nsw i32 %i.ds, %i.bn
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.dt, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.preheader198 unwind label %bb.bi

.preheader198:                                    ; preds = %bb.az
  %i.du = icmp sgt i32 %i.bx, 0
  br i1 %i.du, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader198
  %i.dv = load ptr, ptr %11, align 16, !tbaa !20
  %i.dw = load i32, ptr %i.dn, align 4, !tbaa !55
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.dj, align 16, !tbaa !56
  %factor.op.mul250 = mul i64 %i.dy, %i.dx
  %i.dz = load i32, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not251 = icmp sgt i32 %.053, %i.dz
  %i.ea = icmp sgt i32 %i.bn, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not251, label %._crit_edge.split, label %.preheader197.lr.ph.preheader

.preheader197.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.ee = add nsw i32 %.053, -1
  %i.ef = zext nneg i32 %.053 to i64              ; 9 uses
  %wide.trip.count307 = zext nneg i32 %i.bx to i64
  %wide.trip.count299 = zext nneg i32 %i.bn to i64
  %i.eg = add nsw i64 %i.ef, -1                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.ef, 2
  %min.iters.check5929 = icmp samesign ult i32 %.053, 4
  %min.iters.check5931 = icmp samesign ult i32 %.053, 16
  %n.vec5933 = and i64 %i.ef, 16                  ; 2 uses
  %i.ei = shl nuw nsw i64 %n.vec5933, 2
  %n.vec5950 = and i64 %i.ef, 12                  ; 3 uses
  %i.ej = shl nuw nsw i64 %n.vec5950, 2
  %i.ek = icmp eq i64 %n.vec5950, 4
  %i.el = icmp eq i64 %n.vec5950, 8
  %xtraiter6054 = and i64 %i.ef, 1
  %i.em = icmp samesign ult i32 %.053, 4
  %unroll_iter = and i64 %i.ef, 28
  %lcmp.mod6055.not = icmp eq i64 %xtraiter6054, 0
  %lcmp.mod6057 = trunc i32 %.053 to i1
  br label %.preheader197.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge248, %.lr.ph, %.preheader198
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !18 ; 2 uses
  %.not.i70 = icmp eq ptr %i.eo, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.split
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit68

bb.bb:                                            ; preds = %bb.ba
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !19 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.es, null
  %i.et = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i71, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef %i.et)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.bf, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %.not.i108 = icmp eq ptr %i.et, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.et) #9
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.bf:                                            ; preds = %bb.bc
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.ba, %._crit_edge.split, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  store i64 0, ptr %i.fe, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fb, i8 0, i64 28, i1 false)
  %i.ff = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ff, null
  br i1 %.not.i113, label %.thread, label %bb.bj

bb.bg:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bh:                                            ; preds = %bb.ay
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.bi:                                            ; preds = %bb.az
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18 ; 2 uses
  %.not.i82 = icmp eq ptr %i.fk, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.cd

.preheader197.lr.ph:                              ; preds = %.preheader197.lr.ph.preheader, %._crit_edge248
  %indvars.iv304 = phi i64 [ 0, %.preheader197.lr.ph.preheader ], [ %indvars.iv.next305, %._crit_edge248 ] ; 4 uses
  %i.fl = load i32, ptr %i.eb, align 4
  %i.fm = load ptr, ptr %12, align 8              ; 4 uses
  %i.fn = load i64, ptr %i.ec, align 8            ; 5 uses
  %i.fo = load i64, ptr %i.ed, align 8            ; 6 uses
  %factor.op.mul = mul i64 %i.fn, %i.fo           ; 9 uses
  %i.fp = sext i32 %i.fl to i64                   ; 2 uses
  %i.fq = mul i64 %indvars.iv304, %i.fp
  %i.fr = mul i64 %i.fq, %i.fo                    ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.fm, i64 %i.fr
  br i1 %i.ea, label %.preheader197.us.preheader, label %._crit_edge248

.preheader197.us.preheader:                       ; preds = %.preheader197.lr.ph
  %.reass = mul i64 %factor.op.mul250, %indvars.iv304
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.reass
  %i.ft = mul i64 %i.fn, %i.fo
  %i.fu = sub i64 0, %i.ft
  %i.fv = mul i64 %i.fn, %i.ef
  %i.fw = mul i64 %i.fv, %i.fo
  %i.fx = mul i64 %i.fn, %i.ef
  %i.fy = mul i64 %i.fx, %i.fo
  %i.fz = mul i64 %i.eg, %i.fn
  %i.ga = mul i64 %indvars.iv304, %i.fp
  %i.gb = add i64 %i.fz, %i.ga
  %i.gc = mul i64 %i.fo, %i.gb
  %i.gd = getelementptr i8, ptr %i.fm, i64 %i.fr
  %i.ge = getelementptr i8, ptr %i.fm, i64 %i.gc
  %i.gf = getelementptr i8, ptr %i.fm, i64 %i.fr
  %i.gg = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.gh = select i1 %i.gg, i64 %i.fu, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gh, i64 %i.eg) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gi = sub i64 0, %mul.result
  %broadcast.splatinsert5934 = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat5935 = shufflevector <16 x i64> %broadcast.splatinsert5934, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert5953 = insertelement <4 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat5954 = shufflevector <4 x i64> %broadcast.splatinsert5953, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader197.us

.preheader197.us:                                 ; preds = %.preheader197.us.preheader, %._crit_edge.us
  %indvar5918 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvar.next5919, %._crit_edge.us ] ; 3 uses
  %indvars.iv301 = phi i64 [ 0, %.preheader197.us.preheader ], [ %indvars.iv.next302, %._crit_edge.us ] ; 8 uses
  %.042246.us = phi ptr [ %i.fs, %.preheader197.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  %i.gj = mul i64 %i.fy, %indvar5918              ; 2 uses
  %i.gk = mul i64 %i.fw, %indvar5918
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.ge, i64 %i.gj
  %i.gn = getelementptr i8, ptr %i.gf, i64 %i.gk
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert5951 = insertelement <4 x i64> poison, i64 %indvars.iv301, i64 0
  %broadcast.splat5952 = shufflevector <4 x i64> %broadcast.splatinsert5951, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.go = add nuw nsw <4 x i64> %broadcast.splat5952, <i64 0, i64 1, i64 2, i64 3>
  %i.gp = mul <4 x i64> %broadcast.splat5954, %i.go
  %i.gq = add nuw nsw <4 x i64> %broadcast.splat5952, <i64 4, i64 5, i64 6, i64 7>
  %i.gr = mul <4 x i64> %broadcast.splat5954, %i.gq
  %i.gs = add nuw nsw <4 x i64> %broadcast.splat5952, <i64 8, i64 9, i64 10, i64 11>
  %i.gt = mul <4 x i64> %broadcast.splat5954, %i.gs
  br label %iter.check5945

.noexc112.us:                                     ; preds = %.noexc112.us.preheader, %.noexc112.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ] ; 5 uses
  %.2242.us = phi ptr [ %i.hf, %.noexc112.us ], [ %.1244.us, %.noexc112.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc112.us ], [ 0, %.noexc112.us.preheader ]
  %i.gu = add nuw nsw i64 %indvars.iv, %indvars.iv301
  %.reass.us = mul i64 %factor.op.mul, %i.gu
  %gep241.us = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us
  %i.gv = load float, ptr %gep241.us, align 4, !tbaa !39
  store float %i.gv, ptr %.2242.us, align 4, !tbaa !39
  %i.gw = getelementptr inbounds nuw i8, ptr %.2242.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.gx = add nuw nsw i64 %indvars.iv.next, %indvars.iv301
  %.reass.us.1 = mul i64 %factor.op.mul, %i.gx
  %gep241.us.1 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.1
  %i.gy = load float, ptr %gep241.us.1, align 4, !tbaa !39
  store float %i.gy, ptr %i.gw, align 4, !tbaa !39
  %i.gz = getelementptr inbounds nuw i8, ptr %.2242.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.ha = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv301
  %.reass.us.2 = mul i64 %factor.op.mul, %i.ha
  %gep241.us.2 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.2
  %i.hb = load float, ptr %gep241.us.2, align 4, !tbaa !39
  store float %i.hb, ptr %i.gz, align 4, !tbaa !39
  %i.hc = getelementptr inbounds nuw i8, ptr %.2242.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.hd = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv301
  %.reass.us.3 = mul i64 %factor.op.mul, %i.hd
  %gep241.us.3 = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.3
  %i.he = load float, ptr %gep241.us.3, align 4, !tbaa !39
  store float %i.he, ptr %i.hc, align 4, !tbaa !39
  %i.hf = getelementptr inbounds nuw i8, ptr %.2242.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.noexc112.us, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.noexc112.us
  br i1 %lcmp.mod6055.not, label %.loopexit, label %.noexc112.us.epil.preheader

.noexc112.us.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.noexc112.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.noexc112.us.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.2242.us.epil.init = phi ptr [ %.1244.us, %.noexc112.us.preheader ], [ %i.hf, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6057)
  br label %.noexc112.us.epil

.noexc112.us.epil:                                ; preds = %.noexc112.us.epil, %.noexc112.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.noexc112.us.epil ], [ %indvars.iv.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %.2242.us.epil = phi ptr [ %i.hi, %.noexc112.us.epil ], [ %.2242.us.epil.init, %.noexc112.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc112.us.epil ], [ 0, %.noexc112.us.epil.preheader ] ; 2 uses
  %i.hg = add nuw nsw i64 %indvars.iv.epil, %indvars.iv301
  %.reass.us.epil = mul i64 %factor.op.mul, %i.hg
  %gep241.us.epil = getelementptr i8, ptr %invariant.gep240.us, i64 %.reass.us.epil
  %i.hh = load float, ptr %gep241.us.epil, align 4, !tbaa !39
  store float %i.hh, ptr %.2242.us.epil, align 4, !tbaa !39
  %i.hi = getelementptr inbounds nuw i8, ptr %.2242.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.noexc112.us.epil, !llvm.loop !96

.loopexit:                                        ; preds = %vector.body5936, %vec.epilog.ph5949, %vec.epilog.vector.body5957.1, %vec.epilog.vector.body5957.2, %.loopexit.loopexit.unr-lcssa, %.noexc112.us.epil
  %.lcssa = phi ptr [ %i.hi, %.noexc112.us.epil ], [ %i.hy, %vec.epilog.ph5949 ], [ %i.hf, %.loopexit.loopexit.unr-lcssa ], [ %i.hy, %vec.epilog.vector.body5957.2 ], [ %i.hy, %vec.epilog.vector.body5957.1 ], [ %i.ht, %vector.body5936 ] ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge.us, label %iter.check5945, !llvm.loop !97

iter.check5945:                                   ; preds = %.preheader197.us, %.loopexit
  %indvars.iv296 = phi i64 [ 0, %.preheader197.us ], [ %indvars.iv.next297, %.loopexit ] ; 4 uses
  %.1244.us = phi ptr [ %.042246.us, %.preheader197.us ], [ %.lcssa, %.loopexit ] ; 10 uses
  %i.hj = shl nuw nsw i64 %indvars.iv296, 2       ; 2 uses
  %scevgep5923 = getelementptr i8, ptr %i.gl, i64 %i.hj ; 4 uses
  %scevgep5924 = getelementptr i8, ptr %i.gm, i64 %i.hj ; 4 uses
  %i.hk = icmp ult ptr %scevgep5923, %scevgep5924
  %umin = select i1 %i.hk, ptr %scevgep5923, ptr %scevgep5924
  %i.hl = icmp ugt ptr %scevgep5923, %scevgep5924
  %umax = select i1 %i.hl, ptr %scevgep5923, ptr %scevgep5924
  %scevgep5925 = getelementptr i8, ptr %umax, i64 4
  %invariant.gep240.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv296 ; 9 uses
  br i1 %min.iters.check5929, label %.noexc112.us.preheader, label %vector.scevcheck

.noexc112.us.preheader:                           ; preds = %vector.memcheck5921, %vector.scevcheck, %iter.check5945
  br i1 %i.em, label %.noexc112.us.epil.preheader, label %.noexc112.us

vector.scevcheck:                                 ; preds = %iter.check5945
  %i.hm = shl nuw nsw i64 %indvars.iv296, 2
  %scevgep5920 = getelementptr i8, ptr %i.gn, i64 %i.hm ; 4 uses
  %i.hn = getelementptr i8, ptr %scevgep5920, i64 %mul.result
  %i.ho = getelementptr i8, ptr %scevgep5920, i64 %i.gi
  %i.hp = icmp ult ptr %i.hn, %scevgep5920
  %i.hq = icmp ugt ptr %i.ho, %scevgep5920
  %i.hr = select i1 %i.gg, i1 %i.hq, i1 %i.hp
  %i.hs = or i1 %i.hr, %mul.overflow
  br i1 %i.hs, label %.noexc112.us.preheader, label %vector.memcheck5921

vector.memcheck5921:                              ; preds = %vector.scevcheck
  %scevgep5922 = getelementptr i8, ptr %.1244.us, i64 %i.eh
  %bound05926 = icmp ult ptr %.1244.us, %scevgep5925
  %bound15927 = icmp ult ptr %umin, %scevgep5922
  %found.conflict5928 = and i1 %bound05926, %bound15927
  br i1 %found.conflict5928, label %.noexc112.us.preheader, label %vector.main.loop.iter.check5930

vector.main.loop.iter.check5930:                  ; preds = %vector.memcheck5921
  br i1 %min.iters.check5931, label %vec.epilog.ph5949, label %vector.ph5932

vector.ph5932:                                    ; preds = %vector.main.loop.iter.check5930
  %i.ht = getelementptr i8, ptr %.1244.us, i64 %i.ei
  br label %vector.body5936

vector.body5936:                                  ; preds = %vector.body5936, %vector.ph5932
  %index5937 = phi i64 [ 0, %vector.ph5932 ], [ %index.next5940, %vector.body5936 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph5932 ], [ %vec.ind.next, %vector.body5936 ] ; 2 uses
  %i.hu = shl i64 %index5937, 2
  %next.gep5938 = getelementptr i8, ptr %.1244.us, i64 %i.hu
  %i.hv = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.hw = mul <16 x i64> %broadcast.splat5935, %i.hv
  %wide.gep5939 = getelementptr i8, ptr %invariant.gep240.us, <16 x i64> %i.hw
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep5939, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !718
  store <16 x float> %wide.masked.gather, ptr %next.gep5938, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  %index.next5940 = add nuw i64 %index5937, 16    ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.hx = icmp eq i64 %index.next5940, %n.vec5933
  br i1 %i.hx, label %.loopexit, label %vector.body5936, !llvm.loop !101

vec.epilog.ph5949:                                ; preds = %vector.main.loop.iter.check5930
  %i.hy = getelementptr i8, ptr %.1244.us, i64 %i.ej ; 3 uses
  %wide.gep5961 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gp
  %wide.masked.gather5962 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5961, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5962, ptr %.1244.us, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.ek, label %.loopexit, label %vec.epilog.vector.body5957.1

vec.epilog.vector.body5957.1:                     ; preds = %vec.epilog.ph5949
  %next.gep5960.1 = getelementptr i8, ptr %.1244.us, i64 16
  %wide.gep5961.1 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gr
  %wide.masked.gather5962.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5961.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5962.1, ptr %next.gep5960.1, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br i1 %i.el, label %.loopexit, label %vec.epilog.vector.body5957.2

vec.epilog.vector.body5957.2:                     ; preds = %vec.epilog.vector.body5957.1
  %next.gep5960.2 = getelementptr i8, ptr %.1244.us, i64 32
  %wide.gep5961.2 = getelementptr i8, ptr %invariant.gep240.us, <4 x i64> %i.gt
  %wide.masked.gather5962.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep5961.2, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39, !alias.scope !718
  store <4 x float> %wide.masked.gather5962.2, ptr %next.gep5960.2, align 4, !tbaa !39, !alias.scope !719, !noalias !718
  br label %.loopexit

._crit_edge.us:                                   ; preds = %.loopexit
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, %i.ef ; 2 uses
  %15 = trunc i64 %indvars.iv.next302 to i32
  %16 = add i32 %i.ee, %15
  %17 = icmp slt i32 %16, %i.dz
  %indvar.next5919 = add i64 %indvar5918, 1
  br i1 %17, label %.preheader197.us, label %._crit_edge248, !llvm.loop !102

._crit_edge248:                                   ; preds = %._crit_edge.us, %.preheader197.lr.ph
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge.split, label %.preheader197.lr.ph, !llvm.loop !103

bb.bj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.hz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ia = atomicrmw add ptr %i.ff, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.hz, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ib = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %i.id = load ptr, ptr %i.fb, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.id, null
  %i.ie = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef %i.ie)
          to label %.thread unwind label %bb.cj, !inline_history !1

bb.bn:                                            ; preds = %bb.bl
  %.not.i18.i = icmp eq ptr %i.ie, null
  br i1 %.not.i18.i, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef nonnull %i.ie) #9
  br label %.thread

.thread:                                          ; preds = %_ZN4ncnn3MatD2Ev.exit68, %bb.bk, %bb.bj, %bb.bm, %bb.bo, %bb.bn
  %i.ii = load <2 x ptr>, ptr %11, align 16, !tbaa !61
  store <2 x ptr> %i.ii, ptr %13, align 16, !tbaa !61
  %i.ij = load i64, ptr %i.dj, align 16, !tbaa !56
  store i64 %i.ij, ptr %i.ez, align 16, !tbaa !56
  %i.ik = load i32, ptr %i.dk, align 8, !tbaa !62
  store i32 %i.ik, ptr %i.fa, align 8, !tbaa !62
  %i.il = load ptr, ptr %i.dl, align 16, !tbaa !19
  store ptr %i.il, ptr %i.fb, align 16, !tbaa !19
  %i.im = load <4 x i32>, ptr %i.dm, align 8, !tbaa !63
  store <4 x i32> %i.im, ptr %i.fc, align 8, !tbaa !63
  %i.in = load i32, ptr %i.do, align 8, !tbaa !64
  store i32 %i.in, ptr %i.fd, align 8, !tbaa !64
  %i.io = load i64, ptr %i.dp, align 16, !tbaa !21
  store i64 %i.io, ptr %i.fe, align 16, !tbaa !21
  %i.ip = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %13)
          to label %bb.bp unwind label %bb.ck

bb.bp:                                            ; preds = %.thread
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = invoke noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(208) %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.cl     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.iu = load ptr, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = invoke noundef i32 %i.ix(ptr noundef nonnull align 8 dereferenceable(208) %i.iu, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.preheader.preheader unwind label %bb.cj ; 0 uses

.preheader.preheader:                             ; preds = %bb.bq
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !18 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ja, null
  br i1 %.not.i74, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.br

bb.br:                                            ; preds = %.preheader.preheader
  %i.jb = atomicrmw add ptr %i.ja, i32 -1 acq_rel, align 4
  %i.jc = icmp eq i32 %i.jb, 1
  br i1 %i.jc, label %bb.bs, label %_ZN4ncnn3MatD2Ev.exit67

bb.bs:                                            ; preds = %bb.br
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.je = load ptr, ptr %i.jd, align 16, !tbaa !19 ; 3 uses
  %.not3.i75 = icmp eq ptr %i.je, null
  %i.jf = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i75, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !12
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef %i.jf)
          to label %_ZN4ncnn3MatD2Ev.exit67 unwind label %bb.bw, !inline_history !0

bb.bu:                                            ; preds = %bb.bs
  %.not.i106 = icmp eq ptr %i.jf, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @free(ptr noundef nonnull %i.jf) #9
  br label %_ZN4ncnn3MatD2Ev.exit67

bb.bw:                                            ; preds = %bb.bt
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %bb.br, %.preheader.preheader, %bb.bt, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.jl = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i78 = icmp eq ptr %i.jl, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.bx

bb.bx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit67
  %i.jm = atomicrmw add ptr %i.jl, i32 -1 acq_rel, align 4
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.by, label %_ZN4ncnn3MatD2Ev.exit66

bb.by:                                            ; preds = %bb.bx
  %i.jo = load ptr, ptr %i.dl, align 16, !tbaa !19 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.jo, null
  %i.jp = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i79, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef %i.jp)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.cc, !inline_history !0

bb.ca:                                            ; preds = %bb.by
  %.not.i104 = icmp eq ptr %i.jp, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.jp) #9
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.cc:                                            ; preds = %bb.bz
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit66:                          ; preds = %bb.bx, %_ZN4ncnn3MatD2Ev.exit67, %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.gb

bb.cd:                                            ; preds = %bb.bi
  %i.jv = atomicrmw add ptr %i.fk, i32 -1 acq_rel, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %bb.ce, label %_ZN4ncnn3MatD2Ev.exit65

bb.ce:                                            ; preds = %bb.cd
  %i.jx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !19 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.jy, null
  %i.jz = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i83, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef %i.jz)
          to label %_ZN4ncnn3MatD2Ev.exit65 unwind label %bb.ci, !inline_history !0

bb.cg:                                            ; preds = %bb.ce
  %.not.i102 = icmp eq ptr %i.jz, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.jz) #9
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.ci:                                            ; preds = %bb.cf
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit65:                          ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.bi, %bb.cd, %bb.bh
  %.pn59.pn = phi { ptr, i32 } [ %i.fh, %bb.bh ], [ %i.fi, %bb.cd ], [ %i.fi, %bb.bi ], [ %i.fi, %bb.cf ], [ %i.fi, %bb.cg ], [ %i.fi, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.cu

bb.cj:                                            ; preds = %bb.bm, %bb.bq
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ck:                                            ; preds = %.thread
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bp
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.kh, %bb.cl ], [ %i.kg, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %.pn57 = phi { ptr, i32 } [ %i.kf, %bb.cj ], [ %.pn, %bb.cm ]
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !18 ; 2 uses
  %.not.i86 = icmp eq ptr %i.kj, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kk = atomicrmw add ptr %i.kj, i32 -1 acq_rel, align 4
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.cp, label %_ZN4ncnn3MatD2Ev.exit64

bb.cp:                                            ; preds = %bb.co
  %i.km = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.kn = load ptr, ptr %i.km, align 16, !tbaa !19 ; 3 uses
  %.not3.i87 = icmp eq ptr %i.kn, null
  %i.ko = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i87, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef %i.ko)
          to label %_ZN4ncnn3MatD2Ev.exit64 unwind label %bb.ct, !inline_history !0

bb.cr:                                            ; preds = %bb.cp
  %.not.i100 = icmp eq ptr %i.ko, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @free(ptr noundef nonnull %i.ko) #9
  br label %_ZN4ncnn3MatD2Ev.exit64

bb.ct:                                            ; preds = %bb.cq
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit64:                          ; preds = %bb.co, %bb.cn, %bb.cq, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit64, %_ZN4ncnn3MatD2Ev.exit65
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZN4ncnn3MatD2Ev.exit65 ], [ %.pn57, %_ZN4ncnn3MatD2Ev.exit64 ]
  %i.ku = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ku, null
  br i1 %.not.i90, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kv = atomicrmw add ptr %i.ku, i32 -1 acq_rel, align 4
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %bb.cw, label %_ZN4ncnn3MatD2Ev.exit

bb.cw:                                            ; preds = %bb.cv
  %i.kx = load ptr, ptr %i.dl, align 16, !tbaa !19 ; 3 uses
  %.not3.i91 = icmp eq ptr %i.kx, null
  %i.ky = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i91, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  invoke void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef %i.ky)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.da, !inline_history !0

bb.cy:                                            ; preds = %bb.cw
  %.not.i98 = icmp eq ptr %i.ky, null
  br i1 %.not.i98, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.ky) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.da:                                            ; preds = %bb.cx
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.cv, %bb.cu, %bb.cx, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.db

bb.db:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.bg
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %i.fg, %bb.bg ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %common.resume

bb.dc:                                            ; preds = %bb.al
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !55
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.lk, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.lj, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.lh, i64 noundef 4, ptr noundef null)
  %i.ll = mul nsw i32 %i.bx, %i.bs                ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.preheader1818.lr.ph.i, label %._crit_edge1823.split.i

.preheader1818.lr.ph.i:                           ; preds = %bb.dc
  %i.ln = icmp sgt i32 %i.bn, 0
  %i.lo = sext i32 %i.bn to i64                   ; 5 uses
  br i1 %i.ln, label %.preheader1818.preheader.i, label %._crit_edge1823.split.i

.preheader1818.preheader.i:                       ; preds = %.preheader1818.lr.ph.i
  %i.lp = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.lq = load ptr, ptr %i.le, align 8, !tbaa !20 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.bn to i64 ; 10 uses
  %i.lr = sub nsw i64 %i.lo, %wide.trip.count.i
  %i.ls = shl nsw i64 %i.lr, 2
  %scevgep = getelementptr i8, ptr %i.lp, i64 %i.ls
  %i.lt = add nsw i32 %i.ll, -1
  %i.lu = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.lv = shl nuw nsw i64 %i.lu, 2
  %i.lw = add nuw nsw i64 %i.lv, 4
  %i.lx = mul i64 %i.lw, %i.lo
  %scevgep448 = getelementptr i8, ptr %i.lp, i64 %i.lx
  %i.ly = mul nuw nsw i64 %i.lo, %i.lu
  %i.lz = add nuw nsw i64 %i.ly, %wide.trip.count.i
  %i.ma = shl i64 %i.lz, 2
  %scevgep449 = getelementptr i8, ptr %i.lq, i64 %i.ma
  %min.iters.check = icmp ult i32 %i.bn, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep449
  %bound1 = icmp ult ptr %i.lq, %scevgep448
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check451 = icmp ult i32 %i.bn, 64
  %i.mb = and i64 %wide.trip.count.i, 56
  %n.vec = and i64 %wide.trip.count.i, 2147483584 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.mb, 0
  %n.vec458 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n463 = icmp eq i64 %n.vec458, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader1818.preheader.i
  %.08701822.i = phi i32 [ %i.na, %._crit_edge.i ], [ 0, %.preheader1818.preheader.i ]
  %.08711821.i = phi ptr [ %i.mz, %._crit_edge.i ], [ %i.lq, %.preheader1818.preheader.i ] ; 8 uses
  %.08981820.i = phi ptr [ %i.mc, %._crit_edge.i ], [ %i.lp, %.preheader1818.preheader.i ]
  %i.mc = getelementptr [4 x i8], ptr %.08981820.i, i64 %i.lo ; 8 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %index ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 192
  %wide.load = load <16 x float>, ptr %i.md, align 4, !tbaa !39, !alias.scope !720
  %wide.load452 = load <16 x float>, ptr %i.me, align 4, !tbaa !39, !alias.scope !720
  %wide.load453 = load <16 x float>, ptr %i.mf, align 4, !tbaa !39, !alias.scope !720
  %wide.load454 = load <16 x float>, ptr %i.mg, align 4, !tbaa !39, !alias.scope !720
  %i.mh = xor i64 %index, -1
  %i.mi = getelementptr [4 x i8], ptr %i.mc, i64 %i.mh ; 4 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 -60
  %i.mk = getelementptr i8, ptr %i.mi, i64 -124
  %i.ml = getelementptr i8, ptr %i.mi, i64 -188
  %i.mm = getelementptr i8, ptr %i.mi, i64 -252
  %reverse = shufflevector <16 x float> %wide.load, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse455 = shufflevector <16 x float> %wide.load452, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse456 = shufflevector <16 x float> %wide.load453, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse457 = shufflevector <16 x float> %wide.load454, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x float> %reverse, ptr %i.mj, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse455, ptr %i.mk, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse456, ptr %i.ml, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse457, ptr %i.mm, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index459 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next462, %vec.epilog.vector.body ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %index459
  %wide.load460 = load <8 x float>, ptr %i.mo, align 4, !tbaa !39, !alias.scope !720
  %i.mp = xor i64 %index459, -1
  %i.mq = getelementptr [4 x i8], ptr %i.mc, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 -28
  %reverse461 = shufflevector <8 x float> %wide.load460, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse461, ptr %i.mr, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  %index.next462 = add nuw i64 %index459, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next462, %n.vec458
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n463, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec458, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i.prol
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !39
  %i.mv = xor i64 %indvars.iv.i.prol, -1
  %i.mw = getelementptr [4 x i8], ptr %i.mc, i64 %i.mv
  store float %i.mu, ptr %i.mw, align 4, !tbaa !39
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !109

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.mx = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.my = icmp ugt i64 %i.mx, -4
  br i1 %i.my, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge1823.split.i:                          ; preds = %._crit_edge.i, %.preheader1818.lr.ph.i, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bn, i32 noundef %i.bx, i32 noundef %i.bs, ptr noundef null)
          to label %bb.dd unwind label %bb.dg

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %i.lo
  %i.na = add nuw nsw i32 %.08701822.i, 1         ; 2 uses
  %exitcond2430.not.i = icmp eq i32 %i.na, %i.ll
  br i1 %exitcond2430.not.i, label %._crit_edge1823.split.i, label %iter.check, !llvm.loop !110

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !39
  %i.nd = xor i64 %indvars.iv.i, -1
  %i.ne = getelementptr [4 x i8], ptr %i.mc, i64 %i.nd
  store float %i.nc, ptr %i.ne, align 4, !tbaa !39
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !39
  %i.ni = sub i64 -2, %indvars.iv.i
  %i.nj = getelementptr [4 x i8], ptr %i.mc, i64 %i.ni
  store float %i.nh, ptr %i.nj, align 4, !tbaa !39
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !39
  %i.nn = sub i64 -3, %indvars.iv.i
  %i.no = getelementptr [4 x i8], ptr %i.mc, i64 %i.nn
  store float %i.nm, ptr %i.no, align 4, !tbaa !39
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !39
  %i.ns = sub i64 -4, %indvars.iv.i
  %i.nt = getelementptr [4 x i8], ptr %i.mc, i64 %i.ns
  store float %i.nr, ptr %i.nt, align 4, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.dd:                                            ; preds = %._crit_edge1823.split.i
  %i.nu = icmp sgt i32 %i.bs, 15
  br i1 %i.nu, label %bb.de, label %bb.dp

bb.de:                                            ; preds = %bb.dd
  %i.nv = icmp sgt i32 %i.bx, 15                  ; 2 uses
  br i1 %i.nv, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.nw = shl nsw i32 %i.bn, 8
  %i.nx = lshr i32 %i.bx, 4
  %i.ny = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.nz = lshr <4 x i32> %i.ny, <i32 0, i32 3, i32 2, i32 1>
  %i.oa = and <4 x i32> %i.nz, splat (i32 1)
  %i.ob = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oa)
  %op.rdx5975 = add nuw nsw i32 %i.ob, %i.nx
  br label %.invoke2902.i

bb.dg:                                            ; preds = %._crit_edge1823.split.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit926.i

bb.dh:                                            ; preds = %.invoke.i, %.invoke2902.i
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !18 ; 2 uses
  %.not.i1083.i = icmp eq ptr %i.of, null
  br i1 %.not.i1083.i, label %_ZN4ncnn3MatD2Ev.exit926.i, label %bb.fp

bb.di:                                            ; preds = %bb.de
  %i.og = icmp sgt i32 %i.bx, 7
  br i1 %i.og, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.oh = shl nsw i32 %i.bn, 7
  %i.oi = lshr <4 x i32> %i.bw, <i32 0, i32 2, i32 1, i32 0>
  %i.oj = and <4 x i32> %i.oi, splat (i32 1)
  %i.ok = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oj)
  br label %.invoke2902.i

bb.dk:                                            ; preds = %bb.di
  %i.ol = icmp sgt i32 %i.bx, 3
  br i1 %i.ol, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.om = shl nsw i32 %i.bn, 6
  %i.on = lshr i32 %i.bx, 1
  %i.oo = and i32 %i.on, 1
  %i.op = and i32 %i.bx, 1
  %i.oq = add nuw nsw i32 %i.op, 1
  %i.or = add nuw nsw i32 %i.oq, %i.oo
  br label %.invoke2902.i

end_hunk_0
begin_hunk_1_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  store <4 x float> %i.aum, ptr %i.aul, align 16, !tbaa !82
  %i.aun = load i64, ptr %18, align 8, !tbaa !88
  %.idx = shl i64 %i.aun, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx
  %i.aup = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.aup, ptr %i.auo, align 16, !tbaa !82
  %i.auq = load i64, ptr %18, align 8, !tbaa !88
  %.idx926 = mul i64 %i.auq, 12
  %i.aur = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx926
  %i.aus = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.aus, ptr %i.aur, align 16, !tbaa !82
  %i.aut = getelementptr inbounds nuw i8, ptr %.12392, i64 16
  br label %.thread2131

bb.ah:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %.sroa.0.0.vec.extract = extractelement <16 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.12392, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <16 x float> %.0.i, i64 1
  %i.auu = load i64, ptr %18, align 8, !tbaa !88  ; 15 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %.12392, i64 %i.auu
  store float %.sroa.0.4.vec.extract, ptr %i.auv, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <16 x float> %.0.i, i64 2
  %.idx927 = shl i64 %i.auu, 3
  %i.auw = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx927
  store float %.sroa.0.8.vec.extract, ptr %i.auw, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <16 x float> %.0.i, i64 3
  %.idx928 = mul i64 %i.auu, 12
  %i.aux = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx928
  store float %.sroa.0.12.vec.extract, ptr %i.aux, align 4, !tbaa !39
  %.sroa.0.16.vec.extract = extractelement <16 x float> %.0.i, i64 4
  %.idx929 = shl i64 %i.auu, 4
  %i.auy = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx929
  store float %.sroa.0.16.vec.extract, ptr %i.auy, align 4, !tbaa !39
  %.sroa.0.20.vec.extract = extractelement <16 x float> %.0.i, i64 5
  %.idx930 = mul i64 %i.auu, 20
  %i.auz = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx930
  store float %.sroa.0.20.vec.extract, ptr %i.auz, align 4, !tbaa !39
  %.sroa.0.24.vec.extract = extractelement <16 x float> %.0.i, i64 6
  %.idx931 = mul i64 %i.auu, 24
  %i.ava = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx931
  store float %.sroa.0.24.vec.extract, ptr %i.ava, align 4, !tbaa !39
  %.sroa.0.28.vec.extract = extractelement <16 x float> %.0.i, i64 7
  %.idx932 = mul i64 %i.auu, 28
  %i.avb = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx932
  store float %.sroa.0.28.vec.extract, ptr %i.avb, align 4, !tbaa !39
  %.sroa.0.32.vec.extract = extractelement <16 x float> %.0.i, i64 8
  %.idx933 = shl i64 %i.auu, 5
  %i.avc = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx933
  store float %.sroa.0.32.vec.extract, ptr %i.avc, align 4, !tbaa !39
  %.sroa.0.36.vec.extract = extractelement <16 x float> %.0.i, i64 9
  %.idx934 = mul i64 %i.auu, 36
  %i.avd = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx934
  store float %.sroa.0.36.vec.extract, ptr %i.avd, align 4, !tbaa !39
  %.sroa.0.40.vec.extract = extractelement <16 x float> %.0.i, i64 10
  %.idx935 = mul i64 %i.auu, 40
  %i.ave = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx935
  store float %.sroa.0.40.vec.extract, ptr %i.ave, align 4, !tbaa !39
  %.sroa.0.44.vec.extract = extractelement <16 x float> %.0.i, i64 11
  %.idx936 = mul i64 %i.auu, 44
  %i.avf = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx936
  store float %.sroa.0.44.vec.extract, ptr %i.avf, align 4, !tbaa !39
  %.sroa.0.48.vec.extract = extractelement <16 x float> %.0.i, i64 12
  %.idx937 = mul i64 %i.auu, 48
  %i.avg = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx937
  store float %.sroa.0.48.vec.extract, ptr %i.avg, align 4, !tbaa !39
  %.sroa.0.52.vec.extract = extractelement <16 x float> %.0.i, i64 13
  %.idx938 = mul i64 %i.auu, 52
  %i.avh = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx938
  store float %.sroa.0.52.vec.extract, ptr %i.avh, align 4, !tbaa !39
  %.sroa.0.56.vec.extract = extractelement <16 x float> %.0.i, i64 14
  %.idx939 = mul i64 %i.auu, 56
  %i.avi = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx939
  store float %.sroa.0.56.vec.extract, ptr %i.avi, align 4, !tbaa !39
  %.sroa.0.60.vec.extract = extractelement <16 x float> %.0.i, i64 15
  %.idx940 = mul i64 %i.auu, 60
  %i.avj = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx940
  store float %.sroa.0.60.vec.extract, ptr %i.avj, align 4, !tbaa !39
  %i.avk = getelementptr inbounds nuw i8, ptr %.12392, i64 4
  br label %.thread2131

.thread2131:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.af, %.thread2125, %bb.ag, %bb.ah
  %.5 = phi ptr [ %i.avk, %bb.ah ], [ %.12392, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.aut, %bb.ag ], [ %i.aud, %.thread2125 ], [ %i.aui, %bb.af ], [ %.12392, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.avl = add nuw nsw i32 %.07772391, 1          ; 2 uses
  %exitcond2476.not = icmp eq i32 %i.avl, %i.ah
  br i1 %exitcond2476.not, label %._crit_edge, label %bb.c, !llvm.loop !1563

._crit_edge2399:                                  ; preds = %._crit_edge2396.split, %.noexc1263.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge2399, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #16

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 50 uses
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn54deconvolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.b = mul i32 %5, %4                           ; 84 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.d, i64 noundef 4, ptr noundef null)
  %i.h = mul nsw i32 %3, %2                       ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader1824.lr.ph, label %._crit_edge1829.split

.preheader1824.lr.ph:                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.b, 0
  %i.k = sext i32 %i.b to i64                     ; 6 uses
  br i1 %i.j, label %.preheader1824.preheader, label %._crit_edge1829.split

.preheader1824.preheader:                         ; preds = %.preheader1824.lr.ph
  %i.l = load ptr, ptr %6, align 8, !tbaa !20     ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 10 uses
  %i.n = sub nsw i64 %i.k, %wide.trip.count
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.o
  %i.p = add nsw i32 %i.h, -1
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 4
  %i.t = mul i64 %i.s, %i.k
  %scevgep2936 = getelementptr i8, ptr %i.l, i64 %i.t
  %i.u = mul nuw nsw i64 %i.k, %i.q
  %i.v = add nuw nsw i64 %i.u, %wide.trip.count
  %i.w = shl i64 %i.v, 2
  %scevgep2937 = getelementptr i8, ptr %i.m, i64 %i.w
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep2937
  %bound1 = icmp ult ptr %i.m, %scevgep2936
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check2939 = icmp ult i32 %i.b, 64
  %i.x = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  %n.vec2946 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n2951 = icmp eq i64 %n.vec2946, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader1824.preheader, %._crit_edge
  %.09021828 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.preheader1824.preheader ]
  %.09031827 = phi ptr [ %i.av, %._crit_edge ], [ %i.m, %.preheader1824.preheader ] ; 8 uses
  %.09041826 = phi ptr [ %i.aw, %._crit_edge ], [ %i.l, %.preheader1824.preheader ] ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %.09041826, i64 %i.k ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check2939, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %wide.load = load <16 x float>, ptr %i.z, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2940 = load <16 x float>, ptr %i.aa, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2941 = load <16 x float>, ptr %i.ab, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2942 = load <16 x float>, ptr %i.ac, align 4, !tbaa !39, !alias.scope !1673
  %i.ad = xor i64 %index, -1
  %i.ae = getelementptr [4 x i8], ptr %i.y, i64 %i.ad ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -60
  %i.ag = getelementptr i8, ptr %i.ae, i64 -124
  %i.ah = getelementptr i8, ptr %i.ae, i64 -188
  %i.ai = getelementptr i8, ptr %i.ae, i64 -252
  %reverse = shufflevector <16 x float> %wide.load, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2943 = shufflevector <16 x float> %wide.load2940, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2944 = shufflevector <16 x float> %wide.load2941, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2945 = shufflevector <16 x float> %wide.load2942, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x float> %reverse, ptr %i.af, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2943, ptr %i.ag, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2944, ptr %i.ah, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2945, ptr %i.ai, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1581

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2947 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2950, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %index2947
  %wide.load2948 = load <8 x float>, ptr %i.ak, align 4, !tbaa !39, !alias.scope !1673
  %i.al = xor i64 %index2947, -1
  %i.am = getelementptr [4 x i8], ptr %i.y, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -28
  %reverse2949 = shufflevector <8 x float> %wide.load2948, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse2949, ptr %i.an, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  %index.next2950 = add nuw i64 %index2947, 8     ; 2 uses
  %i.ao = icmp eq i64 %index.next2950, %n.vec2946
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n2951, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec2946, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv.prol
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39
  %i.ar = xor i64 %indvars.iv.prol, -1
  %i.as = getelementptr [4 x i8], ptr %i.y, i64 %i.ar
  store float %i.aq, ptr %i.as, align 4, !tbaa !39
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1583

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.at = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge1829.split:                            ; preds = %._crit_edge, %.preheader1824.lr.ph, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.b, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %i.k
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.09041826, i64 %i.k
  %i.ax = add nuw nsw i32 %.09021828, 1           ; 2 uses
  %exitcond2436.not = icmp eq i32 %i.ax, %i.h
  br i1 %exitcond2436.not, label %._crit_edge1829.split, label %iter.check, !llvm.loop !1584

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.az = load float, ptr %i.ay, align 4, !tbaa !39
  %i.ba = xor i64 %indvars.iv, -1
  %i.bb = getelementptr [4 x i8], ptr %i.y, i64 %i.ba
  store float %i.az, ptr %i.bb, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39
  %i.bf = sub i64 -2, %indvars.iv
  %i.bg = getelementptr [4 x i8], ptr %i.y, i64 %i.bf
  store float %i.be, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !39
  %i.bk = sub i64 -3, %indvars.iv
  %i.bl = getelementptr [4 x i8], ptr %i.y, i64 %i.bk
  store float %i.bj, ptr %i.bl, align 4, !tbaa !39
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = sub i64 -4, %indvars.iv
  %i.bq = getelementptr [4 x i8], ptr %i.y, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1585

bb.d:                                             ; preds = %._crit_edge1829.split
  %i.br = icmp sgt i32 %3, 15
  br i1 %i.br, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.bs = icmp sgt i32 %2, 15
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bt = shl nsw i32 %i.b, 8
  %i.bu = lshr i32 %2, 4
  %i.bv = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.bw = shufflevector <4 x i32> %i.bv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bx = lshr <4 x i32> %i.bw, <i32 0, i32 3, i32 2, i32 1>
  %i.by = and <4 x i32> %i.bx, splat (i32 1)
  %i.bz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.by)
  %op.rdx3377 = add nuw nsw i32 %i.bz, %i.bu
  br label %.invoke2905

bb.g:                                             ; preds = %._crit_edge1829.split
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit932

bb.h:                                             ; preds = %.invoke2905, %.invoke
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i1089 = icmp eq ptr %i.cd, null
  br i1 %.not.i1089, label %_ZN4ncnn3MatD2Ev.exit932, label %bb.bo

bb.i:                                             ; preds = %bb.e
  %i.ce = icmp sgt i32 %2, 7
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.b, 7
  %i.cg = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %2, i64 0
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = lshr <4 x i32> %i.ch, <i32 0, i32 2, i32 1, i32 0>
  %i.cj = and <4 x i32> %i.ci, splat (i32 1)
  %i.ck = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cj)
  br label %.invoke2905

bb.k:                                             ; preds = %bb.i
  %i.cl = icmp sgt i32 %2, 3
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = shl nsw i32 %i.b, 6
  %i.cn = lshr i32 %2, 1
  %i.co = and i32 %i.cn, 1
  %i.cp = and i32 %2, 1
end_hunk_1

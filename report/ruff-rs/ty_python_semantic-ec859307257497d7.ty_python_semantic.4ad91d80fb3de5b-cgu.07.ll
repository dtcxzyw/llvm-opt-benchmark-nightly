Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer22class_pattern_contexts:bb.a

.loopexit.i:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E4pushBO_.exit.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvMs8_NtB1K_6narrowNtB2E_22PatternSuccessAnalyzer22class_pattern_contexts0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit12.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E11try_reserveBO_.exit.thread.i.i, %bb.d, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_E11try_reserveBO_.exit.i.i, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ch, %bb.g ], [ %i.cr, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_EEB1h_(ptr noalias noundef align 8 dereferenceable(120) %i.k) #41
          to label %common.resume unwind label %bb.n, !noalias !15833

bb.n:                                             ; preds = %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !15833
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cu, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB25_8adapters3map3MapINtNtB3h_6copied6CopiedINtNtNtB27_5slice4iter4IterNtBN_4TypeEENCNvMs8_BL_NtBL_22PatternSuccessAnalyzer22class_pattern_contexts0EEBP_.exit: ; preds = %.loopexit.i.i, %.loopexit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.k, i64 120, i1 false), !noalias !15851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15833
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  store i64 0, ptr %i.ct, align 8, !alias.scope !15852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer22class_pattern_contexts0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.l)
          to label %bb.r unwind label %.body

bb.p:                                             ; preds = %bb.r, %_RINvXss_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB25_8adapters3map3MapINtNtB3h_6copied6CopiedINtNtNtB27_5slice4iter4IterNtBN_4TypeEENCNvMs8_BL_NtBL_22PatternSuccessAnalyzer22class_pattern_contexts0EEBP_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.body:                                            ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19ClassPatternContextj2_EEB1h_(ptr noalias noundef align 8 dereferenceable(120) %i.n) #41
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %.body
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  store i64 1, ptr %i.ct, align 8, !alias.scope !15853, !noalias !15854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.n, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer26analyze_successful_pattern(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.55.i.i.i.i661 = alloca [16 x i8], align 8 ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 4                ; 4 uses
  %i.n = alloca [16 x i8], align 4                ; 9 uses
  %i.o = alloca [16 x i8], align 4                ; 4 uses
  %i.p = alloca [32 x i8], align 4                ; 8 uses
  %i.q = alloca [32 x i8], align 4                ; 8 uses
  %i.r = alloca [16 x i8], align 4                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.55.i.i.i.i548 = alloca [16 x i8], align 8 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 12 uses
  %i.x = alloca [56 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.515.i.i.i = alloca [28 x i8], align 4    ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 5 uses
  %i.ab = alloca [16 x i8], align 4               ; 6 uses
  %i.ac = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i463 = alloca [28 x i8], align 4     ; 6 uses
  %.sroa.6.i.i464 = alloca [28 x i8], align 4     ; 5 uses
  %i.ad = alloca [32 x i8], align 4               ; 12 uses
  %i.ae = alloca [16 x i8], align 4               ; 5 uses
  %i.af = alloca [16 x i8], align 4               ; 5 uses
  %i.ag = alloca [16 x i8], align 4               ; 6 uses
  %i.ah = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i = alloca [28 x i8], align 4        ; 6 uses
  %.sroa.6.i.i = alloca [28 x i8], align 4        ; 5 uses
  %.sroa.6918 = alloca [12 x i8], align 4         ; 7 uses
  %.sroa.5913 = alloca [12 x i8], align 4         ; 6 uses
  %i.ai = alloca [16 x i8], align 4               ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 12 uses
  %i.ak = alloca [80 x i8], align 8               ; 15 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [40 x i8], align 8               ; 9 uses
  %i.an = alloca [56 x i8], align 8               ; 6 uses
  %i.ao = alloca [72 x i8], align 8               ; 14 uses
  %.sroa.55.i.i.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 4               ; 5 uses
  %i.at = alloca [16 x i8], align 4               ; 4 uses
  %i.au = alloca [16 x i8], align 4               ; 5 uses
  %i.av = alloca [16 x i8], align 4               ; 4 uses
  %i.aw = alloca [16 x i8], align 4               ; 4 uses
  %i.ax = alloca [16 x i8], align 4               ; 4 uses
  %i.ay = alloca [16 x i8], align 4               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 10 uses
  %i.ba = alloca [16 x i8], align 4               ; 5 uses
  %i.bb = alloca [16 x i8], align 4               ; 4 uses
  %i.bc = alloca [16 x i8], align 4               ; 5 uses
  %i.bd = alloca [16 x i8], align 4               ; 4 uses
  %i.be = alloca [16 x i8], align 4               ; 4 uses
  %i.bf = alloca [16 x i8], align 4               ; 4 uses
  %i.bg = alloca [16 x i8], align 4               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [16 x i8], align 4               ; 4 uses
  %i.bj = alloca [16 x i8], align 4               ; 5 uses
  %i.bk = alloca [16 x i8], align 4               ; 4 uses
  %i.bl = alloca [16 x i8], align 4               ; 4 uses
  %i.bm = alloca [16 x i8], align 4               ; 4 uses
  %i.bn = alloca [16 x i8], align 4               ; 8 uses
  %i.bo = alloca [20 x i8], align 4               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 10 uses
  %i.bq = alloca [24 x i8], align 8               ; 10 uses
  %i.br = alloca [56 x i8], align 8               ; 6 uses
  %i.bs = alloca [72 x i8], align 8               ; 14 uses
  %i.bt = alloca [16 x i8], align 4               ; 5 uses
  %i.bu = alloca [16 x i8], align 4               ; 5 uses
  %i.bv = alloca [16 x i8], align 4               ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 11 uses
  %i.bx = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5879 = alloca [12 x i8], align 4         ; 4 uses
  %i.by = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5877 = alloca [12 x i8], align 4         ; 4 uses
  %i.bz = alloca [16 x i8], align 4               ; 4 uses
  %i.ca = alloca [16 x i8], align 4               ; 4 uses
  %i.cb = alloca [16 x i8], align 4               ; 4 uses
  %i.cc = alloca [56 x i8], align 8               ; 7 uses
  %i.cd = alloca [16 x i8], align 4               ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [16 x i8], align 4               ; 4 uses
  %i.cg = alloca [56 x i8], align 8               ; 15 uses
  %i.ch = alloca [16 x i8], align 4               ; 4 uses
  %i.ci = alloca [56 x i8], align 8               ; 15 uses
  %i.cj = alloca [56 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [56 x i8], align 8               ; 10 uses
  %i.cm = alloca [32 x i8], align 8               ; 6 uses
  %i.cn = alloca [56 x i8], align 8               ; 6 uses
  %i.co = alloca [72 x i8], align 8               ; 14 uses
  %i.cp = alloca [24 x i8], align 8               ; 10 uses
  %i.cq = alloca [24 x i8], align 8               ; 10 uses
  %i.cr = alloca [20 x i8], align 4               ; 4 uses
  %i.cs = alloca [16 x i8], align 4               ; 4 uses
  %i.ct = alloca [16 x i8], align 4               ; 5 uses
  %i.cu = alloca [16 x i8], align 4               ; 4 uses
  %i.cv = alloca [16 x i8], align 4               ; 4 uses
  %i.cw = alloca [16 x i8], align 4               ; 4 uses
  %i.cx = alloca [16 x i8], align 4               ; 8 uses
  %i.cy = alloca [16 x i8], align 4               ; 5 uses
  %i.cz = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.55.i.i.i.i58 = alloca [16 x i8], align 8 ; 5 uses
  %i.da = alloca [24 x i8], align 8               ; 5 uses
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [48 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 4               ; 6 uses
  %.sroa.6869 = alloca [12 x i8], align 4         ; 7 uses
  %i.de = alloca [16 x i8], align 4               ; 4 uses
  %i.df = alloca [48 x i8], align 8               ; 6 uses
  %i.dg = alloca [56 x i8], align 8               ; 9 uses
  %i.dh = alloca [16 x i8], align 4               ; 6 uses
  %i.di = alloca [64 x i8], align 8               ; 12 uses
  %i.dj = alloca [24 x i8], align 8               ; 10 uses
  %i.dk = alloca [16 x i8], align 4               ; 6 uses
  %i.dl = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i72.i59 = alloca [28 x i8], align 4  ; 6 uses
  %.sroa.6.i.i73.i60 = alloca [28 x i8], align 4  ; 5 uses
  %i.dm = alloca [16 x i8], align 4               ; 5 uses
  %i.dn = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.515.i.i.i.i61 = alloca [28 x i8], align 4 ; 4 uses
  %i.do = alloca [16 x i8], align 4               ; 6 uses
  %i.dp = alloca [16 x i8], align 4               ; 5 uses
  %i.dq = alloca [16 x i8], align 4               ; 6 uses
  %i.dr = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i.i62 = alloca [28 x i8], align 4    ; 6 uses
  %.sroa.6.i.i.i63 = alloca [28 x i8], align 4    ; 5 uses
  %i.ds = alloca [32 x i8], align 4               ; 12 uses
  %i.dt = alloca [16 x i8], align 4               ; 4 uses
  %i.du = alloca [16 x i8], align 4               ; 4 uses
  %i.dv = alloca [16 x i8], align 4               ; 4 uses
  %i.dw = alloca [32 x i8], align 4               ; 13 uses
  %i.dx = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5838 = alloca [12 x i8], align 4         ; 4 uses
  %i.dy = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5834 = alloca [12 x i8], align 4         ; 4 uses
  %i.dz = alloca [56 x i8], align 8               ; 4 uses
  %i.ea = alloca [16 x i8], align 4               ; 5 uses
  %i.eb = alloca [16 x i8], align 4               ; 4 uses
  %i.ec = alloca [56 x i8], align 8               ; 4 uses
  %i.ed = alloca [16 x i8], align 4               ; 5 uses
  %i.ee = alloca [16 x i8], align 4               ; 4 uses
  %i.ef = alloca [24 x i8], align 8               ; 4 uses
  %i.eg = alloca [16 x i8], align 4               ; 5 uses
  %i.eh = alloca [16 x i8], align 4               ; 8 uses
  %i.ei = alloca [72 x i8], align 8               ; 12 uses
  %i.ej = alloca [16 x i8], align 4               ; 4 uses
  %i.ek = alloca [16 x i8], align 4               ; 4 uses
  %i.el = alloca [56 x i8], align 8               ; 10 uses
  %i.em = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.8827.sroa.0 = alloca [12 x i8], align 4  ; 4 uses
  %.sroa.8827.sroa.6 = alloca [12 x i8], align 4  ; 4 uses
  %.sroa.8827.sroa.7 = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.5817 = alloca [28 x i8], align 4         ; 4 uses
  %i.en = alloca [24 x i8], align 8               ; 9 uses
  %i.eo = alloca [56 x i8], align 8               ; 16 uses
  %i.ep = alloca [56 x i8], align 8               ; 16 uses
  %i.eq = alloca [16 x i8], align 4               ; 11 uses
  %i.er = alloca [24 x i8], align 8               ; 7 uses
  %i.es = alloca [56 x i8], align 8               ; 16 uses
  %i.et = alloca [56 x i8], align 8               ; 16 uses
  %i.eu = alloca [216 x i8], align 8              ; 39 uses
  %i.ev = alloca [72 x i8], align 8               ; 6 uses
  %i.ew = alloca [16 x i8], align 4               ; 4 uses
  %i.ex = alloca [16 x i8], align 4               ; 4 uses
  %i.ey = alloca [16 x i8], align 4               ; 4 uses
  %i.ez = alloca [32 x i8], align 4               ; 13 uses
  %i.fa = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5796 = alloca [12 x i8], align 4         ; 4 uses
  %i.fb = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5792 = alloca [12 x i8], align 4         ; 4 uses
  %i.fc = alloca [56 x i8], align 8               ; 4 uses
  %i.fd = alloca [16 x i8], align 4               ; 7 uses
  %i.fe = alloca [16 x i8], align 4               ; 5 uses
  %i.ff = alloca [56 x i8], align 8               ; 4 uses
  %i.fg = alloca [16 x i8], align 4               ; 7 uses
  %i.fh = alloca [16 x i8], align 4               ; 5 uses
  %i.fi = alloca [16 x i8], align 4               ; 5 uses
  %i.fj = alloca [16 x i8], align 4               ; 8 uses
  %i.fk = alloca [72 x i8], align 8               ; 12 uses
  %i.fl = alloca [16 x i8], align 4               ; 4 uses
  %i.fm = alloca [16 x i8], align 4               ; 4 uses
  %i.fn = alloca [56 x i8], align 8               ; 10 uses
  %i.fo = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.8782.sroa.0 = alloca [12 x i8], align 4  ; 4 uses
  %.sroa.8782.sroa.6 = alloca [12 x i8], align 4  ; 4 uses
  %.sroa.8782.sroa.7 = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.5772 = alloca [28 x i8], align 4         ; 4 uses
  %i.fp = alloca [24 x i8], align 8               ; 9 uses
  %i.fq = alloca [56 x i8], align 8               ; 16 uses
  %i.fr = alloca [56 x i8], align 8               ; 14 uses
  %i.fs = alloca [16 x i8], align 4               ; 17 uses
  %i.ft = alloca [24 x i8], align 8               ; 7 uses
  %i.fu = alloca [56 x i8], align 8               ; 14 uses
  %i.fv = alloca [56 x i8], align 8               ; 14 uses
  %i.fw = alloca [216 x i8], align 8              ; 39 uses
  %i.fx = alloca [72 x i8], align 8               ; 6 uses
  %i.fy = alloca [16 x i8], align 4               ; 5 uses
  %i.fz = alloca [16 x i8], align 4               ; 5 uses
  %i.ga = alloca [56 x i8], align 8               ; 6 uses
  %i.gb = alloca [72 x i8], align 8               ; 14 uses
  %i.gc = alloca [24 x i8], align 8               ; 10 uses
  %i.gd = alloca [24 x i8], align 8               ; 10 uses
  %i.ge = alloca [20 x i8], align 4               ; 4 uses
  %i.gf = alloca [16 x i8], align 4               ; 4 uses
  %i.gg = alloca [16 x i8], align 4               ; 5 uses
  %i.gh = alloca [16 x i8], align 4               ; 4 uses
  %i.gi = alloca [16 x i8], align 4               ; 4 uses
  %i.gj = alloca [16 x i8], align 4               ; 4 uses
  %i.gk = alloca [16 x i8], align 4               ; 4 uses
  %i.gl = alloca [16 x i8], align 4               ; 8 uses
  %i.gm = alloca [16 x i8], align 4               ; 5 uses
  %i.gn = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.55.i.i.i.i = alloca [16 x i8], align 8   ; 5 uses
  %i.go = alloca [24 x i8], align 8               ; 5 uses
  %i.gp = alloca [24 x i8], align 8               ; 6 uses
  %i.gq = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.5749 = alloca [12 x i8], align 4         ; 4 uses
  %.sroa.8751 = alloca [12 x i8], align 4         ; 4 uses
  %i.gr = alloca [16 x i8], align 4               ; 6 uses
  %i.gs = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i72.i = alloca [28 x i8], align 4    ; 6 uses
  %.sroa.6.i.i73.i = alloca [28 x i8], align 4    ; 5 uses
  %i.gt = alloca [16 x i8], align 4               ; 5 uses
  %i.gu = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.515.i.i.i.i = alloca [28 x i8], align 4  ; 4 uses
  %i.gv = alloca [16 x i8], align 4               ; 6 uses
  %i.gw = alloca [16 x i8], align 4               ; 5 uses
  %i.gx = alloca [16 x i8], align 4               ; 6 uses
  %i.gy = alloca [16 x i8], align 4               ; 8 uses
  %.sroa.7.i.i.i = alloca [28 x i8], align 4      ; 6 uses
  %.sroa.6.i.i.i = alloca [28 x i8], align 4      ; 5 uses
  %i.gz = alloca [32 x i8], align 4               ; 12 uses
  %i.ha = alloca [16 x i8], align 4               ; 4 uses
  %i.hb = alloca [16 x i8], align 4               ; 4 uses
  %i.hc = alloca [16 x i8], align 4               ; 4 uses
  %i.hd = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5746 = alloca [12 x i8], align 4         ; 4 uses
  %i.he = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5742 = alloca [12 x i8], align 4         ; 4 uses
  %i.hf = alloca [56 x i8], align 8               ; 4 uses
  %i.hg = alloca [16 x i8], align 4               ; 5 uses
  %i.hh = alloca [16 x i8], align 4               ; 4 uses
  %i.hi = alloca [56 x i8], align 8               ; 4 uses
  %i.hj = alloca [16 x i8], align 4               ; 5 uses
  %i.hk = alloca [16 x i8], align 4               ; 4 uses
  %i.hl = alloca [24 x i8], align 8               ; 4 uses
  %i.hm = alloca [16 x i8], align 4               ; 5 uses
  %i.hn = alloca [16 x i8], align 4               ; 8 uses
  %i.ho = alloca [72 x i8], align 8               ; 12 uses
  %i.hp = alloca [16 x i8], align 4               ; 4 uses
  %i.hq = alloca [16 x i8], align 4               ; 4 uses
  %i.hr = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.5727 = alloca [28 x i8], align 4         ; 4 uses
  %i.hs = alloca [24 x i8], align 8               ; 9 uses
  %i.ht = alloca [56 x i8], align 8               ; 16 uses
  %i.hu = alloca [56 x i8], align 8               ; 16 uses
  %i.hv = alloca [16 x i8], align 4               ; 11 uses
  %i.hw = alloca [24 x i8], align 8               ; 7 uses
  %i.hx = alloca [56 x i8], align 8               ; 16 uses
  %i.hy = alloca [56 x i8], align 8               ; 16 uses
  %i.hz = alloca [216 x i8], align 8              ; 39 uses
  %i.ia = alloca [72 x i8], align 8               ; 6 uses
  %i.ib = alloca [24 x i8], align 8               ; 8 uses
  %i.ic = alloca [24 x i8], align 8               ; 6 uses
  %i.id = alloca [56 x i8], align 8               ; 9 uses
  %i.ie = alloca [16 x i8], align 4               ; 4 uses
  %i.if = alloca [24 x i8], align 8               ; 6 uses
  %i.ig = alloca [24 x i8], align 8               ; 11 uses
  %i.ih = alloca [16 x i8], align 4               ; 4 uses
  %i.ii = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5706 = alloca [12 x i8], align 4         ; 4 uses
  %i.ij = alloca [56 x i8], align 8               ; 4 uses
  %.sroa.5702 = alloca [12 x i8], align 4         ; 4 uses
  %i.ik = alloca [16 x i8], align 4               ; 4 uses
  %i.il = alloca [16 x i8], align 4               ; 4 uses
  %i.im = alloca [56 x i8], align 8               ; 8 uses
  %i.in = alloca [56 x i8], align 8               ; 10 uses
  %i.io = alloca [56 x i8], align 8               ; 6 uses
  %i.ip = alloca [136 x i8], align 8              ; 10 uses
  %i.iq = alloca [120 x i8], align 8              ; 6 uses
  %i.ir = alloca [24 x i8], align 8               ; 7 uses
  %i.is = alloca [56 x i8], align 8               ; 14 uses
  %i.it = alloca [56 x i8], align 8               ; 14 uses
  %i.iu = alloca [16 x i8], align 4               ; 4 uses
  %i.iv = alloca [16 x i8], align 4               ; 4 uses
  %i.iw = alloca [16 x i8], align 4               ; 4 uses
  %i.ix = alloca [16 x i8], align 4               ; 4 uses
  %i.iy = alloca [16 x i8], align 4               ; 4 uses
  %i.iz = alloca [16 x i8], align 4               ; 5 uses
  %i.ja = alloca [16 x i8], align 4               ; 5 uses
  %i.jb = alloca [48 x i8], align 8               ; 6 uses
  %i.jc = alloca [56 x i8], align 8               ; 7 uses
  %i.jd = alloca [24 x i8], align 8               ; 7 uses
  %i.je = alloca [48 x i8], align 8               ; 6 uses
  %i.jf = alloca [56 x i8], align 8               ; 13 uses
  %i.jg = load i8, ptr %2, align 8, !range !44, !noundef !15
  switch i8 %i.jg, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %.lr.ph1723
    i8 3, label %bb.em
    i8 4, label %bb.lh
    i8 5, label %bb.qq
    i8 6, label %bb.qt
    i8 7, label %bb.qx
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer26analyze_successful_pattern:bb.a

bb.le:                                            ; preds = %bb.ld, %.noexc39
  %.sroa.0700.0 = phi i32 [ 6, %.noexc39 ], [ %i.aje, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !16803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !noalias !16642
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii), !noalias !16642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ii, ptr noundef nonnull align 8 dereferenceable(56) %i.is, i64 56, i1 false), !noalias !16642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !16805
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder9try_build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.fz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ii)
          to label %.noexc37 unwind label %bb.eo

.noexc37:                                         ; preds = %bb.le
  %i.ajf = load i32, ptr %i.fz, align 4, !range !21, !noalias !16805, !noundef !15 ; 2 uses
  %.not.i36 = icmp eq i32 %i.ajf, -1
  br i1 %.not.i36, label %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer32analyze_successful_class_pattern.exit, label %bb.lf

bb.lf:                                            ; preds = %.noexc37
  %.sroa.5706.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5706, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5706.0..sroa_idx707, i64 12, i1 false), !noalias !16806
  br label %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer32analyze_successful_class_pattern.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesEEB2y_.exit54: ; preds = %bb.en
  br i1 %.sroa.01.0.i, label %bb.lg, label %bb.el

bb.lg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesEEB2y_.exit54
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.is) #41
          to label %bb.el unwind label %bb.lb, !noalias !16647, !inline_history !16039

.thread1021:                                      ; preds = %bb.el
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.it) #41
          to label %common.resume unwind label %bb.lb, !noalias !16647, !inline_history !16039

_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer32analyze_successful_class_pattern.exit: ; preds = %bb.lf, %.noexc37
  %.sroa.0704.0 = phi i32 [ 6, %.noexc37 ], [ %i.ajf, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !16805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii), !noalias !16642
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 24, i1 false), !noalias !16807
  store i32 %.sroa.0700.0, ptr %0, align 8, !noalias !16807
  %.sroa.5702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5702.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5702, i64 12, i1 false), !noalias !16807
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0704.0, ptr %i.ajh, align 8, !noalias !16807
  %.sroa.5706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5706.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5706, i64 12, i1 false), !noalias !16807
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5706)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir), !noalias !16642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is), !noalias !16642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it), !noalias !16642
  br label %bb.qy

bb.lh:                                            ; preds = %bb.a
  %i.aji = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iv, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig), !noalias !16809
  %i.ajj = getelementptr i8, ptr %1, i64 8        ; 5 uses
  %.val2.i = load ptr, ptr %i.aji, align 8, !alias.scope !16808, !noalias !16810, !nonnull !15, !noundef !15 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.ajk, align 8, !alias.scope !16808, !noalias !16810, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !16811
  %.idx = mul nuw nsw i64 %.val3.i, 56
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx ; 2 uses
  store ptr %.val2.i, ptr %i.cm, align 8, !noalias !16811
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ajl, ptr %i.ajm, align 8, !noalias !16811
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ajo = load <2 x ptr>, ptr %1, align 8, !noalias !16809
  store <2 x ptr> %i.ajo, ptr %i.ajn, align 8, !noalias !16811
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindENCNvMs8_NtB14_6narrowNtB4X_22PatternSuccessAnalyzer25mapping_pattern_key_types0EE9from_iterB16_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.cm), !noalias !16809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !16811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  %i.ajp = load ptr, ptr %1, align 8, !noalias !16812, !nonnull !15, !noundef !15 ; 5 uses
  %i.ajq = load ptr, ptr %i.ajj, align 8, !noalias !16812, !nonnull !15, !align !18, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !16812
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer26match_pattern_subject_arms(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ev, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.iv)
          to label %.lr.ph1700 unwind label %bb.qj, !inline_history !16293

.lr.ph1700:                                       ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !16812
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ev, i64 64 ; 2 uses
  %i.ajs = load i64, ptr %i.ajr, align 8, !alias.scope !16813, !noalias !16814, !noundef !15 ; 2 uses
  %i.ajt = icmp ugt i64 %i.ajs, 2                 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ajv = load i64, ptr %i.aju, align 8, !alias.scope !16813, !noalias !16814
  %.sink9.i.i.i65 = select i1 %i.ajt, i64 %i.ajv, i64 %i.ajs
  %.sink8.i.i.i66 = select i1 %i.ajt, ptr %i.aju, ptr %i.ajr
  store i64 0, ptr %.sink8.i.i.i66, align 8, !alias.scope !16815, !noalias !16816
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %i.eu, i64 80 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71, ptr noundef nonnull align 8 dereferenceable(72) %i.ev, i64 72, i1 false), !noalias !16812
  call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.eu, i8 0, i64 16, i1 false), !alias.scope !16818, !noalias !16819
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i67, align 8, !alias.scope !16818, !noalias !16819
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i68, align 8, !alias.scope !16818, !noalias !16819
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 10 uses
  store i32 -1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, align 8, !alias.scope !16818, !noalias !16819
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 8 uses
  store i32 -1, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70, align 8, !alias.scope !16818, !noalias !16819
  %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 152 ; 7 uses
  store i64 0, ptr %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16820, !noalias !16812
  %.sroa.5802.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 160 ; 4 uses
  store i64 %.sink9.i.i.i65, ptr %.sroa.5802.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16820, !noalias !16812
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.eu, i64 168 ; 7 uses
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73 = getelementptr inbounds nuw i8, ptr %i.eu, i64 192 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i.i72, i8 0, i64 24, i1 false), !alias.scope !16818, !noalias !16819
  store i64 -1, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73, align 8, !alias.scope !16818, !noalias !16819
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %i.eu, i64 200 ; 8 uses
  store i8 0, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !alias.scope !16818, !noalias !16819
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.eu, i64 208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !16812
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ajy, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ajx, i64 12, i1 false), !noalias !16821
  store i64 0, ptr %i.et, align 8, !alias.scope !16822, !noalias !16821
  %.sroa.4.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i75, align 8, !alias.scope !16822, !noalias !16821
  %.sroa.5.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i76, align 8, !alias.scope !16822, !noalias !16821
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.ajp, ptr %i.ajz, align 8, !alias.scope !16822, !noalias !16821
  %i.aka = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.ajq, ptr %i.aka, align 8, !alias.scope !16822, !noalias !16821
  %i.akb = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  store i8 1, ptr %i.akb, align 4, !alias.scope !16822, !noalias !16821
  %i.akc = getelementptr inbounds nuw i8, ptr %i.et, i64 53
  store i8 0, ptr %i.akc, align 1, !alias.scope !16822, !noalias !16821
  %i.akd = getelementptr inbounds nuw i8, ptr %i.et, i64 54
  store i8 1, ptr %i.akd, align 2, !alias.scope !16822, !noalias !16821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !16812
  %i.ake = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ake, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ajx, i64 12, i1 false), !noalias !16823
  store i64 0, ptr %i.es, align 8, !alias.scope !16824, !noalias !16823
  %.sroa.4.0..sroa_idx.i59.i77 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i59.i77, align 8, !alias.scope !16824, !noalias !16823
  %.sroa.5.0..sroa_idx.i60.i78 = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i60.i78, align 8, !alias.scope !16824, !noalias !16823
  %i.akf = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.ajp, ptr %i.akf, align 8, !alias.scope !16824, !noalias !16823
  %i.akg = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr %i.ajq, ptr %i.akg, align 8, !alias.scope !16824, !noalias !16823
  %i.akh = getelementptr inbounds nuw i8, ptr %i.es, i64 52
  store i8 1, ptr %i.akh, align 4, !alias.scope !16824, !noalias !16823
  %i.aki = getelementptr inbounds nuw i8, ptr %i.es, i64 53
  store i8 0, ptr %i.aki, align 1, !alias.scope !16824, !noalias !16823
  %i.akj = getelementptr inbounds nuw i8, ptr %i.es, i64 54
  store i8 1, ptr %i.akj, align 2, !alias.scope !16824, !noalias !16823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !16812
  store ptr null, ptr %i.er, align 8, !noalias !16812
  %i.akk = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %i.akk, align 8, !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !16812
  store i64 1, ptr %i.ajw, align 8, !noalias !16825
  %i.akl = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.eu, i64 176 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.eu, i64 184 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i244 = getelementptr inbounds nuw i8, ptr %i.eu, i64 52 ; 5 uses
  %.sroa.6.0..sroa_idx2.i.i.i246 = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.eu, i64 144 ; 3 uses
  %.sroa.7.0..sroa_idx23.i.i.i252 = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.sroa.69.0..sroa_idx.i.i.i255 = getelementptr inbounds nuw i8, ptr %i.eu, i64 36 ; 3 uses
  %.sroa.69.0..sroa_idx10.i.i.i256 = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.sroa.5.0..sroa_idx2.i.i.i.i96 = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %.sroa.515.0..sroa_idx16.i.i.i.i102 = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.sroa.7.0..sroa_idx806 = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %.sroa.4.0..sroa_idx.i63.i108 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.5.0..sroa_idx.i64.i109 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ep, i64 52
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ep, i64 53
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ep, i64 54
  %i.akv = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.sroa.4.0..sroa_idx.i70.i110 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.5.0..sroa_idx.i71.i111 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.akw = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.akx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.aky = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.akz = getelementptr inbounds nuw i8, ptr %i.eo, i64 53
  %i.ala = getelementptr inbounds nuw i8, ptr %i.eo, i64 54
  %i.alb = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %.sroa.5817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 3 uses
  %.sroa.7.0..sroa_idx23.i.i85.i229 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.sroa.69.0..sroa_idx10.i.i89.i233 = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.ald = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ale = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.alf = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ali = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.7932.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8933.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.alj = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.4847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %.sroa.5848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 4 uses
  %.sroa.6849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx850 = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.sroa.8851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %.sroa.9852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.alk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.all = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 4 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %.sroa.02.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.02.sroa.2.sroa.2.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.02.sroa.2.sroa.3.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.02.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.02.sroa.4.sroa.2.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.02.sroa.4.sroa.3.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.2.0..sroa_idx.i550 = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i551 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.55.0..sroa_idx.i.i.i.i552 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i553 = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i554 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.0.sroa.5.0..sroa_idx.i532 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i534 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i535 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.0.sroa.7.0..sroa_idx.i536 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i537 = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i538 = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.5.0..sroa_idx.i539 = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.alo = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.alp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.alq = getelementptr inbounds nuw i8, ptr %2, i64 39
  %i.alr = load i8, ptr %i.alq, align 1, !range !36 ; 4 uses
  %.not6.i.i = icmp eq i8 %i.alr, -1
  %i.als = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.alu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.alw = load i64, ptr %i.alv, align 8
  %i.alx = and i64 %i.alw, 72057594037927935
  %i.aly = icmp ult i8 %i.alr, -48
  %i.alz = zext i8 %i.alr to i64
  %i.ama = add nsw i64 %i.alz, -192
  %spec.store.select.i.i584 = call i64 @llvm.umin.i64(i64 %i.ama, i64 16)
  %.sroa.0.0.i.i585 = select i1 %i.aly, i64 %spec.store.select.i.i584, i64 %i.alx
  %i.amb = icmp ugt i8 %i.alr, -49
  %i.amc = load ptr, ptr %i.alu, align 8
  %.sroa.01.0.i.i586 = select i1 %i.amb, ptr %i.amc, ptr %i.alu
  %.sroa.6869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.sroa.6.0..sroa_idx.i576 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.4.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.53.0..sroa_idx.i574 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.8827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.8827.sroa.5.0..sroa.8827.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.sroa.8827.sroa.6.0..sroa.8827.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %.sroa.8827.sroa.7.0..sroa.8827.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.amf = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.amg = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.amh = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.4830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %.sroa.5831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %.sroa.0.sroa.5.0..sroa_idx.i.i139 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i141 = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.0.sroa.6.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %.sroa.0.sroa.7.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i.i145 = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %.sroa.5.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.ami = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.amj = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.010.sroa.2.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.010.sroa.2.sroa.2.0..sroa.010.sroa.2.0..sroa_idx.sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.sroa.010.sroa.2.sroa.3.0..sroa.010.sroa.2.0..sroa_idx.sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.sroa.010.sroa.3.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.sroa.010.sroa.4.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.sroa.010.sroa.4.sroa.2.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.sroa.010.sroa.4.sroa.3.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %.sroa.2.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.ei, i64 64 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i169 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.55.0..sroa_idx.i.i.i.i170 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %.sroa.5.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.amk = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.aml = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.amm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.amn = icmp eq i64 %.val3.i, 0
  %i.amo = insertelement <4 x ptr> poison, ptr %1, i64 2
  %i.amp = insertelement <4 x ptr> %i.amo, ptr %i.n, i64 3
  br label %bb.li

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit504: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i500, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit510
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy7ChunkByNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1p_B1p_Ej2_ENCINvMs8_NtB1r_6narrowNtB38_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB34_34analyze_successful_mapping_pattern0E0EEB1t_(ptr noalias noundef align 8 dereferenceable(216) %i.eu) #41
          to label %.body260 unwind label %bb.px, !noalias !16826, !inline_history !16293

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit510: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionElementEEB1f_.exit.i506, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesEEB2y_.exit.i88
  br i1 %.sroa.07.1.i86, label %bb.qg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_.exit504

bb.li:                                            ; preds = %.lr.ph1700, %bb.ot
  %i.amq = phi i64 [ 1, %.lr.ph1700 ], [ %i.atk, %bb.ot ] ; 2 uses
  %i.amr = phi i64 [ 0, %.lr.ph1700 ], [ %i.atj, %bb.ot ] ; 14 uses
  store i64 -1, ptr %i.eu, align 8, !noalias !16825
  %i.ams = load i64, ptr %i.akm, align 8, !alias.scope !16827, !noalias !16828, !noundef !15
  %i.amt = icmp ult i64 %i.amr, %i.ams
  br i1 %i.amt, label %split, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.amu = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i.i72, align 8, !alias.scope !16827, !noalias !16828, !noundef !15 ; 2 uses
  %i.amv = icmp ult i64 %i.amr, %i.amu
  br i1 %i.amv, label %bb.lw, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.amw = icmp eq i64 %i.amr, %i.amu
  br i1 %i.amw, label %bb.ll, label %.thread.i.i90

bb.ll:                                            ; preds = %bb.lk
  %i.amx = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i68, align 8, !alias.scope !16827, !noalias !16828, !noundef !15 ; 2 uses
  %i.amy = icmp ult i64 %i.amx, 288230376151711744
  call void @llvm.assume(i1 %i.amy)
  %i.amz = load i64, ptr %i.akn, align 8, !alias.scope !16827, !noalias !16828, !noundef !15
  %i.ana = sub i64 %i.amr, %i.amz
  %i.anb = icmp ugt i64 %i.amx, %i.ana
  br i1 %i.anb, label %bb.lw, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.anc = load i8, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !range !20, !alias.scope !16827, !noalias !16828, !noundef !15
  %i.and = trunc nuw i8 %i.anc to i1
  br i1 %i.and, label %split, label %bb.lo

.thread.i.i90:                                    ; preds = %bb.lk
  %i.ane = load i8, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !range !20, !alias.scope !16827, !noalias !16828, !noundef !15
  %i.anf = trunc nuw i8 %i.ane to i1
  br i1 %i.anf, label %split, label %bb.ln

bb.ln:                                            ; preds = %.thread.i.i90
  invoke void @_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E14step_bufferingB14_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.akl, i64 poison)
          to label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i unwind label %.loopexit1336, !noalias !16825, !inline_history !16293

bb.lo:                                            ; preds = %bb.lm
  call void @llvm.experimental.noalias.scope.decl(metadata !16829)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i63)
  store i32 -1, ptr %i.ds, align 4, !noalias !16830
  %.sroa.0.0.copyload.i.i.i243 = load i32, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70, align 8, !alias.scope !16829, !noalias !16831 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.i.i.i63, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i244, i64 28, i1 false), !noalias !16831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70, ptr noundef nonnull align 4 dereferenceable(32) %i.ds, i64 32, i1 false), !noalias !16825
  %.not.i.i.i245 = icmp eq i32 %.sroa.0.0.copyload.i.i.i243, -1
  br i1 %.not.i.i.i245, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  store i32 %.sroa.0.0.copyload.i.i.i243, ptr %i.ds, align 4, !noalias !16830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx2.i.i.i246, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.i.i.i63, i64 28, i1 false), !noalias !16830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i63)
  br label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i63)
  %i.ang = load i64, ptr %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16832, !noalias !16833, !noundef !15 ; 3 uses
  %i.anh = load i64, ptr %.sroa.5802.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16832, !noalias !16833, !noundef !15
  %i.ani = icmp eq i64 %i.ang, %i.anh
  br i1 %i.ani, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i258, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i247

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i247: ; preds = %bb.lq
  %i.anj = add i64 %i.ang, 1
  store i64 %i.anj, ptr %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16832, !noalias !16833
  %i.ank = load i64, ptr %i.ako, align 8, !alias.scope !16834, !noalias !16835, !noundef !15
  %i.anl = icmp ugt i64 %i.ank, 2
  %i.anm = load ptr, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71, align 8, !alias.scope !16834, !noalias !16835, !nonnull !15
  %.sink10.i.i.i.i.i248 = select i1 %i.anl, ptr %i.anm, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71
  %i.ann = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i.i.i.i248, i64 %i.ang ; 2 uses
  %.sroa.029.0.copyload.i.i.i249 = load i32, ptr %i.ann, align 4, !noalias !16831 ; 5 uses
  %.not16.i.i.i250 = icmp eq i32 %.sroa.029.0.copyload.i.i.i249, -1
  br i1 %.not16.i.i.i250, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i258, label %bb.lr

bb.lr:                                            ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i247
  %.sroa.630.0..sroa_idx.i.i.i251 = getelementptr inbounds nuw i8, ptr %i.ann, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i.i.i62, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.630.0..sroa_idx.i.i.i251, i64 28, i1 false), !noalias !16831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !16836
  store i32 %.sroa.029.0.copyload.i.i.i249, ptr %i.dr, align 4, !alias.scope !16837, !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx23.i.i.i252, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.630.0..sroa_idx.i.i.i251, i64 12, i1 false), !noalias !16831
  %.sroa.07.0.copyload.i.i.i253 = load i32, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, align 8, !alias.scope !16829, !noalias !16831 ; 2 uses
  %.not17.i.i.i254 = icmp eq i32 %.sroa.07.0.copyload.i.i.i253, -1
  br i1 %.not17.i.i.i254, label %bb.lt, label %bb.ls

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i258: ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i247, %bb.lq
  store i8 1, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !alias.scope !16829, !noalias !16831
  br label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !16836
  store i32 %.sroa.07.0.copyload.i.i.i253, ptr %i.dq, align 4, !noalias !16836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.69.0..sroa_idx10.i.i.i256, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.69.0..sroa_idx.i.i.i255, i64 12, i1 false), !noalias !16831
  %i.ano = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dr), !noalias !16838, !inline_history !16293
  br i1 %i.ano, label %bb.lv, label %bb.lu

bb.lt:                                            ; preds = %bb.lv, %bb.lr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !noalias !16831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx2.i.i.i246, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i.i.i62, i64 28, i1 false), !noalias !16830
  store i32 %.sroa.029.0.copyload.i.i.i249, ptr %i.ds, align 4, !noalias !16830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !16836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i62)
  br label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i

bb.lu:                                            ; preds = %bb.ls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !noalias !16831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i244, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i.i.i62, i64 28, i1 false), !noalias !16831
  store i32 %.sroa.029.0.copyload.i.i.i249, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70, align 8, !alias.scope !16829, !noalias !16831
  store i64 %i.amq, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i.i72, align 8, !alias.scope !16829, !noalias !16831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !16836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !16836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i62)
  br label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i

bb.lv:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !16836
  br label %bb.lt

bb.lw:                                            ; preds = %bb.ll, %bb.lj
  invoke void @_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E13lookup_bufferB14_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.akl, i64 noundef %i.amr)
          to label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i unwind label %.loopexit1336, !noalias !16825, !inline_history !16293

._crit_edge1701:                                  ; preds = %bb.ot
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #40
          to label %.noexc.i89 unwind label %bb.md, !noalias !16826, !inline_history !16293

.noexc.i89:                                       ; preds = %._crit_edge1701
  unreachable

_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i: ; preds = %bb.lw, %bb.lu, %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i258, %bb.ln
  %.pr.i.i91 = load i32, ptr %i.ds, align 4, !noalias !16830 ; 2 uses
  %.not.i.i92 = icmp eq i32 %.pr.i.i91, -1
  br i1 %.not.i.i92, label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i._crit_edge, label %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i

_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i._crit_edge: ; preds = %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i
  %.pre = load i64, ptr %i.eu, align 8, !noalias !16825
  %i.anp = add i64 %.pre, 1
  br label %split

_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i: ; preds = %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i, %bb.lt, %bb.lp
  %.sroa.06.i.i64.sroa.5.16.copyload = phi i32 [ %.pr.i.i91, %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.i.i ], [ %.sroa.029.0.copyload.i.i.i249, %bb.lt ], [ %.sroa.0.0.copyload.i.i.i243, %bb.lp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !16830
  call void @llvm.experimental.noalias.scope.decl(metadata !16839)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i.i.i.i61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !16840
  %.sroa.0.0.copyload.i.i.i.i93 = load i32, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, align 8, !alias.scope !16839, !noalias !16841 ; 3 uses
  store i32 -1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, align 8, !alias.scope !16839, !noalias !16841
  %.not.i.i.i.i94 = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i93, -1
  br i1 %.not.i.i.i.i94, label %bb.ly, label %bb.lx, !prof !16

bb.lx:                                            ; preds = %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i
  store i32 %.sroa.0.0.copyload.i.i.i.i93, ptr %i.dp, align 4, !noalias !16840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx2.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.69.0..sroa_idx.i.i.i255, i64 12, i1 false), !noalias !16842
  %i.anq = load i64, ptr %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16843, !noalias !16844, !noundef !15 ; 3 uses
  %i.anr = load i64, ptr %.sroa.5802.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16843, !noalias !16844, !noundef !15
  %i.ans = icmp eq i64 %i.anq, %i.anr
  br i1 %i.ans, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i.i241, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i.i97

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i.i97: ; preds = %bb.lx
  %i.ant = add i64 %i.anq, 1
  store i64 %i.ant, ptr %.sroa.4801.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71.sroa_idx, align 8, !alias.scope !16843, !noalias !16844
  %i.anu = load i64, ptr %i.ako, align 8, !alias.scope !16845, !noalias !16846, !noundef !15
  %i.anv = icmp ugt i64 %i.anu, 2
  %i.anw = load ptr, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71, align 8, !alias.scope !16845, !noalias !16846, !nonnull !15
  %.sink10.i.i.i.i.i.i98 = select i1 %i.anv, ptr %i.anw, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i71
  %i.anx = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i.i.i.i.i98, i64 %i.anq ; 2 uses
  %.sroa.020.0.copyload.i.i.i.i99 = load i32, ptr %i.anx, align 4, !noalias !16841 ; 3 uses
  %.not11.i.i.i.i100 = icmp eq i32 %.sroa.020.0.copyload.i.i.i.i99, -1
  br i1 %.not11.i.i.i.i100, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i.i241, label %bb.lz

bb.ly:                                            ; preds = %_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E4stepB14_.exit.thread15.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #40
          to label %.noexc4.i.i242 unwind label %.loopexit.split-lp1337, !noalias !16825, !inline_history !16293

.noexc4.i.i242:                                   ; preds = %bb.ly
  unreachable

bb.lz:                                            ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i.i97
  %.sroa.6.0..sroa_idx.i.i.i.i101 = getelementptr inbounds nuw i8, ptr %i.anx, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.515.i.i.i.i61, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i.i101, i64 28, i1 false), !noalias !16841
  store i32 %.sroa.020.0.copyload.i.i.i.i99, ptr %i.do, align 4, !noalias !16847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.515.0..sroa_idx16.i.i.i.i102, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i.i.i101, i64 12, i1 false), !noalias !16841
  %i.any = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.do), !noalias !16842, !inline_history !16293
  br i1 %i.any, label %bb.mb, label %bb.ma

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i.i.i241: ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i.i.i97, %bb.lx
  store i8 1, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !alias.scope !16839, !noalias !16841
  br label %bb.me
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer26analyze_successful_pattern:bb.a
  %.sroa.07.0.copyload.i.i86.i230 = load i32, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, align 8, !alias.scope !16863, !noalias !16866 ; 2 uses
  %.not17.i.i87.i231 = icmp eq i32 %.sroa.07.0.copyload.i.i86.i230, -1
  br i1 %.not17.i.i87.i231, label %bb.mu, label %bb.mt

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i91.i235: ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.i.i80.i224, %bb.mr
  store i8 1, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx.i.i74, align 8, !alias.scope !16863, !noalias !16866
  br label %bb.na

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !16872
  store i32 %.sroa.07.0.copyload.i.i86.i230, ptr %i.dk, align 4, !noalias !16872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.69.0..sroa_idx10.i.i89.i233, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.69.0..sroa_idx.i.i.i255, i64 12, i1 false), !noalias !16866
  %i.apk = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dk, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dl), !noalias !16874, !inline_history !16293
  br i1 %i.apk, label %bb.mw, label %bb.mv

bb.mu:                                            ; preds = %bb.mw, %bb.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, ptr noundef nonnull align 4 dereferenceable(16) %i.dl, i64 16, i1 false), !noalias !16866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5817.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i.i72.i59, i64 28, i1 false), !noalias !16865
  store i32 %.sroa.029.0.copyload.i.i82.i226, ptr %i.dw, align 4, !alias.scope !16864, !noalias !16865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !16872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i72.i59)
  br label %.thread1164

bb.mv:                                            ; preds = %bb.mt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i69, ptr noundef nonnull align 4 dereferenceable(16) %i.dl, i64 16, i1 false), !noalias !16866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i.i244, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i.i72.i59, i64 28, i1 false), !noalias !16866
  store i32 %.sroa.029.0.copyload.i.i82.i226, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i70, align 8, !alias.scope !16863, !noalias !16866
  store i64 %i.amq, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i.i72, align 8, !alias.scope !16863, !noalias !16866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !16872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i72.i59)
  br label %bb.na

bb.mw:                                            ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !16872
  br label %bb.mu

bb.mx:                                            ; preds = %bb.mm, %bb.mk
  invoke void @_RNvMs2_NtCs6Wt4yPw39th_9itertools11groupbylazyINtB5_10GroupInnerNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB10_B10_Ej2_ENCINvMs8_NtB12_6narrowNtB2J_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB2F_34analyze_successful_mapping_pattern0E0E13lookup_bufferB14_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.akl, i64 noundef %i.amr)
          to label %bb.na unwind label %bb.mz, !noalias !16826, !inline_history !16293

bb.my:                                            ; preds = %bb.mi
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #40
          to label %.noexc92.i218 unwind label %.loopexit.split-lp1332, !noalias !16826, !inline_history !16293

.noexc92.i218:                                    ; preds = %bb.my
  unreachable

bb.mz:                                            ; preds = %bb.mx, %bb.mo
  %i.apl = landingpad { ptr, i32 }
          cleanup
  %i.apm = load i64, ptr %i.eu, align 8, !noalias !16858, !noundef !15
  %i.apn = add i64 %i.apm, 1                      ; 2 uses
  store i64 %i.apn, ptr %i.eu, align 8, !noalias !16858
  br label %.body93.i114

.loopexit1330.thread:                             ; preds = %bb.mj, %.thread.i74.i219, %bb.mn
  store i32 -1, ptr %i.dw, align 4, !alias.scope !16875, !noalias !16876
  store i64 0, ptr %i.eu, align 8, !noalias !16858
  br label %bb.og

.thread1164:                                      ; preds = %bb.mq, %bb.mu
  store i64 0, ptr %i.eu, align 8, !noalias !16858
  br label %.thread1156

bb.na:                                            ; preds = %bb.mo, %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeBJ_Ej2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread.i.i91.i235, %bb.mv, %bb.mx
  %.pr1155.pr = load i32, ptr %i.dw, align 4, !noalias !16812
  %i.apo = load i64, ptr %i.eu, align 8, !noalias !16858, !noundef !15
  %i.app = add i64 %i.apo, 1                      ; 2 uses
  store i64 %i.app, ptr %i.eu, align 8, !noalias !16858
  %.not41.i113 = icmp eq i32 %.pr1155.pr, -1
  br i1 %.not41.i113, label %.loopexit1330, label %.thread1156

.body93.i114thread-pre-split:                     ; preds = %.loopexit1331, %.loopexit.split-lp1332, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592, %.body129.i, %bb.pr, %.body129.i.thread
  %.pn.i116.ph = phi { ptr, i32 } [ %eh.lpad-body130.i1212, %.body129.i.thread ], [ %.pn9.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592 ], [ %i.avs, %bb.pr ], [ %lpad.thr_comm.split-lp1218, %.body129.i ], [ %lpad.loopexit1333, %.loopexit1331 ], [ %lpad.loopexit.split-lp1334, %.loopexit.split-lp1332 ]
  %.pr1256 = load i64, ptr %i.eu, align 8, !noalias !16826
  br label %.body93.i114

.body93.i114:                                     ; preds = %.body93.i114thread-pre-split, %bb.mz
  %i.apq = phi i64 [ %.pr1256, %.body93.i114thread-pre-split ], [ %i.apn, %bb.mz ]
  %.pn.i116 = phi { ptr, i32 } [ %.pn.i116.ph, %.body93.i114thread-pre-split ], [ %i.apl, %bb.mz ] ; 2 uses
  %i.apr = icmp eq i64 %i.apq, 0
  br i1 %i.apr, label %bb.nb, label %bb.nc, !prof !17

bb.nb:                                            ; preds = %.body93.i114
  %i.aps = load i64, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73, align 8, !noalias !16826, !noundef !15 ; 2 uses
  %i.apt = icmp eq i64 %i.aps, -1
  %i.apu = icmp ugt i64 %i.amr, %i.aps
  %or.cond.i.i.i.i120 = or i1 %i.apt, %i.apu
  br i1 %or.cond.i.i.i.i120, label %bb.nd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread

bb.nc:                                            ; preds = %.body93.i114
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
          to label %.noexc95.i119 unwind label %bb.px, !noalias !16826, !inline_history !16293

.noexc95.i119:                                    ; preds = %bb.nc
  unreachable

bb.nd:                                            ; preds = %bb.nb
  store i64 %i.amr, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73, align 8, !noalias !16826
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread

.loopexit1331:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit, %.thread1156, %.noexc606, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i
  %lpad.loopexit1333 = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i114thread-pre-split

.loopexit.split-lp1332:                           ; preds = %bb.my
  %lpad.loopexit.split-lp1334 = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i114thread-pre-split

.thread1156:                                      ; preds = %bb.mh, %.thread1164, %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !16812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alf, ptr noundef nonnull align 4 dereferenceable(16) %i.ald, i64 16, i1 false), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8827.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8827.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8827.sroa.7)
  store ptr %1, ptr %i.ale, align 8, !noalias !16812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %i.eq, i64 16, i1 false), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6869)
  %i.apv = load ptr, ptr %i.alg, align 8, !noalias !16877, !nonnull !15, !noundef !15 ; 2 uses
  %i.apw = load i64, ptr %i.alh, align 8, !noalias !16877, !noundef !15
  %i.apx = load ptr, ptr %1, align 8, !noalias !16878, !nonnull !15, !noundef !15
  %i.apy = load ptr, ptr %i.ajj, align 8, !noalias !16878, !nonnull !15, !align !18, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16878
  invoke void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13match_pattern20mapping_pattern_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %i.apx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.apy, ptr noundef nonnull align 4 %i.ajx)
          to label %.noexc606 unwind label %.loopexit1331

.noexc606:                                        ; preds = %.thread1156
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer15intersect_types(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.alf, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.m)
          to label %.noexc607 unwind label %.loopexit1331

.noexc607:                                        ; preds = %.noexc606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16878
  %.val.i600 = load i32, ptr %i.n, align 4, !range !26, !noalias !16878, !noundef !15 ; 3 uses
  %i.apz = icmp ne i32 %.val.i600, 17
  call void @llvm.assume(i1 %i.apz), !noalias !16826
  %i.aqa = add nsw i32 %.val.i600, -4
  %i.aqb = icmp samesign ugt i32 %.val.i600, 3
  %narrow.i.i601 = select i1 %i.aqb, i32 %i.aqa, i32 13
  switch i32 %narrow.i.i601, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i602
    i32 2, label %bb.nf
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i602: ; preds = %.noexc607
  %.val1.i603 = load i8, ptr %i.ali, align 4, !noalias !16878
  %spec.select.i.i604 = trunc i8 %.val1.i603 to i1
  br i1 %spec.select.i.i604, label %bb.nf, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i602, %.noexc607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16878
  %i.aqc = getelementptr inbounds nuw [16 x i8], ptr %i.apv, i64 %i.apw
  %i.aqd = insertelement <4 x ptr> %i.amp, ptr %i.apv, i64 0
  %i.aqe = insertelement <4 x ptr> %i.aqd, ptr %i.aqc, i64 1
  store <4 x ptr> %i.aqe, ptr %i.k, align 8, !noalias !16878
  invoke void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMs8_NtB1y_6narrowNtB2r_22PatternSuccessAnalyzer19mapping_pattern_arm0EB1w_INtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B3C_IB3A_INtNtCscdodAO9FK5_5alloc3vec3VecB1w_EEINtNtNtB4_6traits7collect12FromIteratorIB3A_B1w_EE9from_iterBQ_E0B4F_EB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.k)
          to label %.noexc608 unwind label %.loopexit1331

.noexc608:                                        ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16878
  %i.aqf = load i64, ptr %i.l, align 8, !range !22, !noalias !16878, !noundef !15 ; 2 uses
  %.not.i605 = icmp eq i64 %i.aqf, -1
  br i1 %.not.i605, label %bb.ne, label %bb.nh

bb.ne:                                            ; preds = %.noexc608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16878
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i602, %.noexc607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16878
  br label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592: ; preds = %.body543.thread, %bb.ng
  %.pn9.i.i = phi { ptr, i32 } [ %i.aqg, %bb.ng ], [ %.pn.i.i125, %.body543.thread ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %.body93.i114thread-pre-split unwind label %bb.of

bb.ng:                                            ; preds = %._crit_edge, %.noexc587, %bb.nj, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20PatternSuccessResultEBH_.exit547, %bb.nq
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592

bb.nh:                                            ; preds = %.noexc608
  %.sroa.7932.16.copyload = load ptr, ptr %.sroa.7932.16..sroa_idx, align 8, !noalias !16878, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.8933.16.copyload = load i64, ptr %.sroa.8933.16..sroa_idx, align 8, !noalias !16878 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16878
  %.sroa.0929.0.copyload = load i32, ptr %i.n, align 4, !noalias !16878 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6869, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4930.0..sroa_idx, i64 12, i1 false), !noalias !16826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !16879
  store ptr null, ptr %i.dj, align 8, !noalias !16879
  store i64 0, ptr %i.alj, align 8, !noalias !16879
  %i.aqh = icmp ult i64 %.sroa.8933.16.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.aqh), !noalias !16877
  %i.aqi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7932.16.copyload, i64 %.sroa.8933.16.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !16879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9852.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !16877
  store ptr %.val2.i, ptr %i.di, align 8, !noalias !16879
  store ptr %i.ajl, ptr %.sroa.4847.0..sroa_idx, align 8, !noalias !16879
  store ptr %.sroa.7932.16.copyload, ptr %.sroa.5848.0..sroa_idx, align 8, !noalias !16879
  store ptr %.sroa.7932.16.copyload, ptr %.sroa.6849.0..sroa_idx, align 8, !noalias !16879
  store i64 %i.aqf, ptr %.sroa.7.0..sroa_idx850, align 8, !noalias !16879
  store ptr %i.aqi, ptr %.sroa.8851.0..sroa_idx, align 8, !noalias !16879
  br i1 %i.amn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.nh, %bb.od
  %i.aqj = phi ptr [ %i.ash, %bb.od ], [ %.val2.i, %bb.nh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16880)
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 56
  store ptr %i.aqk, ptr %i.di, align 8, !alias.scope !16881, !noalias !16882
  call void @llvm.experimental.noalias.scope.decl(metadata !16883), !noalias !16877
  %i.aql = load ptr, ptr %.sroa.8851.0..sroa_idx, align 8, !alias.scope !16884, !noalias !16885, !nonnull !15, !noundef !15
  %i.aqm = load ptr, ptr %.sroa.6849.0..sroa_idx, align 8, !alias.scope !16884, !noalias !16885, !nonnull !15, !noundef !15 ; 4 uses
  %i.aqn = icmp eq ptr %i.aqm, %i.aql
  br i1 %i.aqn, label %._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i: ; preds = %.lr.ph
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  store ptr %i.aqo, ptr %.sroa.6849.0..sroa_idx, align 8, !alias.scope !16884, !noalias !16885
  %.sroa.0.0.copyload7.i = load i32, ptr %i.aqm, align 4, !noalias !16886 ; 2 uses
  %.not6.i = icmp eq i32 %.sroa.0.0.copyload7.i, -1
  br i1 %.not6.i, label %._crit_edge, label %bb.ni

.body543.thread:                                  ; preds = %.loopexit1318, %.loopexit.split-lp1319, %bb.oe, %bb.ny, %.body543
  %.pn.i.i125 = phi { ptr, i32 } [ %lpad.phi1314, %bb.oe ], [ %i.asd, %bb.ny ], [ %lpad.thr_comm.split-lp1177, %.body543 ], [ %lpad.loopexit1320, %.loopexit1318 ], [ %lpad.loopexit.split-lp1321, %.loopexit.split-lp1319 ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.5848.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592 unwind label %bb.of

.loopexit1318:                                    ; preds = %bb.ni
  %lpad.loopexit1320 = landingpad { ptr, i32 }
          cleanup
  br label %.body543.thread

.loopexit.split-lp1319:                           ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread
  %lpad.loopexit.split-lp1321 = landingpad { ptr, i32 }
          cleanup
  br label %.body543.thread

bb.ni:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.aqm, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !16879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx8.i, i64 12, i1 false), !noalias !16877
  store i32 %.sroa.0.0.copyload7.i, ptr %i.dh, align 4, !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !16879
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer26analyze_successful_pattern(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.dg, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aqj, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.dh)
          to label %bb.ns unwind label %.loopexit1318, !noalias !16877, !inline_history !16391

._crit_edge:                                      ; preds = %.lr.ph, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i, %bb.od, %bb.nh
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.5848.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit590 unwind label %bb.ng

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit590: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !16879
  br i1 %.not6.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i, label %bb.nj

bb.nj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit590
  %i.aqp = load ptr, ptr %1, align 8, !noalias !16887, !nonnull !15, !noundef !15
  %i.aqq = load ptr, ptr %i.ajj, align 8, !noalias !16887, !nonnull !15, !align !18, !noundef !15
  %i.aqr = load i32, ptr %i.als, align 8, !range !31, !noalias !16887, !noundef !15
  %i.aqs = load i32, ptr %i.alt, align 4, !noalias !16887, !noundef !15
  %i.aqt = invoke noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core11place_table(ptr noundef nonnull %i.aqp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aqq, i32 noundef %i.aqr, i32 noundef %i.aqs)
          to label %.noexc587 unwind label %bb.ng

.noexc587:                                        ; preds = %bb.nj
  %i.aqu = invoke noundef i32 @_RNvMs5_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_10PlaceTable9symbol_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aqt, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i586, i64 noundef %.sroa.0.0.i.i585)
          to label %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern00Bd_.exit unwind label %bb.ng ; 2 uses

_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern00Bd_.exit: ; preds = %.noexc587
  %.not7.i.i = icmp eq i32 %i.aqu, 0
  br i1 %.not7.i.i, label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i, label %bb.nk

bb.nk:                                            ; preds = %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern00Bd_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !16879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !16879
  store i32 %.sroa.0929.0.copyload, ptr %i.dd, align 4, !noalias !16879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6869.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6869, i64 12, i1 false), !noalias !16879
  %i.aqv = load ptr, ptr %1, align 8, !noalias !16888, !nonnull !15, !noundef !15 ; 4 uses
  %i.aqw = load ptr, ptr %i.ajj, align 8, !noalias !16888, !nonnull !15, !align !18, !noundef !15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.dd, i64 16, i1 false), !noalias !16889
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.s, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull %i.aqv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aqw)
          to label %.noexc580 unwind label %bb.ng

.noexc580:                                        ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16888
  %i.aqx = load i32, ptr %i.s, align 4, !range !26, !noalias !16888, !noundef !15 ; 2 uses
  %i.aqy = icmp ne i32 %i.aqx, 17
  call void @llvm.assume(i1 %i.aqy), !noalias !16877
  %i.aqz = icmp eq i32 %i.aqx, 34
  br i1 %i.aqz, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %.noexc580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16888
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.r, i8 noundef 9, ptr noundef nonnull %i.aqv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aqw, ptr noundef nonnull align 4 %i.ajx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124)
          to label %.noexc581 unwind label %bb.ng

.noexc581:                                        ; preds = %bb.nl
  %.sroa.0.0.copyload1.i = load i32, ptr %i.r, align 4, !noalias !16888
  %.sroa.6.0.copyload4.i = load i32, ptr %.sroa.6.0..sroa_idx3.i, align 4, !noalias !16888
  %.sroa.7.0.copyload8.i = load i64, ptr %.sroa.7.0..sroa_idx7.i, align 4, !noalias !16888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16888
  br label %bb.nn

bb.nm:                                            ; preds = %.noexc580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16888
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21unpack_keys_and_items(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.dd, ptr noundef nonnull %i.aqv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aqw, ptr noundef nonnull align 4 %i.ajx)
          to label %.noexc582 unwind label %bb.ng

.noexc582:                                        ; preds = %bb.nm
  %i.ara = load i32, ptr %i.q, align 4, !range !21, !noalias !16888, !noundef !15 ; 2 uses
  %.not.i575 = icmp eq i32 %i.ara, -1
  br i1 %.not.i575, label %bb.np, label %bb.no

bb.nn:                                            ; preds = %bb.np, %.noexc581
  %.sroa.11.0.i = phi i64 [ undef, %.noexc581 ], [ %.sroa.11.1.i, %bb.np ]
  %.sroa.7.0.i = phi i64 [ %.sroa.7.0.copyload8.i, %.noexc581 ], [ %.sroa.7.1.i, %bb.np ]
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.copyload4.i, %.noexc581 ], [ %.sroa.6.1.i, %bb.np ]
  %.sroa.0.0.i577 = phi i32 [ %.sroa.0.0.copyload1.i, %.noexc581 ], [ %.sroa.0.1.i, %bb.np ]
  %i.arb = phi <2 x i32> [ <i32 18, i32 5>, %.noexc581 ], [ %i.ard, %bb.np ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16888
  store i32 %.sroa.0.0.i577, ptr %i.p, align 4, !noalias !16888
  store i32 %.sroa.6.0.i, ptr %.sroa.419.0..sroa_idx.i, align 4, !noalias !16888
  store i64 %.sroa.7.0.i, ptr %.sroa.520.0..sroa_idx.i, align 4, !noalias !16888
  store <2 x i32> %i.arb, ptr %i.amd, align 4, !noalias !16888
  store i64 %.sroa.11.0.i, ptr %.sroa.5.0..sroa_idx.i579, align 4, !noalias !16888
  invoke void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej2_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.de, i8 noundef 15, ptr noundef nonnull %i.aqv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.aqw, ptr noundef nonnull align 4 %i.ajx, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125)
          to label %bb.nq unwind label %bb.ng

bb.no:                                            ; preds = %.noexc582
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i576, align 4, !noalias !16888
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !16888
  %i.arc = load <2 x i32>, ptr %.sroa.711.0..sroa_idx.i, align 4, !noalias !16888
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !16888
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %.noexc582
  %.sroa.11.1.i = phi i64 [ %.sroa.11.0.copyload.i, %bb.no ], [ undef, %.noexc582 ]
  %.sroa.7.1.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.no ], [ undef, %.noexc582 ]
  %.sroa.6.1.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.no ], [ 1, %.noexc582 ]
  %.sroa.0.1.i = phi i32 [ %i.ara, %bb.no ], [ 4, %.noexc582 ]
  %i.ard = phi <2 x i32> [ %i.arc, %bb.no ], [ <i32 4, i32 1>, %.noexc582 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16888
  br label %bb.nn

bb.nq:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !16879
  call void @llvm.experimental.noalias.scope.decl(metadata !16890)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i573, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !16891, !noalias !16879
  store i64 1, ptr %i.df, align 8, !alias.scope !16892, !noalias !16893
  store i8 0, ptr %.sroa.53.0..sroa_idx.i574, align 8, !alias.scope !16892, !noalias !16893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !16879
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer13merge_binding(ptr noalias noundef align 8 dereferenceable(24) %i.dj, i32 noundef 0, i32 noundef %i.aqu, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.df)
          to label %bb.nr unwind label %bb.ng, !noalias !16877, !inline_history !16391

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !16879
  br label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i

bb.ns:                                            ; preds = %bb.ni
  %.val.i.i126 = load i32, ptr %i.dg, align 8, !range !26, !noalias !16879, !noundef !15 ; 3 uses
  %i.are = icmp ne i32 %.val.i.i126, 17
  call void @llvm.assume(i1 %i.are)
  %i.arf = add nsw i32 %.val.i.i126, -4
  %i.arg = icmp samesign ugt i32 %.val.i.i126, 3
  %narrow.i569 = select i1 %i.arg, i32 %i.arf, i32 13
  switch i32 %narrow.i569, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183 [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread
  ]

.body543:                                         ; preds = %bb.ob
  %lpad.thr_comm.split-lp1177 = landingpad { ptr, i32 }
          cleanup
  br label %.body543.thread

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572: ; preds = %bb.ns
  %.val11.i.i = load i8, ptr %i.alk, align 4, !noalias !16879
  %spec.select.i571 = trunc i8 %.val11.i.i to i1
  br i1 %spec.select.i571, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183: ; preds = %bb.ns, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572
  call void @llvm.experimental.noalias.scope.decl(metadata !16894)
  %i.arh = load ptr, ptr %i.all, align 8, !alias.scope !16894, !noalias !16877, !noundef !15 ; 4 uses
  %.not.i549 = icmp ne ptr %i.arh, null           ; 3 uses
  %i.ari = load i64, ptr %i.alm, align 8, !alias.scope !16894, !noalias !16877 ; 2 uses
  %i.arj = load i64, ptr %i.aln, align 8, !alias.scope !16894, !noalias !16877 ; 3 uses
  %.sroa.01.sroa.0.0.i = zext i1 %.not.i549 to i64 ; 2 uses
  %.sroa.01.sroa.5.sroa.6.0.i = select i1 %.not.i549, i64 %i.ari, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16895
  store i64 %.sroa.01.sroa.0.0.i, ptr %i.w, align 8, !noalias !16895
  store ptr null, ptr %.sroa.02.sroa.2.0..sroa_idx.i, align 8, !noalias !16895
  store ptr %i.arh, ptr %.sroa.02.sroa.2.sroa.2.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !16895
  store i64 %.sroa.01.sroa.5.sroa.6.0.i, ptr %.sroa.02.sroa.2.sroa.3.0..sroa.02.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !16895
  store i64 %.sroa.01.sroa.0.0.i, ptr %.sroa.02.sroa.3.0..sroa_idx.i, align 8, !noalias !16895
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !noalias !16895
  store ptr %i.arh, ptr %.sroa.02.sroa.4.sroa.2.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !16895
  store i64 %.sroa.01.sroa.5.sroa.6.0.i, ptr %.sroa.02.sroa.4.sroa.3.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !16895
  %i.ark = icmp ne i64 %i.arj, 0
  %.not33.i = select i1 %.not.i549, i1 %i.ark, i1 false
  br i1 %.not33.i, label %.lr.ph.i, label %.loopexit1317

.lr.ph.i:                                         ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i
  %i.arl = phi i64 [ %.pr.i564, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i ], [ %i.arj, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183 ]
  %i.arm = add i64 %i.arl, -1
  store i64 %i.arm, ptr %.sroa.2.0..sroa_idx.i550, align 8, !noalias !16895
  %i.arn = invoke noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE10init_frontB2I_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %.noexc566 unwind label %.loopexit1310 ; 3 uses

.noexc566:                                        ; preds = %.lr.ph.i
  %.not.i.i555 = icmp eq ptr %i.arn, null
  br i1 %.not.i.i555, label %bb.nw, label %bb.nt, !prof !16

bb.nt:                                            ; preds = %.noexc566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16896
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i.i548)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16897
  invoke void @_RNvMsh_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeE7next_kvB2O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.arn)
          to label %.noexc.i.i.i556 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16898

.noexc.i.i.i556:                                  ; preds = %bb.nt
  %i.aro = load ptr, ptr %i.u, align 8, !noalias !16897, !noundef !15 ; 3 uses
  %i.arp = icmp eq ptr %i.aro, null
  br i1 %i.arp, label %bb.nu, label %bb.nv, !prof !16

bb.nu:                                            ; preds = %.noexc.i.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16897
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #40
          to label %.noexc1.i.i.i565 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16899

.noexc1.i.i.i565:                                 ; preds = %bb.nu
  unreachable

bb.nv:                                            ; preds = %.noexc.i.i.i556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i548, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i551, i64 16, i1 false), !noalias !16897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16897
  store ptr %i.aro, ptr %i.t, align 8, !noalias !16897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i.i.i.i552, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i548, i64 16, i1 false), !noalias !16897
  invoke void @_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB2O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
          to label %_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i557 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16899

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nv, %bb.nt, %bb.nu
  %lpad.loopexit.split-lp2889 = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !16877
  unreachable

bb.nw:                                            ; preds = %.noexc566
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #40
          to label %.noexc567 unwind label %.loopexit.split-lp1311

.noexc567:                                        ; preds = %bb.nw
  unreachable

_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i557: ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i553, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i548, i64 16, i1 false), !noalias !16900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i.i.i548)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arn, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !16898
  %.sroa.4.0.copyload.i.i558 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i553, align 8, !noalias !16901
  %.sroa.5.0.copyload.i.i559 = load i64, ptr %.sroa.5.0..sroa_idx.i.i554, align 8, !noalias !16901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16896
  %i.arq = invoke { ptr, ptr } @_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB18_14LeafOrInternalE19into_key_val_mut_atB2q_(ptr noundef nonnull %i.aro, i64 noundef %.sroa.4.0.copyload.i.i558, i64 noundef %.sroa.5.0.copyload.i.i559)
          to label %.noexc568 unwind label %.loopexit1310

.noexc568:                                        ; preds = %_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i557
  %i.arr = extractvalue { ptr, ptr } %i.arq, 1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.arr) ], !noalias !16877
  %i.ars = load i64, ptr %i.arr, align 8, !alias.scope !16902, !noalias !16903, !noundef !15
  %i.art = icmp ugt i64 %i.ars, 2                 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 8 ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8, !alias.scope !16902, !noalias !16903, !nonnull !15
  %.sink9.i.i.i.i560 = select i1 %i.art, ptr %i.arv, ptr %i.aru ; 2 uses
  %.sink8.idx.i.i.i.i561 = select i1 %i.art, i64 16, i64 0
  %.sink8.i.i.i.i562 = getelementptr inbounds nuw i8, ptr %i.arr, i64 %.sink8.idx.i.i.i.i561
  %i.arw = load i64, ptr %.sink8.i.i.i.i562, align 8, !alias.scope !16904, !noalias !16895, !noundef !15 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.arw, 20
  %i.arx = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i.i560, i64 %.idx.i.i
  %i.ary = icmp eq i64 %i.arw, 0
  br i1 %i.ary, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i, label %.lr.ph.i.i563

.lr.ph.i.i563:                                    ; preds = %.noexc568, %.lr.ph.i.i563
  %.sroa.0.02.i.i = phi ptr [ %i.arz, %.lr.ph.i.i563 ], [ %.sink9.i.i.i.i560, %.noexc568 ] ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 20 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  store i8 0, ptr %i.asa, align 4, !noalias !16895
  %i.asb = icmp eq ptr %i.arz, %i.arx
  br i1 %i.asb, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i, label %.lr.ph.i.i563

_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i: ; preds = %.lr.ph.i.i563, %.noexc568
  %.pr.i564 = load i64, ptr %.sroa.2.0..sroa_idx.i550, align 8, !noalias !16895 ; 2 uses
  %i.asc = icmp eq i64 %.pr.i564, 0
  br i1 %i.asc, label %.loopexit1317.loopexit, label %.lr.ph.i

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread: ; preds = %bb.ns, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.all)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20PatternSuccessResultEBH_.exit547 unwind label %.loopexit.split-lp1319

.loopexit1317.loopexit:                           ; preds = %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes14demote_subject.exit.i
  %.sroa.0855.0.copyload.pre = load ptr, ptr %i.all, align 8, !noalias !16879
  %.sroa.4856.0.copyload.pre = load i64, ptr %i.alm, align 8, !noalias !16879
  %.sroa.5857.0.copyload.pre = load i64, ptr %i.aln, align 8, !noalias !16879
  br label %.loopexit1317

.loopexit1317:                                    ; preds = %.loopexit1317.loopexit, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183
  %.sroa.5857.0.copyload = phi i64 [ %.sroa.5857.0.copyload.pre, %.loopexit1317.loopexit ], [ %i.arj, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183 ]
  %.sroa.4856.0.copyload = phi i64 [ %.sroa.4856.0.copyload.pre, %.loopexit1317.loopexit ], [ %i.ari, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183 ]
  %.sroa.0855.0.copyload = phi ptr [ %.sroa.0855.0.copyload.pre, %.loopexit1317.loopexit ], [ %i.arh, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread1183 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.not.i528 = icmp ne ptr %.sroa.0855.0.copyload, null ; 3 uses
  %.sroa.0.sroa.5.sroa.6.0.i529 = select i1 %.not.i528, i64 %.sroa.4856.0.copyload, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0.i530 = zext i1 %.not.i528 to i64 ; 2 uses
  %.sroa.5.0.i531 = select i1 %.not.i528, i64 %.sroa.5857.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16905
  store i64 %.sroa.0.sroa.0.0.i530, ptr %i.y, align 8, !noalias !16905
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx.i532, align 8, !noalias !16905
  store ptr %.sroa.0855.0.copyload, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i533, align 8, !noalias !16905
  store i64 %.sroa.0.sroa.5.sroa.6.0.i529, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i534, align 8, !noalias !16905
  store i64 %.sroa.0.sroa.0.0.i530, ptr %.sroa.0.sroa.6.0..sroa_idx.i535, align 8, !noalias !16905
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx.i536, align 8, !noalias !16905
  store ptr %.sroa.0855.0.copyload, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i537, align 8, !noalias !16905
  store i64 %.sroa.0.sroa.5.sroa.6.0.i529, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i538, align 8, !noalias !16905
  store i64 %.sroa.5.0.i531, ptr %.sroa.5.0..sroa_idx.i539, align 8, !noalias !16905
  br label %bb.nx

bb.nx:                                            ; preds = %bb.oa, %.loopexit1317
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB25_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.nz unwind label %bb.ny, !noalias !16906

bb.ny:                                            ; preds = %bb.oa, %bb.nx
  %i.asd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.body543.thread unwind label %bb.oc, !noalias !16906

bb.nz:                                            ; preds = %bb.nx
  %i.ase = load i32, ptr %i.x, align 8, !range !28, !noalias !16905, !noundef !15 ; 2 uses
  %.not35.i541 = icmp eq i32 %i.ase, 2
  br i1 %.not35.i541, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.asf = load i32, ptr %i.alo, align 4, !noalias !16905, !noundef !15
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer13merge_binding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj, i32 noundef %i.ase, i32 noundef %i.asf, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.alp)
          to label %bb.nx unwind label %bb.ny, !noalias !16906

bb.ob:                                            ; preds = %bb.nz
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.od unwind label %.body543

bb.oc:                                            ; preds = %bb.ny
  %i.asg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !16906
  unreachable

bb.od:                                            ; preds = %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !16879
  %i.ash = load ptr, ptr %i.di, align 8, !alias.scope !16907, !noalias !16882, !nonnull !15, !noundef !15 ; 2 uses
  %i.asi = load ptr, ptr %.sroa.4847.0..sroa_idx, align 8, !alias.scope !16907, !noalias !16882, !nonnull !15, !noundef !15
  %i.asj = icmp eq ptr %i.ash, %i.asi
  br i1 %i.asj, label %._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20PatternSuccessResultEBH_.exit547: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit572.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !16879
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.5848.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit unwind label %bb.ng

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow20PatternSuccessResultEBH_.exit547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !16879
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %.noexc98.i128 unwind label %.loopexit1331

.noexc98.i128:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !16879
  br label %_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i.thread

.loopexit1310:                                    ; preds = %.lr.ph.i, %_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i557
  %lpad.loopexit1312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.oe

.loopexit.split-lp1311:                           ; preds = %bb.nw
  %lpad.loopexit.split-lp1313 = landingpad { ptr, i32 }
          cleanup
  br label %bb.oe

bb.oe:                                            ; preds = %.loopexit.split-lp1311, %.loopexit1310
  %lpad.phi1314 = phi { ptr, i32 } [ %lpad.loopexit1312, %.loopexit1310 ], [ %lpad.loopexit.split-lp1313, %.loopexit.split-lp1311 ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.all)
          to label %.body543.thread unwind label %bb.of

bb.of:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit592, %.body543.thread, %bb.oe
  %i.ask = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !16877, !inline_history !16391
  unreachable

_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i.thread: ; preds = %bb.nf, %.noexc98.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6869)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !16812
  br label %bb.pw

_RNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB7_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern0Bb_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core9predicate32MappingPatternEntryPredicateKindEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB3H_.exit590, %_RNCNCNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB9_22PatternSuccessAnalyzer34analyze_successful_mapping_pattern00Bd_.exit, %bb.nr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8827.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !noalias !16908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8827.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6869, i64 12, i1 false), !noalias !16908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8827.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6869, i64 12, i1 false), !noalias !16908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6869)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !16812
  %.not43.i129 = icmp eq i32 %.sroa.0929.0.copyload, -1
  br i1 %.not43.i129, label %bb.pw, label %bb.pf

.loopexit1330:                                    ; preds = %bb.na
  %i.asl = icmp eq i64 %i.app, 0
  br i1 %i.asl, label %bb.og, label %bb.oh, !prof !29

bb.og:                                            ; preds = %.loopexit1330.thread, %.loopexit1330
  %i.asm = load i64, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73, align 8, !noalias !16826, !noundef !15 ; 2 uses
  %i.asn = icmp eq i64 %i.asm, -1
  %i.aso = icmp ugt i64 %i.amr, %i.asm
  %or.cond.i.i.i101.i = or i1 %i.asn, %i.aso
  br i1 %or.cond.i.i.i101.i, label %bb.oi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i

bb.oh:                                            ; preds = %.loopexit1330
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #40
          to label %.noexc102.i154 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit.split-lp, !noalias !16826, !inline_history !16293

.noexc102.i154:                                   ; preds = %bb.oh
  unreachable

bb.oi:                                            ; preds = %bb.og
  store i64 %i.amr, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx.i.i73, align 8, !noalias !16826
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i: ; preds = %bb.oi, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5817)
  %i.asp = load ptr, ptr %i.en, align 8, !noalias !16812, !noundef !15 ; 3 uses
  %.not42.i155 = icmp ne ptr %i.asp, null         ; 3 uses
  %i.asq = load i64, ptr %i.alb, align 8, !noalias !16812
  %i.asr = load i64, ptr %i.alc, align 8, !noalias !16812 ; 2 uses
  %.sroa.09.sroa.0.0.i156 = zext i1 %.not42.i155 to i64 ; 2 uses
  %.sroa.09.sroa.5.sroa.6.0.i157 = select i1 %.not42.i155, i64 %i.asq, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !16812
  store i64 %.sroa.09.sroa.0.0.i156, ptr %i.ei, align 8, !noalias !16812
  store ptr null, ptr %.sroa.010.sroa.2.0..sroa_idx.i159, align 8, !noalias !16812
  store ptr %i.asp, ptr %.sroa.010.sroa.2.sroa.2.0..sroa.010.sroa.2.0..sroa_idx.sroa_idx.i160, align 8, !noalias !16812
  store i64 %.sroa.09.sroa.5.sroa.6.0.i157, ptr %.sroa.010.sroa.2.sroa.3.0..sroa.010.sroa.2.0..sroa_idx.sroa_idx.i161, align 8, !noalias !16812
  store i64 %.sroa.09.sroa.0.0.i156, ptr %.sroa.010.sroa.3.0..sroa_idx.i162, align 8, !noalias !16812
  store ptr null, ptr %.sroa.010.sroa.4.0..sroa_idx.i163, align 8, !noalias !16812
  store ptr %i.asp, ptr %.sroa.010.sroa.4.sroa.2.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx.i164, align 8, !noalias !16812
  store i64 %.sroa.09.sroa.5.sroa.6.0.i157, ptr %.sroa.010.sroa.4.sroa.3.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx.i165, align 8, !noalias !16812
  %i.ass = icmp ne i64 %i.asr, 0
  %.not2171 = select i1 %.not42.i155, i1 %i.ass, i1 false
  br i1 %.not2171, label %.lr.ph1698, label %._crit_edge1699

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit: ; preds = %bb.ow, %_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer22pattern_filtering_type.exit.i.i184, %bb.ov, %.noexc119.i212, %bb.ou, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i181.thread1208, %.lr.ph1698, %_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i175, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeEIBX_IB1h_B1u_B1P_B2I_NtB1w_14LeafOrInternalENtB1w_2KVENCNvMsl_NtB4_8navigateBW_14next_unchecked0EB2O_.exit.i.i171, %bb.ox
  %lpad.loopexit1323 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit.split-lp: ; preds = %.invoke2167, %bb.oh, %bb.om
  %lpad.loopexit.split-lp1324 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread

._crit_edge1699:                                  ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i181.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !16812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !noalias !16812
  invoke fastcc void @_RNvMs8_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB5_22PatternSuccessAnalyzer14merge_bindings(ptr noalias noundef align 8 dereferenceable(24) %i.er, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ef)
          to label %bb.on unwind label %.thread1234, !noalias !16826, !inline_history !16293

.lr.ph1698:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i181.thread
  %i.ast = phi i64 [ %.pr1206, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i181.thread ], [ %i.asr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit103.i ]
  %i.asu = add i64 %i.ast, -1
  store i64 %i.asu, ptr %.sroa.2.0..sroa_idx.i166, align 8, !noalias !16812
  %i.asv = invoke noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE10init_frontB2I_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ei)
          to label %.noexc106.i167 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit, !noalias !16826, !inline_history !16293 ; 3 uses

.noexc106.i167:                                   ; preds = %.lr.ph1698
  %.not.i104.i = icmp eq ptr %i.asv, null
  br i1 %.not.i104.i, label %bb.om, label %bb.oj, !prof !16

bb.oj:                                            ; preds = %.noexc106.i167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !16909
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !16910
  invoke void @_RNvMsh_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeE7next_kvB2O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.db, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.asv)
          to label %.noexc.i.i.i168 unwind label %.loopexit.split-lp1327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16911, !inline_history !16293

.noexc.i.i.i168:                                  ; preds = %bb.oj
  %i.asw = load ptr, ptr %i.db, align 8, !noalias !16910, !noundef !15 ; 3 uses
  %i.asx = icmp eq ptr %i.asw, null
  br i1 %i.asx, label %bb.ok, label %bb.ol, !prof !16

bb.ok:                                            ; preds = %.noexc.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !16910
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #40
          to label %.noexc1.i.i.i217 unwind label %.loopexit.split-lp1327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16912, !inline_history !16293

.noexc1.i.i.i217:                                 ; preds = %bb.ok
  unreachable

bb.ol:                                            ; preds = %.noexc.i.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i169, i64 16, i1 false), !noalias !16910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !16910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !16910
  store ptr %i.asw, ptr %i.da, align 8, !noalias !16910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i.i.i.i170, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i58, i64 16, i1 false), !noalias !16910
  invoke void @_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB2O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.da)
          to label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeEIBX_IB1h_B1u_B1P_B2I_NtB1w_14LeafOrInternalENtB1w_2KVENCNvMsl_NtB4_8navigateBW_14next_unchecked0EB2O_.exit.i.i171 unwind label %.loopexit.split-lp1327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16912, !inline_history !16293

.loopexit.split-lp1327.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ol, %bb.oj, %bb.ok
  %lpad.loopexit.split-lp2891 = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeEIBX_IB1h_B1u_B1P_B2I_NtB1w_14LeafOrInternalENtB1w_2KVENCNvMsl_NtB4_8navigateBW_14next_unchecked0EB2O_.exit.i.i171: ; preds = %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !16910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i172, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.i.i.i.i58, i64 16, i1 false), !noalias !16913
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i.i.i58)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asv, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !noalias !16911
  %.sroa.4.0.copyload.i.i173 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i172, align 8, !noalias !16914
  %.sroa.5.0.copyload.i.i174 = load i64, ptr %.sroa.5.0..sroa_idx.i105.i, align 8, !noalias !16914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !16909
  %i.asy = invoke { ptr, ptr } @_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB18_14LeafOrInternalE19into_key_val_mut_atB2q_(ptr noundef nonnull %i.asw, i64 noundef %.sroa.4.0.copyload.i.i173, i64 noundef %.sroa.5.0.copyload.i.i174)
          to label %_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i175 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit, !noalias !16826, !inline_history !16293

bb.om:                                            ; preds = %.noexc106.i167
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #40
          to label %.noexc108.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit.split-lp, !noalias !16826, !inline_history !16293

.noexc108.i:                                      ; preds = %bb.om
  unreachable

_RNvMsa_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesE14next_uncheckedB2I_.exit.i175: ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker6ValMutNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow19PatternBindingTypesNtB1w_4LeafENtB1w_4EdgeEIBX_IB1h_B1u_B1P_B2I_NtB1w_14LeafOrInternalENtB1w_2KVENCNvMsl_NtB4_8navigateBW_14next_unchecked0EB2O_.exit.i.i171
  %i.asz = extractvalue { ptr, ptr } %i.asy, 1    ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.asz) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !16812
  %i.ata = load i64, ptr %i.asz, align 8, !alias.scope !16915, !noalias !16916, !noundef !15 ; 2 uses
  %i.atb = icmp ugt i64 %i.ata, 2                 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asz, i64 8 ; 6 uses
  %i.atd = load ptr, ptr %i.atc, align 8, !alias.scope !16915, !noalias !16916, !nonnull !15
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asz, i64 16 ; 2 uses
  %i.atf = load i64, ptr %i.ate, align 8, !alias.scope !16915, !noalias !16916
  %.sink10.i.i.i176 = select i1 %i.atb, ptr %i.atd, ptr %i.atc ; 2 uses
  %.sink9.i.i115.i = select i1 %i.atb, i64 %i.atf, i64 %i.ata
  %i.atg = getelementptr inbounds nuw [20 x i8], ptr %.sink10.i.i.i176, i64 %.sink9.i.i115.i
  invoke void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtB8_6narrow18PatternBindingTypeENCNvMs_B3a_NtB3a_19PatternBindingTypes10subject_ty0ENCB3J_s_0ENtB8_4TypeEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.eh, ptr noundef nonnull %i.ajp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ajq, ptr noundef nonnull align 4 %i.ajx, ptr noundef nonnull %.sink10.i.i.i176, ptr noundef nonnull %i.atg)
          to label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrowNtB4_19PatternBindingTypes10subject_ty.exit.i177 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools11groupbylazy5GroupNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtCsheqz6YZvxwl_8smallvec8IntoIterATB1n_B1n_Ej2_ENCINvMs8_NtB1p_6narrowNtB36_22PatternSuccessAnalyzer28analyze_pattern_subject_armsNCNvB32_34analyze_successful_mapping_pattern0E0EEB1r_.exit.i.thread1201.loopexit, !noalias !16826, !inline_history !16293

bb.on:                                            ; preds = %._crit_edge1699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !16812
end_hunk_2

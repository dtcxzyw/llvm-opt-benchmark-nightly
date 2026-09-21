Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/divan_macros-87dd11d82ad24702.divan_macros.17ee72e99ff0e3fa-cgu.0?download=true
inline.NumInlined: 172
inline.NumDeleted: 127
begin_hunk_0_@_RNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB2_11AttrOptions16bench_options_fn:bb.a
bb.fc:                                            ; preds = %bb.h, %bb.fb
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ar)
  ret void

bb.fd:                                            ; preds = %bb.el
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdQT5ZjIgVrW_5quote9___private9RepInterpNtCsghEUimwObfx_11proc_macro211TokenStreamEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.w) #19
          to label %.body unwind label %bb.ff

bb.fe:                                            ; preds = %bb.el
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdQT5ZjIgVrW_5quote9___private9RepInterpNtCsghEUimwObfx_11proc_macro211TokenStreamEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.w)
          to label %bb.bm unwind label %.loopexit

bb.ff:                                            ; preds = %bb.fd, %.body, %bb.bc, %bb.ay, %bb.au, %bb.aq, %bb.af, %bb.ab, %bb.y, %bb.u, %bb.o, %bb.b
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.fg:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB2_11AttrOptions5parse(ptr nofree writeonly sret([640 x i8]) align 8 captures(none) %0, i32 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [200 x i8], align 8              ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %i.bh = alloca [48 x i8], align 8               ; 5 uses
  %i.bi = alloca [176 x i8], align 8              ; 4 uses
  %i.bj = alloca [176 x i8], align 8              ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [176 x i8], align 8              ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [176 x i8], align 8              ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [48 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [176 x i8], align 8              ; 4 uses
  %i.bu = alloca [176 x i8], align 8              ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [32 x i8], align 8               ; 4 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [72 x i8], align 8               ; 4 uses
  %i.cb = alloca [72 x i8], align 8               ; 7 uses
  %i.cc = alloca [72 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 5 uses
  %i.cf = alloca [176 x i8], align 8              ; 4 uses
  %i.cg = alloca [32 x i8], align 8               ; 4 uses
  %i.ch = alloca [48 x i8], align 8               ; 5 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [176 x i8], align 8              ; 4 uses
  %i.cl = alloca [176 x i8], align 8              ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 4 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [176 x i8], align 8              ; 4 uses
  %i.cp = alloca [176 x i8], align 8              ; 6 uses
  %i.cq = alloca [176 x i8], align 8              ; 5 uses
  %i.cr = alloca [16 x i8], align 8               ; 4 uses
  %i.cs = alloca [16 x i8], align 8               ; 4 uses
  %i.ct = alloca [32 x i8], align 8               ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 4 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [176 x i8], align 8              ; 4 uses
  %i.cy = alloca [176 x i8], align 8              ; 6 uses
  %i.cz = alloca [176 x i8], align 8              ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 4 uses
  %i.db = alloca [16 x i8], align 8               ; 4 uses
  %i.dc = alloca [32 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 4 uses
  %i.de = alloca [16 x i8], align 8               ; 8 uses
  %i.df = alloca [8 x i8], align 8                ; 4 uses
  %i.dg = alloca [24 x i8], align 8               ; 4 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [32 x i8], align 8               ; 4 uses
  %i.dj = alloca [32 x i8], align 8               ; 5 uses
  %i.dk = alloca [24 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 4 uses
  %i.dm = alloca [16 x i8], align 8               ; 4 uses
  %i.dn = alloca [32 x i8], align 8               ; 5 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [16 x i8], align 8               ; 8 uses
  %i.dq = alloca [8 x i8], align 8                ; 4 uses
  %i.dr = alloca [24 x i8], align 8               ; 4 uses
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %i.dt = alloca [176 x i8], align 8              ; 4 uses
  %i.du = alloca [176 x i8], align 8              ; 6 uses
  %i.dv = alloca [176 x i8], align 8              ; 5 uses
  %i.dw = alloca [24 x i8], align 8               ; 4 uses
  %i.dx = alloca [24 x i8], align 8               ; 6 uses
  %i.dy = alloca [48 x i8], align 8               ; 4 uses
  %i.dz = alloca [48 x i8], align 8               ; 6 uses
  %i.ea = alloca [48 x i8], align 8               ; 5 uses
  %i.eb = alloca [16 x i8], align 8               ; 26 uses
  %i.ec = alloca [24 x i8], align 8               ; 7 uses
  %i.ed = alloca [16 x i8], align 8               ; 4 uses
  %i.ee = alloca [16 x i8], align 8               ; 4 uses
  %i.ef = alloca [24 x i8], align 8               ; 4 uses
  %i.eg = alloca [24 x i8], align 8               ; 4 uses
  %i.eh = alloca [24 x i8], align 8               ; 4 uses
  %i.ei = alloca [24 x i8], align 8               ; 4 uses
  %i.ej = alloca [24 x i8], align 8               ; 4 uses
  %i.ek = alloca [24 x i8], align 8               ; 5 uses
  %i.el = alloca [56 x i8], align 8               ; 26 uses
  %i.em = alloca [24 x i8], align 8               ; 15 uses
  %i.en = alloca [24 x i8], align 8               ; 5 uses
  %i.eo = alloca [48 x i8], align 8               ; 4 uses
  %i.ep = alloca [48 x i8], align 8               ; 6 uses
  %i.eq = alloca [24 x i8], align 8               ; 4 uses
  %i.er = alloca [24 x i8], align 8               ; 4 uses
  %i.es = alloca [32 x i8], align 8               ; 4 uses
  %i.et = alloca [24 x i8], align 8               ; 4 uses
  %i.eu = alloca [24 x i8], align 8               ; 4 uses
  %i.ev = alloca [24 x i8], align 8               ; 5 uses
  %i.ew = alloca [24 x i8], align 8               ; 6 uses
  %i.ex = alloca [24 x i8], align 8               ; 5 uses
  %i.ey = alloca [32 x i8], align 8               ; 13 uses
  %i.ez = alloca [16 x i8], align 8               ; 7 uses
  %i.fa = alloca [32 x i8], align 8               ; 4 uses
  %i.fb = alloca [176 x i8], align 8              ; 4 uses
  %i.fc = alloca [24 x i8], align 8               ; 5 uses
  %i.fd = alloca [24 x i8], align 8               ; 2 uses
  %i.fe = alloca [640 x i8], align 8              ; 7 uses
  %i.ff = alloca [32 x i8], align 8               ; 3 uses
  %i.fg = alloca [24 x i8], align 8               ; 2 uses
  %i.fh = alloca [32 x i8], align 8               ; 2 uses
  %i.fi = alloca [32 x i8], align 8               ; 2 uses
  %i.fj = alloca [24 x i8], align 8               ; 2 uses
  %i.fk = alloca [32 x i8], align 8               ; 6 uses
  %i.fl = alloca [32 x i8], align 8               ; 4 uses
  %i.fm = alloca [48 x i8], align 8               ; 2 uses
  %i.fn = alloca [48 x i8], align 8               ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 2 uses
  %i.fp = alloca [24 x i8], align 8               ; 6 uses
  %i.fq = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.0 = alloca i8, align 1                   ; 3 uses
  %.sroa.055 = alloca i8, align 1                 ; 3 uses
  %.sroa.056 = alloca i8, align 1                 ; 3 uses
  %.sroa.057 = alloca i8, align 1                 ; 3 uses
  %i.fr = alloca [24 x i8], align 8               ; 15 uses
  %i.fs = alloca [24 x i8], align 8               ; 9 uses
  %i.ft = alloca [24 x i8], align 8               ; 7 uses
  %i.fu = alloca [176 x i8], align 8              ; 8 uses
  %i.fv = alloca [176 x i8], align 8              ; 8 uses
  %i.fw = alloca [48 x i8], align 8               ; 8 uses
  %i.fx = alloca [16 x i8], align 8               ; 11 uses
  %i.fy = alloca [8 x i8], align 8                ; 5 uses
  %i.fz = alloca [4 x i8], align 4                ; 2 uses
  store i32 %1, ptr %i.fz, align 4
  store ptr %2, ptr %i.fy, align 8
  %i.ga = invoke { ptr, i64 } @_RNvMCs23nXHpKt6Eo_12divan_macrosNtB2_5Macro4name(ptr nonnull align 8 %i.fy)
          to label %bb.f unwind label %.split.thread ; 2 uses

.split.thread:                                    ; preds = %bb.a
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.b:                                             ; preds = %bb.ki, %bb.kd
  %.pn23 = phi { ptr, i32 } [ %.pn21, %bb.kd ], [ %.pn21110, %bb.ki ] ; 2 uses
  %.sroa.06.0 = phi i1 [ %.sroa.06.12, %bb.kd ], [ %.sroa.06.12111, %bb.ki ]
  br i1 %.sroa.06.0, label %bb.kk, label %bb.kj

bb.c:                                             ; preds = %bb.jz
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.d:                                             ; preds = %bb.jw, %bb.e
  %.pn15 = phi { ptr, i32 } [ %i.ge, %bb.e ], [ %.pn13, %bb.jw ] ; 2 uses
  %.sroa.06.4 = phi i1 [ false, %bb.e ], [ %.sroa.06.10, %bb.jw ] ; 2 uses
  %.sroa.05.1 = phi i8 [ %.sroa.02.1, %bb.e ], [ %.sroa.05.6, %bb.jw ] ; 2 uses
  %.sroa.02.0 = phi i8 [ %.sroa.02.1, %bb.e ], [ %.sroa.02.5, %bb.jw ]
  %i.gd = trunc nuw i8 %.sroa.02.0 to i1
  br i1 %i.gd, label %bb.kf, label %bb.kd

bb.e:                                             ; preds = %bb.jy, %bb.jr
  %.sroa.02.1 = phi i8 [ 1, %bb.jy ], [ 0, %bb.jr ] ; 2 uses
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.gf = extractvalue { ptr, i64 } %i.ga, 0
  %i.gg = extractvalue { ptr, i64 } %i.ga, 1
  store ptr %i.gf, ptr %i.fx, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.gg, ptr %i.gh, align 8
  store i64 -1, ptr %i.fw, align 8
  store i64 -1, ptr %i.fv, align 8
  store i64 -1, ptr %i.fu, align 8
  store i64 0, ptr %i.ft, align 8, !alias.scope !106
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gi, align 8, !alias.scope !106
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 0, ptr %i.gj, align 8, !alias.scope !106
  store i64 0, ptr %i.fs, align 8, !alias.scope !107
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gk, align 8, !alias.scope !107
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  store i64 0, ptr %i.gl, align 8, !alias.scope !107
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i8 -1, ptr %i.gm, align 8
  store i8 0, ptr %.sroa.057, align 1
  store i8 0, ptr %.sroa.056, align 1
  store i8 0, ptr %.sroa.055, align 1
  store i8 0, ptr %.sroa.0, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  invoke void @_RNvXs7_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs23nXHpKt6Eo_12divan_macros12attr_options12GenericTypesENtNtB7_7default7Default7defaultBO_(ptr nonnull sret([24 x i8]) align 8 %i.fc)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  invoke void @_RNvXs7_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCslNEiUQgeYIG_3syn4expr4ExprENtNtB7_7default7Default7defaultCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([176 x i8]) align 8 %i.fb)
          to label %bb.k unwind label %bb.g, !noalias !108

bb.g:                                             ; preds = %.noexc
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs23nXHpKt6Eo_12divan_macros12attr_options12GenericTypesEEB11_(ptr nonnull align 8 %i.fc) #19
          to label %.thread69 unwind label %bb.h, !noalias !108

bb.h:                                             ; preds = %bb.g
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !108
  unreachable

bb.i:                                             ; preds = %.thread88
  br i1 %.sroa.01.186, label %.thread69, label %bb.jw

bb.j:                                             ; preds = %bb.f, %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtCsghEUimwObfx_11proc_macro211TokenStreamINtB5_4IntoNtCstuaXukgBIa_10proc_macro11TokenStreamE4intoCs23nXHpKt6Eo_12divan_macros.exit
  %.sroa.06.7 = phi i1 [ false, %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtCsghEUimwObfx_11proc_macro211TokenStreamINtB5_4IntoNtCstuaXukgBIa_10proc_macro11TokenStreamE4intoCs23nXHpKt6Eo_12divan_macros.exit ], [ true, %bb.f ]
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.thread69

.thread93.a:                                      ; preds = %bb.ju, %bb.jd, %bb.je, %_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNCINvNtB7_4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBW_11AttrOptions5parse0E0NtB5_6Parser6parse2BY_.exit.i, %bb.k, %.noexc26
  %.sroa.05.5.ph = phi i8 [ 1, %.noexc26 ], [ 1, %bb.k ], [ 1, %_RNvXsh_NtCslNEiUQgeYIG_3syn5parseNCINvNtB7_4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBW_11AttrOptions5parse0E0NtB5_6Parser6parse2BY_.exit.i ], [ 0, %bb.je ], [ 1, %bb.jd ], [ 1, %bb.ju ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread112:                                       ; preds = %bb.jq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.k:                                             ; preds = %.noexc
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 176 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.fq, ptr noundef nonnull align 8 dereferenceable(176) %i.fb, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  invoke void @_RNvXs1_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamINtNtCs4NRVxsYgnAr_4core7convert4FromNtCstuaXukgBIa_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.fa, i32 %1)
          to label %.noexc26 unwind label %.thread93.a

.noexc26:                                         ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fa, i64 32, i1 false), !noalias !111
  %i.gr = invoke { ptr, i64 } @_RNvMNtCslNEiUQgeYIG_3syn6bufferNtB2_11TokenBuffer4new2(ptr nonnull align 8 %i.es)
          to label %.noexc27 unwind label %.thread93.a ; 2 uses

.noexc27:                                         ; preds = %.noexc26
  %i.gs = extractvalue { ptr, i64 } %i.gr, 0
  %i.gt = extractvalue { ptr, i64 } %i.gr, 1
  store ptr %i.gs, ptr %i.ez, align 8, !noalias !111
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !noalias !111
  invoke void @_RNvNtCslNEiUQgeYIG_3syn5parse22tokens_to_parse_buffer(ptr nonnull sret([32 x i8]) align 8 %i.ey, ptr nonnull align 8 %i.ez)
          to label %bb.n unwind label %bb.m, !noalias !111

bb.l:                                             ; preds = %.body.i.i, %bb.m
  %.pn9.i.i = phi { ptr, i32 } [ %i.gv, %bb.m ], [ %.pn.i.i, %.body.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6buffer11TokenBufferEBF_(ptr nonnull align 8 %i.ez) #19
          to label %.thread88 unwind label %bb.jb

bb.m:                                             ; preds = %.invoke28.i.i, %.noexc27
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %.noexc27
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.gw = invoke zeroext i1 @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.ey)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !111

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.gw, label %bb.in, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !114
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 10 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 15 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.noexc23.i.i, %bb.o
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer4callNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.eo, ptr nonnull align 8 %i.ey, ptr nonnull @_RNvNtCslNEiUQgeYIG_3syn4meta15parse_meta_path)
          to label %.noexc13.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc13.i.i:                                     ; preds = %bb.p
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ep, ptr nonnull align 8 %i.eo)
          to label %.noexc14.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc14.i.i:                                     ; preds = %.noexc13.i.i
  %i.is = load i64, ptr %i.ep, align 8, !noalias !115
  %i.it = icmp eq i64 %i.is, -1
  br i1 %i.it, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc14.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 24, i1 false), !noalias !115
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.il, %bb.ii, %bb.q
  %i.iv = phi ptr [ %i.eg, %bb.q ], [ %i.eh, %bb.ii ], [ %i.ei, %bb.il ]
  %i.iw = phi ptr [ @9, %bb.q ], [ @8, %bb.ii ], [ @7, %bb.il ]
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.ew, ptr nonnull align 8 %i.iv, ptr nonnull align 8 %i.iw)
          to label %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !111

bb.r:                                             ; preds = %.noexc14.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %i.ep, i64 48, i1 false), !noalias !115
  store ptr %i.ey, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !115
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !115
  %i.ix = invoke align 8 ptr @_RNvMs_NtCslNEiUQgeYIG_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.el)
          to label %bb.u unwind label %bb.t, !noalias !117 ; 5 uses

bb.s:                                             ; preds = %bb.x, %bb.t
  %.pn27.i.i.i.i.i = phi { ptr, i32 } [ %i.iy, %bb.t ], [ %.pn25.i.i.i.i.i, %bb.x ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4meta15ParseNestedMetaECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.el) #19
          to label %.body.i.i unwind label %bb.cd, !noalias !115

bb.t:                                             ; preds = %.noexc66.i.i.i.i.i, %.noexc65.i.i.i.i.i, %.noexc64.i.i.i.i.i, %.noexc63.i.i.i.i.i, %.noexc62.i.i.i.i.i, %bb.ig, %bb.if, %.invoke78.i.i.i.i.i, %bb.w, %bb.v, %bb.r
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %.not.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtCsghEUimwObfx_11proc_macro25IdentNtB5_8ToString9to_stringBz_(ptr nonnull sret([24 x i8]) align 8 %i.ec, ptr nonnull align 8 %i.ix)
          to label %bb.y unwind label %bb.t, !noalias !117

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayReECsghEUimwObfx_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.ed, ptr nonnull align 8 %i.fx)
          to label %bb.if unwind label %bb.t, !noalias !117

bb.x:                                             ; preds = %bb.id, %bb.hq, %bb.gy, %bb.gi, %bb.fy, %bb.fi, %bb.fe, %bb.ek, %bb.ef, %bb.do, %bb.dc, %bb.cx, %bb.cc, %bb.by, %bb.bl, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn25.i.i.i.i.i = phi { ptr, i32 } [ %i.mm, %bb.ef ], [ %i.rv, %bb.id ], [ %i.rd, %bb.hq ], [ %i.qc, %bb.gy ], [ %i.pk, %bb.gi ], [ %i.oi, %bb.fy ], [ %i.ob, %bb.fi ], [ %i.nk, %bb.fe ], [ %lpad.thr_comm.i.i.i.i.i, %bb.cc ], [ %.pn15.i.i.i.i.i, %bb.do ], [ %lpad.thr_comm.split-lp.i.i.i.i.i, %bb.by ], [ %i.lz, %bb.cx ], [ %.pn.i.i.i.i.i, %bb.bl ], [ %i.mb, %bb.dc ], [ %i.mo, %bb.ek ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.ec) #19
          to label %bb.s unwind label %bb.cd, !noalias !115

.loopexit.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i, %bb.hz, %bb.hy, %bb.hv, %bb.hu, %.noexc59.i.i.i.i.i, %.noexc58.i.i.i.i.i, %.noexc57.i.i.i.i.i, %.noexc56.i.i.i.i.i, %.noexc55.i.i.i.i.i, %.noexc54.i.i.i.i.i, %.noexc53.i.i.i.i.i, %.noexc52.i.i.i.i.i, %bb.ht, %bb.hm, %bb.hl, %bb.hi, %bb.hh, %.noexc50.i.i.i.i.i, %.noexc49.i.i.i.i.i, %.noexc48.i.i.i.i.i, %.noexc47.i.i.i.i.i, %.noexc46.i.i.i.i.i, %.noexc45.i.i.i.i.i, %.noexc44.i.i.i.i.i, %.noexc43.i.i.i.i.i, %bb.hg, %.noexc41.i.i.i.i.i, %.noexc40.i.i.i.i.i, %.noexc39.i.i.i.i.i, %.noexc38.i.i.i.i.i, %.noexc37.i.i.i.i.i, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gu, %bb.gt, %bb.gq, %bb.gp, %.noexc12.i.i.i.i, %.noexc11.i.i.i.i, %.noexc10.i.i.i.i, %.noexc9.i.i.i.i, %.noexc8.i.i.i.i, %.noexc7.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i, %.invoke75.i.i.i.i.i, %bb.gn, %bb.gm, %bb.gl, %bb.gg, %.noexc35.i.i.i.i.i, %.noexc34.i.i.i.i.i, %.noexc33.i.i.i.i.i, %.noexc32.i.i.i.i.i, %.noexc31.i.i.i.i.i, %.noexc30.i.i.i.i.i, %.noexc29.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.gf, %.noexc18.i.i.i.i, %.noexc17.i.i.i.i, %.noexc16.i.i.i.i, %.noexc15.i.i.i.i, %.noexc14.i.i.i.i, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fu, %bb.ft, %bb.fq, %bb.fp, %bb.fn, %bb.fm, %bb.fl, %bb.fg, %.noexc27.i.i.i.i, %.noexc26.i.i.i.i, %.noexc25.i.i.i.i, %.noexc24.i.i.i.i, %.noexc23.i.i.i.i, %.noexc22.i.i.i.i, %.noexc21.i.i.i.i, %.noexc20.i.i.i.i, %.invoke76.i.i.i.i.i, %bb.fa, %bb.ez, %bb.ew, %bb.ev, %.noexc33.i.i.i.i, %.noexc32.i.i.i.i, %.noexc31.i.i.i.i, %.noexc30.i.i.i.i, %.noexc29.i.i.i.i, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %.noexc36.i.i.i.i, %bb.em, %bb.eb, %bb.ea, %bb.dx, %bb.dw, %bb.du, %bb.dk, %bb.dj, %bb.dg, %bb.df, %bb.ct, %bb.cs, %bb.cp, %bb.co, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.bs, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.cm
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.y:                                             ; preds = %bb.v
  %i.iz = load ptr, ptr %i.gx, align 8, !noalias !117
  %i.ja = load i64, ptr %i.gy, align 8, !noalias !117
  %i.jb = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12strip_prefixReECsdQT5ZjIgVrW_5quote(ptr %i.iz, i64 %i.ja, ptr nonnull @13, i64 2)
          to label %bb.z unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.jc = load ptr, ptr %i.gx, align 8, !noalias !117
  %i.jd = load i64, ptr %i.gy, align 8, !noalias !117
  %i.je = extractvalue { ptr, i64 } %i.jb, 1
  %i.jf = extractvalue { ptr, i64 } %i.jb, 0
  %i.jg = invoke { ptr, i64 } @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionReE9unwrap_orCs23nXHpKt6Eo_12divan_macros(ptr %i.jf, i64 %i.je, ptr %i.jc, i64 %i.jd)
          to label %bb.aa unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.jh = extractvalue { ptr, i64 } %i.jg, 0      ; 2 uses
  %i.ji = extractvalue { ptr, i64 } %i.jg, 1      ; 2 uses
  store ptr %i.jh, ptr %i.eb, align 8, !noalias !117
  store i64 %i.ji, ptr %i.gz, align 8, !noalias !117
  %i.jj = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.jh, i64 %i.ji, ptr nonnull @27, i64 5)
          to label %bb.ab unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.jj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jk = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.jl = load i64, ptr %i.gz, align 8, !noalias !117
  %i.jm = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.jk, i64 %i.jl, ptr nonnull @28, i64 4)
          to label %bb.ae unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ad:                                            ; preds = %bb.ab
  %i.jn = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCslNEiUQgeYIG_3syn4path4PathE7is_noneCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fw)
          to label %bb.hs unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.jm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jo = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.jp = load i64, ptr %i.gz, align 8, !noalias !117
  %i.jq = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.jo, i64 %i.jp, ptr nonnull @29, i64 5)
          to label %bb.ah unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ag:                                            ; preds = %bb.ae
  %i.jr = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCslNEiUQgeYIG_3syn4expr4ExprE7is_noneCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fv)
          to label %bb.hf unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ah:                                            ; preds = %bb.af
  br i1 %i.jq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.js = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.jt = load i64, ptr %i.gz, align 8, !noalias !117
  %i.ju = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.js, i64 %i.jt, ptr nonnull @30, i64 6)
          to label %bb.ak unwind label %.loopexit.i.i.i.i, !noalias !117

bb.aj:                                            ; preds = %bb.ah
  %i.jv = load ptr, ptr %i.fy, align 8, !noalias !117 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.gf, label %bb.gg

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.ju, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jx = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.jy = load i64, ptr %i.gz, align 8, !noalias !117
  %i.jz = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.jx, i64 %i.jy, ptr nonnull @31, i64 4)
          to label %bb.an unwind label %.loopexit.i.i.i.i, !noalias !117

bb.am:                                            ; preds = %bb.ak
  %i.ka = load ptr, ptr %i.fy, align 8, !noalias !117 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %.invoke76.i.i.i.i.i, label %bb.fg

bb.an:                                            ; preds = %bb.al
  br i1 %i.jz, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kc = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.kd = load i64, ptr %i.gz, align 8, !noalias !117
  %i.ke = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kc, i64 %i.kd, ptr nonnull @32, i64 7)
          to label %bb.aq unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ap:                                            ; preds = %bb.an
  %i.kf = load ptr, ptr %i.fy, align 8, !noalias !117 ; 3 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %.invoke76.i.i.i.i.i, label %bb.em

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.ke, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kh = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.ki = load i64, ptr %i.gz, align 8, !noalias !117
  %i.kj = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kh, i64 %i.ki, ptr nonnull @33, i64 8)
          to label %bb.at unwind label %.loopexit.i.i.i.i, !noalias !117

bb.as:                                            ; preds = %bb.aq
  %i.kk = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsghEUimwObfx_11proc_macro25IdentE7is_someCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fr)
          to label %bb.dv unwind label %.loopexit.i.i.i.i, !noalias !117

bb.at:                                            ; preds = %bb.ar
  br i1 %i.kj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kl = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.km = load i64, ptr %i.gz, align 8, !noalias !117
  %i.kn = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kl, i64 %i.km, ptr nonnull @34, i64 11)
          to label %bb.aw unwind label %.loopexit.i.i.i.i, !noalias !117

bb.av:                                            ; preds = %bb.at
  %i.ko = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsghEUimwObfx_11proc_macro25IdentE7is_someCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fr)
          to label %bb.de unwind label %.loopexit.i.i.i.i, !noalias !117

bb.aw:                                            ; preds = %bb.au
  br i1 %i.kn, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kp = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.kq = load i64, ptr %i.gz, align 8, !noalias !117
  %i.kr = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kp, i64 %i.kq, ptr nonnull @35, i64 11)
          to label %bb.az unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ay:                                            ; preds = %bb.aw
  %.sroa.057.0..sroa.057.0..sroa.057.0..sroa.057.0. = load i8, ptr %.sroa.057, align 1, !noalias !117
  %3 = trunc nuw i8 %.sroa.057.0..sroa.057.0..sroa.057.0..sroa.057.0. to i1
  br i1 %3, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.az:                                            ; preds = %bb.ax
  br i1 %i.kr, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ks = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.kt = load i64, ptr %i.gz, align 8, !noalias !117
  %i.ku = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.ks, i64 %i.kt, ptr nonnull @36, i64 12)
          to label %bb.bc unwind label %.loopexit.i.i.i.i, !noalias !117

bb.bb:                                            ; preds = %bb.az
  %.sroa.056.0..sroa.056.0..sroa.056.0..sroa.056.0. = load i8, ptr %.sroa.056, align 1, !noalias !117
  %4 = trunc nuw i8 %.sroa.056.0..sroa.056.0..sroa.056.0..sroa.056.0. to i1
  br i1 %4, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.ku, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kv = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.kw = load i64, ptr %i.gz, align 8, !noalias !117
  %i.kx = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.kv, i64 %i.kw, ptr nonnull @37, i64 11)
          to label %bb.bf unwind label %.loopexit.i.i.i.i, !noalias !117

bb.be:                                            ; preds = %bb.bc
  %.sroa.055.0..sroa.055.0..sroa.055.0..sroa.055.0. = load i8, ptr %.sroa.055, align 1, !noalias !117
  %5 = trunc nuw i8 %.sroa.055.0..sroa.055.0..sroa.055.0..sroa.055.0. to i1
  br i1 %5, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.kx, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.bk, ptr nonnull align 8 %i.el)
          to label %bb.bi unwind label %.loopexit.i.i.i.i, !noalias !117

bb.bh:                                            ; preds = %bb.bf
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 1, !noalias !117
  %6 = trunc nuw i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i1
  br i1 %6, label %.invoke75.i.i.i.i.i, label %bb.ce

bb.bi:                                            ; preds = %bb.bg
  %i.ky = load i64, ptr %i.bk, align 8, !noalias !117
  %.not9.i.i.i.i.i = icmp eq i64 %i.ky, -1
  br i1 %.not9.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kz = invoke i32 @_RNvXNtCslNEiUQgeYIG_3syn7spannedNtNtB4_4path4PathNtB2_7Spanned4spanCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.el)
          to label %bb.bt unwind label %bb.bm, !noalias !117

bb.bk:                                            ; preds = %bb.bi
  %i.la = load ptr, ptr %i.hc, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.bi, ptr align 8 %i.la)
          to label %bb.bn unwind label %bb.bm, !noalias !117

bb.bl:                                            ; preds = %bb.bw, %bb.bm
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.lh, %bb.bw ], [ %i.lb, %bb.bm ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk) #19
          to label %bb.x unwind label %bb.cd, !noalias !115

bb.bm:                                            ; preds = %bb.bu, %bb.bt, %bb.bp, %bb.bn, %bb.bk, %bb.bj
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.bj, ptr nonnull align 8 %i.bi)
          to label %bb.bo unwind label %bb.bm, !noalias !117

bb.bo:                                            ; preds = %bb.bn
  %i.lc = load i64, ptr %i.bj, align 8, !noalias !117
  %i.ld = icmp eq i64 %i.lc, -1
  br i1 %i.ld, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !117
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.em, ptr nonnull align 8 %i.bc, ptr nonnull align 8 @39)
          to label %bb.bs unwind label %bb.bm, !noalias !115

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bl, ptr noundef nonnull align 8 dereferenceable(176) %i.bj, i64 176, i1 false), !noalias !117
  br label %bb.br

bb.br:                                            ; preds = %bb.bx, %bb.bq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk)
          to label %bb.bz unwind label %bb.cc, !noalias !117

bb.bs:                                            ; preds = %bb.bp
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtB12_5error5ErrorEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.bk)
          to label %.invoke78.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !115

bb.bt:                                            ; preds = %bb.bj
  %i.le = invoke { i32, i1 } @_RNvMs9_NtCslNEiUQgeYIG_3syn3litNtB5_7LitBool3new(i1 zeroext true, i32 %i.kz)
          to label %bb.bu unwind label %bb.bm, !noalias !117 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.lf = extractvalue { i32, i1 } %i.le, 0
  %i.lg = extractvalue { i32, i1 } %i.le, 1
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCslNEiUQgeYIG_3syn3lit7LitBoolINtB5_4IntoNtBA_3LitE4intoCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bg, i32 %i.lf, i1 zeroext %i.lg, ptr nonnull align 8 @40)
          to label %bb.bv unwind label %bb.bm, !noalias !117

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.bf)
          to label %bb.bx unwind label %bb.bw, !noalias !117

bb.bw:                                            ; preds = %bb.bv
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn3lit3LitEBF_(ptr nonnull align 8 %i.bg) #19
          to label %bb.bl unwind label %bb.cd, !noalias !117

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !noalias !117
  store i64 19, ptr %i.bl, align 8, !noalias !117
  br label %bb.br

bb.by:                                            ; preds = %bb.ca
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.bz:                                            ; preds = %bb.br
  invoke fastcc void @_RNvXs15_CsghEUimwObfx_11proc_macro2NtB6_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bd, ptr nonnull align 8 %i.ix)
          to label %bb.ca unwind label %bb.cc, !noalias !117

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.hd, ptr noundef nonnull align 8 dereferenceable(176) %i.bl, i64 176, i1 false), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !117
  invoke fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsghEUimwObfx_11proc_macro25IdentNtNtCslNEiUQgeYIG_3syn4expr4ExprEE4pushCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.ft, ptr align 8 %i.be)
          to label %bb.cb unwind label %bb.by, !noalias !117

bb.cb:                                            ; preds = %bb.ie, %bb.hr, %bb.gz, %bb.fz, %bb.ff, %bb.el, %bb.du, %bb.dd, %bb.ca
  store i64 -1, ptr %i.em, align 8, !alias.scope !116, !noalias !115
  br label %.invoke78.i.i.i.i.i

.invoke78.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit61.i.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i.i, %bb.he, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse0s_0B8_.exit.i.i.i.i.i, %bb.ge, %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse0s_0B8_.exit.i.i.i.i, %bb.et, %bb.cb, %bb.bs
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.ec)
          to label %_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i unwind label %bb.t, !noalias !115

bb.cc:                                            ; preds = %bb.bz, %bb.br
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.bl) #19
          to label %bb.x unwind label %bb.cd, !noalias !117

bb.cd:                                            ; preds = %bb.gi, %bb.fi, %bb.do, %bb.cc, %bb.bw, %bb.bl, %bb.x, %bb.s
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !115
  unreachable

bb.ce:                                            ; preds = %bb.bh, %bb.be, %bb.bb, %bb.ay
  %i.lj = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.lk = load i64, ptr %i.gz, align 8, !noalias !117
  %i.ll = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lj, i64 %i.lk, ptr nonnull @34, i64 11)
          to label %bb.cf unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.ll, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lm = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.ln = load i64, ptr %i.gz, align 8, !noalias !117
  %i.lo = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lm, i64 %i.ln, ptr nonnull @35, i64 11)
          to label %bb.ch unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.lo, label %bb.co, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lp = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.lq = load i64, ptr %i.gz, align 8, !noalias !117
  %i.lr = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.lp, i64 %i.lq, ptr nonnull @36, i64 12)
          to label %bb.cj unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.lr, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ls = load ptr, ptr %i.eb, align 8, !noalias !117
  %i.lt = load i64, ptr %i.gz, align 8, !noalias !117
  %i.lu = invoke zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs23nXHpKt6Eo_12divan_macros(ptr %i.ls, i64 %i.lt, ptr nonnull @37, i64 11)
          to label %bb.cl unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.lu, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @41, i64 40, ptr nonnull align 8 @42) #18
          to label %bb.cn unwind label %.loopexit.split-lp.i.i.i.i, !noalias !117

bb.cn:                                            ; preds = %bb.cm
  unreachable

bb.co:                                            ; preds = %bb.cl, %bb.cj, %bb.ch, %bb.cf
  %.sink.i.i.sroa.phi.sroa.speculated.i.i.i = phi ptr [ %.sroa.055, %bb.cj ], [ %.sroa.056, %bb.ch ], [ %.sroa.057, %bb.cf ], [ %.sroa.0, %bb.cl ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 11, %bb.cj ], [ 10, %bb.ch ], [ 10, %bb.cf ], [ 10, %bb.cl ]
  %.sroa.03.0.i.i.i.i.i = phi ptr [ @44, %bb.cj ], [ @45, %bb.ch ], [ @46, %bb.cf ], [ @43, %bb.cl ]
  store i8 1, ptr %.sink.i.i.sroa.phi.sroa.speculated.i.i.i, align 1, !noalias !117
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 8 %i.el)
          to label %bb.cp unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bs, ptr nonnull align 8 %i.br)
          to label %bb.cq unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cq:                                            ; preds = %bb.cp
  %i.lv = load i64, ptr %i.bs, align 8, !noalias !117
  %.not11.i.i.i.i.i = icmp eq i64 %i.lv, -1
  br i1 %.not11.i.i.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.lw = load ptr, ptr %i.hf, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.bt, ptr align 8 %i.lw)
          to label %bb.ct unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.bu, ptr nonnull align 8 %i.bt)
          to label %bb.cu unwind label %.loopexit.i.i.i.i, !noalias !117

bb.cu:                                            ; preds = %bb.ct
  %i.lx = load i64, ptr %i.bu, align 8, !noalias !117
  %i.ly = icmp eq i64 %i.lx, -1
  br i1 %i.ly, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bo, ptr noundef nonnull align 8 dereferenceable(176) %i.bu, i64 176, i1 false), !noalias !117
  invoke void @_RNvYNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamB6_(ptr nonnull sret([32 x i8]) align 8 %i.bp, ptr nonnull align 8 %i.bo)
          to label %bb.cy unwind label %bb.cx, !noalias !117

bb.cx:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !117
  store ptr %.sroa.03.0.i.i.i.i.i, ptr %i.hg, align 8, !noalias !117
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %i.hh, align 8, !noalias !117
  invoke fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsghEUimwObfx_11proc_macro211TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionReEEE4pushCs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fs, ptr align 8 %i.bq)
          to label %bb.cz unwind label %bb.cx, !noalias !117

bb.cz:                                            ; preds = %bb.cy
  %i.ma = invoke i32 @_RNvMsi_CsghEUimwObfx_11proc_macro2NtB5_4Span9call_site()
          to label %bb.da unwind label %bb.cx, !noalias !117

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr nonnull @33, i64 8, i32 %i.ma, ptr nonnull align 8 @47)
          to label %bb.db unwind label %bb.cx, !noalias !117

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !117
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr nonnull align 8 %i.fr)
          to label %bb.dd unwind label %bb.dc, !noalias !117

bb.dc:                                            ; preds = %bb.db
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !117
  br label %bb.x

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !117
  br label %bb.cb

bb.de:                                            ; preds = %bb.av
  br i1 %i.ko, label %.invoke75.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.by, ptr nonnull align 8 %i.el)
          to label %bb.dg unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.by)
          to label %bb.dh unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dh:                                            ; preds = %bb.dg
  %i.mc = load i64, ptr %i.bz, align 8, !noalias !117
  %.not14.i.i.i.i.i = icmp eq i64 %i.mc, -1
  br i1 %.not14.i.i.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.md = load ptr, ptr %i.hj, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr9ExprArrayECs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([72 x i8]) align 8 %i.ca, ptr align 8 %i.md)
          to label %bb.dk unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr9ExprArrayNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([72 x i8]) align 8 %i.cb, ptr nonnull align 8 %i.ca)
          to label %bb.dl unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dl:                                            ; preds = %bb.dk
  %i.me = load i64, ptr %i.cb, align 8, !noalias !117
  %i.mf = icmp eq i64 %i.me, -1
  br i1 %i.mf, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %i.cb, i64 72, i1 false), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i64 32, i1 false), !noalias !117
  invoke fastcc void @_RNvXs8_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4expr4ExprNtNtB7_5token5CommaENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bx, ptr align 8 %i.bw)
          to label %bb.dq unwind label %bb.dp, !noalias !117

bb.do:                                            ; preds = %bb.dt, %bb.dp
  %.pn15.i.i.i.i.i = phi { ptr, i32 } [ %i.mh, %bb.dt ], [ %i.mg, %bb.dp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.cc) #19
          to label %bb.x unwind label %bb.cd, !noalias !117

bb.dp:                                            ; preds = %bb.dr, %bb.dq, %bb.dn
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  invoke fastcc void @_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTNtCsghEUimwObfx_11proc_macro211TokenStreamINtNtCs4NRVxsYgnAr_4core6option6OptionReEEEINtNtNtNtB1r_4iter6traits7collect6ExtendBF_E6extendINtNtNtB2a_8adapters3map3MapINtNtCslNEiUQgeYIG_3syn10punctuated8IntoIterNtNtB3p_4expr4ExprENCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4s_11AttrOptions5parse0s0_0EEB4u_(ptr nonnull align 8 %i.fs, ptr align 8 %i.bx)
          to label %bb.dr unwind label %bb.dp, !noalias !117

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RNvXs15_CsghEUimwObfx_11proc_macro2NtB6_5IdentNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs23nXHpKt6Eo_12divan_macros(ptr noalias align 8 %i.bv, ptr nonnull align 8 %i.ix)
          to label %bb.ds unwind label %bb.dp, !noalias !117

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr nonnull align 8 %i.fr)
          to label %bb.du unwind label %bb.dt, !noalias !117

bb.dt:                                            ; preds = %bb.ds
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !117
  br label %bb.do

bb.du:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !117
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.cc)
          to label %bb.cb unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dv:                                            ; preds = %bb.as
  br i1 %i.kk, label %.invoke75.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.ci, ptr nonnull align 8 %i.el)
          to label %bb.dx unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.cj, ptr nonnull align 8 %i.ci)
          to label %bb.dy unwind label %.loopexit.i.i.i.i, !noalias !117

bb.dy:                                            ; preds = %bb.dx
  %i.mi = load i64, ptr %i.cj, align 8, !noalias !117
  %.not17.i.i.i.i.i = icmp eq i64 %i.mi, -1
  br i1 %.not17.i.i.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.mj = load ptr, ptr %i.hm, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.ck, ptr align 8 %i.mj)
          to label %bb.eb unwind label %.loopexit.i.i.i.i, !noalias !117

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.cl, ptr nonnull align 8 %i.ck)
          to label %bb.ec unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ec:                                            ; preds = %bb.eb
  %i.mk = load i64, ptr %i.cl, align 8, !noalias !117
  %i.ml = icmp eq i64 %i.mk, -1
  br i1 %i.ml, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cf, ptr noundef nonnull align 8 dereferenceable(176) %i.cl, i64 176, i1 false), !noalias !117
  invoke void @_RNvYNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamB6_(ptr nonnull sret([32 x i8]) align 8 %i.cg, ptr nonnull align 8 %i.cf)
          to label %bb.eg unwind label %bb.ef, !noalias !117

bb.ef:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.eg:                                            ; preds = %bb.ee
end_hunk_0
begin_hunk_1_@_RNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB2_11AttrOptions5parse:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !noalias !133
  %i.qo = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj1b_Kj2_ECs23nXHpKt6Eo_12divan_macros(ptr nonnull @11, ptr nonnull align 8 %i.ac)
          to label %.noexc45.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

.noexc45.i.i.i.i.i:                               ; preds = %.noexc44.i.i.i.i.i
  %i.qp = extractvalue { ptr, ptr } %i.qo, 0
  %i.qq = extractvalue { ptr, ptr } %i.qo, 1
  %i.qr = invoke align 8 ptr @_RNvXsN_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.el, i64 0, ptr nonnull align 8 @1)
          to label %.noexc46.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc46.i.i.i.i.i:                               ; preds = %.noexc45.i.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  %i.qt = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.qs)
          to label %.noexc47.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc47.i.i.i.i.i:                               ; preds = %.noexc46.i.i.i.i.i
  %i.qu = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !134
  %i.qv = invoke { ptr, ptr } @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %i.qu)
          to label %.noexc48.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

.noexc48.i.i.i.i.i:                               ; preds = %.noexc47.i.i.i.i.i
  %i.qw = extractvalue { ptr, ptr } %i.qv, 0
  %i.qx = extractvalue { ptr, ptr } %i.qv, 1
  %i.qy = invoke i32 @_RNvMs_NtCslNEiUQgeYIG_3syn6bufferNtB4_6Cursor9prev_span(ptr %i.qw, ptr %i.qx)
          to label %.noexc49.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc49.i.i.i.i.i:                               ; preds = %.noexc48.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !134
  store ptr %i.qp, ptr %i.z, align 8, !noalias !135
  store ptr %i.qq, ptr %i.ik, align 8, !noalias !135
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.y, ptr nonnull align 8 %i.z)
          to label %.noexc50.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc50.i.i.i.i.i:                               ; preds = %.noexc49.i.i.i.i.i
  invoke void @_RNvNvNtCslNEiUQgeYIG_3syn5error4new24new2(ptr nonnull sret([24 x i8]) align 8 %i.ad, i32 %i.qt, i32 %i.qy, ptr nonnull align 8 %i.y)
          to label %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit.i.i.i.i.i: ; preds = %.noexc50.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !117
  br label %.invoke78.i.i.i.i.i

bb.hh:                                            ; preds = %bb.hf
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.dr, ptr nonnull align 8 %i.el)
          to label %bb.hi unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hi:                                            ; preds = %bb.hh
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.ds, ptr nonnull align 8 %i.dr)
          to label %bb.hj unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hj:                                            ; preds = %bb.hi
  %i.qz = load i64, ptr %i.ds, align 8, !noalias !117
  %.not23.i.i.i.i.i = icmp eq i64 %i.qz, -1
  br i1 %.not23.i.i.i.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.hl:                                            ; preds = %bb.hj
  %i.ra = load ptr, ptr %i.il, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.dt, ptr align 8 %i.ra)
          to label %bb.hm unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hm:                                            ; preds = %bb.hl
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.du, ptr nonnull align 8 %i.dt)
          to label %bb.hn unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hn:                                            ; preds = %bb.hm
  %i.rb = load i64, ptr %i.du, align 8, !noalias !117
  %i.rc = icmp eq i64 %i.rb, -1
  br i1 %i.rc, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dv, ptr noundef nonnull align 8 dereferenceable(176) %i.du, i64 176, i1 false), !noalias !117
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslNEiUQgeYIG_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.fv)
          to label %bb.hr unwind label %bb.hq, !noalias !117

bb.hq:                                            ; preds = %bb.hp
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.fv, ptr noundef nonnull align 8 dereferenceable(176) %i.dv, i64 176, i1 false), !noalias !117
  br label %bb.x

bb.hr:                                            ; preds = %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.fv, ptr noundef nonnull align 8 dereferenceable(176) %i.dv, i64 176, i1 false), !noalias !117
  br label %bb.cb

bb.hs:                                            ; preds = %bb.ad
  br i1 %i.jn, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !117
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayReECsghEUimwObfx_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.v, ptr nonnull align 8 %i.fx)
          to label %.noexc52.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc52.i.i.i.i.i:                               ; preds = %bb.ht
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayReECsghEUimwObfx_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.u, ptr nonnull align 8 %i.eb)
          to label %.noexc53.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc53.i.i.i.i.i:                               ; preds = %.noexc52.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !136
  %i.re = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj1b_Kj2_ECs23nXHpKt6Eo_12divan_macros(ptr nonnull @11, ptr nonnull align 8 %i.w)
          to label %.noexc54.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

.noexc54.i.i.i.i.i:                               ; preds = %.noexc53.i.i.i.i.i
  %i.rf = extractvalue { ptr, ptr } %i.re, 0
  %i.rg = extractvalue { ptr, ptr } %i.re, 1
  %i.rh = invoke align 8 ptr @_RNvXsN_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.el, i64 0, ptr nonnull align 8 @1)
          to label %.noexc55.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc55.i.i.i.i.i:                               ; preds = %.noexc54.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 64
  %i.rj = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.ri)
          to label %.noexc56.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc56.i.i.i.i.i:                               ; preds = %.noexc55.i.i.i.i.i
  %i.rk = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !137
  %i.rl = invoke { ptr, ptr } @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %i.rk)
          to label %.noexc57.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117 ; 2 uses

.noexc57.i.i.i.i.i:                               ; preds = %.noexc56.i.i.i.i.i
  %i.rm = extractvalue { ptr, ptr } %i.rl, 0
  %i.rn = extractvalue { ptr, ptr } %i.rl, 1
  %i.ro = invoke i32 @_RNvMs_NtCslNEiUQgeYIG_3syn6bufferNtB4_6Cursor9prev_span(ptr %i.rm, ptr %i.rn)
          to label %.noexc58.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc58.i.i.i.i.i:                               ; preds = %.noexc57.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !137
  store ptr %i.rf, ptr %i.t, align 8, !noalias !138
  store ptr %i.rg, ptr %i.io, align 8, !noalias !138
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr nonnull align 8 %i.t)
          to label %.noexc59.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

.noexc59.i.i.i.i.i:                               ; preds = %.noexc58.i.i.i.i.i
  invoke void @_RNvNvNtCslNEiUQgeYIG_3syn5error4new24new2(ptr nonnull sret([24 x i8]) align 8 %i.x, i32 %i.rj, i32 %i.ro, ptr nonnull align 8 %i.s)
          to label %_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit61.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !117

_RNCNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB6_11AttrOptions5parse00B8_.exit61.i.i.i.i.i: ; preds = %.noexc59.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !117
  br label %.invoke78.i.i.i.i.i

bb.hu:                                            ; preds = %bb.hs
  invoke void @_RNvMNtCslNEiUQgeYIG_3syn4metaNtB2_15ParseNestedMeta5value(ptr nonnull sret([24 x i8]) align 8 %i.dw, ptr nonnull align 8 %i.el)
          to label %bb.hv unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs23nXHpKt6Eo_12divan_macros(ptr nonnull sret([24 x i8]) align 8 %i.dx, ptr nonnull align 8 %i.dw)
          to label %bb.hw unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hw:                                            ; preds = %bb.hv
  %i.rp = load i64, ptr %i.dx, align 8, !noalias !117
  %.not24.i.i.i.i.i = icmp eq i64 %i.rp, -1
  br i1 %.not24.i.i.i.i.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.rq = load ptr, ptr %i.ip, align 8, !noalias !117
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path4PathEB8_(ptr nonnull sret([48 x i8]) align 8 %i.dy, ptr align 8 %i.rq)
          to label %bb.hz unwind label %.loopexit.i.i.i.i, !noalias !117

bb.hz:                                            ; preds = %bb.hy
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn4path4PathNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.dz, ptr nonnull align 8 %i.dy)
          to label %bb.ia unwind label %.loopexit.i.i.i.i, !noalias !117

bb.ia:                                            ; preds = %bb.hz
  %i.rr = load i64, ptr %i.dz, align 8, !noalias !117
  %i.rs = icmp eq i64 %i.rr, -1
  br i1 %i.rs, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i64 24, i1 false), !noalias !117
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.ib, %bb.hx, %bb.ho, %bb.hk, %bb.gw, %bb.gs, %bb.fw, %bb.fs, %bb.fc, %bb.ey, %bb.ed, %bb.dz, %bb.dm, %bb.di, %bb.cv, %bb.cr
  %i.rt = phi ptr [ %i.an, %bb.ib ], [ %i.am, %bb.hx ], [ %i.ap, %bb.ho ], [ %i.ao, %bb.hk ], [ %i.ar, %bb.gw ], [ %i.aq, %bb.gs ], [ %i.at, %bb.fw ], [ %i.as, %bb.fs ], [ %i.av, %bb.fc ], [ %i.au, %bb.ey ], [ %i.ax, %bb.ed ], [ %i.aw, %bb.dz ], [ %i.az, %bb.dm ], [ %i.ay, %bb.di ], [ %i.bb, %bb.cv ], [ %i.ba, %bb.cr ]
  %i.ru = phi ptr [ @59, %bb.ib ], [ @59, %bb.hx ], [ @58, %bb.ho ], [ @58, %bb.hk ], [ @56, %bb.gw ], [ @56, %bb.gs ], [ @54, %bb.fw ], [ @54, %bb.fs ], [ @53, %bb.fc ], [ @53, %bb.ey ], [ @51, %bb.ed ], [ @51, %bb.dz ], [ @49, %bb.dm ], [ @49, %bb.di ], [ @48, %bb.cv ], [ @48, %bb.cr ]
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.em, ptr nonnull align 8 %i.rt, ptr nonnull align 8 %i.ru)
          to label %.invoke78.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !115

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !117
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslNEiUQgeYIG_3syn4path4PathEECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.fw)
          to label %bb.ie unwind label %bb.id, !noalias !117

bb.id:                                            ; preds = %bb.ic
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i64 48, i1 false), !noalias !117
  br label %bb.x

bb.ie:                                            ; preds = %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i64 48, i1 false), !noalias !117
  br label %bb.cb

bb.if:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !noalias !117
  %i.rw = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj19_Kj1_ECs23nXHpKt6Eo_12divan_macros(ptr nonnull @60, ptr nonnull align 8 %i.ee)
          to label %bb.ig unwind label %bb.t, !noalias !117 ; 2 uses

bb.ig:                                            ; preds = %bb.if
  %i.rx = extractvalue { ptr, ptr } %i.rw, 0
  %i.ry = extractvalue { ptr, ptr } %i.rw, 1
  %i.rz = invoke align 8 ptr @_RNvXsN_NtCslNEiUQgeYIG_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4path11PathSegmentNtNtB7_5token7PathSepEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr nonnull align 8 %i.el, i64 0, ptr nonnull align 8 @1)
          to label %.noexc62.i.i.i.i.i unwind label %bb.t, !noalias !117

.noexc62.i.i.i.i.i:                               ; preds = %bb.ig
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 64
  %i.sb = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.sa)
          to label %.noexc63.i.i.i.i.i unwind label %bb.t, !noalias !117

.noexc63.i.i.i.i.i:                               ; preds = %.noexc62.i.i.i.i.i
  %i.sc = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !139
  %i.sd = invoke { ptr, ptr } @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %i.sc)
          to label %.noexc64.i.i.i.i.i unwind label %bb.t, !noalias !117 ; 2 uses

.noexc64.i.i.i.i.i:                               ; preds = %.noexc63.i.i.i.i.i
  %i.se = extractvalue { ptr, ptr } %i.sd, 0
  %i.sf = extractvalue { ptr, ptr } %i.sd, 1
  %i.sg = invoke i32 @_RNvMs_NtCslNEiUQgeYIG_3syn6bufferNtB4_6Cursor9prev_span(ptr %i.se, ptr %i.sf)
          to label %.noexc65.i.i.i.i.i unwind label %bb.t, !noalias !117

.noexc65.i.i.i.i.i:                               ; preds = %.noexc64.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !139
  store ptr %i.rx, ptr %i.r, align 8, !noalias !140
  store ptr %i.ry, ptr %i.ir, align 8, !noalias !140
  invoke void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCslNEiUQgeYIG_3syn(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.r)
          to label %.noexc66.i.i.i.i.i unwind label %bb.t, !noalias !117

.noexc66.i.i.i.i.i:                               ; preds = %.noexc65.i.i.i.i.i
  invoke void @_RNvNvNtCslNEiUQgeYIG_3syn5error4new24new2(ptr nonnull sret([24 x i8]) align 8 %i.ef, i32 %i.sb, i32 %i.sg, ptr nonnull align 8 %i.q)
          to label %bb.ih unwind label %bb.t, !noalias !117

bb.ih:                                            ; preds = %.noexc66.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !noalias !115
  br label %_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i

_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i: ; preds = %bb.ih, %.invoke78.i.i.i.i.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn4meta15ParseNestedMetaECs23nXHpKt6Eo_12divan_macros(ptr nonnull align 8 %i.el)
          to label %.noexc16.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc16.i.i:                                     ; preds = %_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !115
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.en, ptr nonnull align 8 %i.em)
          to label %.noexc17.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc17.i.i:                                     ; preds = %.noexc16.i.i
  %i.sh = load i64, ptr %i.en, align 8, !noalias !115
  %.not.i.i.i.i = icmp eq i64 %i.sh, -1
  br i1 %.not.i.i.i.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %.noexc17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false), !noalias !115
  br label %.invoke.i.i

bb.ij:                                            ; preds = %.noexc17.i.i
  %i.si = invoke zeroext i1 @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.ey)
          to label %.noexc19.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc19.i.i:                                     ; preds = %bb.ij
  br i1 %i.si, label %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.sink.split.i.i, label %bb.ik

bb.ik:                                            ; preds = %.noexc19.i.i
  invoke void @_RINvMs9_NtCslNEiUQgeYIG_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.ej, ptr nonnull align 8 %i.ey)
          to label %.noexc20.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc20.i.i:                                     ; preds = %bb.ik
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCslNEiUQgeYIG_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.ek, ptr nonnull align 8 %i.ej)
          to label %.noexc21.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  %i.sj = load i64, ptr %i.ek, align 8, !noalias !115
  %.not4.i.i.i.i = icmp eq i64 %i.sj, -1
  br i1 %.not4.i.i.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %.noexc21.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !115
  br label %.invoke.i.i

bb.im:                                            ; preds = %.noexc21.i.i
  %i.sk = invoke zeroext i1 @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer8is_empty(ptr nonnull align 8 %i.ey)
          to label %.noexc23.i.i unwind label %.loopexit.i.i, !noalias !111

.noexc23.i.i:                                     ; preds = %bb.im
  br i1 %i.sk, label %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.sink.split.i.i, label %bb.p

_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.sink.split.i.i: ; preds = %.noexc23.i.i, %.noexc19.i.i
  store i64 -1, ptr %i.ew, align 8, !alias.scope !141, !noalias !111
  br label %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.i.i

_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.i.i: ; preds = %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.sink.split.i.i, %.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !114
  br label %_RNCINvNtCslNEiUQgeYIG_3syn4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBF_11AttrOptions5parse0E0BH_.exit.i.i

bb.in:                                            ; preds = %.noexc.i.i
  store i64 -1, ptr %i.ew, align 8, !alias.scope !112, !noalias !111
  br label %_RNCINvNtCslNEiUQgeYIG_3syn4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBF_11AttrOptions5parse0E0BH_.exit.i.i

.body.i.i:                                        ; preds = %bb.ir, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.s
  %.pn.i.i = phi { ptr, i32 } [ %i.sm, %bb.ir ], [ %.pn27.i.i.i.i.i, %bb.s ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.ey) #19
          to label %bb.l unwind label %bb.jb

.loopexit.i.i:                                    ; preds = %bb.im, %.noexc20.i.i, %bb.ik, %bb.ij, %.noexc16.i.i, %_RNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtB4_11AttrOptions5parse0B6_.exit.i.i.i.i, %.noexc13.i.i, %bb.p
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ip, %_RNCINvNtCslNEiUQgeYIG_3syn4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBF_11AttrOptions5parse0E0BH_.exit.i.i, %.invoke.i.i, %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNCINvNtCslNEiUQgeYIG_3syn4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBF_11AttrOptions5parse0E0BH_.exit.i.i: ; preds = %bb.in, %_RINvNtCslNEiUQgeYIG_3syn4meta17parse_nested_metaNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBP_11AttrOptions5parse0EBR_.exit.i.i.i
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.ex, ptr nonnull align 8 %i.ew)
          to label %bb.io unwind label %.loopexit.split-lp.i.i, !noalias !111

bb.io:                                            ; preds = %_RNCINvNtCslNEiUQgeYIG_3syn4meta6parserNCNvMNtCs23nXHpKt6Eo_12divan_macros12attr_optionsNtBF_11AttrOptions5parse0E0BH_.exit.i.i
  %i.sl = load i64, ptr %i.ex, align 8, !noalias !111
  %.not.i.i = icmp eq i64 %i.sl, -1
  br i1 %.not.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false), !noalias !111
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCslNEiUQgeYIG_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBP_(ptr nonnull sret([24 x i8]) align 8 %i.fp, ptr nonnull align 8 %i.eq, ptr nonnull align 8 @91)
          to label %.invoke28.i.i unwind label %.loopexit.split-lp.i.i

bb.iq:                                            ; preds = %bb.io
  invoke void @_RNvMs9_NtCslNEiUQgeYIG_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr nonnull sret([24 x i8]) align 8 %i.eu, ptr nonnull align 8 %i.ey)
          to label %bb.is unwind label %bb.ir, !noalias !111

bb.ir:                                            ; preds = %bb.iy, %bb.iw, %bb.iv, %bb.iu, %bb.is, %bb.iq
end_hunk_1

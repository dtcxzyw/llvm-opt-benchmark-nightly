Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.07?download=true
inline.NumInlined: 54
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB4_5Macro18update_return_typesa_0B6_:bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr %i.g, ptr %i.h, ptr nonnull align 8 @23) #18
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define hidden void @_RNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB4_5Macro18update_return_typesb_0B6_(ptr nofree readnone sret([16 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtCsRujiHMkeh3_11proc_macro211TokenStreamECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn5error5ErrorEBF_(ptr align 8 %2) #16
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs3Eghgi3KVFH_3syn5error5ErrorECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.f = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj4f_Kj2_ECshVzvyy7iigg_12salsa_macros(ptr nonnull @24, ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr %i.g, ptr %i.h, ptr nonnull align 8 @25) #18
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB4_5Macro26inputs_use_elided_lifetime0B6_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @_RNvNtCshVzvyy7iigg_12salsa_macros5xform20uses_elided_lifetime(ptr align 8 %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn2ty4Type4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs3Eghgi3KVFH_3syn2ty4Type4iterCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBz_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7IterMutTNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBW_5token5CommaEE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs3Eghgi3KVFH_3syn2ty8NamedArgNtNtBz_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7IterMutTNtNtCs3Eghgi3KVFH_3syn2ty8NamedArgNtNtBW_5token5CommaEE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBz_5token5CommaE8iter_mutCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMsa_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7IterMutTNtNtCs3Eghgi3KVFH_3syn4data7VariantNtNtBW_5token5CommaEE3newCshVzvyy7iigg_12salsa_macros(ptr align 8 %0, i64 %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro13modify_member(ptr noalias nonnull align 8 %0, ptr nonnull align 8 %1, ptr nonnull align 8 %2, ptr align 8 %3, ptr nonnull align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.319.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.630.i = alloca [28 x i8], align 4        ; 5 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.6.i = alloca [28 x i8], align 4          ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [248 x i8], align 8               ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [248 x i8], align 8               ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [248 x i8], align 8               ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [248 x i8], align 8              ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 10 uses
  %i.ax = alloca [48 x i8], align 8               ; 4 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 8 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [32 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.01.i = alloca [328 x i8], align 8        ; 7 uses
  %i.bq = alloca [248 x i8], align 8              ; 4 uses
  %i.br = alloca [248 x i8], align 8              ; 6 uses
  %i.bs = alloca [248 x i8], align 8              ; 5 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [32 x i8], align 8               ; 5 uses
  %i.bv = alloca [32 x i8], align 8               ; 4 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 9 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [32 x i8], align 8               ; 9 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 2 uses
  %i.ck = alloca [24 x i8], align 8               ; 2 uses
  %i.cl = alloca [24 x i8], align 8               ; 2 uses
  %i.cm = alloca [24 x i8], align 8               ; 2 uses
  %i.cn = alloca [24 x i8], align 8               ; 2 uses
  %i.co = alloca [24 x i8], align 8               ; 2 uses
  %i.cp = alloca [24 x i8], align 8               ; 2 uses
  %i.cq = alloca [40 x i8], align 8               ; 3 uses
  %i.cr = alloca [24 x i8], align 8               ; 2 uses
  %i.cs = alloca [24 x i8], align 8               ; 3 uses
  %i.ct = alloca [24 x i8], align 8               ; 3 uses
  %i.cu = alloca [24 x i8], align 8               ; 3 uses
  %i.cv = alloca [24 x i8], align 8               ; 2 uses
  %i.cw = alloca [24 x i8], align 8               ; 3 uses
  %i.cx = alloca [24 x i8], align 8               ; 2 uses
  %i.cy = alloca [24 x i8], align 8               ; 3 uses
  %i.cz = alloca [32 x i8], align 8               ; 2 uses
  %i.da = alloca [480 x i8], align 8              ; 2 uses
  %i.db = alloca [32 x i8], align 8               ; 4 uses
  %i.dc = alloca [32 x i8], align 8               ; 5 uses
  %i.dd = alloca [480 x i8], align 8              ; 2 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [32 x i8], align 8               ; 2 uses
  %i.dg = alloca [32 x i8], align 8               ; 9 uses
  %i.dh = alloca [32 x i8], align 8               ; 2 uses
  %i.di = alloca [40 x i8], align 8               ; 2 uses
  %i.dj = alloca [32 x i8], align 8               ; 5 uses
  %i.dk = alloca [32 x i8], align 8               ; 2 uses
  %i.dl = alloca [8 x i8], align 8                ; 3 uses
  %i.dm = alloca [16 x i8], align 8               ; 4 uses
  %i.dn = alloca [32 x i8], align 8               ; 5 uses
  %i.do = alloca [32 x i8], align 8               ; 2 uses
  %i.dp = alloca [8 x i8], align 8                ; 3 uses
  %i.dq = alloca [16 x i8], align 8               ; 4 uses
  %i.dr = alloca [32 x i8], align 8               ; 5 uses
  %i.ds = alloca [32 x i8], align 8               ; 2 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [32 x i8], align 8               ; 2 uses
  %i.dv = alloca [32 x i8], align 8               ; 50 uses
  %i.dw = alloca [32 x i8], align 8               ; 2 uses
  %i.dx = alloca [32 x i8], align 8               ; 10 uses
  %i.dy = alloca [32 x i8], align 8               ; 2 uses
  %i.dz = alloca [32 x i8], align 8               ; 4 uses
  %i.ea = alloca [32 x i8], align 8               ; 5 uses
  %i.eb = alloca [32 x i8], align 8               ; 2 uses
  %i.ec = alloca [40 x i8], align 8               ; 2 uses
  %i.ed = alloca [32 x i8], align 8               ; 5 uses
  %i.ee = alloca [32 x i8], align 8               ; 2 uses
  %i.ef = alloca [8 x i8], align 8                ; 3 uses
  %i.eg = alloca [16 x i8], align 8               ; 4 uses
  %i.eh = alloca [32 x i8], align 8               ; 5 uses
  %i.ei = alloca [32 x i8], align 8               ; 2 uses
  %i.ej = alloca [8 x i8], align 8                ; 3 uses
  %i.ek = alloca [16 x i8], align 8               ; 4 uses
  %i.el = alloca [32 x i8], align 8               ; 5 uses
  %i.em = alloca [32 x i8], align 8               ; 2 uses
  %i.en = alloca [32 x i8], align 8               ; 4 uses
  %i.eo = alloca [32 x i8], align 8               ; 2 uses
  %i.ep = alloca [32 x i8], align 8               ; 54 uses
  %i.eq = alloca [32 x i8], align 8               ; 2 uses
  %i.er = alloca [32 x i8], align 8               ; 10 uses
  %i.es = alloca [32 x i8], align 8               ; 2 uses
  %i.et = alloca [32 x i8], align 8               ; 4 uses
  %i.eu = alloca [32 x i8], align 8               ; 5 uses
  %i.ev = alloca [8 x i8], align 8                ; 2 uses
  %i.ew = alloca [40 x i8], align 8               ; 5 uses
  %i.ex = alloca [32 x i8], align 8               ; 2 uses
  %i.ey = alloca [360 x i8], align 8              ; 2 uses
  %i.ez = alloca [8 x i8], align 8                ; 3 uses
  %i.fa = alloca [16 x i8], align 8               ; 4 uses
  %i.fb = alloca [32 x i8], align 8               ; 7 uses
  %i.fc = alloca [32 x i8], align 8               ; 2 uses
  %i.fd = alloca [32 x i8], align 8               ; 11 uses
  %i.fe = alloca [32 x i8], align 8               ; 2 uses
  %i.ff = alloca [8 x i8], align 8                ; 3 uses
  %i.fg = alloca [8 x i8], align 8                ; 3 uses
  %i.fh = alloca [16 x i8], align 8               ; 4 uses
  %i.fi = alloca [16 x i8], align 8               ; 4 uses
  %i.fj = alloca [32 x i8], align 8               ; 11 uses
  %i.fk = alloca [32 x i8], align 8               ; 2 uses
  %i.fl = alloca [32 x i8], align 8               ; 13 uses
  %i.fm = alloca [32 x i8], align 8               ; 5 uses
  %i.fn = alloca [32 x i8], align 8               ; 2 uses
  %i.fo = alloca [360 x i8], align 8              ; 2 uses
  %i.fp = alloca [8 x i8], align 8                ; 3 uses
  %i.fq = alloca [16 x i8], align 8               ; 4 uses
  %i.fr = alloca [32 x i8], align 8               ; 9 uses
  %i.fs = alloca [32 x i8], align 8               ; 2 uses
  %i.ft = alloca [32 x i8], align 8               ; 11 uses
  %i.fu = alloca [32 x i8], align 8               ; 2 uses
  %i.fv = alloca [8 x i8], align 8                ; 3 uses
  %i.fw = alloca [8 x i8], align 8                ; 3 uses
  %i.fx = alloca [16 x i8], align 8               ; 4 uses
  %i.fy = alloca [16 x i8], align 8               ; 4 uses
  %i.fz = alloca [32 x i8], align 8               ; 15 uses
  %i.ga = alloca [32 x i8], align 8               ; 2 uses
  %i.gb = alloca [32 x i8], align 8               ; 13 uses
  %i.gc = alloca [32 x i8], align 8               ; 5 uses
  %i.gd = alloca [360 x i8], align 8              ; 7 uses
  %i.ge = alloca [24 x i8], align 8               ; 5 uses
  %i.gf = alloca [24 x i8], align 8               ; 3 uses
  %i.gg = alloca [24 x i8], align 8               ; 3 uses
  %i.gh = alloca [392 x i8], align 8              ; 11 uses
  %i.gi = alloca [32 x i8], align 8               ; 4 uses
  %i.gj = alloca [12 x i8], align 4               ; 2 uses
  %.sroa.215 = alloca [12 x i8], align 4          ; 3 uses
  %i.gk = alloca [48 x i8], align 8               ; 3 uses
  %.sroa.016 = alloca [80 x i8], align 8          ; 4 uses
  %i.gl = alloca [248 x i8], align 8              ; 2 uses
  %i.gm = alloca [248 x i8], align 8              ; 3 uses
  %i.gn = alloca [248 x i8], align 8              ; 4 uses
  %i.go = alloca [64 x i8], align 8               ; 3 uses
  %i.gp = alloca [248 x i8], align 8              ; 8 uses
  %i.gq = alloca [64 x i8], align 8               ; 2 uses
  %i.gr = alloca [248 x i8], align 8              ; 10 uses
  %i.gs = alloca [368 x i8], align 8              ; 10 uses
  %i.gt = alloca [368 x i8], align 8              ; 12 uses
  %i.gu = alloca [248 x i8], align 8              ; 8 uses
  %i.gv = alloca [24 x i8], align 8               ; 8 uses
  %i.gw = alloca [24 x i8], align 8               ; 11 uses
  %i.gx = alloca [32 x i8], align 8               ; 16 uses
  %i.gy = alloca [8 x i8], align 8                ; 3 uses
  %i.gz = alloca [8 x i8], align 8                ; 4 uses
  %i.ha = alloca [24 x i8], align 8               ; 2 uses
  %i.hb = alloca [24 x i8], align 8               ; 11 uses
  %i.hc = alloca [24 x i8], align 8               ; 8 uses
  %i.hd = alloca [1392 x i8], align 8             ; 2 uses
  %i.he = alloca [1392 x i8], align 8             ; 4 uses
  %i.hf = alloca [1392 x i8], align 8             ; 10 uses
  %i.hg = alloca [248 x i8], align 8              ; 20 uses
  %i.hh = alloca [24 x i8], align 8               ; 2 uses
  %i.hi = alloca [16 x i8], align 8               ; 3 uses
  %i.hj = load i64, ptr %3, align 8
  %i.hk = icmp eq i64 %i.hj, 17
  br i1 %i.hk, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.hp = tail call { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nonnull align 8 %i.ho) ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1
  %i.hs = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs3Eghgi3KVFH_3syn4attr9Attribute4iterBy_(ptr align 8 %i.hq, i64 %i.hr) ; 2 uses
  %i.ht = extractvalue { ptr, ptr } %i.hs, 0
  %i.hu = extractvalue { ptr, ptr } %i.hs, 1
  store ptr %i.ht, ptr %i.hi, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hu, ptr %i.hv, align 8
  %i.hw = call { i64, i64 } @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2l_5Macro13modify_member0EB2n_(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %1) ; 2 uses
  %i.hx = extractvalue { i64, i64 } %i.hw, 0
  %i.hy = extractvalue { i64, i64 } %i.hw, 1
  %i.hz = trunc nuw i64 %i.hx to i1
  br i1 %i.hz, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.vl

bb.d:                                             ; preds = %bb.b
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8
  %.not = icmp eq i64 %i.ib, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.vl

bb.f:                                             ; preds = %bb.d
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.id = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCs3Eghgi3KVFH_3syn5token3NotE7is_noneCshVzvyy7iigg_12salsa_macros(ptr nonnull align 4 %i.ic) ; 2 uses
  %spec.select = select i1 %i.id, ptr %4, ptr undef
  %spec.select115 = select i1 %i.id, ptr %i.ia, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.3.0 = phi ptr [ undef, %bb.d ], [ %spec.select, %bb.f ]
  %.sroa.02.0 = phi ptr [ null, %bb.d ], [ %spec.select115, %bb.f ]
  call void @_RNvMs1_NtCshVzvyy7iigg_12salsa_macros5xformNtB5_14ChangeSelfPath3new(ptr nonnull sret([24 x i8]) align 8 %i.hh, ptr align 8 %i.hn, ptr align 8 %.sroa.02.0, ptr %.sroa.3.0)
  call void @_RNvYNtNtCshVzvyy7iigg_12salsa_macros5xform14ChangeSelfPathNtNtNtCs3Eghgi3KVFH_3syn3gen9visit_mut8VisitMut22visit_impl_item_fn_mutB6_(ptr nonnull align 8 %i.hh, ptr nonnull align 8 %i.hl)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs3Eghgi3KVFH_3syn4attr9AttributeE6removeCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([248 x i8]) align 8 %i.hg, ptr nonnull align 8 %i.ho, i64 %i.hy, ptr nonnull align 8 @28)
  %i.ie = load i64, ptr %i.hg, align 8
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  br i1 %i.if, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs_NtCshVzvyy7iigg_12salsa_macros7optionsINtB4_7OptionsNtNtB6_10tracked_fn9TrackedFnENtNtCs4NRVxsYgnAr_4core7default7Default7defaultB6_(ptr nonnull sret([1392 x i8]) align 8 %i.hf)
          to label %bb.l unwind label %bb.k

end_hunk_0
begin_hunk_1_@_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro13modify_member:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !50
  unreachable

bb.bk:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !53
  %i.kc = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECsRujiHMkeh3_11proc_macro2(ptr nonnull @107, ptr nonnull align 8 %i.as)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0
  %i.ke = extractvalue { ptr, ptr } %i.kc, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.at, ptr %i.kd, ptr %i.ke)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !53
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsRujiHMkeh3_11proc_macro2(ptr nonnull align 8 %i.aw)
          to label %bb.bo unwind label %bb.bn, !noalias !53

bb.bn:                                            ; preds = %bb.bm
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !53
  br label %.loopexit.split-lp.i17.i

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !53
  br label %bb.ay

_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro19conjure_db_lifetime.exit.i: ; preds = %bb.bi
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl13UsedLifetimesEBF_(ptr nonnull align 8 %i.ay)
          to label %.noexc124 unwind label %bb.dr

.noexc124:                                        ; preds = %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro19conjure_db_lifetime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !50
  br label %.noexc122

.noexc122:                                        ; preds = %bb.as, %.noexc124
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  %i.kh = invoke align 8 ptr @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE5firstB4_(ptr nonnull align 8 %i.kg)
          to label %bb.bq unwind label %.thread.i, !noalias !50

bb.bp:                                            ; preds = %bb.cu
  br i1 %.sroa.03.2.i, label %bb.dq, label %.body

.thread.i:                                        ; preds = %bb.do, %bb.cs, %bb.cp, %bb.co, %bb.cm, %bb.ch, %bb.cg, %.invoke.i, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %.noexc21.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq, %.noexc122
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.bq:                                            ; preds = %.noexc122
  %i.kj = invoke zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4item5FnArgE11is_some_andNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB1z_5Macro14validity_check0EB1B_(ptr align 8 %i.kh)
          to label %bb.br unwind label %.thread.i, !noalias !50

bb.br:                                            ; preds = %bb.bq
  br i1 %i.kj, label %bb.bs, label %bb.cb

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !50
  %i.kk = invoke zeroext i1 @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE8is_emptyB4_(ptr nonnull align 8 %i.kg)
          to label %.noexc.i unwind label %.thread.i, !noalias !50

.noexc.i:                                         ; preds = %bb.bs
  br i1 %i.kk, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.noexc.i
  %i.kl = invoke align 8 ptr @_RNvXsN_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4item5FnArgNtNtB7_5token5CommaEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.kg, i64 0, ptr nonnull align 8 @100)
          to label %.noexc19.i unwind label %.thread.i, !noalias !50 ; 5 uses

.noexc19.i:                                       ; preds = %bb.bt
  %i.km = load i64, ptr %i.kl, align 8, !noalias !55
  %i.kn = icmp eq i64 %i.km, -1
  br i1 %i.kn, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %.noexc.i
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtCsRujiHMkeh3_11proc_macro25IdentReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.am, ptr nonnull align 8 %i.il, ptr nonnull @105, i64 35)
          to label %.noexc20.i unwind label %.thread.i, !noalias !50

.noexc20.i:                                       ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !50
  br label %bb.cc

bb.bv:                                            ; preds = %.noexc19.i
  %i.ko = invoke align 8 ptr @_RNvXsN_NtCs3Eghgi3KVFH_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4item5FnArgNtNtB7_5token5CommaEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.kg, i64 0, ptr nonnull align 8 @103)
          to label %.noexc21.i unwind label %.thread.i, !noalias !50

.noexc21.i:                                       ; preds = %bb.bv
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4item5FnArgReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr align 8 %i.ko, ptr nonnull @104, i64 43)
          to label %.noexc22.i unwind label %.thread.i, !noalias !50

.noexc22.i:                                       ; preds = %.noexc21.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !50
  br label %bb.cc

bb.bw:                                            ; preds = %.noexc19.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kq = load i32, ptr %i.kp, align 8, !noalias !55
  switch i32 %i.kq, label %bb.bx [
    i32 0, label %bb.by
    i32 1, label %bb.bz
    i32 2, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 80
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.kr, ptr %i.ks, align 8, !alias.scope !54, !noalias !50
  store i64 -1, ptr %i.cd, align 8, !alias.scope !54, !noalias !50
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bw
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 36
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtNtB5_5token3AndReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.aj, ptr nonnull align 4 %i.kt, ptr nonnull @101, i64 87)
          to label %.noexc23.i unwind label %.thread.i, !noalias !50

.noexc23.i:                                       ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !50
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bw
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 36
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtNtB5_5token5ColonReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr nonnull align 4 %i.ku, ptr nonnull @102, i64 63)
          to label %.noexc24.i unwind label %.thread.i, !noalias !50

.noexc24.i:                                       ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !50
  br label %bb.cc

bb.cb:                                            ; preds = %bb.cf, %bb.br
  %.sroa.6.0.i = phi i64 [ 2, %bb.cf ], [ 1, %bb.br ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ 1, %bb.cf ], [ 0, %bb.br ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.la, %bb.cf ], [ null, %bb.br ]
  %i.kv = invoke align 8 ptr @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE3getCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.kg, i64 %.sroa.3.0.i)
          to label %bb.cg unwind label %.thread.i, !noalias !50

bb.cc:                                            ; preds = %.noexc24.i, %.noexc23.i, %bb.by, %.noexc22.i, %.noexc20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !50
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCs3Eghgi3KVFH_3syn5token9SelfValueNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ce, ptr nonnull align 8 %i.cd)
          to label %bb.cd unwind label %.thread.i, !noalias !50

bb.cd:                                            ; preds = %bb.cc
  %i.kw = load i64, ptr %i.ce, align 8, !noalias !50
  %.not7.i = icmp eq i64 %i.kw, -1
  br i1 %.not7.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !50
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.cr, %bb.cj, %bb.ce
  %i.kx = phi ptr [ %i.bj, %bb.ce ], [ %i.bk, %bb.cj ], [ %i.bl, %bb.cr ]
  %i.ky = phi ptr [ @61, %bb.ce ], [ @60, %bb.cj ], [ @59, %bb.cr ]
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl27AssociatedFunctionArgumentsNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1X_EE13from_residualBO_(ptr nonnull sret([368 x i8]) align 8 %i.gs, ptr nonnull align 8 %i.kx, ptr nonnull align 8 %i.ky)
          to label %bb.dp unwind label %.thread.i

bb.cf:                                            ; preds = %bb.cd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !50
  br label %bb.cb

bb.cg:                                            ; preds = %bb.cb
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs3Eghgi3KVFH_3syn4item5FnArgE10ok_or_elseNtNtBN_5error5ErrorNCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB1R_5Macro14validity_checks_0EB1T_(ptr nonnull sret([24 x i8]) align 8 %i.cb, ptr align 8 %i.kv, ptr nonnull align 8 %i.hl)
          to label %bb.ch unwind label %.thread.i, !noalias !50

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCs3Eghgi3KVFH_3syn4item5FnArgNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.cc, ptr nonnull align 8 %i.cb)
          to label %bb.ci unwind label %.thread.i, !noalias !50

bb.ci:                                            ; preds = %bb.ch
  %i.lb = load i64, ptr %i.cc, align 8, !noalias !50
  %.not8.i = icmp eq i64 %i.lb, -1
  br i1 %.not8.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !50
  br label %.invoke.i

bb.ck:                                            ; preds = %bb.ci
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !50 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !50
  %i.le = load i64, ptr %i.ld, align 8, !noalias !57
  %i.lf = icmp eq i64 %i.le, -1
  br i1 %i.lf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 32 ; 3 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !57
  %i.li = load i64, ptr %i.lh, align 8, !noalias !57
  %i.lj = icmp eq i64 %i.li, -9223372036854775806
  br i1 %i.lj, label %bb.cn, label %bb.co

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4item5FnArgReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr nonnull align 8 %i.ld, ptr nonnull @71, i64 46)
          to label %.noexc25.i unwind label %.thread.i, !noalias !50

.noexc25.i:                                       ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !50
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %5 = load <2 x ptr>, ptr %i.lg, align 8, !noalias !57
  %6 = getelementptr inbounds nuw i8, <2 x ptr> %5, <2 x i64> <i64 48, i64 0>
  store <2 x ptr> %6, ptr %i.lk, align 8, !alias.scope !56, !noalias !50
  store i64 -1, ptr %i.bz, align 8, !alias.scope !56, !noalias !50
  br label %bb.cp

bb.co:                                            ; preds = %bb.cl
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error11new_spannedRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB5_3pat3PatEReECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.lg, ptr nonnull @70, i64 42)
          to label %.noexc26.i unwind label %.thread.i, !noalias !50

.noexc26.i:                                       ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !50
  br label %bb.cp

bb.cp:                                            ; preds = %.noexc26.i, %bb.cn, %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !50
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTRNtCsRujiHMkeh3_11proc_macro25IdentRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtB1p_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ca, ptr nonnull align 8 %i.bz)
          to label %bb.cq unwind label %.thread.i, !noalias !50

bb.cq:                                            ; preds = %bb.cp
  %i.ll = load i64, ptr %i.ca, align 8, !noalias !50
  %.not9.i = icmp eq i64 %i.ll, -1
  br i1 %.not9.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !50
  br label %.invoke.i

bb.cs:                                            ; preds = %bb.cq
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ln = load <2 x ptr>, ptr %i.lm, align 8, !noalias !50
  invoke void @_RNvNtCshVzvyy7iigg_12salsa_macros7fn_util9input_ids(ptr nonnull sret([24 x i8]) align 8 %i.by, ptr nonnull align 8 %1, ptr nonnull align 8 %i.hl, i64 %.sroa.6.0.i)
          to label %bb.ct unwind label %.thread.i, !noalias !50

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvNtCshVzvyy7iigg_12salsa_macros7fn_util9input_tys(ptr nonnull sret([32 x i8]) align 8 %i.bt, ptr nonnull align 8 %i.hl, i64 %.sroa.6.0.i)
          to label %bb.cw unwind label %bb.cv, !noalias !50

bb.cu:                                            ; preds = %bb.dd, %bb.cv
  %.sroa.03.2.i = phi i1 [ true, %bb.cv ], [ %.sroa.03.3.i, %bb.dd ]
  %.pn11.i = phi { ptr, i32 } [ %i.lo, %bb.cv ], [ %.pn.i, %bb.dd ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsRujiHMkeh3_11proc_macro25IdentEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.by) #16
          to label %bb.bp unwind label %bb.dl

bb.cv:                                            ; preds = %bb.dn, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cw, %bb.ct
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %bb.ct
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.bu, ptr nonnull align 8 %i.bt)
          to label %bb.cx unwind label %bb.cv, !noalias !50

bb.cx:                                            ; preds = %bb.cw
  %i.lp = load i64, ptr %i.bu, align 8, !noalias !50
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  br i1 %i.lq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.lr, i64 24, i1 false), !noalias !50
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl27AssociatedFunctionArgumentsNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1X_EE13from_residualBO_(ptr nonnull sret([368 x i8]) align 8 %i.gs, ptr nonnull align 8 %i.bm, ptr nonnull align 8 @58)
          to label %bb.do unwind label %bb.cv

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.lr, i64 24, i1 false), !noalias !50
  invoke void @_RNvXsf_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCshVzvyy7iigg_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.bv, ptr nonnull align 8 %i.bo)
          to label %bb.da unwind label %bb.cv, !noalias !50

bb.da:                                            ; preds = %bb.cz
  invoke void @_RINvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3mapBR_NCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2t_5Macro14validity_checks0_0EB2v_(ptr nonnull sret([40 x i8]) align 8 %i.bw, ptr nonnull align 8 %i.bv, ptr nonnull align 8 %i.cf)
          to label %bb.db unwind label %bb.cv, !noalias !50

bb.db:                                            ; preds = %bb.da
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2f_5Macro14validity_checks0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB1F_EEB2h_(ptr nonnull sret([24 x i8]) align 8 %i.bx, ptr nonnull align 8 %i.bw)
          to label %bb.dc unwind label %bb.cv, !noalias !50

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtCshVzvyy7iigg_12salsa_macros7fn_util9output_ty(ptr nonnull sret([248 x i8]) align 8 %i.bq, ptr nonnull align 8 %i.cf, ptr nonnull align 8 %i.hl)
          to label %bb.df unwind label %bb.de, !noalias !50

bb.dd:                                            ; preds = %bb.dm, %bb.de
  %.sroa.03.3.i = phi i1 [ true, %bb.de ], [ false, %bb.dm ]
  %.pn.i = phi { ptr, i32 } [ %i.ls, %bb.de ], [ %i.lx, %bb.dm ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.bx) #16
          to label %bb.cu unwind label %bb.dl

bb.de:                                            ; preds = %bb.dh, %bb.df, %bb.dc
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.df:                                            ; preds = %bb.dc
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCs3Eghgi3KVFH_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([248 x i8]) align 8 %i.br, ptr nonnull align 8 %i.bq)
          to label %bb.dg unwind label %bb.de, !noalias !50

bb.dg:                                            ; preds = %bb.df
  %i.lt = load i64, ptr %i.br, align 8, !noalias !50
  %i.lu = icmp eq i64 %i.lt, -1
  br i1 %i.lu, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.lv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !noalias !50
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCshVzvyy7iigg_12salsa_macros12tracked_impl27AssociatedFunctionArgumentsNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1X_EE13from_residualBO_(ptr nonnull sret([368 x i8]) align 8 %i.gs, ptr nonnull align 8 %i.bn, ptr nonnull align 8 @57)
          to label %bb.dn unwind label %bb.de

bb.di:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bs, ptr noundef nonnull align 8 dereferenceable(248) %i.br, i64 248, i1 false), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !noalias !50
  %i.lw = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeE7is_someCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.ci)
          to label %bb.dk unwind label %bb.dj, !noalias !50

bb.dj:                                            ; preds = %bb.di
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.bp) #16
          to label %bb.dm unwind label %bb.dl, !noalias !50

bb.dk:                                            ; preds = %bb.di
  %.sroa.01.248..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.248..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !50
  %.sroa.01.272..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.272..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(248) %i.bs, i64 248, i1 false), !noalias !50
  %.sroa.01.296..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.296..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !noalias !50
  %i.ly = zext i1 %i.lw to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.gs, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.01.i, i64 328, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 328
  %i.lz = shufflevector <2 x ptr> %i.ln, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.lz, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !50
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 344
  store ptr %.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !50
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 352
  store i64 %.sroa.3.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !50
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 360
  store i8 %i.ly, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !50
  br label %bb.ds

bb.dl:                                            ; preds = %bb.dq, %bb.dm, %bb.dj, %bb.dd, %bb.cu
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.dm:                                            ; preds = %bb.dj
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.bs) #16
          to label %bb.dd unwind label %bb.dl, !noalias !50

bb.dn:                                            ; preds = %bb.dh
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3Eghgi3KVFH_3syn2ty4TypeEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.bx)
          to label %bb.do unwind label %bb.cv

bb.do:                                            ; preds = %bb.dn, %bb.cy
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsRujiHMkeh3_11proc_macro25IdentEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.by)
          to label %bb.dp unwind label %.thread.i

bb.dp:                                            ; preds = %bb.do, %.invoke.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.cf)
          to label %bb.ds unwind label %bb.dr

bb.dq:                                            ; preds = %.thread.i, %bb.bp
  %.pn1330.i = phi { ptr, i32 } [ %i.ki, %.thread.i ], [ %.pn11.i, %bb.bp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.cf) #16
          to label %.body unwind label %bb.dl

.body:                                            ; preds = %bb.dr, %bb.dq, %bb.bp, %bb.au, %bb.ap, %.loopexit.split-lp.i.i, %bb.ve
  %.pn107 = phi { ptr, i32 } [ %.pn105, %bb.ve ], [ %i.mb, %bb.dr ], [ %.pn.pn.i15.i, %bb.au ], [ %i.jk, %bb.ap ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn1330.i, %bb.dq ], [ %.pn11.i, %bb.bp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.hb) #16
          to label %bb.t unwind label %bb.ja

bb.dr:                                            ; preds = %bb.dp, %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro19conjure_db_lifetime.exit.i, %bb.at, %bb.as, %bb.aq, %_RNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2_5Macro19extract_db_lifetime.exit.i, %bb.ah, %bb.ab, %.noexc116, %bb.x, %bb.w, %bb.vz, %bb.vg, %bb.du, %bb.ds
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ds:                                            ; preds = %bb.dk, %bb.aq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
end_hunk_1

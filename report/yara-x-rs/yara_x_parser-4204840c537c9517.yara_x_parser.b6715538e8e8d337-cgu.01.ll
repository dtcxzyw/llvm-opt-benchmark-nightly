Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.01?download=true
inline.NumInlined: 588
inline.NumDeleted: 197
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE12boolean_termB9_:bb.a
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ug, ptr %i.uh, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.mf

bb.lk:                                            ; preds = %bb.ki
  %i.ui = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.uk = load <2 x i32>, ptr %i.ui, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  store <2 x i32> %i.uk, ptr %i.uj, align 4
  store i32 0, ptr %i.cl, align 8
  br label %bb.jy

bb.ll:                                            ; preds = %bb.kj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.um = load i8, ptr %i.ul, align 1, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.um, ptr %i.un, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.mf

bb.lm:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call fastcc void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE12boolean_exprB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.by, ptr noalias nofree noundef align 8 dereferenceable(456) %1)
  %i.uo = load i32, ptr %i.by, align 8, !range !19, !noundef !8 ; 2 uses
  %i.up = icmp eq i32 %i.uo, -1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ur = load i8, ptr %i.uq, align 4             ; 2 uses
  br i1 %i.up, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ur, ptr %i.us, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.lt

bb.lo:                                            ; preds = %bb.lm
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.551.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5124.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  store i32 %i.uo, ptr %i.bz, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i8 %i.ur, ptr %.sroa.450.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(456) %1, i16 noundef 76)
          to label %bb.lq unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bz) #19
          to label %common.resume unwind label %bb.kx

bb.lq:                                            ; preds = %bb.lo
  %i.uu = load i8, ptr %i.bx, align 4, !range !7, !noundef !8
  %i.uv = trunc nuw i8 %i.uu to i1
  br i1 %i.uv, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.ux = load i8, ptr %i.uw, align 1, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ux, ptr %i.uy, align 4
  store i32 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bz)
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.jy

bb.lt:                                            ; preds = %bb.lr, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.mf

bb.lu:                                            ; preds = %bb.kn, %bb.kl
  %.sroa.7179.sroa.0.0.ph = phi i8 [ %i.sc, %bb.kl ], [ %i.sl, %bb.kn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !699
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.7179.sroa.0.0.ph, ptr %i.uz, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.mf

bb.lv:                                            ; preds = %bb.km
  %i.va = load i64, ptr %i.sk, align 8, !noalias !699, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call fastcc void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE6anchorB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bw, ptr noalias nofree noundef align 8 dereferenceable(456) %1)
  %i.vb = load i64, ptr %i.bw, align 8, !range !693, !noundef !8 ; 3 uses
  %i.vc = icmp eq i64 %i.vb, -1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  br i1 %i.vc, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.ve = load i8, ptr %i.vd, align 8, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ve, ptr %i.vf, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.mf

bb.lx:                                            ; preds = %bb.lv
  %i.vg = load ptr, ptr %i.vd, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.vh = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsfF8zpZz1lvn_13yara_x_parser3ast12PatternMatchE3newBI_.exit unwind label %bb.ly ; 7 uses

bb.ly:                                            ; preds = %bb.lx
  %i.vi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfF8zpZz1lvn_13yara_x_parser3ast11MatchAnchorEEB11_(i64 %i.vb, ptr %i.vg)
          to label %common.resume unwind label %bb.lz, !inline_history !659

bb.lz:                                            ; preds = %bb.ly
  %i.vj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsfF8zpZz1lvn_13yara_x_parser3ast12PatternMatchE3newBI_.exit: ; preds = %bb.lx
  store i64 %i.vb, ptr %i.vh, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store ptr %i.vg, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store ptr %i.si, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  store i64 %i.va, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 32
  store i32 %i.se, ptr %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 36
  store i32 %i.sg, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.vh, ptr %i.vk, align 8
  store i32 9, ptr %i.cl, align 8
  br label %bb.jy

bb.ma:                                            ; preds = %bb.jy
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cl) #19
          to label %common.resume unwind label %bb.kx

bb.mb:                                            ; preds = %bb.jy
  %.not142 = icmp eq i8 %i.rl, 2
  br i1 %.not142, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.rl, ptr %i.vm, align 4
  store i32 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cl)
  br label %bb.mf

bb.md:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.me

bb.me:                                            ; preds = %bb.mf, %bb.md, %bb.b
  ret void

bb.mf:                                            ; preds = %bb.lu, %bb.lw, %bb.la, %bb.lc, %bb.ko, %bb.kq, %bb.jw, %bb.jz, %bb.kb, %bb.kd, %bb.ky, %bb.lj, %bb.ll, %bb.lt, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.me
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE12primary_exprB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 8 uses
  %i.f = alloca [8 x i8], align 4                 ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [12 x i8], align 4                ; 7 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 14 uses
  %i.n = alloca [12 x i8], align 4                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [12 x i8], align 4                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 9 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 3 uses
  %i.v = alloca [16 x i8], align 8                ; 15 uses
  %i.w = tail call fastcc noundef i8 @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE5beginB8_(ptr noalias nofree noundef align 8 dereferenceable(456) %1, i16 noundef 101) ; 2 uses
  %.not = icmp eq i8 %i.w, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.w, ptr %i.x, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.cd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.y = tail call fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE4peekB8_(ptr noalias nofree noundef align 8 dereferenceable(456) %1) ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !25, !noundef !8 ; 2 uses
  %i.aa = xor i64 %i.z, -9223372036854775808
  %i.ab = icmp slt i64 %i.z, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 3
  switch i64 %i.ac, label %bb.d [
    i64 0, label %bb.e
    i64 2, label %bb.f
  ], !prof !29

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8, !captures !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventNtB6_5Debug3fmtBA_, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load i16, ptr %i.ad, align 8, !range !28, !noundef !8
  %i.af = icmp eq i16 %i.ae, 103
  br i1 %i.af, label %bb.g, label %bb.d, !prof !11

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ah = load i16, ptr %i.ag, align 8, !range !28, !noundef !8
  %i.ai = icmp eq i16 %i.ah, 83
  br i1 %i.ai, label %bb.ax, label %bb.d, !prof !11

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aj = tail call fastcc noundef i8 @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE5beginB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 103), !noalias !719, !inline_history !704 ; 2 uses
  %.not.i = icmp eq i8 %i.aj, 2
  br i1 %.not.i, label %.noexc.i, label %bb.au

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !720
  call fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 83), !noalias !719, !inline_history !704
  %i.ak = load i8, ptr %i.e, align 4, !range !7, !noalias !720, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %.noexc46.i

bb.h:                                             ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !7, !noalias !720, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !720
  br label %bb.j

.noexc46.i:                                       ; preds = %.noexc.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !720, !noundef !8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !720, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !720
  store i32 %i.ap, ptr %i.f, align 4, !noalias !720
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !720
  call fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE14get_source_strB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !719, !inline_history !704
  %i.at = load ptr, ptr %i.d, align 8, !noalias !720, !noundef !8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.noexc46.i
  %i.aw = load i8, ptr %i.av, align 8, !range !7, !noalias !720, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !720
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.7.sroa.0.0.ph.i = phi i8 [ %i.an, %bb.h ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !720
  br label %bb.au

bb.k:                                             ; preds = %.noexc46.i
  %i.ax = load i64, ptr %i.av, align 8, !noalias !720, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !721
  call fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 75), !noalias !719, !inline_history !704
  %i.ay = load i8, ptr %i.n, align 4, !range !7, !noalias !721, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !range !7, !noalias !721, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !721, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !721
  store i64 0, ptr %i.m, align 8, !noalias !721
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !noalias !721
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !noalias !721
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %.sroa.613.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.816.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.bg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE4peekB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1)
          to label %bb.o unwind label %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !719, !inline_history !704 ; 2 uses

.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.y, %bb.r, %bb.n, %bb.q
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %.thread74.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.bg, align 8, !range !25, !noalias !719, !noundef !8
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !range !28, !noalias !719, !noundef !8
  %i.bl = icmp eq i16 %i.bk, 107
  br i1 %i.bl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !721
  invoke fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 76)
          to label %bb.af unwind label %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !719, !inline_history !704

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !721
  invoke fastcc void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE12boolean_exprB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1)
          to label %bb.s unwind label %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !719, !inline_history !704

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.l, align 8, !range !19, !noalias !721, !noundef !8 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = load i8, ptr %.sroa.438.0..sroa_idx.i, align 4, !noalias !721 ; 2 uses
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !721
  br label %bb.aq

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.816.0..sroa_idx17.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.539.0..sroa_idx.i, i64 11, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !721
  store i32 %i.bm, ptr %i.k, align 8, !noalias !721
  store i8 %i.bo, ptr %.sroa.613.0..sroa_idx14.i, align 4, !noalias !721
  %i.bp = load i64, ptr %i.bf, align 8, !alias.scope !722, !noalias !721, !noundef !8 ; 3 uses
  %i.bq = load i64, ptr %i.m, align 8, !range !12, !alias.scope !722, !noalias !721, !noundef !8
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.y unwind label %bb.w, !noalias !723, !inline_history !704

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.k) #19
          to label %.thread74.i unwind label %bb.x, !noalias !719, !inline_history !704

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !723, !inline_history !704
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.bu = load ptr, ptr %i.be, align 8, !alias.scope !722, !noalias !721, !nonnull !8, !noundef !8
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !719
  %i.bw = add i64 %i.bp, 1
  store i64 %i.bw, ptr %i.bf, align 8, !alias.scope !722, !noalias !721
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE4peekB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1)
          to label %bb.z unwind label %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !719, !inline_history !704 ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.by = load i64, ptr %i.bx, align 8, !range !25, !noalias !719, !noundef !8
  %i.bz = icmp eq i64 %i.by, -9223372036854775806
  br i1 %i.bz, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i16, ptr %i.ca, align 8, !range !28, !noalias !719, !noundef !8
  %i.cc = icmp eq i16 %i.cb, 62
  br i1 %i.cc, label %bb.ab, label %.backedge

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !721
  invoke fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 62)
          to label %bb.ac unwind label %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !719, !inline_history !704

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.j, align 4, !range !7, !noalias !721, !noundef !8
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !range !7, !noalias !721, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !721
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !721
  br label %.backedge

.backedge:                                        ; preds = %bb.ae, %bb.aa, %bb.z
  br label %bb.n

bb.af:                                            ; preds = %bb.q
  %i.ch = load i8, ptr %i.i, align 4, !range !7, !noalias !721, !noundef !8
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !range !7, !noalias !721, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !721
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !noalias !721, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !721
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.bd, ptr %i.cn, align 8, !noalias !721
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i32 %i.cm, ptr %i.co, align 4, !noalias !721
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 -1, ptr %i.cp, align 8, !noalias !724
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.at, ptr %i.cq, align 8, !noalias !721
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.ax, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !721
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 %i.ap, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !721
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.ar, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 4, !noalias !721
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !725, !inline_history !704
  %i.cr = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 113) 72, i64 noundef 8) #21, !noalias !725, !inline_history !704 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ai, label %bb.al, !prof !9

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #18
          to label %.noexc50.i unwind label %bb.aj, !noalias !719, !inline_history !704

.noexc50.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8FuncCallEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g) #19
          to label %common.resume unwind label %bb.ak, !noalias !719, !inline_history !704

bb.ak:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !719, !inline_history !704
  unreachable

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !721
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cr, ptr %i.cv, align 8, !noalias !721
  store i32 15, ptr %i.h, align 8, !noalias !721
  %i.cw = invoke fastcc noundef i8 @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE3endB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 103)
          to label %bb.an unwind label %bb.am, !noalias !719, !inline_history !704 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #19
          to label %common.resume unwind label %bb.ap, !noalias !719, !inline_history !704

bb.an:                                            ; preds = %bb.al
  %.not42.i = icmp eq i8 %i.cw, 2
  br i1 %.not42.i, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h), !noalias !719, !inline_history !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !721
  br label %bb.au

bb.ap:                                            ; preds = %.thread74.i, %bb.am
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !719, !inline_history !704
  unreachable

bb.aq:                                            ; preds = %bb.ag, %bb.ad, %bb.t
  %.sroa.13.1 = phi i8 [ %i.bo, %bb.t ], [ %i.cg, %bb.ad ], [ %i.ck, %bb.ag ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.as unwind label %bb.ar, !noalias !719, !inline_history !704

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.at, !noalias !719, !inline_history !704

bb.as:                                            ; preds = %bb.aq
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !719, !inline_history !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !721
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !719, !inline_history !704
  unreachable

.thread74.i:                                      ; preds = %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %eh.lpad-body4977.i = phi { ptr, i32 } [ %i.bs, %bb.w ], [ %lpad.loopexit.split-lp97, %.thread79.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #19
          to label %common.resume unwind label %bb.ap, !noalias !719, !inline_history !704

common.resume:                                    ; preds = %bb.ar, %.thread74.i, %bb.cf, %bb.bs, %bb.aj, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.bs ], [ %i.cx, %bb.am ], [ %.pn.ph, %bb.cf ], [ %i.ct, %bb.aj ], [ %eh.lpad-body4977.i, %.thread74.i ], [ %i.cz, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.au:                                            ; preds = %bb.g, %bb.as, %bb.l, %bb.j, %bb.ao
  %.sroa.13.2.ph = phi i8 [ %i.cw, %bb.ao ], [ %.sroa.7.sroa.0.0.ph.i, %bb.j ], [ %i.bb, %bb.l ], [ %.sroa.13.1, %bb.as ], [ %i.aj, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.13.2.ph, ptr %i.db, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.ce

bb.av:                                            ; preds = %bb.an
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.22.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 15, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.av
  %i.dc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE4peekB8_(ptr noalias nofree noundef align 8 dereferenceable(456) %1)
          to label %bb.bf unwind label %bb.be     ; 2 uses

bb.ax:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !726
  call fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, i16 noundef 83), !noalias !727
  %i.dd = load i8, ptr %i.b, align 4, !range !7, !noalias !726, !noundef !8
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !range !7, !noalias !726, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !726
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !noalias !726, !noundef !8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !noalias !726, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !726
  store i32 %i.di, ptr %i.c, align 4, !noalias !726
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !noalias !726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !726
  call fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE14get_source_strB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !727
  %i.dm = load ptr, ptr %i.a, align 8, !noalias !726, !noundef !8 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.dn, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.dp = load i8, ptr %i.do, align 8, !range !7, !noalias !726, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !726
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.7.sroa.0.0.ph = phi i8 [ %i.dg, %bb.ay ], [ %i.dp, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !726
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.7.sroa.0.0.ph, ptr %i.dq, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.ce

bb.bc:                                            ; preds = %bb.az
  %i.dr = load i64, ptr %i.do, align 8, !noalias !726, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !726
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !728
  %i.ds = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 113) 24, i64 noundef 8) #21, !noalias !728 ; 6 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.bd, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #18, !noalias !728
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.bc
  store ptr %i.dm, ptr %i.ds, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.dr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 %i.di, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store i32 %i.dk, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ds, ptr %i.du, align 8
  store i32 8, ptr %i.v, align 8
  br label %bb.aw

bb.be:                                            ; preds = %bb.bv, %bb.bq, %bb.bl, %bb.bk, %bb.bh, %bb.aw
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bf:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.dc, align 8, !range !25, !noundef !8
  %i.dx = icmp eq i64 %i.dw, -9223372036854775806
  br i1 %i.dx, label %bb.bg, label %bb.bv

bb.bg:                                            ; preds = %bb.bf
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dz = load i16, ptr %i.dy, align 8, !range !28, !noundef !8
  %i.ea = icmp eq i16 %i.dz, 73
  br i1 %i.ea, label %bb.bh, label %bb.bv

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.s, ptr noalias nofree noundef align 8 dereferenceable(456) %1, i16 noundef 73)
          to label %bb.bi unwind label %bb.be

bb.bi:                                            ; preds = %bb.bh
  %i.eb = load i8, ptr %i.s, align 4, !range !7, !noundef !8
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ee, ptr %i.ef, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.bz

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eg = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v)
          to label %bb.bl unwind label %bb.be

bb.bl:                                            ; preds = %bb.bk
  %i.eh = extractvalue { i32, i32 } %i.eg, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE4exprB9_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1)
          to label %bb.bm unwind label %bb.be

bb.bm:                                            ; preds = %bb.bl
  %i.ei = load i32, ptr %i.q, align 8, !range !19, !noundef !8 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.el = load i8, ptr %i.ek, align 4             ; 2 uses
  br i1 %i.ej, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.el, ptr %i.em, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bm
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.554.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 %i.ei, ptr %i.r, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i8 %i.el, ptr %.sroa.427.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE6expectB8_(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.p, ptr noalias nofree noundef align 8 dereferenceable(456) %1, i16 noundef 74)
          to label %bb.bp unwind label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.en = load i8, ptr %i.p, align 4, !range !7, !noundef !8
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.eq, ptr %i.er, align 4
  store i32 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r)
          to label %bb.bw unwind label %bb.be

bb.br:                                            ; preds = %bb.bp
  %i.es = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.et = load i32, ptr %i.es, align 4, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 %i.eh, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 %i.et, ptr %i.ew, align 4
  %i.ex = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %bb.bu unwind label %bb.bs     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6LookupEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #19
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i32 13, ptr %i.v, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ex, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bf, %bb.bg, %bb.bu
  %i.fa = invoke fastcc noundef i8 @_RNvMs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB4_7BuilderNtNtB8_6parser6ParserE3endB8_(ptr noalias nofree noundef align 8 dereferenceable(456) %1, i16 noundef 101)
          to label %bb.ca unwind label %bb.be     ; 2 uses

bb.bw:                                            ; preds = %bb.bq, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bo
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r) #19
          to label %bb.cf unwind label %bb.by

bb.by:                                            ; preds = %bb.cf, %bb.bx
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bz:                                            ; preds = %bb.bj, %bb.bw, %bb.cb
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.v)
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bv
  %.not58 = icmp eq i8 %i.fa, 2
  br i1 %.not58, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.fa, ptr %i.fd, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.bz

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %bb.cc, %bb.b
  ret void

bb.ce:                                            ; preds = %bb.au, %bb.bb, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cd

bb.cf:                                            ; preds = %bb.be, %bb.bx
  %.pn.ph = phi { ptr, i32 } [ %i.fb, %bb.bx ], [ %i.dv, %bb.be ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.v) #19
          to label %common.resume unwind label %bb.by
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB5_7BuilderNtNtB9_6parser6ParserE15hex_sub_patternB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(456) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [12 x i8], align 4                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [12 x i8], align 4                ; 7 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.22 = alloca [15 x i8], align 1           ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 8 uses
  %i.q = alloca [8 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.10?download=true
inline.NumInlined: 1566
inline.NumDeleted: 624
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsiAynQAjgDuT_10xet_client10hub_client5types1__NtB2v_10CasJWTInfoNtB1l_11Deserialize11deserialize9___VisitorECsQbU2fm3lSD_3xet:bb.a
  %i.hp = load i16, ptr %i.ho, align 1
  %i.hq = zext i16 %i.hp to i32
  %i.hr = xor i32 %i.hq, 27762
  %i.hs = or i32 %i.hn, %i.hr
  %i.ht = icmp ne i32 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bn, label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.hw = load i16, ptr %i.gh, align 1
  %i.hx = xor i16 %i.hw, 30821
  %i.hy = getelementptr i8, ptr %i.gh, i64 2
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = zext i8 %i.hz to i16
  %i.ib = xor i16 %i.ia, 112
  %i.ic = or i16 %i.hx, %i.ib
  %i.id = icmp ne i16 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bo, label %bb.bq

bb.bk:                                            ; preds = %bb.bh
  %i.ig = load i64, ptr %i.gh, align 1
  %i.ih = xor i64 %i.ig, 8022163775713141601
  %i.ii = getelementptr i8, ptr %i.gh, i64 3
  %i.ij = load i64, ptr %i.ii, align 1
  %i.ik = xor i64 %i.ij, 7954882442722243429
  %i.il = or i64 %i.ih, %i.ik
  %i.im = icmp ne i64 %i.il, 0
  %i.in = zext i1 %i.im to i32
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.bp, label %bb.bq

bb.bl:                                            ; preds = %.noexc130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4907
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ]
  br label %.loopexit234.i

.body189.i:                                       ; preds = %bb.fk, %bb.ff, %.body.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i51
  %.sroa.097.1.ph.i = phi i8 [ %.sroa.097.4.i, %bb.ff ], [ 1, %.body.i ], [ %.sroa.097.4.i, %bb.fk ], [ 1, %.loopexit.i51 ], [ 1, %.loopexit.split-lp.loopexit.i ], [ %.sroa.097.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.ps, %bb.ff ], [ %eh.lpad-body.i, %.body.i ], [ %i.py, %bb.fk ], [ %lpad.loopexit.i, %.loopexit.i51 ], [ %lpad.loopexit242.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp243.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.am, align 8, !noalias !4884
  %.not118.i = icmp eq i64 %.pr.i, -1
  br i1 %.not118.i, label %.body194.i, label %bb.ga

.loopexit.i51:                                    ; preds = %bb.dn, %bb.cy, %bb.cu, %bb.ct, %bb.cs
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.es, %bb.em, %bb.ek, %.loopexit.i.i.i167.i, %bb.eb, %.loopexit.i.i.i
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i.i, %bb.ez, %bb.er, %.loopexit.i.i.i175.i, %bb.ea, %.loopexit.i.i.i159.i, %bb.dw, %.invoke.i52, %bb.dt, %.loopexit124.i.i.i.i.i.i.i, %bb.do, %.loopexit125.i.i.i.i.i.i.i, %bb.dd, %bb.cx, %.loopexit232.i.i.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.bt, %.loopexit.i.i.i132.i, %bb.bb, %bb.ba, %bb.az, %.loopexit.i.i.i.i, %bb.ay, %.loopexit22.i.i.i.i
  %.sroa.097.2.ph.ph.i = phi i8 [ 1, %bb.dw ], [ %.sroa.097.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i.i ], [ 1, %bb.ez ], [ 1, %bb.dt ], [ 1, %.loopexit22.i.i.i.i ], [ 1, %bb.ay ], [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.bb ], [ 1, %.loopexit.i.i.i132.i ], [ 1, %bb.bt ], [ 1, %.loopexit130.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ 1, %.loopexit246.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ 1, %.loopexit239.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ 1, %.loopexit232.i.i.i.i.i.i.i ], [ 1, %bb.ea ], [ 1, %.invoke ], [ 1, %.invoke.i52 ], [ 1, %bb.cx ], [ 1, %.loopexit.i.i.i175.i ], [ 1, %.loopexit.i.i.i159.i ], [ 1, %bb.dd ], [ 1, %.loopexit125.i.i.i.i.i.i.i ], [ 1, %bb.er ], [ 1, %bb.do ], [ 1, %.loopexit124.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp243.i = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.bm:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4884
  %i.ip = load i64, ptr %i.an, align 8, !range !16, !noalias !4884, !noundef !15
  %.not112.i = icmp eq i64 %i.ip, -1
  br i1 %.not112.i, label %bb.ez, label %bb.ey

bb.bn:                                            ; preds = %bb.bi, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4907
  %i.iq = load i64, ptr %i.an, align 8, !range !16, !noalias !4884, !noundef !15
  %.not116.i = icmp eq i64 %i.iq, -1
  br i1 %.not116.i, label %bb.dx, label %.invoke, !prof !38

bb.bo:                                            ; preds = %bb.bj, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4907
  %i.ir = icmp eq i64 %.sroa.027.0486.i, 1
  br i1 %i.ir, label %.invoke, label %bb.eh, !prof !36

bb.bp:                                            ; preds = %bb.bk, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4907
  %i.is = load i64, ptr %i.am, align 8, !range !16, !noalias !4884, !noundef !15
  %.not115.i = icmp eq i64 %i.is, -1
  br i1 %.not115.i, label %bb.eo, label %.invoke, !prof !38

bb.bq:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4907
  call void @llvm.experimental.noalias.scope.decl(metadata !4908)
  call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  %i.it = load i64, ptr %i.bh, align 8, !alias.scope !4910, !noalias !4911, !noundef !15 ; 4 uses
  %.promoted.i.i.i.i131.i = load i64, ptr %i.bg, align 8, !alias.scope !4912, !noalias !4913 ; 2 uses
  %i.iu = icmp ult i64 %.promoted.i.i.i.i131.i, %i.it
  br i1 %i.iu, label %.lr.ph.i.i.i.i133.i, label %.loopexit.i.i.i132.i

.lr.ph.i.i.i.i133.i:                              ; preds = %bb.bq
  %i.iv = load ptr, ptr %i.bk, align 8, !alias.scope !4910, !noalias !4911, !nonnull !15, !noundef !15 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %.lr.ph.i.i.i.i133.i
  %i.iw = phi i64 [ %.promoted.i.i.i.i131.i, %.lr.ph.i.i.i.i133.i ], [ %i.iz, %bb.bs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4914)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !4915, !noundef !15
  switch i8 %i.iy, label %bb.bt [
    i8 32, label %bb.bs
    i8 10, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 58, label %bb.bu
  ], !prof !4916

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  %i.iz = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.bg, align 8, !alias.scope !4917, !noalias !4913
  %exitcond.not.i.i.i.i134.i = icmp eq i64 %i.iz, %i.it
  br i1 %exitcond.not.i.i.i.i134.i, label %.loopexit.i.i.i132.i, label %bb.br

.loopexit.i.i.i132.i:                             ; preds = %bb.bq, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4918
  store i64 3, ptr %i.y, align 8, !noalias !4918
  %i.ja = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc135.i:                                      ; preds = %.loopexit.i.i.i132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4918
  br label %.loopexit234.i

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4918
  store i64 6, ptr %i.z, align 8, !noalias !4918
  %i.jb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc136.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc136.i:                                      ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4918
  br label %.loopexit234.i

bb.bu:                                            ; preds = %bb.br
  %i.jc = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.jc, ptr %i.bg, align 8, !alias.scope !4919, !noalias !4893
  call void @llvm.experimental.noalias.scope.decl(metadata !4920)
  call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  call void @llvm.experimental.noalias.scope.decl(metadata !4923)
  store i64 0, ptr %i.fg, align 8, !alias.scope !4924, !noalias !4893
  %i.jd = icmp ult i64 %i.jc, %i.it
  br i1 %i.jd, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bu, %bb.du
  %i.je = phi ptr [ %i.nf, %bb.du ], [ %i.iv, %bb.bu ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.du ], [ %i.jc, %bb.bu ]
  %i.jf = phi i64 [ %i.ne, %bb.du ], [ %i.it, %bb.bu ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.du ], [ undef, %bb.bu ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ true, %bb.du ], [ false, %bb.bu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jg = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jj, %bb.bw ] ; 17 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !4926, !noundef !15 ; 3 uses
  switch i8 %i.ji, label %bb.bx [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 110, label %bb.by
    i8 116, label %bb.ce
    i8 102, label %bb.ck
    i8 45, label %bb.cs
    i8 34, label %bb.ct
    i8 91, label %bb.cu
    i8 123, label %bb.cu
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.jj = add i64 %i.jg, 1                        ; 3 uses
  store i64 %i.jj, ptr %i.bg, align 8, !alias.scope !4927, !noalias !4928
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jj, %i.jf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.bv

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.bu, %bb.du, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4929
  store i64 5, ptr %i.x, align 8, !noalias !4929
  %i.jk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc137.i:                                      ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4929
  br label %.loopexit234.i

bb.bx:                                            ; preds = %bb.bv
  %i.jl = add i8 %i.ji, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.jl, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.cy, label %bb.cx, !prof !39

bb.by:                                            ; preds = %bb.bv
  %i.jm = add i64 %i.jg, 1                        ; 4 uses
  store i64 %i.jm, ptr %i.bg, align 8, !alias.scope !4930, !noalias !4893
  call void @llvm.experimental.noalias.scope.decl(metadata !4931)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 %i.jm) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.jm, %i.jf
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.bz, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !noalias !4933, !noundef !15
  %i.jp = add i64 %i.jg, 2                        ; 3 uses
  store i64 %i.jp, ptr %i.bg, align 8, !alias.scope !4934, !noalias !4935
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jo, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ca, label %.loopexit246.i.i.i.i.i.i.i, !prof !40

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !4936)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.jp, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !4937, !noundef !15
  %i.js = add i64 %i.jg, 3                        ; 3 uses
  store i64 %i.js, ptr %i.bg, align 8, !alias.scope !4938, !noalias !4935
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.jr, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.cc, label %.loopexit246.i.i.i.i.i.i.i, !prof !40

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.js, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !noalias !4940, !noundef !15
  %i.jv = add i64 %i.jg, 4
  store i64 %i.jv, ptr %i.bg, align 8, !alias.scope !4941, !noalias !4935
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.ju, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cc, %bb.ca, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4942
  store i64 5, ptr %i.p, align 8, !noalias !4942
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc138.i:                                      ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4942
  br label %.loopexit234.i

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.cd, %bb.cb, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4942
  store i64 9, ptr %i.o, align 8, !noalias !4942
  %i.jx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc139.i:                                      ; preds = %.loopexit246.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4942
  br label %.loopexit234.i

bb.ce:                                            ; preds = %bb.bv
  %i.jy = add i64 %i.jg, 1                        ; 4 uses
  store i64 %i.jy, ptr %i.bg, align 8, !alias.scope !4943, !noalias !4893
  call void @llvm.experimental.noalias.scope.decl(metadata !4944)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 %i.jy) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4945)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.jy, %i.jf
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.cf, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.jz = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !4946, !noundef !15
  %i.kb = add i64 %i.jg, 2                        ; 3 uses
  store i64 %i.kb, ptr %i.bg, align 8, !alias.scope !4947, !noalias !4948
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.ka, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.cg, label %.loopexit239.i.i.i.i.i.i.i, !prof !40

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !4949)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.kb, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kc = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !4950, !noundef !15
  %i.ke = add i64 %i.jg, 3                        ; 3 uses
  store i64 %i.ke, ptr %i.bg, align 8, !alias.scope !4951, !noalias !4948
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.kd, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.ci, label %.loopexit239.i.i.i.i.i.i.i, !prof !40

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !4952)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.ke, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !4953, !noundef !15
  %i.kh = add i64 %i.jg, 4
  store i64 %i.kh, ptr %i.bg, align 8, !alias.scope !4954, !noalias !4948
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.kg, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.cg, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4955
  store i64 5, ptr %i.n, align 8, !noalias !4955
  %i.ki = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc140.i:                                      ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4955
  br label %.loopexit234.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.cj, %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4955
  store i64 9, ptr %i.m, align 8, !noalias !4955
  %i.kj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc141.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc141.i:                                      ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4955
  br label %.loopexit234.i

bb.ck:                                            ; preds = %bb.bv
  %i.kk = add i64 %i.jg, 1                        ; 4 uses
  store i64 %i.kk, ptr %i.bg, align 8, !alias.scope !4956, !noalias !4893
  call void @llvm.experimental.noalias.scope.decl(metadata !4957)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 %i.kk) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4958)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.kk, %i.jf
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.cl, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.kl = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !noalias !4959, !noundef !15
  %i.kn = add i64 %i.jg, 2                        ; 3 uses
  store i64 %i.kn, ptr %i.bg, align 8, !alias.scope !4960, !noalias !4961
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.km, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.cm, label %.loopexit232.i.i.i.i.i.i.i, !prof !40

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !4962)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.kn, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ko = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !4963, !noundef !15
  %i.kq = add i64 %i.jg, 3                        ; 3 uses
  store i64 %i.kq, ptr %i.bg, align 8, !alias.scope !4964, !noalias !4961
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.kp, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.co, label %.loopexit232.i.i.i.i.i.i.i, !prof !40

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !4965)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.kq, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kr = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !noalias !4966, !noundef !15
  %i.kt = add i64 %i.jg, 4                        ; 3 uses
  store i64 %i.kt, ptr %i.bg, align 8, !alias.scope !4967, !noalias !4961
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.ks, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.cq, label %.loopexit232.i.i.i.i.i.i.i, !prof !40

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !4968)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.kt, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ku = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !noalias !4969, !noundef !15
  %i.kw = add i64 %i.jg, 5
  store i64 %i.kw, ptr %i.bg, align 8, !alias.scope !4970, !noalias !4961
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.kv, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.cq, %bb.co, %bb.cm, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4971
  store i64 5, ptr %i.l, align 8, !noalias !4971
  %i.kx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc142.i:                                      ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4971
  br label %.loopexit234.i

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.cr, %bb.cp, %bb.cn, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4971
  store i64 9, ptr %i.k, align 8, !noalias !4971
  %i.ky = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc143.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc143.i:                                      ; preds = %.loopexit232.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4971
  br label %.loopexit234.i

bb.cs:                                            ; preds = %bb.bv
  %i.kz = add i64 %i.jg, 1
  store i64 %i.kz, ptr %i.bg, align 8, !alias.scope !4972, !noalias !4893
  %i.la = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc144.i unwind label %.loopexit.i51, !noalias !4893 ; 2 uses

.noexc144.i:                                      ; preds = %bb.cs
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.ct:                                            ; preds = %bb.bv
  %i.lb = add i64 %i.jg, 1
  store i64 %i.lb, ptr %i.bg, align 8, !alias.scope !4973, !noalias !4893
  %i.lc = invoke noundef align 8 ptr @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.noexc145.i unwind label %.loopexit.i51, !noalias !4893 ; 2 uses

.noexc145.i:                                      ; preds = %bb.ct
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.cu:                                            ; preds = %bb.bv, %bb.bv
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i)
          to label %.noexc146.i unwind label %.loopexit.i51, !noalias !4893

.noexc146.i:                                      ; preds = %bb.cu
  %i.ld = load i64, ptr %i.bg, align 8, !alias.scope !4974, !noalias !4893, !noundef !15
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.bg, align 8, !alias.scope !4974, !noalias !4893
  br label %bb.cw

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i: ; preds = %.noexc148.i, %.noexc145.i, %.noexc144.i, %bb.cr, %bb.cj, %bb.cd
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i
  %i.lf = load i64, ptr %i.fg, align 8, !alias.scope !4924, !noalias !4893, !noundef !15 ; 2 uses
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsQbU2fm3lSD_3xet.exit.i, label %bb.cz

bb.cw:                                            ; preds = %bb.cz, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, %.noexc146.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.ji, %.noexc146.i ], [ %i.lt, %bb.cz ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc146.i ], [ true, %bb.cz ], [ true, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i ]
  %i.lh = load i64, ptr %i.bh, align 8, !alias.scope !4975, !noalias !4976, !noundef !15 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !4977, !noalias !4978 ; 2 uses
  %i.li = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.lh
  br i1 %i.li, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.cw
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.fg, align 8, !alias.scope !4924, !noalias !4893
  %i.lj = load ptr, ptr %i.bk, align 8, !alias.scope !4975, !noalias !4976, !nonnull !15, !noundef !15 ; 3 uses
  %i.lk = load i64, ptr %1, align 8, !range !17, !alias.scope !4924, !noalias !4893
  %i.ll = load ptr, ptr %i.fi, align 8, !alias.scope !4924, !noalias !4893, !nonnull !15
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4929
  store i64 10, ptr %i.w, align 8, !noalias !4929
  %i.lm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc147.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc147.i:                                      ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4929
  br label %.loopexit234.i

bb.cy:                                            ; preds = %bb.bx
  %i.ln = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc148.i unwind label %.loopexit.i51, !noalias !4893 ; 2 uses

.noexc148.i:                                      ; preds = %bb.cy
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.cz:                                            ; preds = %bb.cv
  %i.lo = add i64 %i.lf, -1                       ; 3 uses
  store i64 %i.lo, ptr %i.fg, align 8, !alias.scope !4924, !noalias !4893
  %i.lp = load i64, ptr %1, align 8, !range !17, !alias.scope !4924, !noalias !4893, !noundef !15
  %i.lq = icmp ult i64 %i.lo, %i.lp
  call void @llvm.assume(i1 %i.lq)
  %i.lr = load ptr, ptr %i.fi, align 8, !alias.scope !4924, !noalias !4893, !nonnull !15, !noundef !15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lo
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !4893, !noundef !15
  br label %bb.cw

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.dj, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.me, %bb.dj ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.dj ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.mj, %bb.dj ] ; 6 uses
  %i.lu = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.mg, %bb.dj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  br label %bb.da

bb.da:                                            ; preds = %bb.db, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.lv = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.ly, %bb.db ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4980)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !4981, !noundef !15
  switch i8 %i.lx, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.db
    i8 10, label %bb.db
    i8 9, label %bb.db
    i8 13, label %bb.db
    i8 44, label %bb.de
    i8 93, label %bb.df
    i8 125, label %bb.dg
  ]

bb.db:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  %i.ly = add i64 %i.lv, 1                        ; 3 uses
  store i64 %i.ly, ptr %i.bg, align 8, !alias.scope !4982, !noalias !4978
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.ly, %i.lh
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.da

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.cw, %bb.dj, %bb.db
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.mj, %bb.dj ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.cw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4929
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i52 [
    i8 91, label %bb.dd
    i8 123, label %bb.dc
  ]

bb.dc:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.dc ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !4929
  %i.lz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc150.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !4893

.noexc150.i:                                      ; preds = %bb.dd
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsQbU2fm3lSD_3xet:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !5204, !noundef !15
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !5205
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsiWcPrHiWZDL_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !5207, !noundef !15 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5207
  store i64 14, ptr %i.a, align 8, !noalias !5207
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5207
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !5206, !noalias !5208
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsQbU2fm3lSD_3xet.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !5206, !noalias !5208
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsQbU2fm3lSD_3xet.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !36

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5207
  store i64 14, ptr %i.b, align 8, !noalias !5207
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5207
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !5206, !noalias !5208
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsQbU2fm3lSD_3xet.exit

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsQbU2fm3lSD_3xet.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !5206, !noalias !5208
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsQbU2fm3lSD_3xet.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !41

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5247)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5247, !noalias !5248, !noundef !15 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5247, !noalias !5248, !noundef !15 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !5247, !noalias !5248, !nonnull !15, !noundef !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !5249, !noundef !15 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !5250

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !40

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !5251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5252)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !5252, !noalias !5253, !nonnull !15 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5254)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !5255, !noundef !15
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !5256, !noalias !5257
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !40

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5258)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !5259, !noundef !15
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !5260, !noalias !5257
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !5262, !noundef !15
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !5263, !noalias !5257
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit, label %bb.j, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5264
  store i64 5, ptr %i.f, align 8, !noalias !5264
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !5253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5264
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5264
  store i64 9, ptr %i.e, align 8, !noalias !5264
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !5253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5264
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !5265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5266)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !5266, !noalias !5267, !nonnull !15 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5268)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !5269, !noundef !15
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !5270, !noalias !5271
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !40

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5272)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !5273, !noundef !15
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !5274, !noalias !5271
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !40

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !5276, !noundef !15
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !5277, !noalias !5271
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit30, label %bb.q, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5278
  store i64 5, ptr %i.d, align 8, !noalias !5278
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !5267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5278
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5278
  store i64 9, ptr %i.c, align 8, !noalias !5278
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !5267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5278
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !5279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5280)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !5280, !noalias !5281, !nonnull !15 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5282)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !5283, !noundef !15
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !5284, !noalias !5285
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !40

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !5287, !noundef !15
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !5288, !noalias !5285
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !40

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !5290, !noundef !15
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !5291, !noalias !5285
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !40

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !5293, !noundef !15
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !5294, !noalias !5285
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit38, label %bb.z, !prof !40

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5295
  store i64 5, ptr %i.b, align 8, !noalias !5295
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5295
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5295
  store i64 9, ptr %i.a, align 8, !noalias !5295
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5295
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !5296
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !23, !noundef !15
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !38

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !5297
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !19, !noundef !15
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !38

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit38, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit30, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit ], [ %i.ce, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit30 ], [ %i.cg, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsQbU2fm3lSD_3xet(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !15, !align !22, !noundef !15
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !23, !noundef !15
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !38

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !15, !align !22, !noundef !15
  br label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsiWcPrHiWZDL_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsQbU2fm3lSD_3xet.exit.thread: ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

end_hunk_1

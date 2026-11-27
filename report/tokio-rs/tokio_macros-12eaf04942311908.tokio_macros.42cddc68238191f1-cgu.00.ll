Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.00?download=true
inline.NumInlined: 818
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs5JB0sjZZtVB_12tokio_macros5entry11parse_knobs:bb.a
          to label %bb.gn unwind label %bb.bj

.thread:                                          ; preds = %.split.thread, %bb.gl, %bb.gj
  %.pn55135 = phi { ptr, i32 } [ %.pn52.pn, %bb.gj ], [ %i.gm, %bb.gl ], [ %i.gi, %.split.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bd) #15
          to label %.body94 unwind label %bb.bj

.body72.thread125:                                ; preds = %bb.o, %.body72.thread130
  %eh.lpad-body73128 = phi { ptr, i32 } [ %lpad.thr_comm, %.body72.thread130 ], [ %i.dr, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr) #15
          to label %.body unwind label %bb.bj

bb.on:                                            ; preds = %bb.oo, %.body
  br i1 %.sroa.09.0, label %bb.op, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit

bb.oo:                                            ; preds = %.body
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl) #15
          to label %bb.on unwind label %bb.bj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.op, %bb.oq, %bb.on
  br i1 %.sroa.010.0, label %bb.or, label %.critedge67

bb.op:                                            ; preds = %bb.on
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !range !16, !alias.scope !1443, !noundef !13
  %i.jm = icmp eq i64 %i.jl, -1
  br i1 %i.jm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.jk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.bj

bb.or:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jn) #15
          to label %bb.os unwind label %bb.bj

bb.os:                                            ; preds = %bb.or
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val68 = load i32, ptr %i.jo, align 8, !range !28, !noundef !13
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val69 = load ptr, ptr %i.jp, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn11restriction10VisibilityECs5JB0sjZZtVB_12tokio_macros(i32 %.val68, ptr %.val69) #15
          to label %.critedge.thread unwind label %bb.bj

.critedge.thread:                                 ; preds = %bb.os
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4item9SignatureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(288) %1) #15
          to label %.critedge.thread142 unwind label %bb.bj

.critedge.thread142:                              ; preds = %.critedge.thread
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jq) #15
          to label %bb.ot unwind label %bb.bj

.critedge67:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn4path4PathEECs5JB0sjZZtVB_12tokio_macros.exit, %bb.ot
  resume { ptr, i32 } %.pn64

bb.ot:                                            ; preds = %.critedge.thread142
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #15
          to label %.critedge67 unwind label %bb.bj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5JB0sjZZtVB_12tokio_macros5entry12build_config(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(96) %0, i32 %.216.val, i32 %.272.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.i245.sroa.8 = alloca [15 x i8], align 1 ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10.i = alloca [15 x i8], align 1         ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [8 x i8], align 8                ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.6.i.sroa.7 = alloca [16 x i8], align 8   ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.5.i221.sroa.8 = alloca [15 x i8], align 1 ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 14 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i.sroa.7 = alloca [16 x i8], align 8   ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.552.i = alloca [40 x i8], align 8        ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 4 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %i.cd = alloca [232 x i8], align 8              ; 4 uses
  %i.ce = alloca [48 x i8], align 8               ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 4 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 10 uses
  %i.cn = alloca [24 x i8], align 8               ; 11 uses
  %i.co = alloca [48 x i8], align 8               ; 8 uses
  %i.cp = alloca [232 x i8], align 8              ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 2 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.834 = alloca [16 x i8], align 8          ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.1029 = alloca [15 x i8], align 1         ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.820 = alloca [16 x i8], align 8          ; 6 uses
  %i.cx = alloca [232 x i8], align 8              ; 4 uses
  %i.cy = alloca [24 x i8], align 8               ; 4 uses
  %i.cz = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.915 = alloca [15 x i8], align 1          ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10 = alloca [15 x i8], align 1           ; 7 uses
  %i.db = alloca [24 x i8], align 8               ; 9 uses
  %i.dc = alloca [24 x i8], align 8               ; 10 uses
  %i.dd = alloca [24 x i8], align 8               ; 4 uses
  %i.de = alloca [24 x i8], align 8               ; 10 uses
  %i.df = alloca [24 x i8], align 8               ; 19 uses
  %i.dg = alloca [232 x i8], align 8              ; 16 uses
  %i.dh = alloca [232 x i8], align 8              ; 13 uses
  %.sroa.8 = alloca [224 x i8], align 8           ; 8 uses
  %i.di = alloca [32 x i8], align 8               ; 9 uses
  %i.dj = alloca [32 x i8], align 8               ; 4 uses
  %i.dk = alloca [32 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 7 uses
  %i.dm = alloca [120 x i8], align 8              ; 28 uses
  %i.dn = alloca [24 x i8], align 8               ; 4 uses
  %.not = icmp eq i32 %.216.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %not. = xor i1 %2, true
  %. = zext i1 %not. to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 5 uses
  store i64 -1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 112 ; 3 uses
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 114 ; 2 uses
  store i8 %., ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 115 ; 4 uses
  store i8 -1, ptr %i.dr, align 1
  store i64 0, ptr %i.dm, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 96 ; 4 uses
  store i8 2, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 100 ; 3 uses
  store i32 0, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 113 ; 4 uses
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 5 uses
  store i64 -1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 104 ; 4 uses
  store i8 2, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 108 ; 3 uses
  store i32 0, ptr %i.dx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %spec.select = select i1 %2, ptr @21, ptr @20
  store ptr %spec.select, ptr %i.dl, align 8, !captures !35
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 11, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvXs4_NtCscBrinq2mG3I_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dj)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error11new_spannedNtNtB5_5token2FnReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dn, i32 noundef %.272.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 60)
          to label %bb.jb unwind label %.thread138

.thread138:                                       ; preds = %bb.c
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_4attr4MetaNtNtBG_5token5CommaEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #15
          to label %.thread unwind label %bb.bk

.body:                                            ; preds = %bb.r, %.loopexit.split-lp268, %bb.d
  %.pn140 = phi { ptr, i32 } [ %.pn138, %.loopexit.split-lp268 ], [ %i.ea, %bb.d ], [ %i.gu, %bb.r ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry13ConfigurationEBF_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.dm) #15
          to label %.thread unwind label %bb.bk

bb.d:                                             ; preds = %bb.ix, %bb.n, %.noexc159, %.split83.i, %.noexc157, %.split79.i, %.noexc155, %.split.i, %.noexc, %bb.j, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, %bb.b
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ed = load ptr, ptr %i.eb, align 8, !alias.scope !1501, !nonnull !13, !noundef !13
  %i.ee = load ptr, ptr %i.ec, align 8, !alias.scope !1501, !nonnull !13, !noundef !13 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ed
  br i1 %i.ef, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph: ; preds = %bb.e
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 176 ; 3 uses
  %.sroa.4.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 12 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5.i.sroa.7.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.925.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.1029.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.5.i221.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.5.i221.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 17
  %.sroa.5.i221.sroa.7.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.5.i221.sroa.8.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.820.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.42.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i231.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.68.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.6.i.sroa.7.0..sroa.5.0..sroa_idx7.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %.sroa.812.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.915.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.42.0..sroa_idx.i.i238 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.i245.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5.i245.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 17
  %.sroa.5.i245.sroa.7.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.5.i245.sroa.8.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i263 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.42.0..sroa_idx.i.i250 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.68.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.811.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0..sroa_idx.i.i274 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.46.0..sroa_idx.i.i279 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.410.0..sroa_idx.i.i280 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit

.loopexit.split-lp268:                            ; preds = %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ja, %.thread155, %.thread155
  %.pn138 = phi { ptr, i32 } [ %.pn135.pn154, %.thread155 ], [ %.pn135.pn154, %bb.ja ], [ %.pn135.pn154, %.thread155 ], [ %lpad.loopexit.split-lp873, %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %.body unwind label %bb.bk

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph, %bb.io
  %i.fl = phi ptr [ %i.ee, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ], [ %i.vv, %bb.io ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 232
  store ptr %i.fm, ptr %i.ec, align 8, !alias.scope !1502
  %.sroa.0.0.copyload1 = load i64, ptr %i.fl, align 8, !noalias !1502 ; 4 uses
  %.sroa.8.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.8.0..sroa_idx2, i64 224, i1 false), !noalias !1502
  %.not106 = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not106, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store i64 %.sroa.0.0.copyload1, ptr %i.dh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.8, i64 224, i1 false)
  %i.fn = add nsw i64 %.sroa.0.0.copyload1, -40
  %i.fo = icmp samesign ugt i64 %.sroa.0.0.copyload1, 39
  %i.fp = select i1 %i.fo, i64 %i.fn, i64 2
  switch i64 %i.fp, label %bb.w [
    i64 0, label %bb.x
    i64 2, label %bb.y
    i64 1, label %bb.z
  ]

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit, %bb.io, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated8IntoIterNtNtBG_4attr4MetaEECs5JB0sjZZtVB_12tokio_macros.exit153 unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated8IntoIterNtNtBG_4attr4MetaEECs5JB0sjZZtVB_12tokio_macros.exit153: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.fq = load i8, ptr %i.dr, align 1, !range !21, !alias.scope !1504, !noundef !13 ; 2 uses
  %i.fr = load i8, ptr %i.dq, align 2, !range !18, !alias.scope !1504, !noundef !13
  %.not.i = icmp eq i8 %i.fq, -1                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i8 %i.fr, i8 %i.fq ; 4 uses
  %.sroa.07.0.copyload.i = load i64, ptr %i.dm, align 8, !alias.scope !1504
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.410.0.copyload.i = load i64, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !1504
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1504
  %i.fs = trunc nuw i64 %.sroa.07.0.copyload.i to i1
  br i1 %i.fs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated8IntoIterNtNtBG_4attr4MetaEECs5JB0sjZZtVB_12tokio_macros.exit153
  %i.ft = icmp eq i8 %spec.select.i, 1
  br i1 %i.ft, label %bb.k, label %.split.i

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated8IntoIterNtNtBG_4attr4MetaEECs5JB0sjZZtVB_12tokio_macros.exit153
  %i.fu = icmp ne i8 %spec.select.i, 1
  %i.fv = load i8, ptr %i.dp, align 8, !range !1505, !alias.scope !1504
  %i.fw = trunc nuw i8 %i.fv to i1
  %or.cond102.i = select i1 %i.fu, i1 true, i1 %i.fw
  br i1 %or.cond102.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.4.0.i = phi i64 [ undef, %bb.h ], [ %.sroa.410.0.copyload.i, %bb.k ]
  %.sroa.06.0.i = phi i64 [ 0, %bb.h ], [ 1, %bb.k ]
  %i.fx = load i8, ptr %i.ds, align 8, !range !18, !alias.scope !1504, !noundef !13 ; 2 uses
  %i.fy = icmp ne i8 %spec.select.i, 1            ; 2 uses
  %.not88.i = icmp eq i8 %i.fx, 2
  %or.cond.i = or i1 %i.fy, %.not88.i
  br i1 %or.cond.i, label %bb.l, label %.split79.i

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.fz = invoke noundef i32 @_RNvMsi_Csfr4kGEjnBfC_11proc_macro2NtB5_4Span9call_site()
          to label %.noexc unwind label %bb.d, !noalias !1506

.noexc:                                           ; preds = %bb.j
  %.94.i = select i1 %.not.i, ptr @24, ptr @23
  %..i = select i1 %.not.i, i64 92, i64 73
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ga, i32 noundef %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.94.i, i64 noundef %..i)
          to label %.noexc154 unwind label %bb.d, !noalias !1504

.noexc154:                                        ; preds = %.noexc
  store i64 2, ptr %0, align 8, !alias.scope !1503
  br label %bb.u

.split.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1506
  %i.gb = load i8, ptr %i.du, align 1, !range !1505, !alias.scope !1504, !noundef !13
  %i.gc = trunc nuw i8 %i.gb to i1
  %spec.select113.i = select i1 %i.gc, ptr @21, ptr @20
  store ptr %spec.select113.i, ptr %i.bs, align 8, !noalias !1506, !captures !35
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 11, ptr %i.gd, align 8, !noalias !1506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1506
  store ptr %i.bs, ptr %i.br, align 8, !noalias !1506
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5JB0sjZZtVB_12tokio_macros, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !1506
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, ptr noundef nonnull @22, ptr noundef nonnull %i.br)
          to label %.noexc155 unwind label %bb.d, !noalias !1506

.noexc155:                                        ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1506
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ge, i32 noundef %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bt)
          to label %.noexc156 unwind label %bb.d, !noalias !1504

.noexc156:                                        ; preds = %.noexc155
  store i64 2, ptr %0, align 8, !alias.scope !1503
  br label %bb.u

bb.k:                                             ; preds = %bb.g
  %i.gf = load i8, ptr %i.dp, align 8, !range !1505, !alias.scope !1504, !noundef !13
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.i, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.gh = load i8, ptr %i.dw, align 8, !range !18, !alias.scope !1504, !noundef !13 ; 2 uses
  %.not90.i = icmp eq i8 %i.gh, 2
  %or.cond98.i = or i1 %i.fy, %.not90.i
  br i1 %or.cond98.i, label %bb.m, label %.split83.i

.split79.i:                                       ; preds = %bb.i
  %i.gi = load i32, ptr %i.dt, align 4, !alias.scope !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1506
  %i.gj = load i8, ptr %i.du, align 1, !range !1505, !alias.scope !1504, !noundef !13
  %i.gk = trunc nuw i8 %i.gj to i1
  %spec.select114.i = select i1 %i.gk, ptr @21, ptr @20
  store ptr %spec.select114.i, ptr %i.bp, align 8, !noalias !1506, !captures !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 11, ptr %i.gl, align 8, !noalias !1506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1506
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !1506
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5JB0sjZZtVB_12tokio_macros, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1506
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull @25, ptr noundef nonnull %i.bo)
          to label %.noexc157 unwind label %bb.d, !noalias !1506

.noexc157:                                        ; preds = %.split79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1506
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gm, i32 noundef %i.gi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bq)
          to label %.noexc158 unwind label %bb.d, !noalias !1504

.noexc158:                                        ; preds = %.noexc157
  store i64 2, ptr %0, align 8, !alias.scope !1503
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1506
  %i.gn = load i64, ptr %i.do, align 8, !range !16, !alias.scope !1504, !noundef !13
  %.not92.i = icmp eq i64 %i.gn, -1
  br i1 %.not92.i, label %bb.o, label %bb.n

.split83.i:                                       ; preds = %bb.l
  %i.go = load i32, ptr %i.dx, align 4, !alias.scope !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1506
  %i.gp = load i8, ptr %i.du, align 1, !range !1505, !alias.scope !1504, !noundef !13
  %i.gq = trunc nuw i8 %i.gp to i1
  %spec.select115.i = select i1 %i.gq, ptr @21, ptr @20
  store ptr %spec.select115.i, ptr %i.bm, align 8, !noalias !1506, !captures !35
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 11, ptr %i.gr, align 8, !noalias !1506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1506
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !1506
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5JB0sjZZtVB_12tokio_macros, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !1506
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noundef nonnull @26, ptr noundef nonnull %i.bl)
          to label %.noexc159 unwind label %bb.d, !noalias !1506

.noexc159:                                        ; preds = %.split83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1506
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gs, i32 noundef %i.go, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bn)
          to label %.noexc160 unwind label %bb.d, !noalias !1504

.noexc160:                                        ; preds = %.noexc159
  store i64 2, ptr %0, align 8, !alias.scope !1503
  br label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do)
          to label %.noexc161 unwind label %bb.d, !noalias !1503

bb.o:                                             ; preds = %bb.m
  store i64 -1, ptr %i.bk, align 8, !noalias !1506
  br label %.noexc161

.noexc161:                                        ; preds = %bb.n, %bb.o
  %i.gt = load i64, ptr %i.dv, align 8, !range !16, !alias.scope !1504, !noundef !13
  %.not93.i = icmp eq i64 %i.gt, -1
  br i1 %.not93.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1506
  invoke void @_RNvXs21_NtNtCscBrinq2mG3I_3syn3gen5cloneNtNtBa_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dv)
          to label %bb.s unwind label %bb.r, !noalias !1503

bb.q:                                             ; preds = %bb.s, %.noexc161
  %.sroa.050.0.i = phi i64 [ %.sroa.050.0.copyload.i, %bb.s ], [ -1, %.noexc161 ]
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.546.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1506
  store i64 %.sroa.06.0.i, ptr %0, align 8, !alias.scope !1503
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !1503
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.050.0.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !alias.scope !1503
  %.sroa.647.sroa.4.0..sroa.647.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.647.sroa.4.0..sroa.647.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.552.i, i64 40, i1 false), !noalias !1504
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %spec.select.i, ptr %.sroa.748.0..sroa_idx.i, align 8, !alias.scope !1503
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.fx, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !1503
  %.sroa.949.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.gh, ptr %.sroa.949.0..sroa_idx.i, align 2, !alias.scope !1503
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #15
          to label %.body unwind label %bb.t, !noalias !1503

bb.s:                                             ; preds = %bb.p
  %.sroa.050.0.copyload.i = load i64, ptr %i.bj, align 8, !noalias !1506
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.552.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.552.0..sroa_idx.i, i64 40, i1 false), !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1506
  br label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !noalias !1503
  unreachable

bb.u:                                             ; preds = %bb.q, %.noexc160, %.noexc158, %.noexc156, %.noexc154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5JB0sjZZtVB_12tokio_macros5entry13ConfigurationEBF_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated8IntoIterNtNtBG_4attr4MetaEECs5JB0sjZZtVB_12tokio_macros.exit306, %bb.jb, %bb.u
  ret void

bb.w:                                             ; preds = %bb.f
  unreachable

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.gw = invoke noundef align 8 ptr @_RNvMs_NtCscBrinq2mG3I_3syn4pathNtB4_4Path9get_ident(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co)
          to label %bb.ab unwind label %.body163.thread148 ; 2 uses

bb.y:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.dg, ptr noundef nonnull align 8 dereferenceable(232) %i.dh, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.gx = invoke noundef align 8 ptr @_RNvMs_NtCscBrinq2mG3I_3syn4pathNtB4_4Path9get_ident(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eg)
          to label %bb.bm unwind label %.body185.thread179.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull align 8 dereferenceable(232) %i.dh, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error11new_spannedNtNtB5_4attr4MetaReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(232) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 34)
          to label %bb.iz unwind label %.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %.body165
  br i1 %.sroa.038.2.lpad-body, label %.body163.thread, label %.thread155

.body163.thread148:                               ; preds = %bb.x, %bb.ah
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body163.thread

bb.ab:                                            ; preds = %bb.x
  %.not123 = icmp eq ptr %i.gw, null
  br i1 %.not123, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !1507
  store i64 0, ptr %i.bi, align 8, !noalias !1507
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1507
  %.sroa.5.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i162, align 8, !noalias !1507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1507
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 1610612768, ptr %i.gy, align 8, !noalias !1507
  store ptr %i.bi, ptr %i.bh, align 8, !noalias !1507
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @93, ptr %i.gz, align 8, !noalias !1507
  %i.ha = invoke noundef zeroext i1 @_RNvXsE_Csfr4kGEjnBfC_11proc_macro2NtB5_5IdentNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.ae unwind label %bb.ad, !noalias !1508

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #15
          to label %.body163.thread unwind label %bb.ag, !noalias !1508

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.ha, label %bb.af, label %bb.ak, !prof !36

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #18
          to label %.noexc.i unwind label %bb.ad, !noalias !1508

.noexc.i:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !noalias !1508
  unreachable

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RINvMNtCscBrinq2mG3I_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4path4PathReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 25)
          to label %bb.ai unwind label %.body163.thread148

bb.ai:                                            ; preds = %bb.ah
  %.sroa.025.0.copyload = load i64, ptr %i.bu, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.830.0.copyload = load i64, ptr %.sroa.830.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.025.0.copyload, ptr %i.hd, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.627.0.copyload, ptr %.sroa.478.0..sroa_idx, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.830.0.copyload, ptr %.sroa.579.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.co)
          to label %bb.aj unwind label %.body185.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ip, %bb.iy, %bb.z
  %lpad.loopexit.split-lp873 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp268

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit181, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.bj

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1507
  %i.he = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !13, !noundef !13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !noundef !13
  invoke void @_RNvMs3_NtCs1xwejQucwHj_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hf, i64 noundef %i.hh)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm) #15
          to label %.body163.thread unwind label %bb.bk

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body165 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.be, %bb.ay, %bb.au, %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.bf
  %.sroa.038.2 = phi i1 [ false, %bb.bf ], [ true, %bb.be ], [ true, %bb.ar ], [ true, %bb.au ], [ true, %bb.ay ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5JB0sjZZtVB_12tokio_macros.exit.i ]
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body165

.body165:                                         ; preds = %bb.an, %bb.ap
  %.sroa.038.2.lpad-body = phi i1 [ %.sroa.038.2, %bb.ap ], [ true, %bb.an ]
  %eh.lpad-body166 = phi { ptr, i32 } [ %i.hl, %bb.ap ], [ %i.hj, %bb.an ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn) #15
          to label %bb.aa unwind label %bb.bk

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5JB0sjZZtVB_12tokio_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !13, !noundef !13 ; 22 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !13 ; 2 uses
end_hunk_0

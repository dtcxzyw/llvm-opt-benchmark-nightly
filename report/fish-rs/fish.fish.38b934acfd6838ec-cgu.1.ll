Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.1?download=true
inline.NumInlined: 537
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionECs4RW8js5ES7g_4fish:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bl)
          to label %bb.q unwind label %bb.p, !noalias !564, !inline_history !555

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListECs4RW8js5ES7g_4fish.exit.i18
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %.body20 unwind label %bb.r, !noalias !564, !inline_history !556

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListECs4RW8js5ES7g_4fish.exit.i18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationECs4RW8js5ES7g_4fish.exit7.i unwind label %bb.s, !noalias !564, !inline_history !556

bb.r:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !564, !inline_history !555
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body20

.body20:                                          ; preds = %bb.p, %bb.s
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !564, !inline_history !557
  unreachable

.body14:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationECs4RW8js5ES7g_4fish.exit7.i, %.body.i
  %i.br = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.br, i64 noundef 8) #22, !noalias !564
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineECs4RW8js5ES7g_4fish.exit.i
  %i.bs = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.bs, i64 noundef 8) #22, !noalias !564
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionECs4RW8js5ES7g_4fish.exit

bb.t:                                             ; preds = %.body9
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !inline_history !561
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineECs4RW8js5ES7g_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListECs4RW8js5ES7g_4fish.exit
  %i.bu = icmp eq i64 %i.c, %1
  br i1 %i.bu, label %._crit_edge, label %.lr.ph57

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionECs4RW8js5ES7g_4fish.exit, %bb.a
  ret void

bb.u:                                             ; preds = %.lr.ph156
  %i.bv = add nuw nsw i64 %.sroa.0.1155, 1        ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %1
  br i1 %i.bw, label %._crit_edge157, label %.lr.ph156

.body:                                            ; preds = %.body14, %.body9
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %eh.lpad-body.i, %.body14 ]
  %i.bx = icmp eq i64 %i.c, %1
  br i1 %i.bx, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.body, %bb.u
  %.sroa.0.1155 = phi i64 [ %i.bv, %bb.u ], [ %i.c, %.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.1155
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(160) %i.by) #19
          to label %bb.u unwind label %bb.v

._crit_edge157:                                   ; preds = %bb.u, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.v:                                             ; preds = %.lr.ph156
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCs4RW8js5ES7g_4fish13throwing_main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [4 x i8], align 4                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [152 x i8], align 8              ; 11 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [4 x i8], align 4                ; 3 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 16 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 13 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [1 x i8], align 1                ; 3 uses
  %i.av = alloca [40 x i8], align 8               ; 9 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 9 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 9 uses
  %i.be = alloca [24 x i8], align 8               ; 10 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %i.bi = alloca [88 x i8], align 8               ; 5 uses
  %i.bj = alloca [88 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 4 uses
  %i.bl = alloca [1 x i8], align 1                ; 3 uses
  %i.bm = alloca [1 x i8], align 1                ; 3 uses
  %i.bn = alloca [1 x i8], align 1                ; 3 uses
  %i.bo = alloca [1 x i8], align 1                ; 3 uses
  %i.bp = alloca [1 x i8], align 1                ; 3 uses
  %i.bq = alloca [1 x i8], align 1                ; 3 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 11 uses
  %i.bu = alloca [32 x i8], align 8               ; 8 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [72 x i8], align 8               ; 9 uses
  %i.by = alloca [72 x i8], align 8               ; 9 uses
  %i.bz = alloca [24 x i8], align 8               ; 11 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 8 uses
  %i.cd = alloca [72 x i8], align 8               ; 9 uses
  %i.ce = alloca [72 x i8], align 8               ; 9 uses
  %i.cf = alloca [24 x i8], align 8               ; 11 uses
  %i.cg = alloca [32 x i8], align 8               ; 8 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [24 x i8], align 8               ; 8 uses
  %i.cj = alloca [72 x i8], align 8               ; 9 uses
  %i.ck = alloca [72 x i8], align 8               ; 9 uses
  %i.cl = alloca [24 x i8], align 8               ; 10 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %i.ct = alloca [24 x i8], align 8               ; 5 uses
  %i.cu = alloca [96 x i8], align 8               ; 16 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 8 uses
  %i.cx = alloca [24 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 9 uses
  %i.cz = alloca [24 x i8], align 8               ; 7 uses
  %i.da = alloca [24 x i8], align 8               ; 4 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 8 uses
  %i.dd = alloca [16 x i8], align 8               ; 5 uses
  %i.de = alloca [24 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 8 uses
  %i.dg = alloca [32 x i8], align 8               ; 8 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 4 uses
  %i.dj = alloca [24 x i8], align 8               ; 5 uses
  %i.dk = alloca [24 x i8], align 8               ; 4 uses
  %i.dl = alloca [24 x i8], align 8               ; 5 uses
  %i.dm = alloca [136 x i8], align 8              ; 30 uses
  %i.dn = alloca [24 x i8], align 8               ; 11 uses
  %i.do = alloca [1 x i8], align 1                ; 3 uses
  %i.dp = alloca [1 x i8], align 1                ; 3 uses
  %i.dq = alloca [1 x i8], align 1                ; 3 uses
  %i.dr = alloca [1 x i8], align 1                ; 3 uses
  %i.ds = alloca [1 x i8], align 1                ; 3 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 7 uses
  %i.dv = alloca [32 x i8], align 8               ; 7 uses
  %i.dw = alloca [40 x i8], align 8               ; 7 uses
  %i.dx = alloca [24 x i8], align 8               ; 4 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %i.dz = alloca [32 x i8], align 8               ; 7 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [24 x i8], align 8               ; 7 uses
  %i.ec = alloca [32 x i8], align 8               ; 7 uses
  %i.ed = alloca [24 x i8], align 8               ; 6 uses
  %i.ee = alloca [24 x i8], align 8               ; 6 uses
  %i.ef = alloca [32 x i8], align 8               ; 7 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [24 x i8], align 8               ; 9 uses
  %i.ei = alloca [24 x i8], align 8               ; 4 uses
  %i.ej = alloca [24 x i8], align 8               ; 6 uses
  %i.ek = alloca [24 x i8], align 8               ; 7 uses
  %i.el = alloca [56 x i8], align 8               ; 4 uses
  %i.em = alloca [4 x i8], align 4                ; 4 uses
  %i.en = alloca [24 x i8], align 8               ; 7 uses
  %i.eo = alloca [32 x i8], align 8               ; 8 uses
  %i.ep = alloca [24 x i8], align 8               ; 8 uses
  %i.eq = alloca [16 x i8], align 8               ; 5 uses
  %i.er = alloca [24 x i8], align 8               ; 8 uses
  %i.es = alloca [24 x i8], align 8               ; 6 uses
  %i.et = alloca [24 x i8], align 8               ; 6 uses
  %i.eu = alloca [24 x i8], align 8               ; 6 uses
  %i.ev = alloca [24 x i8], align 8               ; 15 uses
  %i.ew = alloca [24 x i8], align 8               ; 8 uses
  %i.ex = alloca [16 x i8], align 8               ; 6 uses
  %i.ey = alloca [24 x i8], align 8               ; 4 uses
  %i.ez = alloca [32 x i8], align 8               ; 4 uses
  %i.fa = alloca [32 x i8], align 8               ; 6 uses
  %i.fb = alloca [16 x i8], align 8               ; 5 uses
  %i.fc = alloca [24 x i8], align 8               ; 8 uses
  %i.fd = alloca [24 x i8], align 8               ; 8 uses
  %i.fe = alloca [24 x i8], align 8               ; 10 uses
  %i.ff = alloca [32 x i8], align 8               ; 8 uses
  %i.fg = alloca [24 x i8], align 8               ; 11 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [24 x i8], align 8               ; 8 uses
  %i.fj = alloca [24 x i8], align 8               ; 8 uses
  %i.fk = alloca [24 x i8], align 8               ; 6 uses
  %i.fl = alloca [24 x i8], align 8               ; 6 uses
  %i.fm = alloca [24 x i8], align 8               ; 17 uses
  %i.fn = alloca [8 x i8], align 8                ; 4 uses
  %i.fo = alloca [16 x i8], align 8               ; 6 uses
  %i.fp = alloca [24 x i8], align 8               ; 9 uses
  %i.fq = alloca [24 x i8], align 8               ; 10 uses
  %i.fr = alloca [24 x i8], align 8               ; 6 uses
  %i.fs = alloca [24 x i8], align 8               ; 15 uses
  %i.ft = alloca [24 x i8], align 8               ; 4 uses
  %i.fu = alloca [32 x i8], align 8               ; 4 uses
  %i.fv = alloca [24 x i8], align 8               ; 10 uses
  %i.fw = alloca [24 x i8], align 8               ; 6 uses
  %i.fx = alloca [432 x i8], align 8              ; 29 uses
  %i.fy = alloca [136 x i8], align 8              ; 5 uses
  %i.fz = alloca [24 x i8], align 8               ; 9 uses
  %i.ga = alloca [24 x i8], align 8               ; 5 uses
  %i.gb = alloca [120 x i8], align 8              ; 6 uses
  %i.gc = alloca [120 x i8], align 8              ; 13 uses
  %i.gd = alloca [24 x i8], align 8               ; 11 uses
  %i.ge = alloca [16 x i8], align 8               ; 5 uses
  %i.gf = alloca [24 x i8], align 8               ; 6 uses
  %i.gg = alloca [24 x i8], align 8               ; 6 uses
  %i.gh = alloca [24 x i8], align 8               ; 17 uses
  %i.gi = alloca [32 x i8], align 8               ; 4 uses
  %i.gj = alloca [32 x i8], align 8               ; 6 uses
  %i.gk = alloca [16 x i8], align 8               ; 5 uses
  %i.gl = alloca [24 x i8], align 8               ; 8 uses
  %i.gm = alloca [24 x i8], align 8               ; 8 uses
  %i.gn = alloca [32 x i8], align 8               ; 8 uses
  %i.go = alloca [16 x i8], align 8               ; 5 uses
  %i.gp = alloca [24 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 8 uses
  %i.gr = alloca [16 x i8], align 8               ; 5 uses
  %i.gs = alloca [24 x i8], align 8               ; 4 uses
  %i.gt = alloca [24 x i8], align 8               ; 9 uses
  %i.gu = alloca [8 x i8], align 8                ; 4 uses
  %i.gv = alloca [16 x i8], align 16              ; 5 uses
  %i.gw = alloca [16 x i8], align 8               ; 7 uses
  %i.gx = alloca [24 x i8], align 8               ; 13 uses
  %i.gy = alloca [24 x i8], align 8               ; 5 uses
  %i.gz = alloca [152 x i8], align 8              ; 42 uses
  %i.ha = alloca [32 x i8], align 8               ; 4 uses
  %i.hb = alloca [24 x i8], align 8               ; 11 uses
  %i.hc = alloca [24 x i8], align 8               ; 9 uses
  %i.hd = alloca [24 x i8], align 8               ; 4 uses
  %i.he = alloca [24 x i8], align 8               ; 5 uses
  tail call void @_RNvNtCs8frGy5WneL6_4fish6signal18signal_unblock_all()
  tail call void @_RNvNtCs8frGy5WneL6_4fish13topic_monitor18topic_monitor_init()
  tail call void @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads4init()
  %i.hf = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6locale16set_libc_locales(i1 noundef zeroext false) ; 0 uses
  tail call void @_RNvNtCs8frGy5WneL6_4fish12localization23initialize_localization()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 10)
  %i.hg = load i64, ptr %i.he, align 8, !range !9, !noundef !8
  %.not = icmp eq i64 %i.hg, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  call void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.hd)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !8, !noundef !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog35activate_flog_categories_by_pattern(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hi, i64 noundef %i.hk)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hc) #19
          to label %common.resume unwind label %bb.ha

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.abl, %bb.zx, %bb.c, %.body500, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bbk, %bb.zx ], [ %i.hm, %bb.e ], [ %i.hl, %bb.c ], [ %.pn242, %.body500 ], [ %i.bea, %bb.abl ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @_RNvNtCsaL1QbXo9JQH_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ha)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB3f_3ffi6os_str8OsStringEEE9from_iterCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ha)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  store i64 0, ptr %i.gz, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.592.0..sroa_idx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 72 ; 25 uses
  store i64 -1, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 96 ; 18 uses
  store i64 -1, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 120 ; 19 uses
  store i64 -1, ptr %i.hq, align 8
  %.sroa.678.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.gz, i64 128 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 14 uses
  store i64 0, ptr %i.hr, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 9 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 48 ; 11 uses
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.583.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.485.0..sroa_idx, align 8
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 64 ; 4 uses
  store i64 0, ptr %.sroa.586.0..sroa_idx, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gz, i64 144 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gz, i64 145 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 146 ; 8 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 147 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gz, i64 148 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 149 ; 3 uses
  %0 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ht, i8 0, i64 6, i1 false)
  %i.hz = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 5 uses
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !824
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %i.ib
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNvCs4RW8js5ES7g_4fish14fish_parse_opt0EE9from_iterB48_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dn, ptr noundef nonnull align 8 %i.hz, ptr noundef nonnull %i.ic)
          to label %.noexc266 unwind label %bb.hb, !noalias !825

.noexc266:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !824
  %i.id = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !824, !nonnull !8, !noundef !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !noalias !824, !noundef !8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.ie, ptr %i.ih, align 8, !noalias !824
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %i.ig, ptr %i.ii, align 8, !noalias !824
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dm, i64 88 ; 8 uses
  store ptr null, ptr %i.ij, align 8, !noalias !824
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dm, i64 96 ; 7 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr @30, ptr %i.il, align 8, !noalias !824
  %i.im = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i64 22, ptr %i.im, align 8, !noalias !824
  %i.in = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  store ptr @48, ptr %i.in, align 8, !noalias !824
  %i.io = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  store i64 17, ptr %i.io, align 8, !noalias !824
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.ip, align 8, !noalias !824
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store i64 0, ptr %i.iq, align 8, !noalias !824
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dm, i64 104 ; 5 uses
  store i64 0, ptr %i.ir, align 8, !noalias !824
  %i.is = getelementptr inbounds nuw i8, ptr %i.dm, i64 128
  store i32 63, ptr %i.is, align 8, !noalias !824
  %i.it = getelementptr inbounds nuw i8, ptr %i.dm, i64 134
  store i8 1, ptr %i.it, align 2, !noalias !824
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dm, i64 132
  store i8 0, ptr %i.iv, align 4, !noalias !824
  %1 = getelementptr inbounds nuw i8, ptr %i.dm, i64 133
  store i8 0, ptr %1, align 1, !noalias !824
  store i64 0, ptr %i.dm, align 8, !noalias !824
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, i8 0, i64 16, i1 false), !noalias !824
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 0, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !824
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %.noexc266
  %i.jc = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %bb.i unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

.body.i:                                          ; preds = %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gk, %.body268.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit262.i, %bb.fn, %.body251.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit245.i, %bb.eq, %.body237.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit233.i, %bb.dt, %bb.dr, %.body223.i, %.body215.i, %.body209.i, %bb.cf, %.body200.i, %bb.bz, %.body186.i, %.body181.i, %.body178.i, %bb.ao, %bb.ai
  %.pn156.i = phi { ptr, i32 } [ %.pn.i, %.body268.i ], [ %i.kc, %bb.ao ], [ %eh.lpad-body182.i, %.body181.i ], [ %eh.lpad-body187.i, %.body186.i ], [ %.pn142.i, %.body200.i ], [ %eh.lpad-body210.i, %.body209.i ], [ %eh.lpad-body216.i, %.body215.i ], [ %i.qi, %bb.dr ], [ %.pn136.i, %.body223.i ], [ %.pn131.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit233.i ], [ %.pn129.i, %.body237.i ], [ %.pn127.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit245.i ], [ %.pn125.i, %.body251.i ], [ %.pn123.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit262.i ], [ %i.tt, %bb.fn ], [ %i.jt, %bb.ai ], [ %.pn152.i, %.body178.i ], [ %i.mn, %bb.bz ], [ %i.of, %bb.cf ], [ %i.qj, %bb.dt ], [ %i.sb, %bb.eq ], [ %i.vl, %bb.gk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.dm) #19
          to label %.body204.i unwind label %bb.bf, !noalias !826

.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit218.i, %bb.db, %bb.cv, %bb.bm, %bb.bg, %._crit_edge.i, %bb.as, %bb.ar, %bb.al, %bb.ae, %bb.q, %bb.h, %bb.gx, %bb.gv, %bb.gq, %bb.gp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i273.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit264.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i256.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit247.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit235.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i227.i, %.invoke.i, %bb.cg, %.invoke371.i, %bb.w, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.jc, label %bb.k [
    i32 -1, label %bb.j
    i32 99, label %bb.l
    i32 67, label %bb.m
    i32 100, label %bb.n
    i32 111, label %bb.o
    i32 102, label %bb.p
    i32 104, label %bb.q
    i32 105, label %bb.r
    i32 108, label %bb.s
    i32 78, label %bb.t
    i32 110, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 112, label %bb.x
    i32 3, label %bb.y
    i32 80, label %bb.z
    i32 118, label %bb.aa
    i32 68, label %.backedge
    i32 63, label %bb.ab
    i32 58, label %bb.ac
    i32 59, label %bb.ad
  ], !prof !827

bb.j:                                             ; preds = %bb.i
  %i.jd = load i64, ptr %i.ir, align 8, !noalias !824, !noundef !8 ; 2 uses
  %.not121.i = icmp eq i64 %i.ib, 0
  br i1 %.not121.i, label %bb.gq, label %bb.gp

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @80, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #23
          to label %bb.af unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !824
  %i.je = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not155.i = icmp eq ptr %i.je, null
  br i1 %.not155.i, label %.invoke.i, label %bb.ae, !prof !15

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !824
  %i.jf = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not154.i = icmp eq ptr %i.jf, null
  br i1 %.not154.i, label %.invoke.i, label %bb.al, !prof !15

bb.n:                                             ; preds = %bb.i
  %i.jg = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not147.i = icmp eq ptr %i.jg, null
  br i1 %.not147.i, label %.invoke.i, label %bb.ar, !prof !15

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !824
  %i.jh = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not146.i = icmp eq ptr %i.jh, null
  br i1 %.not146.i, label %.invoke.i, label %bb.bg, !prof !15

bb.p:                                             ; preds = %bb.i
  %i.ji = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %i.jj = load i64, ptr %i.ik, align 8, !noalias !824 ; 6 uses
  %.not144.i = icmp eq ptr %i.ji, null
  br i1 %.not144.i, label %.invoke.i, label %bb.bm, !prof !15

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !824
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.r:                                             ; preds = %bb.i
  store i8 1, ptr %i.hx, align 4, !alias.scope !823
  br label %.backedge

bb.s:                                             ; preds = %bb.i
  store i8 1, ptr %i.hw, align 1, !alias.scope !823
  br label %.backedge

bb.t:                                             ; preds = %bb.i
  store i8 1, ptr %i.hu, align 1, !alias.scope !823
  store i8 1, ptr %i.hy, align 1, !alias.scope !823
  br label %.backedge

bb.u:                                             ; preds = %bb.i
  store i8 1, ptr %i.hv, align 2, !alias.scope !823
  br label %.backedge

bb.v:                                             ; preds = %bb.i
  store i8 1, ptr %i.ht, align 8, !alias.scope !823
  br label %.backedge

bb.w:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !824
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories14all_categories(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy)
          to label %bb.cc unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.x:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !824
  %i.jk = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not139.i = icmp eq ptr %i.jk, null
  br i1 %.not139.i, label %.invoke.i, label %bb.cv, !prof !15

bb.y:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !824
  %i.jl = load ptr, ptr %i.ij, align 8, !noalias !824, !align !14, !noundef !8 ; 2 uses
  %.not138.i = icmp eq ptr %i.jl, null
  br i1 %.not138.i, label %.invoke.i, label %bb.db, !prof !15

bb.z:                                             ; preds = %bb.i
  store i8 1, ptr %i.hy, align 1, !alias.scope !823
  br label %.backedge

bb.aa:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !824
  store i64 0, ptr %i.co, align 8, !noalias !824
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %.sroa.588.0..sroa_idx.i, align 8, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !824
  invoke void @_RINvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24localized_version_stringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 4)
          to label %bb.di unwind label %bb.dh, !noalias !826

bb.ab:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !824
  store i64 0, ptr %i.ci, align 8, !noalias !824
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 0, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !824
  %i.jm = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65)
          to label %bb.dw unwind label %bb.dv, !noalias !826 ; 2 uses

bb.ac:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !824
  store i64 0, ptr %i.cc, align 8, !noalias !824
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 0, ptr %.sroa.582.0..sroa_idx.i, align 8, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !824
  %i.jn = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71)
          to label %bb.et unwind label %bb.es, !noalias !826 ; 2 uses

bb.ad:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !824
  store i64 0, ptr %i.bw, align 8, !noalias !824
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 0, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !824
end_hunk_0
begin_hunk_1_@_RNvCs4RW8js5ES7g_4fish13throwing_main:bb.a
          to label %.body.i unwind label %bb.bf, !noalias !826

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i199.i, %bb.ce, %bb.cd
  %lpad.loopexit.split-lp814 = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

.lr.ph321.i:                                      ; preds = %.lr.ph321.i, %.lr.ph321.i.preheader.new
  %.sroa.029.0319.i = phi ptr [ %i.mt, %.lr.ph321.i.preheader.new ], [ %i.ob, %.lr.ph321.i ] ; 5 uses
  %.sroa.031.0318.i = phi i64 [ 0, %.lr.ph321.i.preheader.new ], [ %..i.i.3, %.lr.ph321.i ]
  %niter = phi i64 [ 0, %.lr.ph321.i.preheader.new ], [ %niter.next.3, %.lr.ph321.i ]
  %i.nm = load ptr, ptr %.sroa.029.0319.i, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = load i64, ptr %i.nn, align 8, !noalias !826, !noundef !8
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.no, i64 %.sroa.031.0318.i)
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.029.0319.i, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !826, !noundef !8
  %..i.i.1 = call noundef i64 @llvm.umax.i64(i64 %i.ns, i64 %..i.i)
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.029.0319.i, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load i64, ptr %i.nv, align 8, !noalias !826, !noundef !8
  %..i.i.2 = call noundef i64 @llvm.umax.i64(i64 %i.nw, i64 %..i.i.1)
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.029.0319.i, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = load i64, ptr %i.nz, align 8, !noalias !826, !noundef !8
  %..i.i.3 = call noundef i64 @llvm.umax.i64(i64 %i.oa, i64 %..i.i.2) ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.029.0319.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge322.i.unr-lcssa, label %.lr.ph321.i

bb.cd:                                            ; preds = %._crit_edge322.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #23
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit203.i, %.lr.ph324.i
  %.sroa.034.0323.i = phi ptr [ %i.mt, %.lr.ph324.i ], [ %i.oc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit203.i ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.034.0323.i, i64 8 ; 2 uses
  %i.od = load ptr, ptr %.sroa.034.0323.i, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8
  %i.oe = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.od)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826 ; 2 uses

._crit_edge325.i:                                 ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit203.i, %bb.cc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.cg unwind label %bb.cf, !noalias !826

bb.cf:                                            ; preds = %._crit_edge325.i
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body.i unwind label %bb.ch, !noalias !826

bb.cg:                                            ; preds = %._crit_edge325.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEECs4RW8js5ES7g_4fish.exit.i unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.ch:                                            ; preds = %bb.cf
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

bb.ci:                                            ; preds = %bb.ce
  %i.oh = extractvalue { ptr, i64 } %i.oe, 0
  %i.oi = extractvalue { ptr, i64 } %i.oe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !824
  store i64 0, ptr %i.cw, align 8, !noalias !824
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4110.0..sroa_idx.i, align 8, !noalias !824
  store i64 0, ptr %.sroa.5111.0..sroa_idx.i, align 8, !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !824
  %i.oj = load ptr, ptr %.sroa.034.0323.i, align 8, !noalias !826, !nonnull !8, !align !834, !noundef !8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8, !noalias !826, !nonnull !8, !align !14, !noundef !8
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 32
  %i.on = load i64, ptr %i.om, align 8, !noalias !826, !noundef !8
  store i64 4, ptr %i.cu, align 8, !noalias !824
  store i64 %i.ng, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !824
  store i64 1, ptr %i.ni, align 8, !noalias !824
  store ptr %i.ol, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !824
  store i64 %i.on, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !824
  store i64 1, ptr %i.nj, align 8, !noalias !824
  store ptr %i.oh, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !824
  store i64 %i.oi, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !824
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef 3)
          to label %bb.cj unwind label %.loopexit.split-lp290.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

.loopexit.split-lp290.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ci, %bb.ck
  %lpad.loopexit.split-lp817 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.cu) #19
          to label %.body196.i unwind label %bb.bf, !noalias !826

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.oo = load i8, ptr %i.cv, align 8, !range !17, !alias.scope !844, !noalias !824, !noundef !8
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.ck, label %.preheader.i.preheader, !prof !15

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !845
  %i.oq = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.or = load i8, ptr %i.oq, align 1, !range !18, !alias.scope !844, !noalias !824, !noundef !8
  store i8 %i.or, ptr %i.bm, align 1, !noalias !845
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #24
          to label %.noexc165.i unwind label %.loopexit.split-lp290.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !846

.noexc165.i:                                      ; preds = %bb.ck
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.nk)
          to label %.preheader.i.1 unwind label %bb.cm, !noalias !826

.preheader.i.1:                                   ; preds = %.preheader.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.nl)
          to label %.preheader.i.2 unwind label %bb.cm, !noalias !826

.preheader.i.2:                                   ; preds = %.preheader.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !824
  %i.os = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, i32 noundef 1)
          to label %bb.cp unwind label %bb.co, !noalias !826 ; 0 uses

.preheader.i.preheader:                           ; preds = %bb.cj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cu)
          to label %.preheader.i unwind label %bb.cm, !noalias !826

bb.cl:                                            ; preds = %.lr.ph786
  %i.ot = add nuw nsw i64 %.sroa.0.1.i.i.i784, 1  ; 2 uses
  %i.ou = icmp eq i64 %i.ot, 3
  br i1 %i.ou, label %.body196.i, label %.lr.ph786

bb.cm:                                            ; preds = %.preheader.i.1, %.preheader.i, %.preheader.i.preheader
  %i.ov = phi i1 [ false, %.preheader.i.preheader ], [ false, %.preheader.i ], [ true, %.preheader.i.1 ]
  %.lcssa819 = phi i64 [ 1, %.preheader.i.preheader ], [ 2, %.preheader.i ], [ 3, %.preheader.i.1 ]
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ov, label %.body196.i, label %.lr.ph786

.lr.ph786:                                        ; preds = %bb.cm, %bb.cl
  %.sroa.0.1.i.i.i784 = phi i64 [ %i.ot, %bb.cl ], [ %.lcssa819, %bb.cm ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.0.1.i.i.i784
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ox) #19
          to label %bb.cl unwind label %bb.cn, !noalias !826

bb.cn:                                            ; preds = %.lr.ph786
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

.body196.i:                                       ; preds = %bb.cl, %bb.cm, %.loopexit.split-lp290.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn140.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp817, %.loopexit.split-lp290.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ow, %bb.cm ], [ %i.ow, %bb.cl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #19
          to label %.body200.i unwind label %bb.bf, !noalias !826

bb.co:                                            ; preds = %.preheader.i.2
  %i.oz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cx) #19
          to label %.body200.i unwind label %bb.bf, !noalias !826

bb.cp:                                            ; preds = %.preheader.i.2
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i199.i unwind label %bb.cq, !noalias !826

bb.cq:                                            ; preds = %bb.cp
  %i.pa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %.body200.i unwind label %bb.cr, !noalias !826

bb.cr:                                            ; preds = %bb.cq
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i199.i: ; preds = %bb.cp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit203.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit203.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i199.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !824
  %i.pc = icmp eq ptr %i.oc, %i.mw
  br i1 %i.pc, label %._crit_edge325.i, label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !824
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit277.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit260.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit231.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEECs4RW8js5ES7g_4fish.exit.i
  %.sroa.10.0 = phi i32 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEECs4RW8js5ES7g_4fish.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit231.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit260.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit277.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.ct, !noalias !826

bb.ct:                                            ; preds = %bb.cs
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %.body204.i unwind label %bb.cu, !noalias !826

bb.cu:                                            ; preds = %bb.ct
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i.i: ; preds = %bb.cs
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i unwind label %bb.gm, !noalias !826

bb.cv:                                            ; preds = %bb.x
  %i.pf = load i64, ptr %i.ik, align 8, !noalias !824
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jk, i64 noundef %i.pf)
          to label %bb.cw unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !824
  %i.pg = load i64, ptr %i.hp, align 8, !range !9, !alias.scope !847, !noundef !8
  %i.ph = icmp eq i64 %i.pg, -1
  br i1 %i.ph, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit212.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i208.i unwind label %bb.cy, !noalias !826

bb.cy:                                            ; preds = %bb.cx
  %i.pi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %.body209.i unwind label %bb.cz, !noalias !826

bb.cz:                                            ; preds = %bb.cy
  %i.pj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i208.i: ; preds = %bb.cx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit212.i unwind label %bb.da, !noalias !826

bb.da:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i208.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body209.i

.body209.i:                                       ; preds = %bb.da, %bb.cy
  %eh.lpad-body210.i = phi { ptr, i32 } [ %i.pk, %bb.da ], [ %i.pi, %bb.cy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !noalias !840
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit212.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i208.i, %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %.backedge

bb.db:                                            ; preds = %bb.y
  %i.pl = load i64, ptr %i.ik, align 8, !noalias !824
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jl, i64 noundef %i.pl)
          to label %bb.dc unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

.invoke.i:                                        ; preds = %bb.y, %bb.x, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.pm = phi ptr [ @60, %bb.x ], [ @55, %bb.p ], [ @54, %bb.o ], [ @51, %bb.n ], [ @50, %bb.m ], [ @49, %bb.l ], [ @61, %bb.y ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pm) #23
          to label %.cont.i unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !824
  %i.pn = load i64, ptr %i.hq, align 8, !range !9, !alias.scope !848, !noundef !8
  %i.po = icmp eq i64 %i.pn, -1
  br i1 %i.po, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit218.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i214.i unwind label %bb.de, !noalias !826

bb.de:                                            ; preds = %bb.dd
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %.body215.i unwind label %bb.df, !noalias !826

bb.df:                                            ; preds = %bb.de
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i214.i: ; preds = %bb.dd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit218.i unwind label %bb.dg, !noalias !826

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i214.i
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body215.i

.body215.i:                                       ; preds = %bb.dg, %bb.de
  %eh.lpad-body216.i = phi { ptr, i32 } [ %i.pr, %bb.dg ], [ %i.pp, %bb.de ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !840
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit218.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i214.i, %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  invoke void @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool5store(ptr noundef nonnull @_RNvNtCs8frGy5WneL6_4fish6common16PROFILING_ACTIVE, i1 noundef zeroext true)
          to label %.backedge unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

.backedge:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit218.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit212.i, %bb.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit189.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEECs4RW8js5ES7g_4fish.exit174.i, %bb.aq, %bb.ak, %bb.z, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.i
  br label %bb.h

.body223.i:                                       ; preds = %bb.dp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit220.i, %bb.dh
  %.pn136.i = phi { ptr, i32 } [ %.pn134.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit220.i ], [ %i.ps, %bb.dh ], [ %i.qf, %bb.dp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.co) #19
          to label %.body.i unwind label %bb.bf, !noalias !826

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i, %bb.aa
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %.body223.i

bb.di:                                            ; preds = %bb.aa
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !noalias !824, !nonnull !8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !noalias !824
  store i64 0, ptr %i.cm, align 8, !noalias !824
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.pu, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.pw, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !824
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.cm, i64 noundef 1)
          to label %bb.dk unwind label %bb.dj, !noalias !826

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %i.px = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit220.i unwind label %bb.bf, !noalias !826

bb.dk:                                            ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.py = load i8, ptr %i.cn, align 8, !range !17, !alias.scope !849, !noalias !824, !noundef !8
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.dl, label %bb.dm, !prof !15

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !850
  %i.qa = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !range !18, !alias.scope !849, !noalias !824, !noundef !8
  store i8 %i.qb, ptr %i.bn, align 1, !noalias !850
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #24
          to label %.noexc163.i unwind label %bb.dj, !noalias !851

.noexc163.i:                                      ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit222.i unwind label %bb.dn, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit220.i: ; preds = %bb.dn, %bb.dj
  %.pn134.i = phi { ptr, i32 } [ %i.qc, %bb.dn ], [ %i.px, %bb.dj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cl) #19
          to label %.body223.i unwind label %bb.bf, !noalias !826

bb.dn:                                            ; preds = %bb.dm
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit220.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit222.i: ; preds = %bb.dm
  %i.qd = load i64, ptr %i.cl, align 8, !range !9, !alias.scope !852, !noalias !824, !noundef !8
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i, label %bb.do

bb.do:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit222.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.dp, !noalias !826

bb.dp:                                            ; preds = %bb.do
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %.body223.i unwind label %bb.dq, !noalias !826

end_hunk_1
begin_hunk_2_@_RNvCs4RW8js5ES7g_4fish13throwing_main:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = load i64, ptr %i.uf, align 8, !alias.scope !822, !noundef !8
  store i64 1, ptr %i.bu, align 8, !noalias !824
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.ue, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !824
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.ug, ptr %.sroa.572.0..sroa_idx.i, align 8, !noalias !824
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.tw, i64 noundef %i.tx, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef 1)
          to label %bb.fw unwind label %bb.fv, !noalias !826

bb.fu:                                            ; preds = %bb.fr
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.tz, i64 noundef range(i64 0, 384307168202282326) %i.ib, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #23
          to label %bb.af unwind label %bb.fp, !noalias !826

bb.fv:                                            ; preds = %bb.fx, %bb.ft
  %i.uh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit262.i unwind label %bb.bf, !noalias !826

bb.fw:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.ui = load i8, ptr %i.bv, align 8, !range !17, !alias.scope !875, !noalias !824, !noundef !8
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.fx, label %bb.fy, !prof !15

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !876
  %i.uk = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ul = load i8, ptr %i.uk, align 1, !range !18, !alias.scope !875, !noalias !824, !noundef !8
  store i8 %i.ul, ptr %i.bq, align 1, !noalias !876
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #24
          to label %.noexc.i unwind label %bb.fv, !noalias !877

.noexc.i:                                         ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit264.i unwind label %bb.fp, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit264.i: ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !824
  %i.um = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.un = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.uo = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store ptr null, ptr %i.uo, align 8, !noalias !824
  %i.up = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store ptr null, ptr %i.up, align 8, !noalias !824
  %i.uq = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store i8 0, ptr %i.uq, align 8, !noalias !824
  store ptr @69, ptr %i.um, align 8, !noalias !824
  store i64 4, ptr %i.un, align 8, !noalias !824
  invoke void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgcECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bx, i32 noundef 10)
          to label %bb.fz unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.fz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit264.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !824
  %i.ur = invoke { i32, i1 } @_RNvMsd_NtCs8frGy5WneL6_4fish2ioNtB5_14FdOutputStream3new(i32 noundef 2)
          to label %bb.gb unwind label %bb.ga, !noalias !826 ; 2 uses

.body268.i:                                       ; preds = %bb.gh, %bb.gc, %bb.ga
  %.pn.i = phi { ptr, i32 } [ %i.uy, %bb.gc ], [ %i.us, %bb.ga ], [ %i.vh, %bb.gh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(72) %i.by) #19
          to label %.body.i unwind label %bb.bf, !noalias !826

bb.ga:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamECs4RW8js5ES7g_4fish.exit.i266.i, %bb.gf, %bb.fz
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.body268.i

bb.gb:                                            ; preds = %bb.fz
  %i.ut = extractvalue { i32, i1 } %i.ur, 0
  %i.uu = extractvalue { i32, i1 } %i.ur, 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store i32 %i.ut, ptr %i.uv, align 8, !noalias !824
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.ux = zext i1 %i.uu to i8
  store i8 %i.ux, ptr %i.uw, align 4, !noalias !824
  store i64 -9223372036854775807, ptr %i.bt, align 8, !noalias !824
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error8write_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.gd unwind label %bb.gc, !noalias !826

bb.gc:                                            ; preds = %bb.gb
  %i.uy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #19
          to label %.body268.i unwind label %bb.bf, !noalias !826

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.uz = load i64, ptr %i.bt, align 8, !range !10, !alias.scope !878, !noalias !824, !noundef !8 ; 3 uses
  %i.va = icmp ne i64 %i.uz, -9223372036854775806
  call void @llvm.assume(i1 %i.va)
  %i.vb = xor i64 %i.uz, -9223372036854775808
  %i.vc = icmp slt i64 %i.uz, 0
  %i.vd = select i1 %i.vc, i64 %i.vb, i64 2
  switch i64 %i.vd, label %bb.ge [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i
    i64 2, label %bb.gg
  ]

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.ve = load ptr, ptr %i.uv, align 8, !alias.scope !883, !noalias !824, !nonnull !8, !noundef !8
  %i.vf = atomicrmw add ptr %i.ve, i64 -1 release, align 8, !noalias !884
  %i.vg = icmp eq i64 %i.vf, 1
  br i1 %i.vg, label %bb.gf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i

bb.gf:                                            ; preds = %bb.ge
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uv) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i unwind label %bb.ga, !noalias !826

bb.gg:                                            ; preds = %bb.gd
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamECs4RW8js5ES7g_4fish.exit.i266.i unwind label %bb.gh, !noalias !826

bb.gh:                                            ; preds = %bb.gg
  %i.vh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body268.i unwind label %bb.gi, !noalias !826

bb.gi:                                            ; preds = %bb.gh
  %i.vi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamECs4RW8js5ES7g_4fish.exit.i266.i: ; preds = %bb.gg
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i unwind label %bb.ga, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamECs4RW8js5ES7g_4fish.exit.i266.i, %bb.gf, %bb.ge, %bb.gd, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !824
  %i.vj = load i64, ptr %i.by, align 8, !range !9, !alias.scope !885, !noalias !824, !noundef !8
  %i.vk = icmp eq i64 %i.vj, -1
  br i1 %i.vk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit277.i, label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i273.i unwind label %bb.gk, !noalias !826

bb.gk:                                            ; preds = %bb.gj
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by)
          to label %.body.i unwind label %bb.gl, !noalias !826

bb.gl:                                            ; preds = %bb.gk
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i273.i: ; preds = %bb.gj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit277.i unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish.exit277.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i.i273.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamECs4RW8js5ES7g_4fish.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !824
  br label %bb.cs

.body204.i:                                       ; preds = %bb.gt, %bb.gm, %bb.ct, %.body.i
  %.pn156.pn.i = phi { ptr, i32 } [ %.pn156.i, %.body.i ], [ %i.pd, %bb.ct ], [ %i.vn, %bb.gm ], [ %i.vz, %bb.gt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dn) #19
          to label %.body267 unwind label %bb.bf, !noalias !826

bb.gm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i279.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i.i
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %.body204.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !824
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i unwind label %bb.gn, !noalias !826

bb.gn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i
  %i.vo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %.body267 unwind label %bb.go, !noalias !826

bb.go:                                            ; preds = %bb.gn
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i
  %.sroa.16.0 = phi i64 [ %i.jd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i ] ; 13 uses
  %.sroa.10.1 = phi i32 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i ], [ %.sroa.10.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i ] ; 2 uses
  %.sroa.0.1544 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit.i ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.hc unwind label %bb.hb, !noalias !826

bb.gp:                                            ; preds = %bb.j
  %i.vq = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hz, i64 noundef 0)
          to label %bb.gr unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.gq:                                            ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #23
          to label %bb.af unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.gr:                                            ; preds = %bb.gp
  %i.vr = icmp eq i32 %i.vq, 45
  %i.vs = load i8, ptr %i.hw, align 1, !range !17, !alias.scope !823, !noundef !8
  %i.vt = zext i1 %i.vr to i8
  %i.vu = or i8 %i.vs, %i.vt
  store i8 %i.vu, ptr %i.hw, align 1, !alias.scope !823
  %i.vv = load i64, ptr %.sroa.583.0..sroa_idx, align 8, !alias.scope !823, !noundef !8 ; 2 uses
  %i.vw = icmp ult i64 %i.vv, 384307168202282326
  call void @llvm.assume(i1 %i.vw)
  %i.vx = icmp eq i64 %i.vv, 0
  %i.vy = icmp eq i64 %i.jd, %i.ib
  %or.cond.i = and i1 %i.vy, %i.vx
  br i1 %or.cond.i, label %bb.gv, label %bb.gs

bb.gs:                                            ; preds = %bb.gx, %bb.gw, %bb.gr
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i279.i unwind label %bb.gt, !noalias !826

bb.gt:                                            ; preds = %bb.gs
  %i.vz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %.body204.i unwind label %bb.gu, !noalias !826

bb.gu:                                            ; preds = %bb.gt
  %i.wa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i279.i: ; preds = %bb.gs
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i unwind label %bb.gm, !noalias !826

bb.gv:                                            ; preds = %bb.gr
  %i.wb = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef 0)
          to label %bb.gw unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

bb.gw:                                            ; preds = %bb.gv
  br i1 %i.wb, label %bb.gx, label %bb.gs

bb.gx:                                            ; preds = %bb.gw
  invoke void @_RNvNtCs8frGy5WneL6_4fish4proc23set_interactive_session(i1 noundef zeroext true)
          to label %bb.gs unwind label %.loopexit.split-lp300.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !826

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs4RW8js5ES7g_4fish.exit.i279.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !824
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i unwind label %bb.gy, !noalias !826

bb.gy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs4RW8js5ES7g_4fish.exit283.i
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %.body267 unwind label %bb.gz, !noalias !826

bb.gz:                                            ; preds = %bb.gy
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !826
  unreachable

bb.ha:                                            ; preds = %bb.un, %bb.to, %bb.se, %bb.lb, %bb.ku, %bb.ij, %bb.hx, %.body303, %.body424, %bb.abu, %bb.abt, %bb.abs, %bb.abr, %bb.abq, %bb.abn, %.body525, %.body519, %.body324, %.body513, %bb.aad, %bb.zz, %.body500, %.body496, %.body491, %.body485, %bb.vu, %bb.vb, %bb.ur, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit428, %bb.ua, %.body410, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit401, %.body405, %.body416, %bb.sn, %bb.sk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit385, %bb.sa, %bb.rs, %bb.rm, %bb.rk, %bb.qu, %bb.nw, %.body357, %bb.kr, %bb.jp, %.body332, %bb.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit294, %.body289, %bb.ic, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit, %bb.ho, %.body267, %bb.c
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body267:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarECs4RW8js5ES7g_4fish.exit345, %bb.ku, %bb.jz, %bb.iw, %bb.hu, %bb.gy, %bb.gn, %.body204.i, %bb.hb, %bb.kr, %.body332, %bb.ho, %.body275
  %.sroa.072.0 = phi i1 [ true, %.body275 ], [ true, %bb.ho ], [ true, %bb.jz ], [ true, %bb.kr ], [ true, %.body332 ], [ true, %.body204.i ], [ true, %bb.gy ], [ true, %bb.gn ], [ true, %bb.iw ], [ true, %bb.hu ], [ %.sroa.072.1, %bb.hb ], [ %.sroa.072.2, %bb.ku ], [ %.sroa.072.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarECs4RW8js5ES7g_4fish.exit345 ]
  %.sroa.068.0 = phi i8 [ 1, %.body275 ], [ 0, %bb.ho ], [ %.sroa.068.3, %bb.jz ], [ %.sroa.068.3, %bb.kr ], [ %.sroa.068.3, %.body332 ], [ 1, %.body204.i ], [ 1, %bb.gy ], [ 1, %bb.gn ], [ 0, %bb.iw ], [ 0, %bb.hu ], [ %.sroa.068.1, %bb.hb ], [ %.sroa.068.3, %bb.ku ], [ %.sroa.068.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarECs4RW8js5ES7g_4fish.exit345 ]
  %.pn231 = phi { ptr, i32 } [ %eh.lpad-body276, %.body275 ], [ %.pn229, %bb.ho ], [ %i.aba, %bb.jz ], [ %i.abo, %bb.kr ], [ %.pn, %.body332 ], [ %.pn156.pn.i, %.body204.i ], [ %i.wc, %bb.gy ], [ %i.vo, %bb.gn ], [ %i.yk, %bb.iw ], [ %i.wz, %bb.hu ], [ %i.wf, %bb.hb ], [ %.pn218.pn, %bb.ku ], [ %.pn218.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarECs4RW8js5ES7g_4fish.exit345 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gz) #19
          to label %bb.abo unwind label %bb.ha

bb.hb:                                            ; preds = %bb.aat, %bb.zh, %bb.ka, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i, %bb.g, %bb.ko, %bb.kn, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kf, %bb.kd, %bb.hh
  %.sroa.072.1 = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308 ], [ true, %bb.aat ], [ %.not212, %bb.zh ], [ true, %bb.ko ], [ true, %bb.kn ], [ true, %bb.ki ], [ true, %bb.kk ], [ true, %bb.kj ], [ true, %bb.kh ], [ true, %bb.kf ], [ true, %bb.kd ], [ true, %bb.ka ], [ true, %bb.g ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i ], [ true, %bb.hh ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i ]
  %.sroa.068.1 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308 ], [ %.sroa.068.3, %bb.aat ], [ %.sroa.068.3, %bb.zh ], [ %.sroa.068.3, %bb.ko ], [ %.sroa.068.3, %bb.kn ], [ %.sroa.068.3, %bb.ki ], [ %.sroa.068.3, %bb.kk ], [ %.sroa.068.3, %bb.kj ], [ %.sroa.068.3, %bb.kh ], [ %.sroa.068.3, %bb.kf ], [ %.sroa.068.3, %bb.kd ], [ %.sroa.068.3, %bb.ka ], [ 1, %bb.g ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i ], [ 1, %bb.hh ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i ]
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %.body267

bb.hc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs4RW8js5ES7g_4fish.exit285.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br i1 %.sroa.0.1544, label %bb.hd, label %bb.hg

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.wg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %.body271 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.wh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.hd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274 unwind label %bb.ja

bb.hg:                                            ; preds = %bb.hc
  %i.wi = load i64, ptr %i.ho, align 8, !range !9, !noundef !8
  %.not168 = icmp eq i64 %i.wi, -1
  br i1 %.not168, label %bb.hh, label %.thread

.noexc277:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i, %bb.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy)
  %.pr = load i64, ptr %i.ho, align 8
  %.not169 = icmp eq i64 %.pr, -1
  br i1 %.not169, label %bb.hn, label %.thread

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 17)
          to label %bb.hi unwind label %bb.hb

bb.hi:                                            ; preds = %bb.hh
  %i.wj = load i64, ptr %i.ho, align 8, !range !9, !alias.scope !886, !noundef !8
  %i.wk = icmp eq i64 %i.wj, -1
  br i1 %i.wk, label %.noexc277, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.wl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %.body275 unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.wm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.hj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %.noexc277 unwind label %bb.hm

bb.hm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.body275

.body275:                                         ; preds = %bb.hk, %bb.hm
  %eh.lpad-body276 = phi { ptr, i32 } [ %i.wn, %bb.hm ], [ %i.wl, %bb.hk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false)
  br label %.body267

.thread:                                          ; preds = %bb.hg, %.noexc277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  store i128 79537652246452167413109620736, ptr %i.gv, align 16
  invoke void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtNtB8_3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.gv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gx)
          to label %bb.hq unwind label %bb.hp

bb.hn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit, %.noexc277
  %.sroa.068.3 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit ], [ 1, %.noexc277 ] ; 18 uses
  %i.wo = load i8, ptr %i.hx, align 4, !range !17, !noundef !8
  %i.wp = trunc nuw i8 %i.wo to i1
  %i.wq = load i8, ptr %i.hv, align 2, !range !17 ; 2 uses
  %i.wr = trunc nuw i8 %i.wq to i1
  %or.cond = select i1 %i.wp, i1 %i.wr, i1 false
  br i1 %or.cond, label %bb.jf, label %bb.je

bb.ho:                                            ; preds = %.body303, %bb.hp
  %.pn229 = phi { ptr, i32 } [ %i.ws, %bb.hp ], [ %.pn227, %.body303 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gx) #19
          to label %.body267 unwind label %bb.ha

bb.hp:                                            ; preds = %bb.iu, %bb.hs, %.thread
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hq:                                            ; preds = %.thread
  %i.wt = load i32, ptr %i.gw, align 8, !range !12, !noundef !8
  %i.wu = trunc nuw i32 %i.wt to i1
  br i1 %i.wu, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  %i.wv = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.ww, ptr %i.gu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr)
  store ptr %i.gx, ptr %i.gr, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.497.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gs, ptr noundef nonnull @2, ptr noundef nonnull %i.gr)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4RW8js5ES7g_4fish.exit unwind label %bb.hw

bb.hs:                                            ; preds = %bb.hq
  %i.wx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.wy = load i32, ptr %i.wx, align 4, !range !887, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog16set_flog_file_fd(i32 noundef %i.wy)
          to label %bb.ht unwind label %bb.hp

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.wz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %.body267 unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.ht
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit unwind label %bb.hb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx)
  br label %bb.hn

.body303:                                         ; preds = %bb.ir, %bb.hw, %.body289
  %.pn227 = phi { ptr, i32 } [ %.pn225, %.body289 ], [ %i.xb, %bb.hw ], [ %i.yb, %bb.ir ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4RW8js5ES7g_4fish(ptr nonnull %i.ww) #19
          to label %bb.ho unwind label %bb.ha

bb.hw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i, %bb.hr
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %.body303

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4RW8js5ES7g_4fish.exit: ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  store i64 0, ptr %i.gp, align 8
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.3102.0..sroa_idx, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 0, ptr %.sroa.4105.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !nonnull !8, !noundef !8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.xf = load i64, ptr %i.xe, align 8, !noundef !8
  store i64 0, ptr %i.gn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.xd, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %i.xf, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.go, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 23, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.gn, i64 noundef 1)
          to label %bb.hy unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4RW8js5ES7g_4fish.exit
  %i.xg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit unwind label %bb.ha

bb.hy:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs4RW8js5ES7g_4fish.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.xh = load i8, ptr %i.go, align 8, !range !17, !alias.scope !888, !noundef !8
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %bb.hz, label %bb.ia, !prof !15

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !889
  %i.xj = getelementptr inbounds nuw i8, ptr %i.go, i64 1
end_hunk_2
begin_hunk_3_@_RNvCs4RW8js5ES7g_4fish13throwing_main:bb.a
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.3102.0..sroa_idx103, align 8
  %.sroa.4105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 0, ptr %.sroa.4105.0..sroa_idx106, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  invoke void @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf3argRNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_5ToArg6to_arg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gu)
          to label %bb.ii unwind label %bb.ih

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit294: ; preds = %bb.ij, %bb.ih
  %.pn223 = phi { ptr, i32 } [ %i.xr, %bb.ih ], [ %i.xs, %bb.ij ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gl) #19
          to label %.body289 unwind label %bb.ha

bb.ih:                                            ; preds = %bb.im, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit292
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit294

bb.ii:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.gk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @4, ptr noalias nofree noundef nonnull align 8 %i.gj, i64 noundef 1)
          to label %bb.ik unwind label %bb.ij

bb.ij:                                            ; preds = %bb.il, %bb.ii
  %i.xs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit294 unwind label %bb.ha

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.xt = load i8, ptr %i.gk, align 8, !range !17, !alias.scope !890, !noundef !8
  %i.xu = trunc nuw i8 %i.xt to i1
  br i1 %i.xu, label %bb.il, label %bb.im, !prof !15

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !891
  %i.xv = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.xw = load i8, ptr %i.xv, align 1, !range !18, !alias.scope !890, !noundef !8
  store i8 %i.xw, ptr %i.dp, align 1, !noalias !891
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
          to label %.noexc250 unwind label %bb.ij, !noalias !890

.noexc250:                                        ; preds = %bb.il
  unreachable

bb.im:                                            ; preds = %bb.ik
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit296 unwind label %bb.ih

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit296: ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl)
  %i.xx = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gm, i32 noundef 2)
          to label %bb.io unwind label %bb.in     ; 0 uses

bb.in:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit296
  %i.xy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gm) #19
          to label %.body289 unwind label %bb.ha

bb.io:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs4RW8js5ES7g_4fish.exit296
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i298 unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.xz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %.body289 unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ya = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i298: ; preds = %bb.io
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit302 unwind label %bb.ig

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit302: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.ir

bb.ir:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit302
  %i.yb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %.body303 unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.yc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit302
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.hw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.yd = ptrtoint ptr %i.ww to i64               ; 2 uses
  %i.ye = and i64 %i.yd, 3
  switch i64 %i.ye, label %default.unreachable [
    i64 2, label %bb.iv
    i64 3, label %bb.it
    i64 0, label %bb.iv
    i64 1, label %bb.iu
  ], !prof !13

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit436, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  unreachable

bb.it:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  %i.yf = icmp ult ptr %i.ww, inttoptr (i64 188978561024 to ptr)
  %i.yg = and i64 %i.yd, 1095216660480
  %i.yh = icmp ne i64 %i.yg, 1095216660480
  call void @llvm.assume(i1 %i.yf)
  call void @llvm.assume(i1 %i.yh)
  br label %bb.iv

bb.iu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  %i.yi = getelementptr i8, ptr %i.ww, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yi) ]
  %i.yj = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.yi, ptr %i.yj, align 8, !alias.scope !892
  store i8 3, ptr %i.bk, align 8, !alias.scope !892
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yj)
          to label %bb.iv unwind label %bb.hp

bb.iv:                                            ; preds = %bb.it, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308 unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.yk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %.body267 unwind label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308: ; preds = %bb.iv
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit314 unwind label %bb.hb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit314: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316 unwind label %bb.iy

bb.iy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit314
  %i.ym = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %.body513 unwind label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.yn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit314
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321 unwind label %bb.ja

bb.ja:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510
  %.sroa.068.4 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316 ], [ %.sroa.068.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510 ]
  %i.yo = landingpad { ptr, i32 }
          cleanup
  %i.yp = trunc nuw i8 %.sroa.068.4 to i1
  br label %.body271

.body271:                                         ; preds = %bb.ja, %bb.he
  %.sroa.068.4.lpad-body = phi i1 [ true, %bb.he ], [ %i.yp, %bb.ja ]
  %eh.lpad-body272 = phi { ptr, i32 } [ %i.wg, %bb.he ], [ %i.yo, %bb.ja ] ; 2 uses
  %i.yq = load i64, ptr %i.ho, align 8, !range !9, !noundef !8
  %i.yr = icmp ne i64 %i.yq, -1
  %or.cond15 = select i1 %i.yr, i1 %.sroa.068.4.lpad-body, i1 false
  br i1 %or.cond15, label %bb.abn, label %.body513

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i512, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274, %bb.aau
  %.sroa.0.0 = phi i32 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i316 ], [ %.sroa.10.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274 ], [ 1, %bb.aau ], [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i512 ]
  %i.ys = load i64, ptr %i.hp, align 8, !range !9, !alias.scope !893, !noundef !8
  %i.yt = icmp eq i64 %i.ys, -1
  br i1 %i.yt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit327, label %bb.jb

bb.jb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i323 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %.body324 unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i323: ; preds = %bb.jb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit327 unwind label %bb.aaz

bb.je:                                            ; preds = %bb.jg, %bb.hn
  %i.yw = phi i8 [ 0, %bb.jg ], [ %i.wq, %bb.hn ]
  %i.yx = load i8, ptr %i.hw, align 1, !range !17, !noundef !8
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %bb.kd, label %bb.kc

bb.jf:                                            ; preds = %bb.hn
  %i.yz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 40) monotonic, align 8
  %.not170 = icmp eq i8 %i.yz, 0
  br i1 %.not170, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit, %bb.jf
  store i8 0, ptr %i.hv, align 2
  br label %bb.je

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  store i64 0, ptr %i.gh, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.za, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 6 uses
  store i64 0, ptr %i.zb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 24))
          to label %bb.jj unwind label %bb.ji

.body332:                                         ; preds = %bb.ju, %bb.ji, %bb.jp
  %.pn = phi { ptr, i32 } [ %i.aab, %bb.jp ], [ %i.zc, %bb.ji ], [ %i.aar, %bb.ju ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gh) #19
          to label %.body267 unwind label %bb.ha

bb.ji:                                            ; preds = %bb.jw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i331, %bb.jn, %bb.jl, %bb.jx, %bb.jj, %bb.jh
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %.body332

bb.jj:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.zf = load i64, ptr %i.gg, align 8, !range !16, !noundef !8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.zh = load i64, ptr %i.zg, align 8, !noundef !8 ; 2 uses
  %i.zi = icmp sgt i64 %i.zh, -1
  call void @llvm.assume(i1 %i.zi)
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ze, i64 %i.zh
  store ptr %i.ze, ptr %i.eg, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %i.zf, ptr %i.zk, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ze, ptr %i.zl, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.zj, ptr %i.zm, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.eg)
          to label %bb.jk unwind label %bb.ji

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  %i.zn = load i64, ptr %i.zb, align 8, !alias.scope !894, !noundef !8 ; 4 uses
  %i.zo = load i64, ptr %i.gh, align 8, !range !16, !alias.scope !894, !noundef !8
  %i.zp = icmp eq i64 %i.zn, %i.zo
  br i1 %i.zp, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh) #21
          to label %bb.jm unwind label %bb.ji

bb.jm:                                            ; preds = %bb.jk, %bb.jl
  %i.zq = load ptr, ptr %i.za, align 8, !alias.scope !894, !nonnull !8, !noundef !8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zn
  store i8 58, ptr %i.zr, align 1
  %i.zs = add i64 %i.zn, 1                        ; 3 uses
  store i64 %i.zs, ptr %i.zb, align 8, !alias.scope !894
  %i.zt = load i64, ptr %i.gh, align 8, !range !16, !alias.scope !895, !noundef !8
  %i.zu = icmp eq i64 %i.zs, %i.zt
  br i1 %i.zu, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh) #21
          to label %bb.jo unwind label %bb.ji

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %i.zv = load ptr, ptr %i.za, align 8, !alias.scope !895, !nonnull !8, !noundef !8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zs
  store i8 32, ptr %i.zw, align 1
  %i.zx = add i64 %i.zn, 2
  store i64 %i.zx, ptr %i.zb, align 8, !alias.scope !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr @9, ptr %i.zy, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 67, ptr %i.zz, align 8
  store i64 -1, ptr %i.gd, align 8
  %i.aaa = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gd)
          to label %bb.jq unwind label %bb.jp     ; 2 uses

bb.jp:                                            ; preds = %bb.jr, %bb.jq, %bb.jo
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gd) #19
          to label %.body332 unwind label %bb.ha

bb.jq:                                            ; preds = %bb.jo
  %i.aac = extractvalue { ptr, i64 } %i.aaa, 0
  %i.aad = extractvalue { ptr, i64 } %i.aaa, 1
  store ptr %i.aac, ptr %i.ge, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 %i.aad, ptr %i.aae, align 8
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ge)
          to label %bb.jr unwind label %bb.jp

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.aah = load i64, ptr %i.gf, align 8, !range !16, !noundef !8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.aaj = load i64, ptr %i.aai, align 8, !noundef !8 ; 2 uses
  %i.aak = icmp sgt i64 %i.aaj, -1
  call void @llvm.assume(i1 %i.aak)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aaj
  store ptr %i.aag, ptr %i.ef, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.aah, ptr %i.aam, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.aag, ptr %i.aan, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.aal, ptr %i.aao, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ef)
          to label %bb.js unwind label %bb.jp

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %i.aap = load i64, ptr %i.gd, align 8, !range !9, !alias.scope !896, !noundef !8
  %i.aaq = icmp eq i64 %i.aap, -1
  br i1 %i.aaq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish.exit, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i331 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %.body332 unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aas = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i331: ; preds = %bb.jt
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish.exit unwind label %bb.ji

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.js, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %i.aat = load i64, ptr %i.zb, align 8, !alias.scope !897, !noundef !8 ; 3 uses
  %i.aau = load i64, ptr %i.gh, align 8, !range !16, !alias.scope !897, !noundef !8
  %i.aav = icmp eq i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gh) #21
          to label %bb.jx unwind label %bb.ji

bb.jx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringECs4RW8js5ES7g_4fish.exit, %bb.jw
  %i.aaw = load ptr, ptr %i.za, align 8, !alias.scope !897, !nonnull !8, !noundef !8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aat
end_hunk_3
begin_hunk_4_@_RNvCs4RW8js5ES7g_4fish13throwing_main:bb.a
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  br label %.body500

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit502: ; preds = %bb.zu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit534 unwind label %bb.zx

bb.zx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit502
  %i.bbk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %common.resume unwind label %bb.zy

bb.zy:                                            ; preds = %bb.zx
  %i.bbl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit534: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit502, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit532
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit532 ], [ %i.avb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit502 ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  ret i32 %.sroa.0.1

bb.zz:                                            ; preds = %.thread554, %.thread550
  %.pn210553 = phi { ptr, i32 } [ %i.avp, %.thread550 ], [ %i.avn, %.thread554 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ek) #19
          to label %.body357 unwind label %bb.ha

bb.aaa:                                           ; preds = %bb.va
  %i.bbm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 40) monotonic, align 8
  %.not217 = icmp eq i8 %i.bbm, 0
  br i1 %.not217, label %bb.aab, label %bb.aac

bb.aab:                                           ; preds = %bb.aar, %bb.aaa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish6parser6ParserECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(432) %i.fx)
          to label %bb.aas unwind label %bb.kv

bb.aac:                                           ; preds = %bb.aaa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  store i64 0, ptr %i.fs, align 8
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bbn, align 8
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 6 uses
  store i64 0, ptr %i.bbo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 24))
          to label %bb.aae unwind label %bb.aad

bb.aad:                                           ; preds = %bb.aao, %bb.aai, %bb.aag, %bb.aap, %bb.aam, %bb.aal, %bb.aaj, %bb.aae, %bb.aac
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fs) #19
          to label %.body357 unwind label %bb.ha

bb.aae:                                           ; preds = %bb.aac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.bbr = load ptr, ptr %i.bbq, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.bbs = load i64, ptr %i.fr, align 8, !range !16, !noundef !8
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.bbu = load i64, ptr %i.bbt, align 8, !noundef !8 ; 2 uses
  %i.bbv = icmp sgt i64 %i.bbu, -1
  call void @llvm.assume(i1 %i.bbv)
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %i.bbu
  store ptr %i.bbr, ptr %i.ec, align 8
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.bbs, ptr %i.bbx, align 8
  %i.bby = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.bbr, ptr %i.bby, align 8
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.bbw, ptr %i.bbz, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ec)
          to label %bb.aaf unwind label %bb.aad

bb.aaf:                                           ; preds = %bb.aae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  %i.bca = load i64, ptr %i.bbo, align 8, !alias.scope !972, !noundef !8 ; 4 uses
  %i.bcb = load i64, ptr %i.fs, align 8, !range !16, !alias.scope !972, !noundef !8
  %i.bcc = icmp eq i64 %i.bca, %i.bcb
  br i1 %i.bcc, label %bb.aag, label %bb.aah

bb.aag:                                           ; preds = %bb.aaf
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #21
          to label %bb.aah unwind label %bb.aad

bb.aah:                                           ; preds = %bb.aaf, %bb.aag
  %i.bcd = load ptr, ptr %i.bbn, align 8, !alias.scope !972, !nonnull !8, !noundef !8
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 %i.bca
  store i8 58, ptr %i.bce, align 1
  %i.bcf = add i64 %i.bca, 1                      ; 3 uses
  store i64 %i.bcf, ptr %i.bbo, align 8, !alias.scope !972
  %i.bcg = load i64, ptr %i.fs, align 8, !range !16, !alias.scope !973, !noundef !8
  %i.bch = icmp eq i64 %i.bcf, %i.bcg
  br i1 %i.bch, label %bb.aai, label %bb.aaj

bb.aai:                                           ; preds = %bb.aah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #21
          to label %bb.aaj unwind label %bb.aad

bb.aaj:                                           ; preds = %bb.aah, %bb.aai
  %i.bci = load ptr, ptr %i.bbn, align 8, !alias.scope !973, !nonnull !8, !noundef !8
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 %i.bcf
  store i8 32, ptr %i.bcj, align 1
  %i.bck = add i64 %i.bca, 2
  store i64 %i.bck, ptr %i.bbo, align 8, !alias.scope !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, i64 noundef 52, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aak unwind label %bb.aad

bb.aak:                                           ; preds = %bb.aaj
  %i.bcl = load i64, ptr %i.eb, align 8, !range !19, !noundef !8
  %i.bcm = trunc nuw i64 %i.bcl to i1
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  br i1 %i.bcm, label %bb.aal, label %bb.aam, !prof !15

bb.aal:                                           ; preds = %bb.aak
  %i.bco = load i64, ptr %i.bcn, align 8, !range !20, !noundef !8
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.bcq = load i64, ptr %i.bcp, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bco, i64 %i.bcq) #23
          to label %bb.nj unwind label %bb.aad

bb.aam:                                           ; preds = %bb.aak
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.bcs = load ptr, ptr %i.bcr, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bct = load i64, ptr %i.bcn, align 8, !range !16, !noundef !8 ; 2 uses
  %i.bcu = icmp samesign ugt i64 %i.bct, 51
  call void @llvm.assume(i1 %i.bcu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.bcs, ptr noundef nonnull align 1 dereferenceable(52) @29, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcs, i64 52
  store ptr %i.bcs, ptr %i.ea, align 8
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 %i.bct, ptr %i.bcw, align 8
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.bcs, ptr %i.bcx, align 8
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.bcv, ptr %i.bcy, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ea)
          to label %bb.aan unwind label %bb.aad

bb.aan:                                           ; preds = %bb.aam
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.bcz = load i64, ptr %i.bbo, align 8, !alias.scope !974, !noundef !8 ; 3 uses
  %i.bda = load i64, ptr %i.fs, align 8, !range !16, !alias.scope !974, !noundef !8
  %i.bdb = icmp eq i64 %i.bcz, %i.bda
  br i1 %i.bdb, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %bb.aan
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #21
          to label %bb.aap unwind label %bb.aad

bb.aap:                                           ; preds = %bb.aan, %bb.aao
  %i.bdc = load ptr, ptr %i.bbn, align 8, !alias.scope !974, !nonnull !8, !noundef !8
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 %i.bcz
  store i8 10, ptr %i.bdd, align 1
  %i.bde = add i64 %i.bcz, 1                      ; 2 uses
  store i64 %i.bde, ptr %i.bbo, align 8, !alias.scope !974
  %i.bdf = load ptr, ptr %i.bbn, align 8, !nonnull !8, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdf, i64 noundef %i.bde)
          to label %bb.aaq unwind label %bb.aad

bb.aaq:                                           ; preds = %bb.aap
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fs)
          to label %bb.aar unwind label %bb.ni

bb.aar:                                           ; preds = %bb.aaq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  br label %bb.aab

bb.aas:                                           ; preds = %bb.aab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  %i.bdg = load i64, ptr %i.gc, align 8, !range !9, !alias.scope !975, !noundef !8
  %i.bdh = icmp eq i64 %i.bdg, -1
  br i1 %i.bdh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.gc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510 unwind label %bb.hb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510: ; preds = %bb.aas, %bb.aat
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gz)
          to label %bb.aau unwind label %bb.ja

bb.aau:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env12config_paths11ConfigPathsEECs4RW8js5ES7g_4fish.exit510
  %i.bdi = load i64, ptr %i.ho, align 8, !range !9, !noundef !8
  %i.bdj = icmp ne i64 %i.bdi, -1
  %i.bdk = trunc nuw i8 %.sroa.068.3 to i1
  %or.cond13 = and i1 %i.bdj, %i.bdk
  br i1 %or.cond13, label %bb.aav, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321

bb.aav:                                           ; preds = %bb.aau, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274
  %.sroa.0.2 = phi i32 [ %.sroa.10.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274 ], [ 1, %bb.aau ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i512 unwind label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %.body513 unwind label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  %i.bdm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i512: ; preds = %bb.aav
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321 unwind label %bb.aay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit274: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs4RW8js5ES7g_4fish.exit.i
  %i.bdn = load i64, ptr %i.ho, align 8, !range !9, !noundef !8
  %.not233 = icmp eq i64 %i.bdn, -1
  br i1 %.not233, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321, label %bb.aav

.body513:                                         ; preds = %bb.iy, %bb.aay, %bb.aaw, %bb.abn, %.body271
  %.pn234 = phi { ptr, i32 } [ %i.bdl, %bb.aaw ], [ %eh.lpad-body272, %bb.abn ], [ %eh.lpad-body272, %.body271 ], [ %i.bdo, %bb.aay ], [ %i.ym, %bb.iy ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hp) #19
          to label %.body324 unwind label %bb.ha

bb.aay:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs4RW8js5ES7g_4fish.exit.i512
  %i.bdo = landingpad { ptr, i32 }
          cleanup
  br label %.body513

.body324:                                         ; preds = %bb.aaz, %bb.jc, %.body513
  %.pn236 = phi { ptr, i32 } [ %.pn234, %.body513 ], [ %i.bdp, %bb.aaz ], [ %i.yu, %bb.jc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hq) #19
          to label %.body519 unwind label %bb.ha

bb.aaz:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i323
  %i.bdp = landingpad { ptr, i32 }
          cleanup
  br label %.body324

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit327: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish.exit321, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i323
  %i.bdq = load i64, ptr %i.hq, align 8, !range !9, !alias.scope !976, !noundef !8
  %i.bdr = icmp eq i64 %i.bdq, -1
  br i1 %i.bdr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit522, label %bb.aba

bb.aba:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit327
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i518 unwind label %bb.abb

bb.abb:                                           ; preds = %bb.aba
  %i.bds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %.body519 unwind label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.bdt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i518: ; preds = %bb.aba
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit522 unwind label %bb.abd

.body519:                                         ; preds = %bb.abd, %bb.abb, %.body324
  %.pn238 = phi { ptr, i32 } [ %.pn236, %.body324 ], [ %i.bdu, %bb.abd ], [ %i.bds, %bb.abb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hr) #19
          to label %.body525 unwind label %bb.ha

bb.abd:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i518
  %i.bdu = landingpad { ptr, i32 }
          cleanup
  br label %.body519

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit522: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit327, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish.exit.i518
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %bb.abf unwind label %bb.abe

bb.abe:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit522
  %i.bdv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %.body525 unwind label %bb.abg

bb.abf:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit522
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit527 unwind label %bb.abh

bb.abg:                                           ; preds = %bb.abe
  %i.bdw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body525:                                         ; preds = %bb.abh, %bb.abe, %.body519
  %.pn240 = phi { ptr, i32 } [ %.pn238, %.body519 ], [ %i.bdx, %bb.abh ], [ %i.bdv, %bb.abe ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hs) #19
          to label %.body500 unwind label %bb.ha

bb.abh:                                           ; preds = %bb.abf
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  br label %.body525

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit527: ; preds = %bb.abf
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %bb.abj unwind label %bb.abi

bb.abi:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit527
  %i.bdy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %.body500 unwind label %bb.abk

bb.abj:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit527
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit532 unwind label %bb.zw

bb.abk:                                           ; preds = %bb.abi
  %i.bdz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit532: ; preds = %bb.abj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs4RW8js5ES7g_4fish.exit534 unwind label %bb.abl

bb.abl:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish.exit532
  %i.bea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %common.resume unwind label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.beb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.abn:                                           ; preds = %.body271
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ho) #19
          to label %.body513 unwind label %bb.ha

bb.abo:                                           ; preds = %.body267
  %i.bec = load i64, ptr %i.ho, align 8, !range !9, !noundef !8
  %i.bed = icmp ne i64 %i.bec, -1
  %i.bee = trunc nuw i8 %.sroa.068.0 to i1
  %or.cond17 = select i1 %i.bed, i1 %i.bee, i1 false
  br i1 %or.cond17, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %bb.abq, %bb.abo
  %i.bef = load i64, ptr %i.hp, align 8, !range !9, !noundef !8
  %i.beg = icmp ne i64 %i.bef, -1
  %or.cond19 = and i1 %.sroa.072.0, %i.beg
  br i1 %or.cond19, label %bb.abs, label %bb.abr

bb.abq:                                           ; preds = %bb.abo
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ho) #19
          to label %bb.abp unwind label %bb.ha

bb.abr:                                           ; preds = %bb.abs, %bb.abp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hq) #19
          to label %bb.abt unwind label %bb.ha

bb.abs:                                           ; preds = %bb.abp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hp) #19
          to label %bb.abr unwind label %bb.ha

bb.abt:                                           ; preds = %bb.abr
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hr) #19
          to label %bb.abu unwind label %bb.ha

bb.abu:                                           ; preds = %bb.abt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hs) #19
          to label %.body500 unwind label %bb.ha
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i32 @_RNvCs4RW8js5ES7g_4fish16run_command_list(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [12 x i8], align 4                ; 3 uses
  %i.j = alloca [120 x i8], align 8               ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [96 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
end_hunk_4

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/lgamma_rD?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@__ocmlpriv_lgamma_r_impl_f64:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.sink.i29.i.i = phi double [ %i.ks, %bb.ac ], [ %i.kn, %bb.aa ]
  %i.kt = fneg double %.sink.i29.i.i
  %i.ku = tail call double @llvm.fma.f64(double %i.ib, double %i.kk, double %i.kt)
  br label %lgamma_neg_zeval.exit.i

bb.ae:                                            ; preds = %bb.o
  %i.kv = fcmp ogt double %0, -1.000000e+00
  br i1 %i.kv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.kw = fneg double %0
  %i.kx = tail call double @__ocml_log_f64(double noundef %i.kw) #5 ; 2 uses
  %i.ky = fneg double %i.kx
  %i.kz = fcmp ugt double %0, f0xBD10000000000000
  br i1 %i.kz, label %lgamma_neg_zeval.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.la = fadd double %0, 1.000000e+00
  %i.lb = tail call fastcc { double, i32 } @lgamma_pos(double noundef %i.la) #4
  %newret14 = extractvalue { double, i32 } %i.lb, 0
  %i.lc = fsub double %newret14, %i.kx
  br label %lgamma_neg_zeval.exit.i

bb.ah:                                            ; preds = %bb.ae
  %i.ld = tail call double @__ocml_sinpi_f64(double noundef %0) #5
  %i.le = fmul double %0, %i.ld                   ; 2 uses
  %i.lf = fcmp oeq double %i.le, 0.000000e+00
  br i1 %i.lf, label %lgamma_neg_zeval.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lg = tail call double @llvm.fabs.f64(double %i.le)
  %i.lh = fdiv double f0x400921FB54442D18, %i.lg
  %i.li = tail call double @__ocml_log_f64(double noundef %i.lh) #5
  %i.lj = fneg double %0
  %i.lk = tail call fastcc { double, i32 } @lgamma_pos(double noundef %i.lj) #4
  %newret18 = extractvalue { double, i32 } %i.lk, 0
  %i.ll = fsub double %i.li, %newret18
  br label %lgamma_neg_zeval.exit.i

lgamma_neg_zeval.exit.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ab, %lgamma_neg_zfeval.exit23.i.i, %bb.x, %lgamma_neg_zfeval.exit.i.i, %bb.u, %bb.s, %bb.n, %.thread.i, %bb.m, %bb.k
  %.1.i = phi double [ %i.ky, %bb.af ], [ +inf, %.thread.i ], [ +inf, %bb.ab ], [ +inf, %bb.k ], [ %i.cs, %bb.m ], [ %i.da, %bb.n ], [ +inf, %bb.s ], [ %i.gi, %lgamma_neg_zfeval.exit.i.i ], [ %i.hy, %bb.x ], [ %i.jc, %lgamma_neg_zfeval.exit23.i.i ], [ %i.ei, %bb.u ], [ %i.ku, %bb.ad ], [ %i.lc, %bb.ag ], [ %i.ll, %bb.ai ], [ +inf, %bb.ah ] ; 2 uses
  %i.lm = fcmp oeq double %0, %i.c
  %i.ln = select i1 %i.lm, i32 0, i32 %i.g        ; 2 uses
  %i.lo = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %lgamma_neg.exit, label %bb.aj

bb.aj:                                            ; preds = %lgamma_neg_zeval.exit.i
  %i.lq = tail call double @llvm.fabs.f64(double %0)
  %i.lr = fcmp oeq double %i.lq, +inf
  %i.ls = select i1 %i.lr, double +inf, double %.1.i
  %i.lt = fcmp uno double %0, 0.000000e+00
  %i.lu = select i1 %i.lt, i32 0, i32 %i.ln
  br label %lgamma_neg.exit

lgamma_neg.exit:                                  ; preds = %bb.aj, %lgamma_neg_zeval.exit.i, %bb.b
  %newret22.pn = phi double [ %newret22, %bb.b ], [ %.1.i, %lgamma_neg_zeval.exit.i ], [ %i.ls, %bb.aj ]
  %.sroa.3.0 = phi i32 [ 1, %bb.b ], [ %i.ln, %lgamma_neg_zeval.exit.i ], [ %i.lu, %bb.aj ]
  %oldret23.pn = insertvalue %struct.ret_t poison, double %newret22.pn, 0
  %.fca.1.insert = insertvalue %struct.ret_t %oldret23.pn, i32 %.sroa.3.0, 1
  ret %struct.ret_t %.fca.1.insert
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc { double, i32 } @lgamma_pos(double noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 3.906250e-03
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.fma.f64(double %0, double f0xBFCA8B9C17AA6149, double f0x3FD151322AC7D848)
  %i.c = tail call double @llvm.fma.f64(double %0, double %i.b, double f0xBFD9A4D55BEAB2D7)
  %i.d = tail call double @llvm.fma.f64(double %0, double %i.c, double f0x3FEA51A6625307D3)
  %i.e = tail call double @llvm.fma.f64(double %0, double %i.d, double f0xBFE2788CFC6FB619)
  %i.f = tail call double @__ocml_log_f64(double noundef %0) #5
  %i.g = fneg double %i.f
  %i.h = tail call double @llvm.fma.f64(double %0, double %i.e, double %i.g)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp olt double %0, 2.000000e+00
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp ugt double %0, f0x3FECCCCC00000000
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call double @__ocml_log_f64(double noundef %0) #5
  %i.l = fneg double %i.k                         ; 2 uses
  %i.m = fsub double 1.000000e+00, %0
  %i.n = fcmp olt double %0, f0x3FE7694400000000  ; 2 uses
  %i.o = fadd double %0, f0xBFDD8B618D5AF8FC
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = fcmp olt double %0, f0x3FCDA66100000000
  br i1 %i.q, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = fsub double 2.000000e+00, %0
  %i.s = fcmp olt double %0, f0x3FFBB4C300000000  ; 2 uses
  %i.t = fadd double %0, f0xBFF762D86356BE3F
  %i.u = select i1 %i.s, double %i.t, double %i.r
  %i.v = fcmp olt double %0, f0x3FF3B4C400000000
  %i.w = fadd double %0, -1.000000e+00
  br i1 %i.v, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0174 = phi double [ %i.l, %bb.e ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0173.in = phi i1 [ %i.n, %bb.e ], [ %i.s, %bb.f ]
  %.0 = phi double [ %i.p, %bb.e ], [ %i.u, %bb.f ] ; 6 uses
  %i.x = fmul double %.0, %.0                     ; 13 uses
  br i1 %.0173.in, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call double @llvm.fma.f64(double %i.x, double f0x3EFA7074428CFA52, double f0x3F2CF2ECED10E54D)
  %i.z = tail call double @llvm.fma.f64(double %i.x, double %i.y, double f0x3F538A94116F3F5D)
  %i.aa = tail call double @llvm.fma.f64(double %i.x, double %i.z, double f0x3F7E404FB68FEFE8)
  %i.ab = tail call double @llvm.fma.f64(double %i.x, double %i.aa, double f0x3FB13E001A5562A7)
  %i.ac = tail call double @llvm.fma.f64(double %i.x, double %i.ab, double f0x3FB3C467E37DB0C8)
  %i.ad = tail call double @llvm.fma.f64(double %i.x, double f0x3F07858E90A45837, double f0x3F1C5088987DFB07)
  %i.ae = tail call double @llvm.fma.f64(double %i.x, double %i.ad, double f0x3F40B6C689B99C00)
  %i.af = tail call double @llvm.fma.f64(double %i.x, double %i.ae, double f0x3F67ADD8CCB7926B)
  %i.ag = tail call double @llvm.fma.f64(double %i.x, double %i.af, double f0x3F951322AC92547B)
  %i.ah = tail call double @llvm.fma.f64(double %i.x, double %i.ag, double f0x3FD4A34CC4A60FAD)
  %i.ai = fmul double %i.x, %i.ah
  %i.aj = tail call double @llvm.fma.f64(double %.0, double %i.ac, double %i.ai)
  %i.ak = tail call double @llvm.fma.f64(double %.0, double -5.000000e-01, double %i.aj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = fmul double %.0, %i.x                   ; 13 uses
  %i.am = tail call double @llvm.fma.f64(double %i.al, double f0x3F34AF6D6C0EBBF7, double f0xBF56FE8EBF2D1AF1)
  %i.an = tail call double @llvm.fma.f64(double %i.al, double %i.am, double f0x3F78FCE0E370E344)
  %i.ao = tail call double @llvm.fma.f64(double %i.al, double %i.an, double f0xBFA0C9A8DF35B713)
  %i.ap = tail call double @llvm.fma.f64(double %i.al, double %i.ao, double f0x3FDEF72BC8EE38A2)
  %i.aq = tail call double @llvm.fma.f64(double %i.al, double f0xBF347F24ECC38C38, double f0x3F4CDF0CEF61A8E9)
  %i.ar = tail call double @llvm.fma.f64(double %i.al, double %i.aq, double f0xBF6E2EFFB3E914D7)
  %i.as = tail call double @llvm.fma.f64(double %i.al, double %i.ar, double f0x3F9266E7970AF9EC)
  %i.at = tail call double @llvm.fma.f64(double %i.al, double %i.as, double f0xBFC2E4278DC6C509)
  %i.au = tail call double @llvm.fma.f64(double %i.al, double f0x3F35FD3EE8C2D3F4, double f0xBF41A6109C73E0EC)
  %i.av = tail call double @llvm.fma.f64(double %i.al, double %i.au, double f0x3F6282D32E15C915)
  %i.aw = tail call double @llvm.fma.f64(double %i.al, double %i.av, double f0xBF851F9FBA91EC6A)
  %i.ax = tail call double @llvm.fma.f64(double %i.al, double %i.aw, double f0x3FB08B4294D5419B)
  %i.ay = tail call double @llvm.fma.f64(double %.0, double %i.ax, double %i.at)
  %i.az = fneg double %i.ay
  %i.ba = tail call double @llvm.fma.f64(double %i.al, double %i.az, double f0xBC50C7CAA48A971F)
  %i.bb = fneg double %i.ba
  %i.bc = tail call double @llvm.fma.f64(double %i.x, double %i.ap, double %i.bb)
  %i.bd = fadd double %i.bc, f0xBFBF19B9BCC38A42
  br label %bb.j

.thread:                                          ; preds = %bb.f, %bb.e
  %.0183 = phi double [ %i.w, %bb.f ], [ %0, %bb.e ] ; 12 uses
  %.0174182 = phi double [ 0.000000e+00, %bb.f ], [ %i.l, %bb.e ]
  %i.be = tail call double @llvm.fma.f64(double %.0183, double f0x3F8B678BBF2BAB09, double f0x3FCD4EAEF6010924)
  %i.bf = tail call double @llvm.fma.f64(double %.0183, double %i.be, double f0x3FEF497644EA8450)
  %i.bg = tail call double @llvm.fma.f64(double %.0183, double %i.bf, double f0x3FF7475CD119BD6F)
  %i.bh = tail call double @llvm.fma.f64(double %.0183, double %i.bg, double f0x3FE4401E8B005DFF)
  %i.bi = tail call double @llvm.fma.f64(double %.0183, double %i.bh, double f0xBFB3C467E37DB0C8)
  %i.bj = fmul double %.0183, %i.bi
  %i.bk = tail call double @llvm.fma.f64(double %.0183, double f0x3F6A5ABB57D0CF61, double f0x3FBAAE55D6537C88)
  %i.bl = tail call double @llvm.fma.f64(double %.0183, double %i.bk, double f0x3FE89DFBE45050AF)
  %i.bm = tail call double @llvm.fma.f64(double %.0183, double %i.bl, double f0x40010725A42B18F5)
  %i.bn = tail call double @llvm.fma.f64(double %.0183, double %i.bm, double f0x4003A5D7C2BD619C)
  %i.bo = tail call double @llvm.fma.f64(double %.0183, double %i.bn, double 1.000000e+00)
  %i.bp = fdiv double %i.bj, %i.bo
  %i.bq = tail call double @llvm.fma.f64(double %.0183, double -5.000000e-01, double %i.bp)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.h
  %.0174181 = phi double [ %.0174182, %.thread ], [ %.0174, %bb.h ], [ %.0174, %bb.i ]
  %.pn = phi double [ %i.bq, %.thread ], [ %i.ak, %bb.h ], [ %i.bd, %bb.i ]
  %.1 = fadd double %.0174181, %.pn
  br label %bb.p

bb.k:                                             ; preds = %bb.c
  %i.br = fcmp olt double %0, 8.000000e+00
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = fptosi double %0 to i32                 ; 3 uses
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = fsub double %0, %i.bt                   ; 16 uses
  %i.bv = tail call double @llvm.fma.f64(double %i.bu, double f0x3F00BFECDD17E945, double f0x3F5E26B67368F239)
  %i.bw = tail call double @llvm.fma.f64(double %i.bu, double %i.bv, double f0x3F9B481C7E939961)
  %i.bx = tail call double @llvm.fma.f64(double %i.bu, double %i.bw, double f0x3FC2BB9CBEE5F2F7)
  %i.by = tail call double @llvm.fma.f64(double %i.bu, double %i.bx, double f0x3FD4D98F4F139F59)
  %i.bz = tail call double @llvm.fma.f64(double %i.bu, double %i.by, double f0x3FCB848B36E20878)
  %i.ca = tail call double @llvm.fma.f64(double %i.bu, double %i.bz, double f0xBFB3C467E37DB0C8)
  %i.cb = fmul double %i.bu, %i.ca
  %i.cc = tail call double @llvm.fma.f64(double %i.bu, double f0x3EDEBAF7A5B38140, double f0x3F497DDACA41A95B)
  %i.cd = tail call double @llvm.fma.f64(double %i.bu, double %i.cc, double f0x3F9317EA742ED475)
  %i.ce = tail call double @llvm.fma.f64(double %i.bu, double %i.cd, double f0x3FC601EDCCFBDF27)
  %i.cf = tail call double @llvm.fma.f64(double %i.bu, double %i.ce, double f0x3FE71A1893D3DCDC)
  %i.cg = tail call double @llvm.fma.f64(double %i.bu, double %i.cf, double f0x3FF645A762C4AB74)
  %i.ch = tail call double @llvm.fma.f64(double %i.bu, double %i.cg, double 1.000000e+00)
  %i.ci = fdiv double %i.cb, %i.ch
  %i.cj = tail call double @llvm.fma.f64(double %i.bu, double 5.000000e-01, double %i.ci)
  %i.ck = fadd nnan double %i.bu, 2.000000e+00
  %1 = icmp sgt i32 %i.bs, 2
  %i.cl = insertelement <4 x double> poison, double %i.bu, i64 0
  %i.cm = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cn = fadd nnan <4 x double> %i.cm, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00>
  %i.co = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = icmp sgt <4 x i32> %i.cp, <i32 3, i32 4, i32 5, i32 6>
  %i.cr = select <4 x i1> %i.cq, <4 x double> %i.cn, <4 x double> splat (double 1.000000e+00) ; 4 uses
  %2 = extractelement <4 x double> %i.cr, i64 0
  %3 = fmul double %i.ck, %2
  %4 = extractelement <4 x double> %i.cr, i64 1
  %5 = fmul double %4, %3
  %6 = extractelement <4 x double> %i.cr, i64 2
  %7 = fmul double %6, %5
  %i.cs = extractelement <4 x double> %i.cr, i64 3
  %8 = fmul double %i.cs, %7
  %i.ct = select i1 %1, double %8, double 1.000000e+00
  %i.cu = tail call double @__ocml_log_f64(double noundef %i.ct) #5
  %i.cv = fadd double %i.cj, %i.cu
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cw = fcmp olt double %0, f0x4390000000000000
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cx = fdiv double 1.000000e+00, %0            ; 3 uses
  %i.cy = fmul double %i.cx, %i.cx                ; 5 uses
  %i.cz = tail call double @llvm.fma.f64(double %i.cy, double f0xBF5AB89D0B9E43E4, double f0x3F4B67BA4CDAD5D1)
  %i.da = tail call double @llvm.fma.f64(double %i.cy, double %i.cz, double f0xBF4380CB8C0FE741)
  %i.db = tail call double @llvm.fma.f64(double %i.cy, double %i.da, double f0x3F4A019F98CF38B6)
  %i.dc = tail call double @llvm.fma.f64(double %i.cy, double %i.db, double f0xBF66C16C16B02E5C)
  %i.dd = tail call double @llvm.fma.f64(double %i.cy, double %i.dc, double f0x3FB555555555553B)
  %i.de = tail call double @llvm.fma.f64(double %i.cx, double %i.dd, double f0x3FDACFE390C97D69)
  %i.df = fadd double %0, -5.000000e-01
  %i.dg = tail call double @__ocml_log_f64(double noundef %0) #5
  %i.dh = fadd double %i.dg, -1.000000e+00
  %i.di = tail call double @llvm.fma.f64(double %i.df, double %i.dh, double %i.de)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dj = tail call double @__ocml_log_f64(double noundef %0) #5
  %i.dk = fneg double %0
  %i.dl = tail call double @llvm.fma.f64(double %0, double %i.dj, double %i.dk)
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o, %bb.l, %bb.b
  %.2 = phi double [ %i.h, %bb.b ], [ %.1, %bb.j ], [ %i.cv, %bb.l ], [ %i.di, %bb.n ], [ %i.dl, %bb.o ]
  %i.dm = fcmp oeq double %0, 1.000000e+00
  %i.dn = fcmp oeq double %0, 2.000000e+00
  %i.do = or i1 %i.dm, %i.dn
  %i.dp = select i1 %i.do, double 0.000000e+00, double %.2
  %i.dq = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = tail call double @llvm.fabs.f64(double %0)
  %i.dt = fcmp une double %i.ds, +inf
  %i.du = or i1 %i.dt, %i.dr
  %.3 = select i1 %i.du, double %i.dp, double +inf
  %newret = insertvalue { double, i32 } poison, double %.3, 0
  %newret2 = insertvalue { double, i32 } %newret, i32 1, 1
  ret { double, i32 } %newret2
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(argmem: write) uwtable
define hidden double @__ocml_lgamma_r_f64(double noundef %0, ptr addrspace(5) nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
bb.a:
  %2 = tail call %struct.ret_t @__ocmlpriv_lgamma_r_impl_f64(double noundef %0) #5 ; 2 uses
  %i.a = extractvalue %struct.ret_t %2, 0
  %i.b = extractvalue %struct.ret_t %2, 1
  store i32 %i.b, ptr addrspace(5) %1, align 4, !tbaa !15
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocml_log_f64(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocml_log1p_f64(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocml_sinpi_f64(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(argmem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { convergent nounwind }
attributes #5 = { convergent nounwind willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"double", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
end_hunk_0

inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mdct_sub48.init = internal unnamed_addr global i1 false, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 16
@win = internal unnamed_addr global [4 x [36 x double]] zeroinitializer, align 16
@ca.0 = internal unnamed_addr global double 0.000000e+00, align 16
@ca.1 = internal unnamed_addr global double 0.000000e+00, align 8
@ca.2 = internal unnamed_addr global double 0.000000e+00, align 16
@ca.3 = internal unnamed_addr global double 0.000000e+00, align 8
@ca.4 = internal unnamed_addr global double 0.000000e+00, align 16
@ca.5 = internal unnamed_addr global double 0.000000e+00, align 8
@ca.6 = internal unnamed_addr global double 0.000000e+00, align 16
@ca.7 = internal unnamed_addr global double 0.000000e+00, align 8
@cs.0 = internal unnamed_addr global double 0.000000e+00, align 16
@cs.1 = internal unnamed_addr global double 0.000000e+00, align 8
@cs.2 = internal unnamed_addr global double 0.000000e+00, align 16
@cs.3 = internal unnamed_addr global double 0.000000e+00, align 8
@cs.4 = internal unnamed_addr global double 0.000000e+00, align 16
@cs.5 = internal unnamed_addr global double 0.000000e+00, align 8
@cs.6 = internal unnamed_addr global double 0.000000e+00, align 16
@cs.7 = internal unnamed_addr global double 0.000000e+00, align 8
@cos_l = internal unnamed_addr global [244 x double] zeroinitializer, align 16
@all = internal unnamed_addr constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 16
@enwindow = internal unnamed_addr global [256 x double] [double f0x3FA251E002C5BE4C, double f0x3F924E1FFC2760F6, double f0x3F69ADFFBE4CE877, double f0x3F642100110318CA, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double f0x3FA24EFFFE8EA200, double f0x3F6BDDFFD89B6AB3, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double f0x3F4F3FFF520DC771, double f0x3F67470033705EA7, double 1.239800e-05, double 1.912120e-04, double f0x3F62B3FFD4EA8624, double f0x3F9166FFFA87D736, double f0x3F9334FFF82E8B95, double f0x3F658D0036BA2EEE, double 2.474780e-04, double 1.478200e-05, double f0x3FA2467FFD4C82A1, double f0x3F6DD8000F4D029B, double f0x3F503FFFB08B08EE, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double f0x3F4E7FFFB6FC4D65, double f0x3F64A8000EC3923C, double 1.144400e-05, double 1.654620e-04, double f0x3F6148FFC594EC83, double f0x3F907FDFF8E84D76, double f0x3F941B0002FC8112, double f0x3F66F7002FAE4C0C, double 2.770420e-04, double 1.668900e-05, double f0x3FA2385FFEFF602E, double f0x3F6F9BFFD8F150EE, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double f0x3F61D0FFD9B6E277, double 1.001400e-05, double 1.401900e-04, double f0x3F5FBDFF99419ECB, double f0x3F8F32C00A8B630F, double f0x3F94FFC002FEA6D3, double f0x3F685CFFCF1C771E, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double f0x3F7095FFF5DDD6FA, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double f0x3F5D7FFFE1EF6B2A, double f0x3EE3000CEB1FF411, double 1.163480e-04, double f0x3F5CF2005A6548A7, double f0x3F8D680010E953B9, double f0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double f0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double f0x3F4B2C0063FE014D, double f0x3F56EDFFEFB14AB3, double 8.106000e-06, double 9.393700e-05, double f0x3F5A2DFFA8D35995, double f0x3F8BA03FF357727A, double f0x3F96C320035E36F6, double f0x3F6B17002A4FE853, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double f0x3F71D9800E83258F, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double f0x3F577800309639AD, double f0x3F89DC800CEF6B77, double f0x3F97A0BFFE8830BC, double f0x3F6C6700031EDD2A, double 4.043580e-04, double 2.336500e-05, double f0x3FA1C82FFC6969F3, double f0x3F72567FFA9D50C4, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double f0x3F54CDFF9F2972E2, double f0x3F881D80076614A1, double f0x3F987B2006DB9161, double f0x3F6DAD000EFFB365, double 4.382130e-04, double 2.527200e-05, double f0x3FA19E90011D1416, double f0x3F72BBFFFE860AFA, double f0x3F4F43FFAB93B97D, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double f0x3F52340073D47447, double f0x3F86643FF91CEA7A, double f0x3F99519FFD2D5F2B, double f0x3F6EE6000ACDF57D, double 4.725460e-04, double 2.765700e-05, double f0x3FA16FC0016255B6, double f0x3F730AFFEBE6A112, double 9.355550e-04, double f0x3F13400155732CA6, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double f0x3F84B1400FA0C315, double 2.552700e-02, double f0x3F70087FF0141377, double 5.073550e-04, double 3.004100e-05, double f0x3FA13BE000055E64, double f0x3F734380077742AD, double f0x3F4DFC010F4107FF, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double f0xBF5093FF8462AE54, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double f0x3F83057FFA3ED383, double f0x3F9AF14004E3FBA4, double f0x3F70957FEAAD18B9, double 5.421640e-04, double 3.242500e-05, double f0x3FA102EFFD062E20, double f0x3F73677FF48A898F, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double f0xBF59C80067E27000, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double f0x3F8161C00E7868C7, double f0x3F9BB93FFD1B1E3F, double f0x3F71197FEA014C42, double 5.769730e-04, double 3.480900e-05, double f0x3FA0C53FFF633BD3, double f0x3F7376FFF7D8A559, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double f0xBF61B500163F206B, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double f0x3F7F8D7FEC04B1A7, double f0x3F9C7BA000DE43BA, double f0x3F7193001136A2EE, double 6.117820e-04, double 3.767000e-05, double f0x3FA082CFFE85818A, double f0x3F73737FEE3BA130, double f0x3F4B7C00F1307329, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double f0xBF66BA0038D75965, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double f0x3F7C6A00018B2312, double f0x3F9D37C002307E44, double f0x3F72018010642EDC, double 6.465910e-04, double 4.053100e-05, double f0x3FA03BE000055E64, double f0x3F735DFFEE14F995, double f0x3F4A87FEF0132B89, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double f0xBF6BF1FFFBE8072A, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double f0x3F7959FFEA754312, double f0x3F9DED20070F1B84, double f0x3F72640015E0A32A, double 6.809230e-04, double 4.339200e-05, double f0x3F9FE13FFEFC278C, double f0x3F73370002956CCA, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double f0xBF70ADFFE940063C, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double f0x3F9E9B7FF8B3B071, double f0x3F72B87FF4E906D0, double 7.143020e-04, double 4.625300e-05, double f0x3F9F425FFF77A281, double f0x3F72FF7FFD6647B3, double 7.472040e-04, double 4.959100e-05, double f0x3F737B8017D72606, double 2.145800e-05, double f0xBF123FFC220291DE, double 2.384000e-06], align 16
@mm = internal unnamed_addr global [16 x [31 x double]] zeroinitializer, align 16
@cos_s = internal unnamed_addr global [6 x [6 x double]] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdct_sub48(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @mdct_sub48.init, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mdct_init48()
  store i1 true, ptr @mdct_sub48.init, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader219.lr.ph, label %._crit_edge270

.preheader219.lr.ph:                              ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.l = load double, ptr @ca.7, align 8
  %i.m = load double, ptr @cs.7, align 8
  %i.n = load double, ptr @ca.6, align 16
  %i.o = load double, ptr @cs.6, align 16
  %i.p = load double, ptr @ca.5, align 8
  %i.q = load double, ptr @cs.5, align 8
  %i.r = load double, ptr @ca.4, align 16
  %i.s = load double, ptr @cs.4, align 16
  %i.t = insertelement <4 x double> poison, double %i.l, i64 0
  %i.u = insertelement <4 x double> %i.t, double %i.n, i64 1
  %i.v = insertelement <4 x double> %i.u, double %i.p, i64 2
  %i.w = insertelement <4 x double> %i.v, double %i.r, i64 3 ; 2 uses
  %i.x = fneg <4 x double> %i.w
  %i.y = load double, ptr @ca.3, align 8
  %i.z = load double, ptr @cs.3, align 8
  %i.aa = load double, ptr @ca.2, align 16
  %i.ab = load double, ptr @cs.2, align 16
  %i.ac = load double, ptr @ca.1, align 8
  %i.ad = load double, ptr @cs.1, align 8
  %i.ae = load double, ptr @ca.0, align 16
  %i.af = load double, ptr @cs.0, align 16
  %i.ag = insertelement <4 x double> poison, double %i.y, i64 0
  %i.ah = insertelement <4 x double> %i.ag, double %i.aa, i64 1
  %i.ai = insertelement <4 x double> %i.ah, double %i.ac, i64 2
  %i.aj = insertelement <4 x double> %i.ai, double %i.ae, i64 3 ; 2 uses
  %i.ak = fneg <4 x double> %i.aj
  %i.al = insertelement <4 x double> poison, double %i.m, i64 0
  %i.am = insertelement <4 x double> %i.al, double %i.o, i64 1
  %i.an = insertelement <4 x double> %i.am, double %i.q, i64 2
  %i.ao = insertelement <4 x double> %i.an, double %i.s, i64 3 ; 2 uses
  %i.ap = insertelement <4 x double> poison, double %i.z, i64 0
  %i.aq = insertelement <4 x double> %i.ap, double %i.ab, i64 1
  %i.ar = insertelement <4 x double> %i.aq, double %i.ad, i64 2
  %i.as = insertelement <4 x double> %i.ar, double %i.af, i64 3 ; 2 uses
  %i.at = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 240), align 16
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 192), align 16
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.au, i64 1 ; 3 uses
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 248), align 8
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 200), align 8
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1 ; 3 uses
  %i.bb = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 256), align 16
  %i.bc = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 208), align 16
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1 ; 3 uses
  %i.bf = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 264), align 8
  %i.bg = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 216), align 8
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1 ; 3 uses
  %i.bj = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 272), align 16
  %i.bk = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 224), align 16
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1 ; 3 uses
  %i.bn = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 280), align 8
  %i.bo = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 232), align 8
  %i.bp = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1 ; 3 uses
  %i.br = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 144), align 16
  %i.bs = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 96), align 16
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1 ; 3 uses
  %i.bv = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 152), align 8
  %i.bw = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 104), align 8
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1 ; 3 uses
  %i.bz = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 160), align 16
  %i.ca = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 112), align 16
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1 ; 3 uses
  %i.cd = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 168), align 8
  %i.ce = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 120), align 8
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ce, i64 1 ; 3 uses
  %i.ch = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 176), align 16
  %i.ci = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 128), align 16
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1 ; 3 uses
  %i.cl = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 184), align 8
  %i.cm = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 136), align 8
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cm, i64 1 ; 3 uses
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.lr.ph, %._crit_edge.thread
  %indvars.iv295 = phi i64 [ 0, %.preheader219.lr.ph ], [ %indvars.iv.next296, %._crit_edge.thread ] ; 5 uses
  %.0193268 = phi ptr [ %1, %.preheader219.lr.ph ], [ %2, %._crit_edge.thread ]
  %i.cp = load i32, ptr %i.d, align 8, !tbaa !14
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph263, label %._crit_edge.thread

.lr.ph263:                                        ; preds = %.preheader219
  %invariant.gep264 = getelementptr inbounds nuw [4608 x i8], ptr %3, i64 %indvars.iv295
  %invariant.gep266 = getelementptr inbounds nuw [120 x i8], ptr %4, i64 %indvars.iv295
  %i.cr = getelementptr inbounds nuw [9216 x i8], ptr @sb_sample, i64 %indvars.iv295 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph263, %bb.o
  %indvars.iv292 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next293, %bb.o ] ; 5 uses
  %.1194261 = phi ptr [ %.0193268, %.lr.ph263 ], [ %i.et, %bb.o ]
  %i.cs = sub nsw i64 1, %indvars.iv292
  %i.ct = getelementptr inbounds [4608 x i8], ptr %i.cr, i64 %i.cs ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.0191224 = phi i32 [ 0, %bb.d ], [ %i.eu, %bb.e ]
  %.2195223 = phi ptr [ %.1194261, %bb.d ], [ %i.et, %bb.e ] ; 3 uses
  %.0199222 = phi ptr [ %i.ct, %bb.d ], [ %i.es, %bb.e ] ; 19 uses
  tail call fastcc void @window_subband(ptr noundef %.2195223, ptr noundef nonnull %.0199222)
  %i.cu = getelementptr inbounds nuw i8, ptr %.2195223, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199222, i64 256
  tail call fastcc void @window_subband(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %.0199222, i64 264 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !15
  %i.cy = fneg double %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %.0199222, i64 280 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !15
  %i.db = fneg double %i.da
  store double %i.db, ptr %i.cz, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %.0199222, i64 296 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !15
  %i.de = fneg double %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %.0199222, i64 312 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !15
  %i.dh = fneg double %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %.0199222, i64 328 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !15
  %i.dk = fneg double %i.dj
  store double %i.dk, ptr %i.di, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.0199222, i64 344 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dn = fneg double %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %.0199222, i64 360 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !15
  %i.dq = fneg double %i.dp
  store double %i.dq, ptr %i.do, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %.0199222, i64 376 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !15
  %i.dt = fneg double %i.ds
  store double %i.dt, ptr %i.dr, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.0199222, i64 392 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !15
  %i.dw = fneg double %i.dv
  store double %i.dw, ptr %i.du, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %.0199222, i64 408 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !15
  %i.dz = fneg double %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %.0199222, i64 424 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !15
  %i.ec = fneg double %i.eb
  store double %i.ec, ptr %i.ea, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %.0199222, i64 440 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !15
  %i.ef = fneg double %i.ee
  store double %i.ef, ptr %i.ed, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.0199222, i64 456 ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !15
  %i.ei = fneg double %i.eh
  store double %i.ei, ptr %i.eg, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %.0199222, i64 472 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !15
  %i.el = fneg double %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %.0199222, i64 488 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !15
  %i.eo = fneg double %i.en
  store double %i.eo, ptr %i.em, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %.0199222, i64 504 ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !15
  %i.er = fneg double %i.eq
  store double %i.er, ptr %i.ep, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %.0199222, i64 512
  %i.et = getelementptr inbounds nuw i8, ptr %.2195223, i64 128 ; 2 uses
  %i.eu = add nuw nsw i32 %.0191224, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.eu, 9
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %gep265 = getelementptr inbounds nuw [9216 x i8], ptr %invariant.gep264, i64 %indvars.iv292
  %gep267 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep266, i64 %indvars.iv292
  %i.ev = load i32, ptr %i.e, align 8, !tbaa !19
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.g, label %.loopexit218

bb.g:                                             ; preds = %bb.f
  %i.ex = load i32, ptr %i.f, align 4, !tbaa !20  ; 2 uses
  %.1197229 = add nsw i32 %i.ex, 1
  %i.ey = load i32, ptr %i.g, align 8, !tbaa !21
  %i.ez = icmp slt i32 %.1197229, %i.ey
  br i1 %i.ez, label %.lr.ph, label %.loopexit218

.lr.ph:                                           ; preds = %bb.g
  %i.fa = load float, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %i.fb = fpext float %i.fa to double             ; 2 uses
  %i.fc = load float, ptr %i.j, align 8, !tbaa !23 ; 2 uses
  %i.fd = fpext float %i.fc to double
  %i.fe = sext i32 %i.ex to i64
  %i.ff = add nsw i64 %i.fe, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.loopexit216
  %indvars.iv = phi i64 [ %i.ff, %.lr.ph ], [ %indvars.iv.next, %.loopexit216 ] ; 4 uses
  %i.fg = trunc nsw i64 %indvars.iv to i32
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = fdiv double %i.fh, 3.100000e+01         ; 6 uses
  %i.fj = fcmp ogt double %i.fi, %i.fb
  br i1 %i.fj, label %bb.i, label %.loopexit217

bb.i:                                             ; preds = %bb.h
  %i.fk = load float, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.fl = fpext float %i.fk to double
  %i.fm = fcmp olt double %i.fi, %i.fl
  br i1 %i.fm, label %.loopexit217.loopexit, label %.loopexit217

.loopexit217.loopexit:                            ; preds = %bb.i
  %i.fn = fsub double %i.fb, %i.fi
  %i.fo = fmul double %i.fn, f0x3FF921FB54442D18
  %i.fp = fsub float %i.fk, %i.fa
  %i.fq = fpext float %i.fp to double
  %i.fr = fdiv double %i.fo, %i.fq
  %i.fs = tail call double @cos(double noundef %i.fr) #6, !tbaa !4 ; 18 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv ; 19 uses
  %i.ft = load double, ptr %invariant.gep, align 8, !tbaa !15
  %i.fu = fmul double %i.fs, %i.ft
  store double %i.fu, ptr %invariant.gep, align 8, !tbaa !15
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 256 ; 2 uses
  %i.fv = load double, ptr %gep.1, align 8, !tbaa !15
  %i.fw = fmul double %i.fs, %i.fv
  store double %i.fw, ptr %gep.1, align 8, !tbaa !15
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 512 ; 2 uses
  %i.fx = load double, ptr %gep.2, align 8, !tbaa !15
  %i.fy = fmul double %i.fs, %i.fx
  store double %i.fy, ptr %gep.2, align 8, !tbaa !15
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 768 ; 2 uses
  %i.fz = load double, ptr %gep.3, align 8, !tbaa !15
  %i.ga = fmul double %i.fs, %i.fz
  store double %i.ga, ptr %gep.3, align 8, !tbaa !15
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 1024 ; 2 uses
  %i.gb = load double, ptr %gep.4, align 8, !tbaa !15
  %i.gc = fmul double %i.fs, %i.gb
  store double %i.gc, ptr %gep.4, align 8, !tbaa !15
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 1280 ; 2 uses
  %i.gd = load double, ptr %gep.5, align 8, !tbaa !15
  %i.ge = fmul double %i.fs, %i.gd
  store double %i.ge, ptr %gep.5, align 8, !tbaa !15
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 1536 ; 2 uses
  %i.gf = load double, ptr %gep.6, align 8, !tbaa !15
  %i.gg = fmul double %i.fs, %i.gf
  store double %i.gg, ptr %gep.6, align 8, !tbaa !15
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 1792 ; 2 uses
  %i.gh = load double, ptr %gep.7, align 8, !tbaa !15
  %i.gi = fmul double %i.fs, %i.gh
  store double %i.gi, ptr %gep.7, align 8, !tbaa !15
  %gep.8 = getelementptr i8, ptr %invariant.gep, i64 2048 ; 2 uses
  %i.gj = load double, ptr %gep.8, align 8, !tbaa !15
  %i.gk = fmul double %i.fs, %i.gj
  store double %i.gk, ptr %gep.8, align 8, !tbaa !15
  %gep.9 = getelementptr i8, ptr %invariant.gep, i64 2304 ; 2 uses
  %i.gl = load double, ptr %gep.9, align 8, !tbaa !15
  %i.gm = fmul double %i.fs, %i.gl
  store double %i.gm, ptr %gep.9, align 8, !tbaa !15
  %gep.10 = getelementptr i8, ptr %invariant.gep, i64 2560 ; 2 uses
  %i.gn = load double, ptr %gep.10, align 8, !tbaa !15
  %i.go = fmul double %i.fs, %i.gn
  store double %i.go, ptr %gep.10, align 8, !tbaa !15
  %gep.11 = getelementptr i8, ptr %invariant.gep, i64 2816 ; 2 uses
  %i.gp = load double, ptr %gep.11, align 8, !tbaa !15
  %i.gq = fmul double %i.fs, %i.gp
  store double %i.gq, ptr %gep.11, align 8, !tbaa !15
  %gep.12 = getelementptr i8, ptr %invariant.gep, i64 3072 ; 2 uses
  %i.gr = load double, ptr %gep.12, align 8, !tbaa !15
  %i.gs = fmul double %i.fs, %i.gr
  store double %i.gs, ptr %gep.12, align 8, !tbaa !15
  %gep.13 = getelementptr i8, ptr %invariant.gep, i64 3328 ; 2 uses
  %i.gt = load double, ptr %gep.13, align 8, !tbaa !15
  %i.gu = fmul double %i.fs, %i.gt
  store double %i.gu, ptr %gep.13, align 8, !tbaa !15
  %gep.14 = getelementptr i8, ptr %invariant.gep, i64 3584 ; 2 uses
  %i.gv = load double, ptr %gep.14, align 8, !tbaa !15
  %i.gw = fmul double %i.fs, %i.gv
  store double %i.gw, ptr %gep.14, align 8, !tbaa !15
  %gep.15 = getelementptr i8, ptr %invariant.gep, i64 3840 ; 2 uses
  %i.gx = load double, ptr %gep.15, align 8, !tbaa !15
  %i.gy = fmul double %i.fs, %i.gx
  store double %i.gy, ptr %gep.15, align 8, !tbaa !15
  %gep.16 = getelementptr i8, ptr %invariant.gep, i64 4096 ; 2 uses
  %i.gz = load double, ptr %gep.16, align 8, !tbaa !15
  %i.ha = fmul double %i.fs, %i.gz
  store double %i.ha, ptr %gep.16, align 8, !tbaa !15
  %gep.17 = getelementptr i8, ptr %invariant.gep, i64 4352 ; 2 uses
  %i.hb = load double, ptr %gep.17, align 8, !tbaa !15
  %i.hc = fmul double %i.fs, %i.hb
  store double %i.hc, ptr %gep.17, align 8, !tbaa !15
  br label %.loopexit217

.loopexit217:                                     ; preds = %.loopexit217.loopexit, %bb.i, %bb.h
  %i.hd = fcmp ogt double %i.fi, %i.fd
  br i1 %i.hd, label %bb.j, label %.loopexit216

bb.j:                                             ; preds = %.loopexit217
  %i.he = load float, ptr %i.k, align 4, !tbaa !25 ; 2 uses
  %i.hf = fpext float %i.he to double             ; 2 uses
  %i.hg = fcmp olt double %i.fi, %i.hf
  br i1 %i.hg, label %.loopexit216.loopexit, label %.loopexit216

.loopexit216.loopexit:                            ; preds = %bb.j
  %i.hh = fsub double %i.hf, %i.fi
  %i.hi = fmul double %i.hh, f0x3FF921FB54442D18
  %i.hj = fsub float %i.he, %i.fc
  %i.hk = fpext float %i.hj to double
  %i.hl = fdiv double %i.hi, %i.hk
  %i.hm = tail call double @cos(double noundef %i.hl) #6, !tbaa !4 ; 18 uses
  %invariant.gep226 = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv ; 19 uses
  %i.hn = load double, ptr %invariant.gep226, align 8, !tbaa !15
  %i.ho = fmul double %i.hm, %i.hn
  store double %i.ho, ptr %invariant.gep226, align 8, !tbaa !15
  %gep227.1 = getelementptr i8, ptr %invariant.gep226, i64 256 ; 2 uses
  %i.hp = load double, ptr %gep227.1, align 8, !tbaa !15
  %i.hq = fmul double %i.hm, %i.hp
  store double %i.hq, ptr %gep227.1, align 8, !tbaa !15
  %gep227.2 = getelementptr i8, ptr %invariant.gep226, i64 512 ; 2 uses
  %i.hr = load double, ptr %gep227.2, align 8, !tbaa !15
  %i.hs = fmul double %i.hm, %i.hr
  store double %i.hs, ptr %gep227.2, align 8, !tbaa !15
  %gep227.3 = getelementptr i8, ptr %invariant.gep226, i64 768 ; 2 uses
  %i.ht = load double, ptr %gep227.3, align 8, !tbaa !15
  %i.hu = fmul double %i.hm, %i.ht
  store double %i.hu, ptr %gep227.3, align 8, !tbaa !15
  %gep227.4 = getelementptr i8, ptr %invariant.gep226, i64 1024 ; 2 uses
  %i.hv = load double, ptr %gep227.4, align 8, !tbaa !15
  %i.hw = fmul double %i.hm, %i.hv
  store double %i.hw, ptr %gep227.4, align 8, !tbaa !15
  %gep227.5 = getelementptr i8, ptr %invariant.gep226, i64 1280 ; 2 uses
  %i.hx = load double, ptr %gep227.5, align 8, !tbaa !15
  %i.hy = fmul double %i.hm, %i.hx
  store double %i.hy, ptr %gep227.5, align 8, !tbaa !15
  %gep227.6 = getelementptr i8, ptr %invariant.gep226, i64 1536 ; 2 uses
  %i.hz = load double, ptr %gep227.6, align 8, !tbaa !15
  %i.ia = fmul double %i.hm, %i.hz
  store double %i.ia, ptr %gep227.6, align 8, !tbaa !15
  %gep227.7 = getelementptr i8, ptr %invariant.gep226, i64 1792 ; 2 uses
  %i.ib = load double, ptr %gep227.7, align 8, !tbaa !15
  %i.ic = fmul double %i.hm, %i.ib
  store double %i.ic, ptr %gep227.7, align 8, !tbaa !15
  %gep227.8 = getelementptr i8, ptr %invariant.gep226, i64 2048 ; 2 uses
  %i.id = load double, ptr %gep227.8, align 8, !tbaa !15
  %i.ie = fmul double %i.hm, %i.id
  store double %i.ie, ptr %gep227.8, align 8, !tbaa !15
  %gep227.9 = getelementptr i8, ptr %invariant.gep226, i64 2304 ; 2 uses
  %i.if = load double, ptr %gep227.9, align 8, !tbaa !15
  %i.ig = fmul double %i.hm, %i.if
  store double %i.ig, ptr %gep227.9, align 8, !tbaa !15
  %gep227.10 = getelementptr i8, ptr %invariant.gep226, i64 2560 ; 2 uses
  %i.ih = load double, ptr %gep227.10, align 8, !tbaa !15
  %i.ii = fmul double %i.hm, %i.ih
  store double %i.ii, ptr %gep227.10, align 8, !tbaa !15
  %gep227.11 = getelementptr i8, ptr %invariant.gep226, i64 2816 ; 2 uses
  %i.ij = load double, ptr %gep227.11, align 8, !tbaa !15
  %i.ik = fmul double %i.hm, %i.ij
  store double %i.ik, ptr %gep227.11, align 8, !tbaa !15
  %gep227.12 = getelementptr i8, ptr %invariant.gep226, i64 3072 ; 2 uses
  %i.il = load double, ptr %gep227.12, align 8, !tbaa !15
  %i.im = fmul double %i.hm, %i.il
  store double %i.im, ptr %gep227.12, align 8, !tbaa !15
  %gep227.13 = getelementptr i8, ptr %invariant.gep226, i64 3328 ; 2 uses
  %i.in = load double, ptr %gep227.13, align 8, !tbaa !15
  %i.io = fmul double %i.hm, %i.in
  store double %i.io, ptr %gep227.13, align 8, !tbaa !15
  %gep227.14 = getelementptr i8, ptr %invariant.gep226, i64 3584 ; 2 uses
  %i.ip = load double, ptr %gep227.14, align 8, !tbaa !15
  %i.iq = fmul double %i.hm, %i.ip
  store double %i.iq, ptr %gep227.14, align 8, !tbaa !15
  %gep227.15 = getelementptr i8, ptr %invariant.gep226, i64 3840 ; 2 uses
  %i.ir = load double, ptr %gep227.15, align 8, !tbaa !15
  %i.is = fmul double %i.hm, %i.ir
  store double %i.is, ptr %gep227.15, align 8, !tbaa !15
  %gep227.16 = getelementptr i8, ptr %invariant.gep226, i64 4096 ; 2 uses
  %i.it = load double, ptr %gep227.16, align 8, !tbaa !15
  %i.iu = fmul double %i.hm, %i.it
  store double %i.iu, ptr %gep227.16, align 8, !tbaa !15
  %gep227.17 = getelementptr i8, ptr %invariant.gep226, i64 4352 ; 2 uses
  %i.iv = load double, ptr %gep227.17, align 8, !tbaa !15
  %i.iw = fmul double %i.hm, %i.iv
  store double %i.iw, ptr %gep227.17, align 8, !tbaa !15
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %.loopexit217, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ix = load i32, ptr %i.g, align 8, !tbaa !21
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next, %i.iy
  br i1 %i.iz, label %bb.h, label %.loopexit218, !llvm.loop !26

.loopexit218:                                     ; preds = %.loopexit216, %bb.g, %bb.f
  %i.ja = getelementptr inbounds nuw i8, ptr %gep267, i64 72
  %i.jb = getelementptr inbounds nuw [4608 x i8], ptr %i.cr, i64 %indvars.iv292 ; 2 uses
  %i.jc = load <3 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 576), align 16 ; 4 uses
  %i.jd = shufflevector <3 x double> %i.jc, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.je = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 584), align 8 ; 4 uses
  %i.jf = extractelement <3 x double> %i.jc, i64 2 ; 2 uses
  %i.jg = extractelement <3 x double> %i.jc, i64 0
  %i.jh = shufflevector <3 x double> %i.jc, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 2>
  %i.ji = insertelement <4 x double> poison, double %i.je, i64 0
  %i.jj = shufflevector <4 x double> %i.ji, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison> ; 2 uses
  %i.jk = shufflevector <4 x double> %i.jh, <4 x double> %i.jj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.jl = shufflevector <4 x double> %i.jd, <4 x double> %i.jj, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.k

bb.k:                                             ; preds = %.loopexit218, %.loopexit
  %indvars.iv288 = phi i64 [ 0, %.loopexit218 ], [ %indvars.iv.next289, %.loopexit ] ; 8 uses
  %.0200258 = phi ptr [ %gep265, %.loopexit218 ], [ %i.aff, %.loopexit ] ; 17 uses
  %i.jm = load i32, ptr %i.ja, align 8, !tbaa !27 ; 3 uses
  %i.jn = load i32, ptr %i.g, align 8, !tbaa !21
  %i.jo = sext i32 %i.jn to i64
  %.not = icmp slt i64 %indvars.iv288, %i.jo
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.jp = load i32, ptr %i.f, align 4, !tbaa !20
  %i.jq = sext i32 %i.jp to i64
  %.not207 = icmp sgt i64 %indvars.iv288, %i.jq
  br i1 %.not207, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %.0200258, i8 0, i64 144, i1 false)
  br label %mdct_short.exit

bb.n:                                             ; preds = %bb.l
  %i.jr = icmp eq i32 %i.jm, 2
  br i1 %i.jr, label %.preheader213, label %.preheader215

.preheader215:                                    ; preds = %bb.n
  %i.js = sext i32 %i.jm to i64
  %i.jt = getelementptr inbounds [288 x i8], ptr @win, i64 %i.js ; 20 uses
  %invariant.gep231 = getelementptr [8 x i8], ptr %i.jb, i64 %indvars.iv288 ; 18 uses
  %invariant.gep235 = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv288 ; 18 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  %i.jv = load double, ptr %i.ju, align 16, !tbaa !15
  %gep232 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 2048
  %i.jw = load double, ptr %gep232, align 8, !tbaa !15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 136
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !15
  %gep234 = getelementptr i8, ptr %invariant.gep231, i64 2304
  %i.jz = load double, ptr %gep234, align 8, !tbaa !15
  %i.ka = fneg double %i.jz
  %i.kb = fmul double %i.jy, %i.ka
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.kb)
  store double %i.kc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 208
  %i.ke = load double, ptr %i.kd, align 16, !tbaa !15
  %gep236 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 2048
  %i.kf = load double, ptr %gep236, align 8, !tbaa !15
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 280
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !15
  %gep238 = getelementptr i8, ptr %invariant.gep235, i64 2304
  %i.ki = load double, ptr %gep238, align 8, !tbaa !15
  %i.kj = fmul double %i.kh, %i.ki
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.ke, double %i.kf, double %i.kj)
  store double %i.kk, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !15
  %gep232.1 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1792
  %i.kl = load double, ptr %gep232.1, align 8, !tbaa !15
  %gep234.1 = getelementptr i8, ptr %invariant.gep231, i64 2560
  %i.km = load double, ptr %gep234.1, align 8, !tbaa !15
  %gep236.1 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1792
  %i.kn = load double, ptr %gep236.1, align 8, !tbaa !15
  %gep238.1 = getelementptr i8, ptr %invariant.gep235, i64 2560
  %i.ko = load double, ptr %gep238.1, align 8, !tbaa !15
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %gep232.2 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1536
  %i.kq = load double, ptr %gep232.2, align 8, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 120
  %gep234.2 = getelementptr i8, ptr %invariant.gep231, i64 2816
  %i.ks = load double, ptr %gep234.2, align 8, !tbaa !15
  %i.kt = load <2 x double>, ptr %i.kp, align 16, !tbaa !15
  %i.ku = load <2 x double>, ptr %i.kr, align 8, !tbaa !15
  %i.kv = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.km, i64 1
  %i.kx = fneg <2 x double> %i.kw
  %i.ky = fmul <2 x double> %i.ku, %i.kx
  %i.kz = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.kl, i64 1
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.la, <2 x double> %i.ky)
  store <2 x double> %i.lb, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !15
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jt, i64 192
  %gep236.2 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1536
  %i.ld = load double, ptr %gep236.2, align 8, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 264
  %gep238.2 = getelementptr i8, ptr %invariant.gep235, i64 2816
  %i.lf = load double, ptr %gep238.2, align 8, !tbaa !15
  %i.lg = load <2 x double>, ptr %i.lc, align 16, !tbaa !15
  %i.lh = load <2 x double>, ptr %i.le, align 8, !tbaa !15
  %i.li = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lj = insertelement <2 x double> %i.li, double %i.ko, i64 1
  %i.lk = fmul <2 x double> %i.lh, %i.lj
  %i.ll = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lm = insertelement <2 x double> %i.ll, double %i.kn, i64 1
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lm, <2 x double> %i.lk)
  store <2 x double> %i.ln, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !15
  %gep232.3 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1280
  %i.lo = load double, ptr %gep232.3, align 8, !tbaa !15
  %gep234.3 = getelementptr i8, ptr %invariant.gep231, i64 3072
  %i.lp = load double, ptr %gep234.3, align 8, !tbaa !15
  %gep236.3 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1280
  %i.lq = load double, ptr %gep236.3, align 8, !tbaa !15
  %gep238.3 = getelementptr i8, ptr %invariant.gep235, i64 3072
  %i.lr = load double, ptr %gep238.3, align 8, !tbaa !15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %gep232.4 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1024
  %i.lt = load double, ptr %gep232.4, align 8, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  %gep234.4 = getelementptr i8, ptr %invariant.gep231, i64 3328
  %i.lv = load double, ptr %gep234.4, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@mdct_sub48:bb.a
  %i.zs = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !15
  %i.zt = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8, !tbaa !15
  %i.zu = fadd double %i.zs, %i.zt
  %i.zv = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !15
  %i.zw = fadd double %i.zu, %i.zv                ; 5 uses
  %i.zx = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8, !tbaa !15
  %i.zy = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !15
  %i.zz = fadd double %i.zx, %i.zy
  %i.aaa = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !15
  %i.aab = fadd double %i.zz, %i.aaa              ; 5 uses
  %i.aac = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !15
  %i.aad = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8, !tbaa !15
  %i.aae = fadd double %i.aac, %i.aad
  %i.aaf = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !15
  %i.aag = fadd double %i.aae, %i.aaf             ; 5 uses
  %i.aah = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !15
  %i.aai = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8, !tbaa !15
  %i.aaj = fsub double %i.aah, %i.aai
  %i.aak = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !15
  %i.aal = fadd double %i.aaj, %i.aak             ; 5 uses
  %i.aam = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8, !tbaa !15
  %i.aan = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16, !tbaa !15
  %i.aao = fsub double %i.aam, %i.aan
  %i.aap = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8, !tbaa !15
  %i.aaq = fadd double %i.aao, %i.aap             ; 5 uses
  %i.aar = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !15
  %i.aas = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8, !tbaa !15
  %i.aat = fsub double %i.aar, %i.aas
  %i.aau = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !15
  %i.aav = fadd double %i.aat, %i.aau             ; 5 uses
  %i.aaw = load double, ptr %i.zr, align 8, !tbaa !15
  %i.aax = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !15
  %i.aaz = fmul double %i.aab, %i.aay
  %i.aba = tail call double @llvm.fmuladd.f64(double %i.zw, double %i.aaw, double %i.aaz)
  %i.abb = getelementptr inbounds nuw i8, ptr %.0.i, i64 160
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !15
  %i.abd = tail call double @llvm.fmuladd.f64(double %i.aag, double %i.abc, double %i.aba)
  %i.abe = getelementptr inbounds nuw i8, ptr %.0.i, i64 168
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !15
  %i.abg = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.abf, double %i.abd)
  %i.abh = getelementptr inbounds nuw i8, ptr %.0.i, i64 176
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !15
  %i.abj = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.abi, double %i.abg)
  %i.abk = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !15
  %i.abm = tail call double @llvm.fmuladd.f64(double %i.aav, double %i.abl, double %i.abj)
  %i.abn = getelementptr inbounds nuw i8, ptr %.0200258, i64 128
  store double %i.abm, ptr %i.abn, align 8, !tbaa !15
  %i.abo = getelementptr inbounds nuw i8, ptr %.0.i, i64 192
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !15
  %i.abq = getelementptr inbounds nuw i8, ptr %.0.i, i64 200
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !15
  %i.abs = fmul double %i.aab, %i.abr
  %i.abt = tail call double @llvm.fmuladd.f64(double %i.zw, double %i.abp, double %i.abs)
  %i.abu = getelementptr inbounds nuw i8, ptr %.0.i, i64 208
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !15
  %i.abw = tail call double @llvm.fmuladd.f64(double %i.aag, double %i.abv, double %i.abt)
  %i.abx = getelementptr inbounds nuw i8, ptr %.0.i, i64 216
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !15
  %i.abz = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aby, double %i.abw)
  %i.aca = getelementptr inbounds nuw i8, ptr %.0.i, i64 224
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !15
  %i.acc = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.acb, double %i.abz)
  %i.acd = getelementptr inbounds nuw i8, ptr %.0.i, i64 232
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !15
  %i.acf = tail call double @llvm.fmuladd.f64(double %i.aav, double %i.ace, double %i.acc)
  %i.acg = getelementptr inbounds nuw i8, ptr %.0200258, i64 80
  store double %i.acf, ptr %i.acg, align 8, !tbaa !15
  %i.ach = getelementptr inbounds nuw i8, ptr %.0.i, i64 240
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !15
  %i.acj = getelementptr inbounds nuw i8, ptr %.0.i, i64 248
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !15
  %i.acl = fmul double %i.aab, %i.ack
  %i.acm = tail call double @llvm.fmuladd.f64(double %i.zw, double %i.aci, double %i.acl)
  %i.acn = getelementptr inbounds nuw i8, ptr %.0.i, i64 256
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !15
  %i.acp = tail call double @llvm.fmuladd.f64(double %i.aag, double %i.aco, double %i.acm)
  %i.acq = getelementptr inbounds nuw i8, ptr %.0.i, i64 264
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !15
  %i.acs = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.acr, double %i.acp)
  %i.act = getelementptr inbounds nuw i8, ptr %.0.i, i64 272
  %i.acu = load double, ptr %i.act, align 8, !tbaa !15
  %i.acv = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.acu, double %i.acs)
  %i.acw = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !15
  %i.acy = tail call double @llvm.fmuladd.f64(double %i.aav, double %i.acx, double %i.acv)
  %i.acz = getelementptr inbounds nuw i8, ptr %.0200258, i64 56
  store double %i.acy, ptr %i.acz, align 8, !tbaa !15
  %i.ada = getelementptr inbounds nuw i8, ptr %.0.i, i64 288
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !15
  %i.adc = getelementptr inbounds nuw i8, ptr %.0.i, i64 296
  %i.add = load double, ptr %i.adc, align 8, !tbaa !15
  %i.ade = fmul double %i.aab, %i.add
  %i.adf = tail call double @llvm.fmuladd.f64(double %i.zw, double %i.adb, double %i.ade)
  %i.adg = getelementptr inbounds nuw i8, ptr %.0.i, i64 304
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !15
  %i.adi = tail call double @llvm.fmuladd.f64(double %i.aag, double %i.adh, double %i.adf)
  %i.adj = getelementptr inbounds nuw i8, ptr %.0.i, i64 312
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !15
  %i.adl = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.adk, double %i.adi)
  %i.adm = getelementptr inbounds nuw i8, ptr %.0.i, i64 320
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !15
  %i.ado = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.adn, double %i.adl)
  %i.adp = getelementptr inbounds nuw i8, ptr %.0.i, i64 328
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !15
  %i.adr = tail call double @llvm.fmuladd.f64(double %i.aav, double %i.adq, double %i.ado)
  %i.ads = getelementptr inbounds nuw i8, ptr %.0200258, i64 8
  store double %i.adr, ptr %i.ads, align 8, !tbaa !15
  %i.adt = getelementptr inbounds nuw i8, ptr %.0.i, i64 336
  %i.adu = fsub double %i.zw, %i.aab
  %i.adv = fadd double %i.adu, %i.aav             ; 2 uses
  %i.adw = fsub double %i.aag, %i.aal
  %i.adx = fsub double %i.adw, %i.aaq             ; 2 uses
  %i.ady = load double, ptr %i.adt, align 8, !tbaa !15
  %i.adz = getelementptr inbounds nuw i8, ptr %.0.i, i64 344
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !15
  %i.aeb = fmul double %i.adx, %i.aea
  %i.aec = tail call double @llvm.fmuladd.f64(double %i.adv, double %i.ady, double %i.aeb)
  %i.aed = getelementptr inbounds nuw i8, ptr %.0200258, i64 104
  store double %i.aec, ptr %i.aed, align 8, !tbaa !15
  %i.aee = getelementptr inbounds nuw i8, ptr %.0.i, i64 352
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !15
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0.i, i64 360
  %i.aeh = load double, ptr %i.aeg, align 8, !tbaa !15
  %i.aei = fmul double %i.adx, %i.aeh
  %i.aej = tail call double @llvm.fmuladd.f64(double %i.adv, double %i.aef, double %i.aei)
  %i.aek = getelementptr inbounds nuw i8, ptr %.0200258, i64 32
  store double %i.aej, ptr %i.aek, align 8, !tbaa !15
  br label %mdct_short.exit

mdct_short.exit:                                  ; preds = %mdct_long.exit, %bb.m
  %.not208 = icmp eq i32 %i.jm, 2
  %i.ael = icmp eq i64 %indvars.iv288, 0
  %or.cond = or i1 %i.ael, %.not208
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %mdct_short.exit
  %i.aem = getelementptr inbounds i8, ptr %.0200258, i64 -64 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.0200258, i64 32 ; 2 uses
  %i.aeo = load <4 x double>, ptr %i.aem, align 8, !tbaa !15 ; 2 uses
  %i.aep = load <4 x double>, ptr %i.aen, align 8, !tbaa !15
  %i.aeq = shufflevector <4 x double> %i.aep, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.aer = fmul <4 x double> %i.aeo, %i.ao
  %i.aes = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeq, <4 x double> %i.w, <4 x double> %i.aer)
  store <4 x double> %i.aes, ptr %i.aem, align 8, !tbaa !15
  %i.aet = fmul <4 x double> %i.aeo, %i.x
  %i.aeu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeq, <4 x double> %i.ao, <4 x double> %i.aet)
  %i.aev = shufflevector <4 x double> %i.aeu, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.aev, ptr %i.aen, align 8, !tbaa !15
  %i.aew = getelementptr inbounds i8, ptr %.0200258, i64 -32 ; 2 uses
  %i.aex = load <4 x double>, ptr %i.aew, align 8, !tbaa !15 ; 2 uses
  %i.aey = load <4 x double>, ptr %.0200258, align 8, !tbaa !15
  %i.aez = shufflevector <4 x double> %i.aey, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.afa = fmul <4 x double> %i.aex, %i.as
  %i.afb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aez, <4 x double> %i.aj, <4 x double> %i.afa)
  store <4 x double> %i.afb, ptr %i.aew, align 8, !tbaa !15
  %i.afc = fmul <4 x double> %i.aex, %i.ak
  %i.afd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aez, <4 x double> %i.as, <4 x double> %i.afc)
  %i.afe = shufflevector <4 x double> %i.afd, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.afe, ptr %.0200258, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader213, %.preheader.preheader, %mdct_short.exit
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.0200258, i64 144
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, 32
  br i1 %exitcond291.not, label %bb.o, label %bb.k, !llvm.loop !31

bb.o:                                             ; preds = %.loopexit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.afg = load i32, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.afh = sext i32 %i.afg to i64
  %i.afi = icmp slt i64 %indvars.iv.next293, %i.afh
  br i1 %i.afi, label %bb.d, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.o
  %i.afj = icmp eq i32 %i.afg, 1
  br i1 %i.afj, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %._crit_edge
  %i.afk = getelementptr inbounds nuw [9216 x i8], ptr @sb_sample, i64 %indvars.iv295 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 4608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %i.afk, ptr noundef nonnull align 16 dereferenceable(4608) %i.afl, i64 4608, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader219, %._crit_edge, %bb.p
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.afm = load i32, ptr %i.a, align 4, !tbaa !8
  %i.afn = sext i32 %i.afm to i64
  %i.afo = icmp slt i64 %indvars.iv.next296, %i.afn
  br i1 %i.afo, label %.preheader219, label %._crit_edge270, !llvm.loop !33

._crit_edge270:                                   ; preds = %._crit_edge.thread, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdct_init48() local_unnamed_addr #2 {
.preheader204:
  %i.a = alloca [31 x double], align 16           ; 21 uses
  store double f0xBFE076BFCD6FBECD, ptr @ca.0, align 16, !tbaa !15
  store double f0x3FEB7095010F9356, ptr @cs.0, align 16, !tbaa !15
  store double f0xBFDE30DB485DB660, ptr @ca.1, align 8, !tbaa !15
  store double f0x3FEC373AFE3FA80C, ptr @cs.1, align 8, !tbaa !15
  store double f0xBFD40E604F4701FC, ptr @ca.2, align 16, !tbaa !15
  store double f0x3FEE635B9EE7B56E, ptr @cs.2, align 16, !tbaa !15
  store double f0xBFC748EE85851AEC, ptr @ca.3, align 8, !tbaa !15
  store double f0x3FEF77502A0DD15B, ptr @cs.3, align 8, !tbaa !15
  store double f0xBFB83603A7F2535A, ptr @ca.4, align 16, !tbaa !15
  store double f0x3FEFDB482DD30F5B, ptr @cs.4, align 16, !tbaa !15
  store double f0xBFA4F970DD8206D0, ptr @ca.5, align 8, !tbaa !15
  store double f0x3FEFF91F901A8104, ptr @cs.5, align 8, !tbaa !15
  store double f0xBF8D14239D59A7C1, ptr @ca.6, align 16, !tbaa !15
  store double f0x3FEFFF2C98DBE44E, ptr @cs.6, align 16, !tbaa !15
  store double f0xBF6E4F68C708D3F4, ptr @ca.7, align 8, !tbaa !15
  store double f0x3FEFFFF1A52805D2, ptr @cs.7, align 8, !tbaa !15
  store <2 x double> <double f0x3FA65547C4694E11, double f0x3FC0B5150F6DA2D0>, ptr @win, align 16, !tbaa !15
  store <2 x double> <double f0x3FCBB44B13B62571, double f0x3FD33EC389A5A81E>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 16), align 16, !tbaa !15
  store <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FDD8D4A0E345738>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 32), align 16, !tbaa !15
  store <2 x double> <double f0x3FE1318EF2C01A5B, double f0x3FE37AF93F9513EA>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 48), align 16, !tbaa !15
  store <2 x double> <double f0x3FE59E6F5AE6A0A6, double f0x3FE797C6A435CE84>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 64), align 16, !tbaa !15
  store <2 x double> <double f0x3FE963268B572492, double f0x3FEAFD100EAFC290>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 80), align 16, !tbaa !15
  store <2 x double> <double f0x3FEC62648AF65770, double f0x3FED906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 96), align 16, !tbaa !15
  store <2 x double> <double f0x3FEE84D9692357E0, double f0x3FEF3DD11FB974B6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !15
  store <2 x double> <double f0x3FEFB9EA92EC689B, double f0x3FEFF833F9DA45F7>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !15
  store <2 x double> <double f0x3FEFF833F9DA45F7, double f0x3FEFB9EA92EC689B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 144), align 16, !tbaa !15
  store <2 x double> <double f0x3FEF3DD11FB974B6, double f0x3FEE84D9692357E1>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 160), align 16, !tbaa !15
  store <2 x double> <double f0x3FED906BCF328D46, double f0x3FEC62648AF65772>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !15
  store <2 x double> <double f0x3FEAFD100EAFC291, double f0x3FE963268B572492>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !15
  store <2 x double> <double f0x3FE797C6A435CE85, double f0x3FE59E6F5AE6A0A8>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !15
  store <2 x double> <double f0x3FE37AF93F9513EC, double f0x3FE1318EF2C01A5D>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !15
  store <2 x double> <double f0x3FDD8D4A0E345738, double f0x3FD87DE2A6AEA965>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !15
  store <2 x double> <double f0x3FD33EC389A5A822, double f0x3FCBB44B13B6257C>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !15
  store <2 x double> <double f0x3FC0B5150F6DA2D0, double f0x3FA65547C4694E1B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !15
  store <2 x double> <double f0x3FA65547C4694E11, double f0x3FC0B5150F6DA2D0>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), align 16, !tbaa !15
  store <2 x double> <double f0x3FCBB44B13B62571, double f0x3FD33EC389A5A81E>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 304), align 16, !tbaa !15
  store <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FDD8D4A0E345738>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 320), align 16, !tbaa !15
  store <2 x double> <double f0x3FE1318EF2C01A5B, double f0x3FE37AF93F9513EA>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 336), align 16, !tbaa !15
  store <2 x double> <double f0x3FE59E6F5AE6A0A6, double f0x3FE797C6A435CE84>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 352), align 16, !tbaa !15
  store <2 x double> <double f0x3FE963268B572492, double f0x3FEAFD100EAFC290>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 368), align 16, !tbaa !15
  store <2 x double> <double f0x3FEC62648AF65770, double f0x3FED906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 384), align 16, !tbaa !15
  store <2 x double> <double f0x3FEE84D9692357E0, double f0x3FEF3DD11FB974B6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !15
  store <2 x double> <double f0x3FEFB9EA92EC689B, double f0x3FEFF833F9DA45F7>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !15
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !15
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !15
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !15
  store <2 x double> <double f0x3FEFB9EA92EC689C, double f0x3FED906BCF328D49>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !15
  store <2 x double> <double f0x3FE963268B572498, double f0x3FE37AF93F9513ED>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !15
  store <2 x double> <double f0x3FD87DE2A6AEA96F, double f0x3FC0B5150F6DA2F6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @win, i64 528), i8 0, i64 48, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @win, i64 864), i8 0, i64 48, i1 false)
  store <2 x double> <double f0x3FC0B5150F6DA2F6, double f0x3FD87DE2A6AEA96F>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 912), align 16, !tbaa !15
  store <2 x double> <double f0x3FE37AF93F9513ED, double f0x3FE963268B572498>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 928), align 16, !tbaa !15
  %i.b = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !15
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.c, ptr getelementptr inbounds nuw (i8, ptr @win, i64 944), align 16, !tbaa !15
  %i.d = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !15
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.e, ptr getelementptr inbounds nuw (i8, ptr @win, i64 960), align 16, !tbaa !15
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !15
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.g, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !15
  %i.h = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !15
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.i, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !15
  store <2 x double> <double f0x3FEFF833F9DA45F7, double f0x3FEFB9EA92EC689B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1008), align 16, !tbaa !15
  store <2 x double> <double f0x3FEF3DD11FB974B6, double f0x3FEE84D9692357E0>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1024), align 16, !tbaa !15
  store <2 x double> <double f0x3FED906BCF328D46, double f0x3FEC62648AF65770>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !15
  store <2 x double> <double f0x3FEAFD100EAFC290, double f0x3FE963268B572492>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !15
  store <2 x double> <double f0x3FE797C6A435CE84, double f0x3FE59E6F5AE6A0A6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !15
  store <2 x double> <double f0x3FE37AF93F9513EA, double f0x3FE1318EF2C01A5B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !15
  store <2 x double> <double f0x3FDD8D4A0E345738, double f0x3FD87DE2A6AEA963>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !15
  store <2 x double> <double f0x3FD33EC389A5A81E, double f0x3FCBB44B13B62571>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !15
  store <2 x double> <double f0x3FC0B5150F6DA2D0, double f0x3FA65547C4694E11>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !15
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader204, %.preheader203
  %indvars.iv = phi i64 [ 11, %.preheader204 ], [ %indvars.iv.next, %.preheader203 ] ; 3 uses
  %.0184 = phi ptr [ @cos_l, %.preheader204 ], [ %i.cf, %.preheader203 ] ; 23 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @all, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = shl nsw i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fmul nnan double %i.n, f0x3F9657184AE74487 ; 18 uses
  %i.p = fmul nnan double %i.o, 3.800000e+01
  %i.q = tail call double @cos(double noundef %i.p) #6, !tbaa !4
  %i.r = fmul nnan double %i.o, 4.200000e+01
  %i.s = tail call double @cos(double noundef %i.r) #6, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %.0184, i64 16
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1
  %i.w = fmul <2 x double> %i.v, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.w, ptr %.0184, align 8, !tbaa !15
  %i.x = fmul nnan double %i.o, 4.600000e+01
  %i.y = tail call double @cos(double noundef %i.x) #6, !tbaa !4
  %i.z = fmul nnan double %i.o, 5.000000e+01
  %i.aa = tail call double @cos(double noundef %i.z) #6, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.0184, i64 32
  %i.ac = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = fmul <2 x double> %i.ad, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.ae, ptr %i.t, align 8, !tbaa !15
  %i.af = fmul nnan double %i.o, 5.400000e+01
  %i.ag = tail call double @cos(double noundef %i.af) #6, !tbaa !4
  %i.ah = fmul nnan double %i.o, 5.800000e+01
  %i.ai = tail call double @cos(double noundef %i.ah) #6, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0184, i64 48
  %i.ak = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = fmul <2 x double> %i.al, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.am, ptr %i.ab, align 8, !tbaa !15
  %i.an = fmul nnan double %i.o, 6.200000e+01
  %i.ao = tail call double @cos(double noundef %i.an) #6, !tbaa !4
  %i.ap = fmul nnan double %i.o, 6.600000e+01
  %i.aq = tail call double @cos(double noundef %i.ap) #6, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0184, i64 64
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = fmul <2 x double> %i.at, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.au, ptr %i.aj, align 8, !tbaa !15
  %i.av = fmul nnan double %i.o, 7.000000e+01
  %i.aw = tail call double @cos(double noundef %i.av) #6, !tbaa !4
  %i.ax = fmul nnan double %i.o, 1.100000e+02
  %i.ay = tail call double @cos(double noundef %i.ax) #6, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.0184, i64 80
  %i.ba = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ay, i64 1
  %i.bc = fmul <2 x double> %i.bb, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.bc, ptr %i.ar, align 8, !tbaa !15
  %i.bd = fmul nnan double %i.o, 1.140000e+02
  %i.be = tail call double @cos(double noundef %i.bd) #6, !tbaa !4
  %i.bf = fmul nnan double %i.o, 1.180000e+02
  %i.bg = tail call double @cos(double noundef %i.bf) #6, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.0184, i64 96
  %i.bi = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = fmul <2 x double> %i.bj, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.bk, ptr %i.az, align 8, !tbaa !15
  %i.bl = fmul nnan double %i.o, 1.220000e+02
  %i.bm = tail call double @cos(double noundef %i.bl) #6, !tbaa !4
  %i.bn = fmul nnan double %i.o, 1.260000e+02
  %i.bo = tail call double @cos(double noundef %i.bn) #6, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.0184, i64 112
  %i.bq = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bo, i64 1
  %i.bs = fmul <2 x double> %i.br, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.bs, ptr %i.bh, align 8, !tbaa !15
  %i.bt = fmul nnan double %i.o, 1.300000e+02
  %i.bu = tail call double @cos(double noundef %i.bt) #6, !tbaa !4
  %i.bv = fmul nnan double %i.o, 1.340000e+02
  %i.bw = tail call double @cos(double noundef %i.bv) #6, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.0184, i64 128
  %i.by = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bw, i64 1
  %i.ca = fmul <2 x double> %i.bz, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.ca, ptr %i.bp, align 8, !tbaa !15
  %i.cb = fmul nnan double %i.o, 1.380000e+02
  %i.cc = tail call double @cos(double noundef %i.cb) #6, !tbaa !4
  %i.cd = fmul nnan double %i.o, 1.420000e+02
  %i.ce = tail call double @cos(double noundef %i.cd) #6, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %.0184, i64 144 ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.ce, i64 1
  %i.ci = fmul <2 x double> %i.ch, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.ci, ptr %i.bx, align 8, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader201.preheader, label %.preheader203, !llvm.loop !34

.preheader201.preheader:                          ; preds = %.preheader203
  %i.cj = getelementptr inbounds nuw i8, ptr %.0184, i64 160
  store <2 x double> <double f0xBFB150DD8DD9D8BF, double f0x3FA5C53B3ED42489>, ptr %i.cf, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.0184, i64 176
  store <2 x double> <double f0xBF8DB3B3A9A67635, double f0x3FB69105D1310418>, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %.0184, i64 192
  store <2 x double> <double f0xBFBA477C4665D2FD, double f0x3FBC337B2D43EB39>, ptr %i.ck, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %.0184, i64 208
  store <2 x double> <double f0x3F8DB3B3A9A6765A, double f0x3FBA477C4665D2EF>, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %.0184, i64 224
  store <2 x double> <double f0xBFB150DD8DD9D8C0, double f0xBFBC337B2D43EB38>, ptr %i.cm, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %.0184, i64 240
  store <2 x double> <double f0x3FA5C53B3ED424BF, double f0x3FB69105D1310415>, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.0184, i64 256
  store <2 x double> <double f0x3FBC337B2D43EB35, double f0x3FA5C53B3ED424BE>, ptr %i.co, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %.0184, i64 272
  store <2 x double> <double f0xBFB69105D1310415, double f0x3F8DB3B3A9A676B8>, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %.0184, i64 288
  store <2 x double> <double f0xBFBA477C4665D2EA, double f0xBFB150DD8DD9D8CB>, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %.0184, i64 304
  store <2 x double> <double f0xBFB69105D131040F, double f0xBFBA477C4665D2E8>, ptr %i.cr, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.0184, i64 320
  store <2 x double> <double f0xBFBC337B2D43EB34, double f0xBFB150DD8DD9D8D2>, ptr %i.cs, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %.0184, i64 336
  store <2 x double> <double f0xBFA5C53B3ED424D2, double f0xBF8DB3B3A9A67701>, ptr %i.ct, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %.0184, i64 352
  store <2 x double> <double f0xBFBA477C4665D2F0, double f0xBFA5C53B3ED424C1>, ptr %i.cu, align 8, !tbaa !15
  store <2 x double> <double f0x3FA5C53B3ED424D4, double f0xBFBA477C4665D2E6>, ptr %i.cv, align 8, !tbaa !15
  %i.cw = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 1984), align 16, !tbaa !15 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cx = load double, ptr @enwindow, align 16, !tbaa !15 ; 3 uses
  %i.cy = fdiv double %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double %i.cy, ptr %i.cz, align 8, !tbaa !15
  %i.da = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 8), align 8, !tbaa !15
  %i.db = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dd = fdiv <2 x double> %i.da, %i.dc
  store <2 x double> %i.dd, ptr @enwindow, align 16, !tbaa !15
  %i.de = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 24), align 8, !tbaa !15
  %i.df = fdiv <2 x double> %i.de, %i.dc
  store <2 x double> %i.df, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 16), align 16, !tbaa !15
  %i.dg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 40), align 8, !tbaa !15
  %i.dh = fdiv <2 x double> %i.dg, %i.dc
  store <2 x double> %i.dh, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 32), align 16, !tbaa !15
  %i.di = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), align 8, !tbaa !15
  %i.dj = fdiv double %i.di, %i.cx
  store double %i.dj, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 48), align 16, !tbaa !15
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader201.preheader, %.preheader198
  %indvars.iv273 = phi i64 [ 14, %.preheader201.preheader ], [ %indvars.iv.next274, %.preheader198 ] ; 4 uses
  %.1172236 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), %.preheader201.preheader ], [ %i.fh, %.preheader198 ] ; 22 uses
  %.1176235 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 64), %.preheader201.preheader ], [ %.2177.14, %.preheader198 ] ; 24 uses
  %i.dk = load double, ptr %.1176235, align 8, !tbaa !15 ; 16 uses
  %i.dl = fdiv double %i.dk, %i.cw                ; 2 uses
  %i.dm = sub nuw nsw i64 30, %indvars.iv273
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dm
  store double %i.dl, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv273
  store double %i.dl, ptr %i.do, align 8, !tbaa !15
  %.2177231 = getelementptr inbounds nuw i8, ptr %.1176235, i64 8
  %i.dp = load double, ptr %.2177231, align 8, !tbaa !15
  %i.dq = fdiv double %i.dp, %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %.1172236, i64 8
  store double %i.dq, ptr %.1172236, align 8, !tbaa !15
  %.2177 = getelementptr inbounds nuw i8, ptr %.1176235, i64 16
  %i.ds = load double, ptr %.2177, align 8, !tbaa !15
  %i.dt = fdiv double %i.ds, %i.dk
  %i.du = getelementptr inbounds nuw i8, ptr %.1172236, i64 16
  store double %i.dt, ptr %i.dr, align 8, !tbaa !15
  %.2177.1 = getelementptr inbounds nuw i8, ptr %.1176235, i64 24
  %i.dv = load double, ptr %.2177.1, align 8, !tbaa !15
  %i.dw = fdiv double %i.dv, %i.dk
  %i.dx = getelementptr inbounds nuw i8, ptr %.1172236, i64 24
  store double %i.dw, ptr %i.du, align 8, !tbaa !15
  %.2177.2 = getelementptr inbounds nuw i8, ptr %.1176235, i64 32
  %i.dy = load double, ptr %.2177.2, align 8, !tbaa !15
  %i.dz = fdiv double %i.dy, %i.dk
  %i.ea = getelementptr inbounds nuw i8, ptr %.1172236, i64 32
  store double %i.dz, ptr %i.dx, align 8, !tbaa !15
  %.2177.3 = getelementptr inbounds nuw i8, ptr %.1176235, i64 40
  %i.eb = load double, ptr %.2177.3, align 8, !tbaa !15
  %i.ec = fdiv double %i.eb, %i.dk
  %i.ed = getelementptr inbounds nuw i8, ptr %.1172236, i64 40
  store double %i.ec, ptr %i.ea, align 8, !tbaa !15
  %.2177.4 = getelementptr inbounds nuw i8, ptr %.1176235, i64 48
  %i.ee = load double, ptr %.2177.4, align 8, !tbaa !15
  %i.ef = fdiv double %i.ee, %i.dk
  %i.eg = getelementptr inbounds nuw i8, ptr %.1172236, i64 48
  store double %i.ef, ptr %i.ed, align 8, !tbaa !15
  %.2177.5 = getelementptr inbounds nuw i8, ptr %.1176235, i64 56
  %i.eh = load double, ptr %.2177.5, align 8, !tbaa !15
  %i.ei = fdiv double %i.eh, %i.dk
  %i.ej = getelementptr inbounds nuw i8, ptr %.1172236, i64 56
  store double %i.ei, ptr %i.eg, align 8, !tbaa !15
  %.2177.6 = getelementptr inbounds nuw i8, ptr %.1176235, i64 64
  %i.ek = load double, ptr %.2177.6, align 8, !tbaa !15
  %i.el = fdiv double %i.ek, %i.dk
  %i.em = getelementptr inbounds nuw i8, ptr %.1172236, i64 64
  store double %i.el, ptr %i.ej, align 8, !tbaa !15
  %.2177.7 = getelementptr inbounds nuw i8, ptr %.1176235, i64 72
  %i.en = load double, ptr %.2177.7, align 8, !tbaa !15
  %i.eo = fdiv double %i.en, %i.dk
  %i.ep = getelementptr inbounds nuw i8, ptr %.1172236, i64 72
  store double %i.eo, ptr %i.em, align 8, !tbaa !15
  %.2177.8 = getelementptr inbounds nuw i8, ptr %.1176235, i64 80
  %i.eq = load double, ptr %.2177.8, align 8, !tbaa !15
  %i.er = fdiv double %i.eq, %i.dk
  %i.es = getelementptr inbounds nuw i8, ptr %.1172236, i64 80
  store double %i.er, ptr %i.ep, align 8, !tbaa !15
  %.2177.9 = getelementptr inbounds nuw i8, ptr %.1176235, i64 88
  %i.et = load double, ptr %.2177.9, align 8, !tbaa !15
  %i.eu = fdiv double %i.et, %i.dk
  %i.ev = getelementptr inbounds nuw i8, ptr %.1172236, i64 88
  store double %i.eu, ptr %i.es, align 8, !tbaa !15
  %.2177.10 = getelementptr inbounds nuw i8, ptr %.1176235, i64 96
  %i.ew = load double, ptr %.2177.10, align 8, !tbaa !15
  %i.ex = fdiv double %i.ew, %i.dk
  %i.ey = getelementptr inbounds nuw i8, ptr %.1172236, i64 96
  store double %i.ex, ptr %i.ev, align 8, !tbaa !15
  %.2177.11 = getelementptr inbounds nuw i8, ptr %.1176235, i64 104
  %i.ez = load double, ptr %.2177.11, align 8, !tbaa !15
  %i.fa = fdiv double %i.ez, %i.dk
  %i.fb = getelementptr inbounds nuw i8, ptr %.1172236, i64 104
  store double %i.fa, ptr %i.ey, align 8, !tbaa !15
  %.2177.12 = getelementptr inbounds nuw i8, ptr %.1176235, i64 112
  %i.fc = load double, ptr %.2177.12, align 8, !tbaa !15
  %i.fd = fdiv double %i.fc, %i.dk
  %i.fe = getelementptr inbounds nuw i8, ptr %.1172236, i64 112
  store double %i.fd, ptr %i.fb, align 8, !tbaa !15
  %.2177.13 = getelementptr inbounds nuw i8, ptr %.1176235, i64 120
  %i.ff = load double, ptr %.2177.13, align 8, !tbaa !15
  %i.fg = fdiv double %i.ff, %i.dk
  %i.fh = getelementptr inbounds nuw i8, ptr %.1172236, i64 120 ; 2 uses
  store double %i.fg, ptr %i.fe, align 8, !tbaa !15
  %.2177.14 = getelementptr inbounds nuw i8, ptr %.1176235, i64 128
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -1
  %.not301 = icmp eq i64 %indvars.iv273, 0
  br i1 %.not301, label %.preheader197.preheader, label %.preheader198, !llvm.loop !35

.preheader197.preheader:                          ; preds = %.preheader198
  %.3178 = getelementptr inbounds nuw i8, ptr %.1176235, i64 136
  %i.fi = load double, ptr %.3178, align 8, !tbaa !15
  %i.fj = fdiv double %i.fi, %i.cw
  %i.fk = getelementptr inbounds nuw i8, ptr %.1172236, i64 128
  store double %i.fj, ptr %i.fh, align 8, !tbaa !15
  %.3178.1 = getelementptr inbounds nuw i8, ptr %.1176235, i64 144
  %i.fl = load double, ptr %.3178.1, align 8, !tbaa !15
  %i.fm = fdiv double %i.fl, %i.cw
  %i.fn = getelementptr inbounds nuw i8, ptr %.1172236, i64 136
  store double %i.fm, ptr %i.fk, align 8, !tbaa !15
  %.3178.2 = getelementptr inbounds nuw i8, ptr %.1176235, i64 152
  %i.fo = load double, ptr %.3178.2, align 8, !tbaa !15
  %i.fp = fdiv double %i.fo, %i.cw
  %i.fq = getelementptr inbounds nuw i8, ptr %.1172236, i64 144
  store double %i.fp, ptr %i.fn, align 8, !tbaa !15
  %.3178.3 = getelementptr inbounds nuw i8, ptr %.1176235, i64 160
  %i.fr = load double, ptr %.3178.3, align 8, !tbaa !15
  %i.fs = fdiv double %i.fr, %i.cw
  %i.ft = getelementptr inbounds nuw i8, ptr %.1172236, i64 152
  store double %i.fs, ptr %i.fq, align 8, !tbaa !15
  %.3178.4 = getelementptr inbounds nuw i8, ptr %.1176235, i64 168
  %i.fu = load double, ptr %.3178.4, align 8, !tbaa !15
  %i.fv = fdiv double %i.fu, %i.cw
  %i.fw = getelementptr inbounds nuw i8, ptr %.1172236, i64 160
  store double %i.fv, ptr %i.ft, align 8, !tbaa !15
  %.3178.5 = getelementptr inbounds nuw i8, ptr %.1176235, i64 176
  %i.fx = load double, ptr %.3178.5, align 8, !tbaa !15
  %i.fy = fdiv double %i.fx, %i.cw
  %i.fz = getelementptr inbounds nuw i8, ptr %.1172236, i64 168
  store double %i.fy, ptr %i.fw, align 8, !tbaa !15
  %.3178.6 = getelementptr inbounds nuw i8, ptr %.1176235, i64 184
  %i.ga = load double, ptr %.3178.6, align 8, !tbaa !15
  %i.gb = fdiv double %i.ga, %i.cw
  store double %i.gb, ptr %i.fz, align 8, !tbaa !15
  %i.gc = load <2 x double>, ptr %i.a, align 16, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gg = load <2 x double>, ptr %i.gf, align 16, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gi = load <2 x double>, ptr %i.gh, align 16, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gk = load <2 x double>, ptr %i.gj, align 16, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.gm = load <2 x double>, ptr %i.gl, align 16, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.go = load <2 x double>, ptr %i.gn, align 16, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gq = load <2 x double>, ptr %i.gp, align 16, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.gs = load <2 x double>, ptr %i.gr, align 16, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.gu = load double, ptr %i.gt, align 16, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.hb = load <2 x double>, ptr %i.gv, align 8, !tbaa !15
  %i.hc = load <2 x double>, ptr %i.gw, align 8, !tbaa !15
  %i.hd = load <2 x double>, ptr %i.gx, align 8, !tbaa !15
  %i.he = load <2 x double>, ptr %i.gy, align 8, !tbaa !15
  %i.hf = load <2 x double>, ptr %i.gz, align 8, !tbaa !15
  %i.hg = load <2 x double>, ptr %i.ha, align 8, !tbaa !15
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader197.preheader, %.preheader195
  %indvars.iv279 = phi i64 [ 15, %.preheader197.preheader ], [ %indvars.iv.next280, %.preheader195 ] ; 3 uses
  %.4179243 = phi ptr [ @mm, %.preheader197.preheader ], [ %i.qo, %.preheader195 ] ; 17 uses
  %i.hh = shl nuw nsw i64 %indvars.iv279, 1
  %i.hi = or disjoint i64 %i.hh, 1                ; 31 uses
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = uitofp nneg i32 %i.hj to double
  %i.hl = fmul nnan double %i.hk, f0x400921FB54442D18
  %i.hm = fmul nnan double %i.hl, 1.562500e-02
  %i.hn = tail call double @cos(double noundef %i.hm) #6, !tbaa !4
  %.tr = trunc i64 %i.hi to i32
  %i.ho = shl i32 %.tr, 1
  %i.hp = uitofp nneg i32 %i.ho to double
  %i.hq = fmul nnan double %i.hp, f0x400921FB54442D18
  %i.hr = fmul nnan double %i.hq, 1.562500e-02
  %i.hs = tail call double @cos(double noundef %i.hr) #6, !tbaa !4
  %i.ht = getelementptr inbounds nuw i8, ptr %.4179243, i64 16
  %i.hu = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hs, i64 1
  %i.hw = fmul <2 x double> %i.hv, %i.gc
  store <2 x double> %i.hw, ptr %.4179243, align 8, !tbaa !15
  %i.hx = trunc i64 %i.hi to i32
  %i.hy = mul i32 %i.hx, 3
  %i.hz = uitofp nneg i32 %i.hy to double
  %i.ia = fmul nnan double %i.hz, f0x400921FB54442D18
  %i.ib = fmul nnan double %i.ia, 1.562500e-02
  %i.ic = tail call double @cos(double noundef %i.ib) #6, !tbaa !4
  %.tr302 = trunc i64 %i.hi to i32
  %i.id = shl i32 %.tr302, 2
  %i.ie = uitofp nneg i32 %i.id to double
  %i.if = fmul nnan double %i.ie, f0x400921FB54442D18
  %i.ig = fmul nnan double %i.if, 1.562500e-02
  %i.ih = tail call double @cos(double noundef %i.ig) #6, !tbaa !4
  %i.ii = getelementptr inbounds nuw i8, ptr %.4179243, i64 32
  %i.ij = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ih, i64 1
  %i.il = fmul <2 x double> %i.ik, %i.ge
  store <2 x double> %i.il, ptr %i.ht, align 8, !tbaa !15
  %i.im = trunc i64 %i.hi to i32
  %i.in = mul i32 %i.im, 5
  %i.io = uitofp nneg i32 %i.in to double
  %i.ip = fmul nnan double %i.io, f0x400921FB54442D18
  %i.iq = fmul nnan double %i.ip, 1.562500e-02
  %i.ir = tail call double @cos(double noundef %i.iq) #6, !tbaa !4
  %i.is = trunc i64 %i.hi to i32
  %i.it = mul i32 %i.is, 6
  %i.iu = uitofp nneg i32 %i.it to double
  %i.iv = fmul nnan double %i.iu, f0x400921FB54442D18
  %i.iw = fmul nnan double %i.iv, 1.562500e-02
  %i.ix = tail call double @cos(double noundef %i.iw) #6, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %.4179243, i64 48
  %i.iz = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.ja = insertelement <2 x double> %i.iz, double %i.ix, i64 1
  %i.jb = fmul <2 x double> %i.ja, %i.gg
  store <2 x double> %i.jb, ptr %i.ii, align 8, !tbaa !15
  %i.jc = trunc i64 %i.hi to i32
  %i.jd = mul i32 %i.jc, 7
  %i.je = uitofp nneg i32 %i.jd to double
  %i.jf = fmul nnan double %i.je, f0x400921FB54442D18
  %i.jg = fmul nnan double %i.jf, 1.562500e-02
  %i.jh = tail call double @cos(double noundef %i.jg) #6, !tbaa !4
  %.tr303 = trunc i64 %i.hi to i32
  %i.ji = shl i32 %.tr303, 3
  %i.jj = uitofp nneg i32 %i.ji to double
  %i.jk = fmul nnan double %i.jj, f0x400921FB54442D18
  %i.jl = fmul nnan double %i.jk, 1.562500e-02
  %i.jm = tail call double @cos(double noundef %i.jl) #6, !tbaa !4
  %i.jn = getelementptr inbounds nuw i8, ptr %.4179243, i64 64
  %i.jo = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %i.jm, i64 1
  %i.jq = fmul <2 x double> %i.jp, %i.gi
  store <2 x double> %i.jq, ptr %i.iy, align 8, !tbaa !15
  %i.jr = trunc i64 %i.hi to i32
  %i.js = mul i32 %i.jr, 9
  %i.jt = uitofp nneg i32 %i.js to double
  %i.ju = fmul nnan double %i.jt, f0x400921FB54442D18
  %i.jv = fmul nnan double %i.ju, 1.562500e-02
  %i.jw = tail call double @cos(double noundef %i.jv) #6, !tbaa !4
  %i.jx = trunc i64 %i.hi to i32
  %i.jy = mul i32 %i.jx, 10
  %i.jz = uitofp nneg i32 %i.jy to double
  %i.ka = fmul nnan double %i.jz, f0x400921FB54442D18
  %i.kb = fmul nnan double %i.ka, 1.562500e-02
  %i.kc = tail call double @cos(double noundef %i.kb) #6, !tbaa !4
  %i.kd = getelementptr inbounds nuw i8, ptr %.4179243, i64 80
  %i.ke = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kc, i64 1
  %i.kg = fmul <2 x double> %i.kf, %i.gk
  store <2 x double> %i.kg, ptr %i.jn, align 8, !tbaa !15
  %i.kh = trunc i64 %i.hi to i32
  %i.ki = mul i32 %i.kh, 11
  %i.kj = uitofp nneg i32 %i.ki to double
  %i.kk = fmul nnan double %i.kj, f0x400921FB54442D18
  %i.kl = fmul nnan double %i.kk, 1.562500e-02
  %i.km = tail call double @cos(double noundef %i.kl) #6, !tbaa !4
  %i.kn = trunc i64 %i.hi to i32
  %i.ko = mul i32 %i.kn, 12
  %i.kp = uitofp nneg i32 %i.ko to double
  %i.kq = fmul nnan double %i.kp, f0x400921FB54442D18
  %i.kr = fmul nnan double %i.kq, 1.562500e-02
  %i.ks = tail call double @cos(double noundef %i.kr) #6, !tbaa !4
  %i.kt = getelementptr inbounds nuw i8, ptr %.4179243, i64 96
  %i.ku = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %i.ks, i64 1
  %i.kw = fmul <2 x double> %i.kv, %i.gm
  store <2 x double> %i.kw, ptr %i.kd, align 8, !tbaa !15
  %i.kx = trunc i64 %i.hi to i32
  %i.ky = mul i32 %i.kx, 13
  %i.kz = uitofp nneg i32 %i.ky to double
  %i.la = fmul nnan double %i.kz, f0x400921FB54442D18
  %i.lb = fmul nnan double %i.la, 1.562500e-02
  %i.lc = tail call double @cos(double noundef %i.lb) #6, !tbaa !4
  %i.ld = trunc i64 %i.hi to i32
  %i.le = mul i32 %i.ld, 14
  %i.lf = uitofp nneg i32 %i.le to double
  %i.lg = fmul nnan double %i.lf, f0x400921FB54442D18
  %i.lh = fmul nnan double %i.lg, 1.562500e-02
  %i.li = tail call double @cos(double noundef %i.lh) #6, !tbaa !4
  %i.lj = getelementptr inbounds nuw i8, ptr %.4179243, i64 112
  %i.lk = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.li, i64 1
  %i.lm = fmul <2 x double> %i.ll, %i.go
  store <2 x double> %i.lm, ptr %i.kt, align 8, !tbaa !15
  %i.ln = trunc i64 %i.hi to i32
  %i.lo = mul i32 %i.ln, 15
  %i.lp = uitofp nneg i32 %i.lo to double
  %i.lq = fmul nnan double %i.lp, f0x400921FB54442D18
  %i.lr = fmul nnan double %i.lq, 1.562500e-02
  %i.ls = tail call double @cos(double noundef %i.lr) #6, !tbaa !4
  %.tr304 = trunc i64 %i.hi to i32
  %i.lt = shl i32 %.tr304, 4
  %i.lu = uitofp nneg i32 %i.lt to double
  %i.lv = fmul nnan double %i.lu, f0x400921FB54442D18
  %i.lw = fmul nnan double %i.lv, 1.562500e-02
  %i.lx = tail call double @cos(double noundef %i.lw) #6, !tbaa !4
  %i.ly = getelementptr inbounds nuw i8, ptr %.4179243, i64 128
  %i.lz = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.lx, i64 1
  %i.mb = fmul <2 x double> %i.ma, %i.gq
  store <2 x double> %i.mb, ptr %i.lj, align 8, !tbaa !15
  %i.mc = trunc i64 %i.hi to i32
  %i.md = mul i32 %i.mc, 17
  %i.me = uitofp nneg i32 %i.md to double
  %i.mf = fmul nnan double %i.me, f0x400921FB54442D18
  %i.mg = fmul nnan double %i.mf, 1.562500e-02
  %i.mh = tail call double @cos(double noundef %i.mg) #6, !tbaa !4
  %i.mi = trunc i64 %i.hi to i32
  %i.mj = mul i32 %i.mi, 18
  %i.mk = uitofp nneg i32 %i.mj to double
  %i.ml = fmul nnan double %i.mk, f0x400921FB54442D18
  %i.mm = fmul nnan double %i.ml, 1.562500e-02
  %i.mn = tail call double @cos(double noundef %i.mm) #6, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %.4179243, i64 144
  %i.mp = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mn, i64 1
  %i.mr = fmul <2 x double> %i.mq, %i.gs
  store <2 x double> %i.mr, ptr %i.ly, align 8, !tbaa !15
  %i.ms = trunc i64 %i.hi to i32
  %i.mt = mul i32 %i.ms, 19
  %i.mu = uitofp nneg i32 %i.mt to double
  %i.mv = fmul nnan double %i.mu, f0x400921FB54442D18
  %i.mw = fmul nnan double %i.mv, 1.562500e-02
  %i.mx = tail call double @cos(double noundef %i.mw) #6, !tbaa !4
  %i.my = fmul double %i.mx, %i.gu
  %i.mz = getelementptr inbounds nuw i8, ptr %.4179243, i64 152
  store double %i.my, ptr %i.mo, align 8, !tbaa !15
  %i.na = trunc i64 %i.hi to i32
  %i.nb = mul i32 %i.na, 20
  %i.nc = uitofp nneg i32 %i.nb to double
  %i.nd = fmul nnan double %i.nc, f0x400921FB54442D18
  %i.ne = fmul nnan double %i.nd, 1.562500e-02
  %i.nf = tail call double @cos(double noundef %i.ne) #6, !tbaa !4
  %i.ng = trunc i64 %i.hi to i32
  %i.nh = mul i32 %i.ng, 21
  %i.ni = uitofp nneg i32 %i.nh to double
  %i.nj = fmul nnan double %i.ni, f0x400921FB54442D18
  %i.nk = fmul nnan double %i.nj, 1.562500e-02
  %i.nl = tail call double @cos(double noundef %i.nk) #6, !tbaa !4
  %i.nm = getelementptr inbounds nuw i8, ptr %.4179243, i64 168
  %i.nn = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nl, i64 1
  %i.np = fmul <2 x double> %i.no, %i.hb
  store <2 x double> %i.np, ptr %i.mz, align 8, !tbaa !15
  %i.nq = trunc i64 %i.hi to i32
  %i.nr = mul i32 %i.nq, 22
  %i.ns = uitofp nneg i32 %i.nr to double
  %i.nt = fmul nnan double %i.ns, f0x400921FB54442D18
  %i.nu = fmul nnan double %i.nt, 1.562500e-02
  %i.nv = tail call double @cos(double noundef %i.nu) #6, !tbaa !4
  %i.nw = trunc i64 %i.hi to i32
  %i.nx = mul i32 %i.nw, 23
  %i.ny = uitofp nneg i32 %i.nx to double
  %i.nz = fmul nnan double %i.ny, f0x400921FB54442D18
  %i.oa = fmul nnan double %i.nz, 1.562500e-02
  %i.ob = tail call double @cos(double noundef %i.oa) #6, !tbaa !4
  %i.oc = getelementptr inbounds nuw i8, ptr %.4179243, i64 184
  %i.od = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %i.ob, i64 1
  %i.of = fmul <2 x double> %i.oe, %i.hc
  store <2 x double> %i.of, ptr %i.nm, align 8, !tbaa !15
  %i.og = trunc i64 %i.hi to i32
  %i.oh = mul i32 %i.og, 24
  %i.oi = uitofp nneg i32 %i.oh to double
  %i.oj = fmul nnan double %i.oi, f0x400921FB54442D18
  %i.ok = fmul nnan double %i.oj, 1.562500e-02
  %i.ol = tail call double @cos(double noundef %i.ok) #6, !tbaa !4
  %i.om = trunc i64 %i.hi to i32
  %i.on = mul i32 %i.om, 25
  %i.oo = uitofp nneg i32 %i.on to double
  %i.op = fmul nnan double %i.oo, f0x400921FB54442D18
  %i.oq = fmul nnan double %i.op, 1.562500e-02
  %i.or = tail call double @cos(double noundef %i.oq) #6, !tbaa !4
  %i.os = getelementptr inbounds nuw i8, ptr %.4179243, i64 200
  %i.ot = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.or, i64 1
  %i.ov = fmul <2 x double> %i.ou, %i.hd
  store <2 x double> %i.ov, ptr %i.oc, align 8, !tbaa !15
  %i.ow = trunc i64 %i.hi to i32
  %i.ox = mul i32 %i.ow, 26
  %i.oy = uitofp nneg i32 %i.ox to double
  %i.oz = fmul nnan double %i.oy, f0x400921FB54442D18
  %i.pa = fmul nnan double %i.oz, 1.562500e-02
  %i.pb = tail call double @cos(double noundef %i.pa) #6, !tbaa !4
  %i.pc = trunc i64 %i.hi to i32
  %i.pd = mul i32 %i.pc, 27
  %i.pe = uitofp nneg i32 %i.pd to double
  %i.pf = fmul nnan double %i.pe, f0x400921FB54442D18
  %i.pg = fmul nnan double %i.pf, 1.562500e-02
  %i.ph = tail call double @cos(double noundef %i.pg) #6, !tbaa !4
  %i.pi = getelementptr inbounds nuw i8, ptr %.4179243, i64 216
  %i.pj = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.ph, i64 1
  %i.pl = fmul <2 x double> %i.pk, %i.he
  store <2 x double> %i.pl, ptr %i.os, align 8, !tbaa !15
  %i.pm = trunc i64 %i.hi to i32
  %i.pn = mul i32 %i.pm, 28
  %i.po = uitofp nneg i32 %i.pn to double
  %i.pp = fmul nnan double %i.po, f0x400921FB54442D18
  %i.pq = fmul nnan double %i.pp, 1.562500e-02
  %i.pr = tail call double @cos(double noundef %i.pq) #6, !tbaa !4
  %i.ps = trunc i64 %i.hi to i32
  %i.pt = mul i32 %i.ps, 29
  %i.pu = uitofp nneg i32 %i.pt to double
  %i.pv = fmul nnan double %i.pu, f0x400921FB54442D18
  %i.pw = fmul nnan double %i.pv, 1.562500e-02
  %i.px = tail call double @cos(double noundef %i.pw) #6, !tbaa !4
  %i.py = getelementptr inbounds nuw i8, ptr %.4179243, i64 232
  %i.pz = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.px, i64 1
  %i.qb = fmul <2 x double> %i.qa, %i.hf
  store <2 x double> %i.qb, ptr %i.pi, align 8, !tbaa !15
  %i.qc = trunc i64 %i.hi to i32
  %i.qd = mul i32 %i.qc, 30
  %i.qe = uitofp nneg i32 %i.qd to double
  %i.qf = fmul nnan double %i.qe, f0x400921FB54442D18
  %i.qg = fmul nnan double %i.qf, 1.562500e-02
  %i.qh = tail call double @cos(double noundef %i.qg) #6, !tbaa !4
  %i.qi = trunc i64 %i.hi to i32
  %i.qj = mul i32 %i.qi, 31
  %i.qk = uitofp nneg i32 %i.qj to double
  %i.ql = fmul nnan double %i.qk, f0x400921FB54442D18
  %i.qm = fmul nnan double %i.ql, 1.562500e-02
  %i.qn = tail call double @cos(double noundef %i.qm) #6, !tbaa !4
  %i.qo = getelementptr inbounds nuw i8, ptr %.4179243, i64 248
  %i.qp = insertelement <2 x double> poison, double %i.qh, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.qn, i64 1
  %i.qr = fmul <2 x double> %i.qq, %i.hg
  store <2 x double> %i.qr, ptr %i.py, align 8, !tbaa !15
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, -1
  %.not305 = icmp eq i64 %indvars.iv279, 0
  br i1 %.not305, label %.preheader194, label %.preheader195, !llvm.loop !36

.preheader194:                                    ; preds = %.preheader195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.qs = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !15
  %i.qt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 72), align 8, !tbaa !15
  %i.qu = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qu, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !15
  %i.qv = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 72), align 8, !tbaa !15
  %i.qw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !15
  %i.qx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 216), align 8, !tbaa !15
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qy, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !15
  %i.qz = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qz, ptr getelementptr inbounds nuw (i8, ptr @win, i64 216), align 8, !tbaa !15
  %i.ra = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !15
  %i.rb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 360), align 8, !tbaa !15
  %i.rc = shufflevector <2 x double> %i.rb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !15
  %i.rd = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rd, ptr getelementptr inbounds nuw (i8, ptr @win, i64 360), align 8, !tbaa !15
  %i.re = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !15
  %i.rf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 504), align 8, !tbaa !15
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rg, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !15
  %i.rh = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rh, ptr getelementptr inbounds nuw (i8, ptr @win, i64 504), align 8, !tbaa !15
  %i.ri = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !15
  %i.rj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 936), align 8, !tbaa !15
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rk, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !15
  %i.rl = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rl, ptr getelementptr inbounds nuw (i8, ptr @win, i64 936), align 8, !tbaa !15
  %i.rm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !15
  %i.rn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1080), align 8, !tbaa !15
  %i.ro = shufflevector <2 x double> %i.rn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ro, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !15
  %i.rp = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rp, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1080), align 8, !tbaa !15
  %i.rq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !15
  %i.rr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 88), align 8, !tbaa !15
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rs, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !15
  %i.rt = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rt, ptr getelementptr inbounds nuw (i8, ptr @win, i64 88), align 8, !tbaa !15
  %i.ru = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !15
  %i.rv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 232), align 8, !tbaa !15
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rw, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !15
  %i.rx = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rx, ptr getelementptr inbounds nuw (i8, ptr @win, i64 232), align 8, !tbaa !15
  %i.ry = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !15
  %i.rz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 376), align 8, !tbaa !15
  %i.sa = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sa, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !15
  %i.sb = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sb, ptr getelementptr inbounds nuw (i8, ptr @win, i64 376), align 8, !tbaa !15
  %i.sc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !15
  %i.sd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 520), align 8, !tbaa !15
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.se, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !15
  %i.sf = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sf, ptr getelementptr inbounds nuw (i8, ptr @win, i64 520), align 8, !tbaa !15
  %i.sg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !15
  %i.sh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 952), align 8, !tbaa !15
  %i.si = shufflevector <2 x double> %i.sh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.si, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !15
  %i.sj = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sj, ptr getelementptr inbounds nuw (i8, ptr @win, i64 952), align 8, !tbaa !15
  %i.sk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !15
  %i.sl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1096), align 8, !tbaa !15
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sm, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !15
  %i.sn = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sn, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1096), align 8, !tbaa !15
  %i.so = fmul double %i.cw, f0x3F00000000000000
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.so, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 54 uses
  %wide.load = load <2 x double>, ptr @win, align 16, !tbaa !15
  %i.sp = fmul <2 x double> %broadcast.splat, %wide.load
  store <2 x double> %i.sp, ptr @win, align 16, !tbaa !15
  %wide.load308 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), align 16, !tbaa !15
  %i.sq = fmul <2 x double> %broadcast.splat, %wide.load308
  store <2 x double> %i.sq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), align 16, !tbaa !15
  %wide.load309 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 864), align 16, !tbaa !15
  %i.sr = fmul <2 x double> %broadcast.splat, %wide.load309
  store <2 x double> %i.sr, ptr getelementptr inbounds nuw (i8, ptr @win, i64 864), align 16, !tbaa !15
  %wide.load.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 16), align 16, !tbaa !15
  %i.ss = fmul <2 x double> %broadcast.splat, %wide.load.1
  store <2 x double> %i.ss, ptr getelementptr inbounds nuw (i8, ptr @win, i64 16), align 16, !tbaa !15
  %wide.load308.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 304), align 16, !tbaa !15
  %i.st = fmul <2 x double> %broadcast.splat, %wide.load308.1
  store <2 x double> %i.st, ptr getelementptr inbounds nuw (i8, ptr @win, i64 304), align 16, !tbaa !15
  %wide.load309.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 880), align 16, !tbaa !15
  %i.su = fmul <2 x double> %broadcast.splat, %wide.load309.1
  store <2 x double> %i.su, ptr getelementptr inbounds nuw (i8, ptr @win, i64 880), align 16, !tbaa !15
  %wide.load.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 32), align 16, !tbaa !15
  %i.sv = fmul <2 x double> %broadcast.splat, %wide.load.2
  store <2 x double> %i.sv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 32), align 16, !tbaa !15
  %wide.load308.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 320), align 16, !tbaa !15
  %i.sw = fmul <2 x double> %broadcast.splat, %wide.load308.2
  store <2 x double> %i.sw, ptr getelementptr inbounds nuw (i8, ptr @win, i64 320), align 16, !tbaa !15
  %wide.load309.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 896), align 16, !tbaa !15
  %i.sx = fmul <2 x double> %broadcast.splat, %wide.load309.2
  store <2 x double> %i.sx, ptr getelementptr inbounds nuw (i8, ptr @win, i64 896), align 16, !tbaa !15
  %wide.load.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 48), align 16, !tbaa !15
  %i.sy = fmul <2 x double> %broadcast.splat, %wide.load.3
  store <2 x double> %i.sy, ptr getelementptr inbounds nuw (i8, ptr @win, i64 48), align 16, !tbaa !15
  %wide.load308.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 336), align 16, !tbaa !15
  %i.sz = fmul <2 x double> %broadcast.splat, %wide.load308.3
  store <2 x double> %i.sz, ptr getelementptr inbounds nuw (i8, ptr @win, i64 336), align 16, !tbaa !15
  %wide.load309.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 912), align 16, !tbaa !15
  %i.ta = fmul <2 x double> %broadcast.splat, %wide.load309.3
  store <2 x double> %i.ta, ptr getelementptr inbounds nuw (i8, ptr @win, i64 912), align 16, !tbaa !15
  %wide.load.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 64), align 16, !tbaa !15
  %i.tb = fmul <2 x double> %broadcast.splat, %wide.load.4
  store <2 x double> %i.tb, ptr getelementptr inbounds nuw (i8, ptr @win, i64 64), align 16, !tbaa !15
  %wide.load308.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 352), align 16, !tbaa !15
  %i.tc = fmul <2 x double> %broadcast.splat, %wide.load308.4
  store <2 x double> %i.tc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 352), align 16, !tbaa !15
  %wide.load309.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 928), align 16, !tbaa !15
  %i.td = fmul <2 x double> %broadcast.splat, %wide.load309.4
  store <2 x double> %i.td, ptr getelementptr inbounds nuw (i8, ptr @win, i64 928), align 16, !tbaa !15
  %wide.load.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 80), align 16, !tbaa !15
  %i.te = fmul <2 x double> %broadcast.splat, %wide.load.5
  store <2 x double> %i.te, ptr getelementptr inbounds nuw (i8, ptr @win, i64 80), align 16, !tbaa !15
  %wide.load308.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 368), align 16, !tbaa !15
  %i.tf = fmul <2 x double> %broadcast.splat, %wide.load308.5
  store <2 x double> %i.tf, ptr getelementptr inbounds nuw (i8, ptr @win, i64 368), align 16, !tbaa !15
  %wide.load309.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 944), align 16, !tbaa !15
  %i.tg = fmul <2 x double> %broadcast.splat, %wide.load309.5
  store <2 x double> %i.tg, ptr getelementptr inbounds nuw (i8, ptr @win, i64 944), align 16, !tbaa !15
  %wide.load.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 96), align 16, !tbaa !15
  %i.th = fmul <2 x double> %broadcast.splat, %wide.load.6
  store <2 x double> %i.th, ptr getelementptr inbounds nuw (i8, ptr @win, i64 96), align 16, !tbaa !15
  %wide.load308.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 384), align 16, !tbaa !15
  %i.ti = fmul <2 x double> %broadcast.splat, %wide.load308.6
  store <2 x double> %i.ti, ptr getelementptr inbounds nuw (i8, ptr @win, i64 384), align 16, !tbaa !15
  %wide.load309.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 960), align 16, !tbaa !15
  %i.tj = fmul <2 x double> %broadcast.splat, %wide.load309.6
  store <2 x double> %i.tj, ptr getelementptr inbounds nuw (i8, ptr @win, i64 960), align 16, !tbaa !15
  %wide.load.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !15
  %i.tk = fmul <2 x double> %broadcast.splat, %wide.load.7
  store <2 x double> %i.tk, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !15
  %wide.load308.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !15
  %i.tl = fmul <2 x double> %broadcast.splat, %wide.load308.7
  store <2 x double> %i.tl, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !15
  %wide.load309.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !15
  %i.tm = fmul <2 x double> %broadcast.splat, %wide.load309.7
  store <2 x double> %i.tm, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !15
  %wide.load.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !15
  %i.tn = fmul <2 x double> %broadcast.splat, %wide.load.8
  store <2 x double> %i.tn, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !15
  %wide.load308.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !15
  %i.to = fmul <2 x double> %broadcast.splat, %wide.load308.8
  store <2 x double> %i.to, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !15
  %wide.load309.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !15
  %i.tp = fmul <2 x double> %broadcast.splat, %wide.load309.8
  store <2 x double> %i.tp, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !15
  %wide.load.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 144), align 16, !tbaa !15
  %i.tq = fmul <2 x double> %broadcast.splat, %wide.load.9
  store <2 x double> %i.tq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 144), align 16, !tbaa !15
  %wide.load308.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !15
  %i.tr = fmul <2 x double> %broadcast.splat, %wide.load308.9
  store <2 x double> %i.tr, ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !15
  %wide.load309.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1008), align 16, !tbaa !15
  %i.ts = fmul <2 x double> %broadcast.splat, %wide.load309.9
  store <2 x double> %i.ts, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1008), align 16, !tbaa !15
  %wide.load.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 160), align 16, !tbaa !15
  %i.tt = fmul <2 x double> %broadcast.splat, %wide.load.10
  store <2 x double> %i.tt, ptr getelementptr inbounds nuw (i8, ptr @win, i64 160), align 16, !tbaa !15
  %wide.load308.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !15
  %i.tu = fmul <2 x double> %broadcast.splat, %wide.load308.10
  store <2 x double> %i.tu, ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !15
  %wide.load309.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1024), align 16, !tbaa !15
  %i.tv = fmul <2 x double> %broadcast.splat, %wide.load309.10
  store <2 x double> %i.tv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1024), align 16, !tbaa !15
  %wide.load.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !15
  %i.tw = fmul <2 x double> %broadcast.splat, %wide.load.11
  store <2 x double> %i.tw, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !15
  %wide.load308.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !15
  %i.tx = fmul <2 x double> %broadcast.splat, %wide.load308.11
  store <2 x double> %i.tx, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !15
  %wide.load309.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !15
  %i.ty = fmul <2 x double> %broadcast.splat, %wide.load309.11
  store <2 x double> %i.ty, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !15
  %wide.load.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !15
  %i.tz = fmul <2 x double> %broadcast.splat, %wide.load.12
  store <2 x double> %i.tz, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !15
  %wide.load308.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !15
  %i.ua = fmul <2 x double> %broadcast.splat, %wide.load308.12
  store <2 x double> %i.ua, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !15
  %wide.load309.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !15
  %i.ub = fmul <2 x double> %broadcast.splat, %wide.load309.12
  store <2 x double> %i.ub, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !15
  %wide.load.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !15
  %i.uc = fmul <2 x double> %broadcast.splat, %wide.load.13
  store <2 x double> %i.uc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !15
  %wide.load308.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !15
  %i.ud = fmul <2 x double> %broadcast.splat, %wide.load308.13
  store <2 x double> %i.ud, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !15
  %wide.load309.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !15
  %i.ue = fmul <2 x double> %broadcast.splat, %wide.load309.13
  store <2 x double> %i.ue, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !15
  %wide.load.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !15
  %i.uf = fmul <2 x double> %broadcast.splat, %wide.load.14
  store <2 x double> %i.uf, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !15
  %wide.load308.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !15
  %i.ug = fmul <2 x double> %broadcast.splat, %wide.load308.14
  store <2 x double> %i.ug, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !15
  %wide.load309.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !15
  %i.uh = fmul <2 x double> %broadcast.splat, %wide.load309.14
  store <2 x double> %i.uh, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !15
  %wide.load.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !15
  %i.ui = fmul <2 x double> %broadcast.splat, %wide.load.15
  store <2 x double> %i.ui, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !15
  %wide.load308.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 528), align 16, !tbaa !15
  %i.uj = fmul <2 x double> %broadcast.splat, %wide.load308.15
  store <2 x double> %i.uj, ptr getelementptr inbounds nuw (i8, ptr @win, i64 528), align 16, !tbaa !15
  %wide.load309.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !15
  %i.uk = fmul <2 x double> %broadcast.splat, %wide.load309.15
  store <2 x double> %i.uk, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !15
  %wide.load.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !15
  %i.ul = fmul <2 x double> %broadcast.splat, %wide.load.16
  store <2 x double> %i.ul, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !15
  %wide.load308.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !15
  %i.um = fmul <2 x double> %broadcast.splat, %wide.load308.16
  store <2 x double> %i.um, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !15
  %wide.load309.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !15
  %i.un = fmul <2 x double> %broadcast.splat, %wide.load309.16
  store <2 x double> %i.un, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !15
  %wide.load.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !15
  %i.uo = fmul <2 x double> %broadcast.splat, %wide.load.17
  store <2 x double> %i.uo, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !15
  %wide.load308.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !15
  %i.up = fmul <2 x double> %broadcast.splat, %wide.load308.17
  store <2 x double> %i.up, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !15
  %wide.load309.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !15
  %i.uq = fmul <2 x double> %broadcast.splat, %wide.load309.17
  store <2 x double> %i.uq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !15
  %i.ur = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.us = shufflevector <2 x double> %i.ur, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ut = fmul <2 x double> %i.us, <double f0x3FEFB9EA92EC689B, double f0x3FED906BCF328D46>
  store <2 x double> <double f0x3FC0D9FD31C98BF8, double f0x3FDA827999FCEF32>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 576), align 16, !tbaa !15
  %i.uu = fmul <2 x double> %i.ut, splat (double f0x3F00000000000000)
  %i.uv = fmul <2 x double> %i.uu, splat (double f0x3FD5555555555555) ; 7 uses
  %i.uw = extractelement <2 x double> %i.uv, i64 0
  %i.ux = fmul double %i.uw, f0x3FEFB9EA92EC689C
  store double %i.ux, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 144), align 16, !tbaa !15
  %i.uy = fmul <2 x double> %i.uv, <double f0x3FE37AF93F9513EA, double f0x3FD87DE2A6AEA964>
  store <2 x double> %i.uy, ptr @cos_s, align 16, !tbaa !15
  %i.uz = fmul <2 x double> %i.uv, <double f0xBFED906BCF328D46, double f0xBFED906BCF328D47>
  store <2 x double> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 48), align 16, !tbaa !15
  %i.va = fmul <2 x double> %i.uv, <double f0xBFC0B5150F6DA2F1, double f0x3FED906BCF328D44>
  store <2 x double> %i.va, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 96), align 16, !tbaa !15
  %i.vb = fmul <2 x double> %i.uv, <double f0xBFD87DE2A6AEA965, double f0xBFD87DE2A6AEA971>
  store <2 x double> %i.vb, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 192), align 16, !tbaa !15
  %i.vc = fmul <2 x double> %i.uv, <double f0xBFE963268B572493, double f0x3FED906BCF328D4C>
  store <2 x double> %i.vc, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 240), align 16, !tbaa !15
  %i.vd = fmul double %i.cw, f0x3FE963268B572493
  %i.ve = fmul double %i.vd, f0x3F00000000000000
  %i.vf = fmul double %i.ve, f0x3FD5555555555555  ; 2 uses
  store double f0x3FE88DF153D6A674, ptr getelementptr inbounds nuw (i8, ptr @win, i64 592), align 16, !tbaa !15
  %i.vg = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vh = insertelement <2 x double> %i.vg, double %i.vf, i64 0 ; 6 uses
  %i.vi = fmul <2 x double> %i.vh, <double f0x3FC0B5150F6DA2D5, double f0xBFE963268B572491>
  store <2 x double> %i.vi, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 16), align 16, !tbaa !15
  %i.vj = insertelement <2 x double> %i.vg, double %i.vf, i64 1 ; 6 uses
  %i.vk = fmul <2 x double> %i.vj, <double f0xBFED906BCF328D46, double f0xBFEFB9EA92EC689B>
  store <2 x double> %i.vk, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 32), align 16, !tbaa !15
  %i.vl = fmul <2 x double> %i.vh, <double f0xBFD87DE2A6AEA96D, double f0x3FD87DE2A6AEA96F>
  store <2 x double> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 64), align 16, !tbaa !15
  %i.vm = fmul <2 x double> %i.vj, <double f0xBFD87DE2A6AEA965, double f0xBFED906BCF328D43> ; 2 uses
  %i.vn = extractelement <2 x double> %i.vm, i64 0
  store double %i.vn, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 152), align 8, !tbaa !15
  store <2 x double> %i.vm, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 80), align 16, !tbaa !15
  %i.vo = fmul <2 x double> %i.vh, <double f0x3FE37AF93F9513F3, double f0x3FEFB9EA92EC689A>
  store <2 x double> %i.vo, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 112), align 16, !tbaa !15
  %i.vp = fmul <2 x double> %i.vj, <double f0x3FD87DE2A6AEA991, double f0xBFE963268B572484>
  store <2 x double> %i.vp, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 128), align 16, !tbaa !15
  %i.vq = fmul <2 x double> %i.vh, <double f0xBFE963268B572493, double f0x3FC0B5150F6DA293>
  store <2 x double> %i.vq, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 160), align 16, !tbaa !15
  %i.vr = fmul <2 x double> %i.vj, <double f0x3FED906BCF328D4D, double f0xBFE37AF93F9513D8>
  store <2 x double> %i.vr, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 176), align 16, !tbaa !15
  %i.vs = fmul <2 x double> %i.vh, <double f0x3FED906BCF328D46, double f0xBFED906BCF328D4E>
  store <2 x double> %i.vs, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 208), align 16, !tbaa !15
  %i.vt = fmul <2 x double> %i.vj, <double f0x3FED906BCF328D47, double f0xBFD87DE2A6AEA959>
  store <2 x double> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 224), align 16, !tbaa !15
  %i.vu = fmul <2 x double> %i.vh, <double f0xBFEFB9EA92EC689D, double f0xBFE37AF93F9513D7>
  store <2 x double> %i.vu, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 256), align 16, !tbaa !15
  %i.vv = fmul <2 x double> %i.vj, <double f0x3FD87DE2A6AEA91B, double f0xBFC0B5150F6DA27E>
  store <2 x double> %i.vv, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 272), align 16, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @window_subband(ptr noundef readonly %0, ptr noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 510
  %i.b = load i16, ptr %i.a, align 2, !tbaa !37
  %i.c = sitofp i16 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 446
  %i.e = load i16, ptr %i.d, align 2, !tbaa !37
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.h = load i16, ptr %i.g, align 2, !tbaa !37
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i
  %i.k = sitofp i32 %i.j to double
  %i.l = load double, ptr @enwindow, align 16, !tbaa !15
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.o = load i16, ptr %i.n, align 2, !tbaa !37
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 638
  %i.r = load i16, ptr %i.q, align 2, !tbaa !37
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.s, %i.p
  %i.u = sitofp i32 %i.t to double
  %i.v = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 8), align 8, !tbaa !15
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 318
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37
  %i.z = sext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 702
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !37
  %i.ac = sext i16 %i.ab to i32
  %i.ad = sub nsw i32 %i.z, %i.ac
  %i.ae = sitofp i32 %i.ad to double
  %i.af = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 16), align 16, !tbaa !15
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double %i.w)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 254
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !37
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 766
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !37
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, %i.aj
  %i.ao = sitofp i32 %i.an to double
  %i.ap = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 24), align 8, !tbaa !15
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.ag)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !37
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.av = load i16, ptr %i.au, align 2, !tbaa !37
  %i.aw = sext i16 %i.av to i32
  %i.ax = sub nsw i32 %i.at, %i.aw
  %i.ay = sitofp i32 %i.ax to double
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 32), align 16, !tbaa !15
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.aq)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !37
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 894
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !37
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 40), align 8, !tbaa !15
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bj, double %i.ba)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !37
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 958
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !37
  %i.bq = sext i16 %i.bp to i32
  %i.br = sub nsw i32 %i.bn, %i.bq
  %i.bs = sitofp i32 %i.br to double
  %i.bt = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 48), align 16, !tbaa !15
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bk)
  store double %i.bu, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 14, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %.01991 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), %bb.a ], [ %i.hv, %bb.b ] ; 22 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 16 uses
  %i.bw = sub nsw i64 0, %indvars.iv
  %i.bx = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bw ; 16 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 540
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !37
  %i.ca = sitofp i16 %i.bz to double
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 480
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !37
  %i.cd = sitofp i16 %i.cc to double
  %i.ce = getelementptr inbounds nuw i8, ptr %.01991, i64 8
  %i.cf = load double, ptr %.01991, align 8, !tbaa !15 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 668
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !37
  %i.ci = sitofp i16 %i.ch to double
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cf, double %i.ca)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !37
  %i.cm = sitofp i16 %i.cl to double
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cf, double %i.cd)
  %i.co = getelementptr inbounds nuw i8, ptr %.01991, i64 16
  %i.cp = load double, ptr %i.ce, align 8, !tbaa !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 796
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !37
  %i.cs = sitofp i16 %i.cr to double
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cp, double %i.cj)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !37
  %i.cw = sitofp i16 %i.cv to double
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cp, double %i.cn)
  %i.cy = getelementptr inbounds nuw i8, ptr %.01991, i64 24
  %i.cz = load double, ptr %i.co, align 8, !tbaa !15 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bx, i64 924
  %i.db = load i16, ptr %i.da, align 2, !tbaa !37
  %i.dc = sitofp i16 %i.db to double
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cz, double %i.ct)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.df = load i16, ptr %i.de, align 2, !tbaa !37
  %i.dg = sitofp i16 %i.df to double
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.cz, double %i.cx)
  %i.di = getelementptr inbounds nuw i8, ptr %.01991, i64 32
  %i.dj = load double, ptr %i.cy, align 8, !tbaa !15 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !37
  %i.dm = sitofp i16 %i.dl to double
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dj, double %i.dd)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 992
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !37
  %i.dq = sitofp i16 %i.dp to double
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dj, double %i.dh)
  %i.ds = getelementptr inbounds nuw i8, ptr %.01991, i64 40
  %i.dt = load double, ptr %i.di, align 8, !tbaa !15 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bx, i64 156
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !37
  %i.dw = sitofp i16 %i.dv to double
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dt, double %i.dn)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 864
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !37
  %i.ea = sitofp i16 %i.dz to double
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dt, double %i.dr)
  %i.ec = getelementptr inbounds nuw i8, ptr %.01991, i64 48
  %i.ed = load double, ptr %i.ds, align 8, !tbaa !15 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bx, i64 284
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !37
  %i.eg = sitofp i16 %i.ef to double
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.ed, double %i.dx)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bv, i64 736
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !37
  %i.ek = sitofp i16 %i.ej to double
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ed, double %i.eb)
  %i.em = getelementptr inbounds nuw i8, ptr %.01991, i64 56
  %i.en = load double, ptr %i.ec, align 8, !tbaa !15 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bx, i64 412
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !37
  %i.eq = sitofp i16 %i.ep to double
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.en, double %i.eh)
  %i.es = getelementptr inbounds nuw i8, ptr %i.bv, i64 608
  %i.et = load i16, ptr %i.es, align 2, !tbaa !37
  %i.eu = sitofp i16 %i.et to double
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.en, double %i.el)
  %i.ew = getelementptr inbounds nuw i8, ptr %.01991, i64 64
  %i.ex = load double, ptr %i.em, align 8, !tbaa !15 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !37
  %i.fa = sitofp i16 %i.ez to double
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ex, double %i.er)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bx, i64 988
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !37
  %i.fe = sitofp i16 %i.fd to double
  %i.ff = fneg double %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.ex, double %i.ev)
  %i.fh = getelementptr inbounds nuw i8, ptr %.01991, i64 72
  %i.fi = load double, ptr %i.ew, align 8, !tbaa !15 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !37
  %i.fl = sitofp i16 %i.fk to double
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fi, double %i.fb)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bx, i64 860
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !37
  %i.fp = sitofp i16 %i.fo to double
  %i.fq = fneg double %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fi, double %i.fg)
  %i.fs = getelementptr inbounds nuw i8, ptr %.01991, i64 80
  %i.ft = load double, ptr %i.fh, align 8, !tbaa !15 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !37
  %i.fw = sitofp i16 %i.fv to double
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.ft, double %i.fm)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bx, i64 732
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !37
  %i.ga = sitofp i16 %i.fz to double
  %i.gb = fneg double %i.ga
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.ft, double %i.fr)
  %i.gd = getelementptr inbounds nuw i8, ptr %.01991, i64 88
  %i.ge = load double, ptr %i.fs, align 8, !tbaa !15 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bv, i64 416
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !37
  %i.gh = sitofp i16 %i.gg to double
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ge, double %i.fx)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bx, i64 604
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !37
end_hunk_1
begin_hunk_2_@window_subband:bb.a
  %i.rz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %broadcast.splat63, <2 x double> %i.rl)
  %i.sa = getelementptr inbounds nuw i8, ptr %next.gep, i64 168
  %i.sb = getelementptr i8, ptr %i.mp, i64 416
  %i.sc = load double, ptr %i.rt, align 16, !tbaa !15, !alias.scope !40
  %i.sd = load double, ptr %i.ru, align 8, !tbaa !15, !alias.scope !40
  %i.se = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sf = insertelement <2 x double> %i.se, double %i.sd, i64 1
  %i.sg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %broadcast.splat65, <2 x double> %i.rs)
  %i.sh = getelementptr inbounds nuw i8, ptr %next.gep, i64 176
  %i.si = getelementptr i8, ptr %i.mp, i64 424
  %i.sj = load double, ptr %i.sa, align 8, !tbaa !15, !alias.scope !40
  %i.sk = load double, ptr %i.sb, align 16, !tbaa !15, !alias.scope !40
  %i.sl = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sm = insertelement <2 x double> %i.sl, double %i.sk, i64 1
  %i.sn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %broadcast.splat67, <2 x double> %i.rz)
  %i.so = getelementptr inbounds nuw i8, ptr %next.gep, i64 184
  %i.sp = getelementptr i8, ptr %i.mp, i64 432
  %i.sq = load double, ptr %i.sh, align 16, !tbaa !15, !alias.scope !40
  %i.sr = load double, ptr %i.si, align 8, !tbaa !15, !alias.scope !40
  %i.ss = insertelement <2 x double> poison, double %i.sq, i64 0
  %i.st = insertelement <2 x double> %i.ss, double %i.sr, i64 1
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %broadcast.splat69, <2 x double> %i.sg)
  %i.sv = getelementptr inbounds nuw i8, ptr %next.gep, i64 192
  %i.sw = getelementptr i8, ptr %i.mp, i64 440
  %i.sx = load double, ptr %i.so, align 8, !tbaa !15, !alias.scope !40
  %i.sy = load double, ptr %i.sp, align 16, !tbaa !15, !alias.scope !40
  %i.sz = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.ta = insertelement <2 x double> %i.sz, double %i.sy, i64 1
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %broadcast.splat71, <2 x double> %i.sn)
  %i.tc = getelementptr inbounds nuw i8, ptr %next.gep, i64 200
  %i.td = getelementptr i8, ptr %i.mp, i64 448
  %i.te = load double, ptr %i.sv, align 16, !tbaa !15, !alias.scope !40
  %i.tf = load double, ptr %i.sw, align 8, !tbaa !15, !alias.scope !40
  %i.tg = insertelement <2 x double> poison, double %i.te, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.tf, i64 1
  %i.ti = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %broadcast.splat73, <2 x double> %i.su)
  %i.tj = getelementptr inbounds nuw i8, ptr %next.gep, i64 208
  %i.tk = getelementptr i8, ptr %i.mp, i64 456
  %i.tl = load double, ptr %i.tc, align 8, !tbaa !15, !alias.scope !40
  %i.tm = load double, ptr %i.td, align 16, !tbaa !15, !alias.scope !40
  %i.tn = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.to = insertelement <2 x double> %i.tn, double %i.tm, i64 1
  %i.tp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %broadcast.splat75, <2 x double> %i.tb)
  %i.tq = getelementptr inbounds nuw i8, ptr %next.gep, i64 216
  %i.tr = getelementptr i8, ptr %i.mp, i64 464
  %i.ts = load double, ptr %i.tj, align 16, !tbaa !15, !alias.scope !40
  %i.tt = load double, ptr %i.tk, align 8, !tbaa !15, !alias.scope !40
  %i.tu = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.tv = insertelement <2 x double> %i.tu, double %i.tt, i64 1
  %i.tw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %broadcast.splat77, <2 x double> %i.ti)
  %i.tx = getelementptr inbounds nuw i8, ptr %next.gep, i64 224
  %i.ty = getelementptr i8, ptr %i.mp, i64 472
  %i.tz = load double, ptr %i.tq, align 8, !tbaa !15, !alias.scope !40
  %i.ua = load double, ptr %i.tr, align 16, !tbaa !15, !alias.scope !40
  %i.ub = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.uc = insertelement <2 x double> %i.ub, double %i.ua, i64 1
  %i.ud = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %broadcast.splat79, <2 x double> %i.tp)
  %i.ue = getelementptr inbounds nuw i8, ptr %next.gep, i64 232
  %i.uf = getelementptr i8, ptr %i.mp, i64 480
  %i.ug = load double, ptr %i.tx, align 16, !tbaa !15, !alias.scope !40
  %i.uh = load double, ptr %i.ty, align 8, !tbaa !15, !alias.scope !40
  %i.ui = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %i.uh, i64 1
  %i.uk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uj, <2 x double> %broadcast.splat81, <2 x double> %i.tw)
  %i.ul = getelementptr inbounds nuw i8, ptr %next.gep, i64 240
  %i.um = getelementptr i8, ptr %i.mp, i64 488
  %i.un = load double, ptr %i.ue, align 8, !tbaa !15, !alias.scope !40
  %i.uo = load double, ptr %i.uf, align 16, !tbaa !15, !alias.scope !40
  %i.up = insertelement <2 x double> poison, double %i.un, i64 0
  %i.uq = insertelement <2 x double> %i.up, double %i.uo, i64 1
  %i.ur = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %broadcast.splat83, <2 x double> %i.ud) ; 2 uses
  %i.us = load double, ptr %i.ul, align 16, !tbaa !15, !alias.scope !40
  %i.ut = load double, ptr %i.um, align 8, !tbaa !15, !alias.scope !40
  %i.uu = insertelement <2 x double> poison, double %i.us, i64 0
  %i.uv = insertelement <2 x double> %i.uu, double %i.ut, i64 1
  %i.uw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> %broadcast.splat85, <2 x double> %i.uk) ; 2 uses
  %i.ux = fadd <2 x double> %i.ur, %i.uw
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mn
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -8
  %reverse = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.uz, align 8, !tbaa !15, !alias.scope !43, !noalias !40
  %i.va = fsub <2 x double> %i.ur, %i.uw
  %i.vb = getelementptr [8 x i8], ptr %1, i64 %index
  %i.vc = getelementptr i8, ptr %i.vb, i64 128
  store <2 x double> %i.va, ptr %i.vc, align 8, !tbaa !15, !alias.scope !43, !noalias !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.vd = icmp eq i64 %index.next, 16
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !45

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %scalar.ph ], [ 15, %scalar.ph.preheader ] ; 4 uses
  %.12008 = phi ptr [ %scevgep16, %scalar.ph ], [ @mm, %scalar.ph.preheader ] ; 32 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.12008, i64 8
  %i.vf = load double, ptr %.12008, align 8, !tbaa !15
  %i.vg = fmul double %i.if, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %.12008, i64 16
  %i.vi = load double, ptr %i.ve, align 8, !tbaa !15
  %i.vj = tail call double @llvm.fmuladd.f64(double %i.vi, double %i.kf, double %i.ke)
  %i.vk = getelementptr inbounds nuw i8, ptr %.12008, i64 24
  %i.vl = load double, ptr %i.vh, align 8, !tbaa !15
  %i.vm = tail call double @llvm.fmuladd.f64(double %i.vl, double %i.kg, double %i.vg)
  %i.vn = getelementptr inbounds nuw i8, ptr %.12008, i64 32
  %i.vo = load double, ptr %i.vk, align 8, !tbaa !15
  %i.vp = tail call double @llvm.fmuladd.f64(double %i.vo, double %i.kh, double %i.vj)
  %i.vq = getelementptr inbounds nuw i8, ptr %.12008, i64 40
  %i.vr = load double, ptr %i.vn, align 8, !tbaa !15
  %i.vs = tail call double @llvm.fmuladd.f64(double %i.vr, double %i.ki, double %i.vm)
  %i.vt = getelementptr inbounds nuw i8, ptr %.12008, i64 48
  %i.vu = load double, ptr %i.vq, align 8, !tbaa !15
  %i.vv = tail call double @llvm.fmuladd.f64(double %i.vu, double %i.kj, double %i.vp)
  %i.vw = getelementptr inbounds nuw i8, ptr %.12008, i64 56
  %i.vx = load double, ptr %i.vt, align 8, !tbaa !15
  %i.vy = tail call double @llvm.fmuladd.f64(double %i.vx, double %i.kk, double %i.vs)
  %i.vz = getelementptr inbounds nuw i8, ptr %.12008, i64 64
  %i.wa = load double, ptr %i.vw, align 8, !tbaa !15
  %i.wb = tail call double @llvm.fmuladd.f64(double %i.wa, double %i.kl, double %i.vv)
  %i.wc = getelementptr inbounds nuw i8, ptr %.12008, i64 72
  %i.wd = load double, ptr %i.vz, align 8, !tbaa !15
  %i.we = tail call double @llvm.fmuladd.f64(double %i.wd, double %i.km, double %i.vy)
  %i.wf = getelementptr inbounds nuw i8, ptr %.12008, i64 80
  %i.wg = load double, ptr %i.wc, align 8, !tbaa !15
  %i.wh = tail call double @llvm.fmuladd.f64(double %i.wg, double %i.kn, double %i.wb)
  %i.wi = getelementptr inbounds nuw i8, ptr %.12008, i64 88
  %i.wj = load double, ptr %i.wf, align 8, !tbaa !15
  %i.wk = tail call double @llvm.fmuladd.f64(double %i.wj, double %i.ko, double %i.we)
  %i.wl = getelementptr inbounds nuw i8, ptr %.12008, i64 96
  %i.wm = load double, ptr %i.wi, align 8, !tbaa !15
  %i.wn = tail call double @llvm.fmuladd.f64(double %i.wm, double %i.kp, double %i.wh)
  %i.wo = getelementptr inbounds nuw i8, ptr %.12008, i64 104
  %i.wp = load double, ptr %i.wl, align 8, !tbaa !15
  %i.wq = tail call double @llvm.fmuladd.f64(double %i.wp, double %i.kq, double %i.wk)
  %i.wr = getelementptr inbounds nuw i8, ptr %.12008, i64 112
  %i.ws = load double, ptr %i.wo, align 8, !tbaa !15
  %i.wt = tail call double @llvm.fmuladd.f64(double %i.ws, double %i.kr, double %i.wn)
  %i.wu = getelementptr inbounds nuw i8, ptr %.12008, i64 120
  %i.wv = load double, ptr %i.wr, align 8, !tbaa !15
  %i.ww = tail call double @llvm.fmuladd.f64(double %i.wv, double %i.ks, double %i.wq)
  %i.wx = getelementptr inbounds nuw i8, ptr %.12008, i64 128
  %i.wy = load double, ptr %i.wu, align 8, !tbaa !15
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.kt, double %i.wt)
  %i.xa = getelementptr inbounds nuw i8, ptr %.12008, i64 136
  %i.xb = load double, ptr %i.wx, align 8, !tbaa !15
  %i.xc = tail call double @llvm.fmuladd.f64(double %i.xb, double %i.ku, double %i.ww)
  %i.xd = getelementptr inbounds nuw i8, ptr %.12008, i64 144
  %i.xe = load double, ptr %i.xa, align 8, !tbaa !15
  %i.xf = tail call double @llvm.fmuladd.f64(double %i.xe, double %i.kv, double %i.wz)
  %i.xg = getelementptr inbounds nuw i8, ptr %.12008, i64 152
  %i.xh = load double, ptr %i.xd, align 8, !tbaa !15
  %i.xi = tail call double @llvm.fmuladd.f64(double %i.xh, double %i.kw, double %i.xc)
  %i.xj = getelementptr inbounds nuw i8, ptr %.12008, i64 160
  %i.xk = load double, ptr %i.xg, align 8, !tbaa !15
  %i.xl = tail call double @llvm.fmuladd.f64(double %i.xk, double %i.kx, double %i.xf)
  %i.xm = getelementptr inbounds nuw i8, ptr %.12008, i64 168
  %i.xn = load double, ptr %i.xj, align 8, !tbaa !15
  %i.xo = tail call double @llvm.fmuladd.f64(double %i.xn, double %i.ky, double %i.xi)
  %i.xp = getelementptr inbounds nuw i8, ptr %.12008, i64 176
  %i.xq = load double, ptr %i.xm, align 8, !tbaa !15
  %i.xr = tail call double @llvm.fmuladd.f64(double %i.xq, double %i.kz, double %i.xl)
  %i.xs = getelementptr inbounds nuw i8, ptr %.12008, i64 184
  %i.xt = load double, ptr %i.xp, align 8, !tbaa !15
  %i.xu = tail call double @llvm.fmuladd.f64(double %i.xt, double %i.la, double %i.xo)
  %i.xv = getelementptr inbounds nuw i8, ptr %.12008, i64 192
  %i.xw = load double, ptr %i.xs, align 8, !tbaa !15
  %i.xx = tail call double @llvm.fmuladd.f64(double %i.xw, double %i.lb, double %i.xr)
  %i.xy = getelementptr inbounds nuw i8, ptr %.12008, i64 200
  %i.xz = load double, ptr %i.xv, align 8, !tbaa !15
  %i.ya = tail call double @llvm.fmuladd.f64(double %i.xz, double %i.lc, double %i.xu)
  %i.yb = getelementptr inbounds nuw i8, ptr %.12008, i64 208
  %i.yc = load double, ptr %i.xy, align 8, !tbaa !15
  %i.yd = tail call double @llvm.fmuladd.f64(double %i.yc, double %i.ld, double %i.xx)
  %i.ye = getelementptr inbounds nuw i8, ptr %.12008, i64 216
  %i.yf = load double, ptr %i.yb, align 8, !tbaa !15
  %i.yg = tail call double @llvm.fmuladd.f64(double %i.yf, double %i.le, double %i.ya)
  %i.yh = getelementptr inbounds nuw i8, ptr %.12008, i64 224
  %i.yi = load double, ptr %i.ye, align 8, !tbaa !15
  %i.yj = tail call double @llvm.fmuladd.f64(double %i.yi, double %i.lf, double %i.yd)
  %i.yk = getelementptr inbounds nuw i8, ptr %.12008, i64 232
  %i.yl = load double, ptr %i.yh, align 8, !tbaa !15
  %i.ym = tail call double @llvm.fmuladd.f64(double %i.yl, double %i.lg, double %i.yg)
  %i.yn = getelementptr inbounds nuw i8, ptr %.12008, i64 240
  %i.yo = load double, ptr %i.yk, align 8, !tbaa !15
  %i.yp = tail call double @llvm.fmuladd.f64(double %i.yo, double %i.lh, double %i.yj) ; 2 uses
  %i.yq = load double, ptr %i.yn, align 8, !tbaa !15
  %i.yr = tail call double @llvm.fmuladd.f64(double %i.yq, double %i.li, double %i.ym) ; 2 uses
  %scevgep16 = getelementptr i8, ptr %.12008, i64 248
  %i.ys = fadd double %i.yp, %i.yr
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv17
  store double %i.ys, ptr %i.yt, align 8, !tbaa !15
  %i.yu = fsub double %i.yp, %i.yr
  %i.yv = sub nuw nsw i64 31, %indvars.iv17
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.yv
  store double %i.yu, ptr %i.yw, align 8, !tbaa !15
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, -1
  %.not20 = icmp eq i64 %indvars.iv17, 0
  br i1 %.not20, label %middle.block, label %scalar.ph, !llvm.loop !48

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 204}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !13, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !10, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !13, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!9, !5, i64 200}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!9, !5, i64 256}
!20 = !{!9, !5, i64 252}
!21 = !{!9, !5, i64 248}
!22 = !{!9, !13, i64 232}
!23 = !{!9, !13, i64 240}
!24 = !{!9, !13, i64 236}
!25 = !{!9, !13, i64 244}
!26 = distinct !{!26, !18}
!27 = !{!28, !5, i64 24}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !29, i64 96, !6, i64 104}
!29 = !{!"p1 int", !12, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !6, i64 0}
!39 = distinct !{!39, !18}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !18, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !18, !46}
end_hunk_2

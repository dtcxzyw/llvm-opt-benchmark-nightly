Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetRebuild?download=true
inline.NumInlined: 42024
inline.NumDeleted: 13681
loop-unroll.NumCompletelyUnrolled: 178
loop-unroll.NumRuntimeUnrolled: 176
loop-unroll.NumUnrolled: 595
begin_hunk_0_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.not.10.i = icmp eq i8 %i.aos, 0
  br i1 %.not.10.i, label %bb.fi, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aot = load i8, ptr %i.alw, align 1, !tbaa !381
  %i.aou = icmp eq i8 %i.aot, %.047.i             ; 3 uses
  br i1 %i.aou, label %bb.fj, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fj:                                            ; preds = %bb.fi
  %i.aov = load i8, ptr %i.alx, align 1, !tbaa !381 ; 2 uses
  %.not.11.i = icmp eq i8 %i.aov, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.en, %bb.ep, %bb.er, %bb.et, %bb.ev, %bb.ex, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.fh, %bb.fj
  %.lcssa.i = phi i8 [ %i.ano, %bb.en ], [ %i.anr, %bb.ep ], [ %i.anu, %bb.er ], [ %i.anx, %bb.et ], [ %i.aoa, %bb.ev ], [ %i.aod, %bb.ex ], [ %i.aog, %bb.ez ], [ %i.aoj, %bb.fb ], [ %i.aom, %bb.fd ], [ %i.aop, %bb.ff ], [ %i.aos, %bb.fh ], [ %i.aov, %bb.fj ] ; 14 uses
  %i.aow = zext i8 %.lcssa.i to i64
  %i.aox = getelementptr [4 x i8], ptr %i.aku, i64 %i.aow
  %i.aoy = getelementptr i8, ptr %i.aox, i64 -4
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !359 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.aoz, -1073741824
  br i1 %or.cond.i287, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.apa = and i32 %i.aoz, 1023
  %i.apb = uitofp nneg i32 %i.apa to double
  %i.apc = fmul nnan double %i.apb, f0x3F500400FE733127
  store double %i.apc, ptr %i.ey, align 16, !tbaa !481, !alias.scope !7258
  %i.apd = lshr i32 %i.aoz, 10
  %i.ape = lshr i32 %i.aoz, 20
  %i.apf = and i32 %i.apd, 1023
  %i.apg = uitofp nneg i32 %i.apf to double
  %i.aph = and i32 %i.ape, 1023
  %i.api = uitofp nneg i32 %i.aph to double
  %i.apj = insertelement <2 x double> poison, double %i.api, i64 0
  %i.apk = insertelement <2 x double> %i.apj, double %i.apg, i64 1
  %i.apl = fmul nnan <2 x double> %i.apk, splat (double f0x3F500400FE733127)
  store <2 x double> %i.apl, ptr %4, align 16, !tbaa !481, !alias.scope !7258
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit756

.noexc289:                                        ; preds = %bb.fk
  %i.apm = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apm, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.apn = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.apn, align 1, !tbaa !486
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.gm

bb.fl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.apo = load i8, ptr %i.ala, align 1, !tbaa !381, !noalias !7259
  %i.app = icmp eq i8 %i.apo, %.lcssa.i
  br i1 %i.app, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.apq = load double, ptr %15, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.apr = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7259
  %i.aps = fsub double %i.ak, %i.apq
  %i.apt = fsub double %i.apr, %i.apq
  %i.apu = fdiv double %i.aps, %i.apt
  %i.apv = fadd double %i.apu, 0.000000e+00
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.0707.0 = phi double [ %i.apv, %bb.fm ], [ 0.000000e+00, %bb.fl ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.fm ], [ 0, %bb.fl ] ; 2 uses
  %i.apw = load i8, ptr %i.alc, align 1, !tbaa !381, !noalias !7259
  %i.apx = icmp eq i8 %i.apw, %.lcssa.i
  br i1 %i.apx, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.apy = fadd double %.sroa.0707.0, 1.000000e+00
  %i.apz = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.aqa = load double, ptr %i.er, align 16, !tbaa !481, !noalias !7259
  %i.aqb = fsub double %i.ak, %i.apz
  %i.aqc = fsub double %i.aqa, %i.apz
  %i.aqd = fdiv double %i.aqb, %i.aqc
  %i.aqe = fadd double %i.aqd, 0.000000e+00
  %i.aqf = add nuw nsw i32 %.0.i405, 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sroa.0707.1 = phi double [ %i.apy, %bb.fo ], [ %.sroa.0707.0, %bb.fn ] ; 2 uses
  %.sroa.22709.0 = phi double [ %i.aqe, %bb.fo ], [ 0.000000e+00, %bb.fn ] ; 2 uses
  %.1.i406 = phi i32 [ %i.aqf, %bb.fo ], [ %.0.i405, %bb.fn ] ; 2 uses
  %i.aqg = load i8, ptr %i.ale, align 1, !tbaa !381, !noalias !7259
  %i.aqh = icmp eq i8 %i.aqg, %.lcssa.i
  br i1 %i.aqh, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aqi = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.aqj = load double, ptr %i.er, align 16, !tbaa !481, !noalias !7259
  %i.aqk = fsub double %i.ak, %i.aqi
  %i.aql = fsub double %i.aqj, %i.aqi
  %i.aqm = fdiv double %i.aqk, %i.aql
  %i.aqn = fadd double %.sroa.0707.1, %i.aqm
  %i.aqo = fadd double %.sroa.22709.0, 1.000000e+00
  %i.aqp = add nuw nsw i32 %.1.i406, 1
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.sroa.0707.2 = phi double [ %i.aqn, %bb.fq ], [ %.sroa.0707.1, %bb.fp ] ; 2 uses
  %.sroa.22709.1 = phi double [ %i.aqo, %bb.fq ], [ %.sroa.22709.0, %bb.fp ] ; 2 uses
  %.2.i407 = phi i32 [ %i.aqp, %bb.fq ], [ %.1.i406, %bb.fp ] ; 2 uses
  %i.aqq = load i8, ptr %i.alg, align 1, !tbaa !381, !noalias !7259
  %i.aqr = icmp eq i8 %i.aqq, %.lcssa.i
  br i1 %i.aqr, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aqs = load double, ptr %15, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.aqt = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7259
  %i.aqu = fsub double %i.ak, %i.aqs
  %i.aqv = fsub double %i.aqt, %i.aqs
  %i.aqw = fdiv double %i.aqu, %i.aqv
  %i.aqx = fadd double %.sroa.22709.1, %i.aqw
  %i.aqy = add nuw nsw i32 %.2.i407, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.22709.2 = phi double [ %i.aqx, %bb.fs ], [ %.sroa.22709.1, %bb.fr ] ; 2 uses
  %.3.i408 = phi i32 [ %i.aqy, %bb.fs ], [ %.2.i407, %bb.fr ] ; 2 uses
  %i.aqz = load i8, ptr %i.ali, align 1, !tbaa !381, !noalias !7259
  %i.ara = icmp eq i8 %i.aqz, %.lcssa.i
  br i1 %i.ara, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.arb = load double, ptr %i.et, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.arc = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7259
  %i.ard = fsub double %i.ak, %i.arb
  %i.are = fsub double %i.arc, %i.arb
  %i.arf = fdiv double %i.ard, %i.are
  %i.arg = fadd double %.sroa.0707.2, %i.arf
  %i.arh = add nuw nsw i32 %.3.i408, 1
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.0707.3 = phi double [ %i.arg, %bb.fu ], [ %.sroa.0707.2, %bb.ft ] ; 2 uses
  %.sroa.13708.0 = phi double [ 1.000000e+00, %bb.fu ], [ 0.000000e+00, %bb.ft ] ; 2 uses
  %.4.i409 = phi i32 [ %i.arh, %bb.fu ], [ %.3.i408, %bb.ft ] ; 2 uses
  %i.ari = load i8, ptr %i.alk, align 1, !tbaa !381, !noalias !7259
  %i.arj = icmp eq i8 %i.ari, %.lcssa.i
  br i1 %i.arj, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ark = fadd double %.sroa.0707.3, 1.000000e+00
  %i.arl = fadd double %.sroa.13708.0, 1.000000e+00
  %i.arm = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.arn = load double, ptr %i.ev, align 16, !tbaa !481, !noalias !7259
  %i.aro = fsub double %i.ak, %i.arm
  %i.arp = fsub double %i.arn, %i.arm
  %i.arq = fdiv double %i.aro, %i.arp
  %i.arr = fadd double %.sroa.22709.2, %i.arq
  %i.ars = add nuw nsw i32 %.4.i409, 1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.0707.4 = phi double [ %i.ark, %bb.fw ], [ %.sroa.0707.3, %bb.fv ] ; 2 uses
  %.sroa.13708.1 = phi double [ %i.arl, %bb.fw ], [ %.sroa.13708.0, %bb.fv ] ; 2 uses
  %.sroa.22709.3 = phi double [ %i.arr, %bb.fw ], [ %.sroa.22709.2, %bb.fv ] ; 2 uses
  %.5.i410 = phi i32 [ %i.ars, %bb.fw ], [ %.4.i409, %bb.fv ] ; 2 uses
  %i.art = load i8, ptr %i.alm, align 1, !tbaa !381, !noalias !7259
  %i.aru = icmp eq i8 %i.art, %.lcssa.i
  br i1 %i.aru, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.arv = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.arw = load double, ptr %i.ev, align 16, !tbaa !481, !noalias !7259
  %i.arx = fsub double %i.ak, %i.arv
  %i.ary = fsub double %i.arw, %i.arv
  %i.arz = fdiv double %i.arx, %i.ary
  %i.asa = fadd double %.sroa.0707.4, %i.arz
  %i.asb = fadd double %.sroa.13708.1, 1.000000e+00
  %i.asc = fadd double %.sroa.22709.3, 1.000000e+00
  %i.asd = add nuw nsw i32 %.5.i410, 1
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.0707.5 = phi double [ %i.asa, %bb.fy ], [ %.sroa.0707.4, %bb.fx ] ; 2 uses
  %.sroa.13708.2 = phi double [ %i.asb, %bb.fy ], [ %.sroa.13708.1, %bb.fx ] ; 2 uses
  %.sroa.22709.4 = phi double [ %i.asc, %bb.fy ], [ %.sroa.22709.3, %bb.fx ] ; 2 uses
  %.6.i411 = phi i32 [ %i.asd, %bb.fy ], [ %.5.i410, %bb.fx ] ; 2 uses
  %i.ase = load i8, ptr %i.alp, align 1, !tbaa !381, !noalias !7259
  %i.asf = icmp eq i8 %i.ase, %.lcssa.i
  br i1 %i.asf, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.asg = fadd double %.sroa.13708.2, 1.000000e+00
  %i.ash = load double, ptr %i.et, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.asi = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7259
  %i.asj = fsub double %i.ak, %i.ash
  %i.ask = fsub double %i.asi, %i.ash
  %i.asl = fdiv double %i.asj, %i.ask
  %i.asm = fadd double %.sroa.22709.4, %i.asl
  %i.asn = add nuw nsw i32 %.6.i411, 1
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.sroa.13708.3 = phi double [ %i.asg, %bb.ga ], [ %.sroa.13708.2, %bb.fz ] ; 2 uses
  %.sroa.22709.5 = phi double [ %i.asm, %bb.ga ], [ %.sroa.22709.4, %bb.fz ] ; 2 uses
  %.7.i412 = phi i32 [ %i.asn, %bb.ga ], [ %.6.i411, %bb.fz ] ; 2 uses
  %i.aso = load i8, ptr %i.alr, align 1, !tbaa !381, !noalias !7259
  %i.asp = icmp eq i8 %i.aso, %.lcssa.i
  br i1 %i.asp, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.asq = load double, ptr %15, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.asr = load double, ptr %i.et, align 16, !tbaa !481, !noalias !7259
  %i.ass = fsub double %i.ak, %i.asq
  %i.ast = fsub double %i.asr, %i.asq
  %i.asu = fdiv double %i.ass, %i.ast
  %i.asv = fadd double %.sroa.13708.3, %i.asu
  %i.asw = add nuw nsw i32 %.7.i412, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.13708.4 = phi double [ %i.asv, %bb.gc ], [ %.sroa.13708.3, %bb.gb ] ; 2 uses
  %.8.i413 = phi i32 [ %i.asw, %bb.gc ], [ %.7.i412, %bb.gb ] ; 2 uses
  %i.asx = load i8, ptr %i.alt, align 1, !tbaa !381, !noalias !7259
  %i.asy = icmp eq i8 %i.asx, %.lcssa.i
  br i1 %i.asy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.asz = fadd double %.sroa.0707.5, 1.000000e+00
  %i.ata = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.atb = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7259
  %i.atc = fsub double %i.ak, %i.ata
  %i.atd = fsub double %i.atb, %i.ata
  %i.ate = fdiv double %i.atc, %i.atd
  %i.atf = fadd double %.sroa.13708.4, %i.ate
  %i.atg = add nuw nsw i32 %.8.i413, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.sroa.0707.6 = phi double [ %i.asz, %bb.ge ], [ %.sroa.0707.5, %bb.gd ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.atf, %bb.ge ], [ %.sroa.13708.4, %bb.gd ] ; 2 uses
  %.9.i414 = phi i32 [ %i.atg, %bb.ge ], [ %.8.i413, %bb.gd ] ; 2 uses
  %i.ath = load i8, ptr %i.alv, align 1, !tbaa !381, !noalias !7259
  %i.ati = icmp eq i8 %i.ath, %.lcssa.i
  br i1 %i.ati, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.atj = fadd double %.sroa.0707.6, 1.000000e+00
  %i.atk = load double, ptr %i.er, align 16, !tbaa !481, !noalias !7259 ; 2 uses
  %i.atl = load double, ptr %i.ev, align 16, !tbaa !481, !noalias !7259
  %i.atm = fsub double %i.ak, %i.atk
  %i.atn = fsub double %i.atl, %i.atk
  %i.ato = fdiv double %i.atm, %i.atn
  %24 = fadd double %.sroa.13708.5, %i.ato
  %25 = fadd double %.sroa.22709.5, 1.000000e+00
  %i.atp = add nuw nsw i32 %.9.i414, 1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.0707.7 = phi double [ %i.atj, %bb.gg ], [ %.sroa.0707.6, %bb.gf ] ; 2 uses
  %.sroa.13708.6 = phi double [ %24, %bb.gg ], [ %.sroa.13708.5, %bb.gf ] ; 2 uses
  %.sroa.22709.6 = phi double [ %25, %bb.gg ], [ %.sroa.22709.5, %bb.gf ] ; 2 uses
  %.10.i415 = phi i32 [ %i.atp, %bb.gg ], [ %.9.i414, %bb.gf ] ; 2 uses
  %i.atq = load i8, ptr %i.alx, align 1, !tbaa !381, !noalias !7259
  %i.atr = icmp eq i8 %i.atq, %.lcssa.i
  br i1 %i.atr, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ats = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7259 ; 2 uses
  %i.att = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7259
  %i.atu = fsub double %i.ak, %i.ats
  %i.atv = fsub double %i.att, %i.ats
  %i.atw = fdiv double %i.atu, %i.atv
  %26 = fadd double %.sroa.13708.6, %i.atw
  %27 = fadd double %.sroa.22709.6, 1.000000e+00
  %i.atx = add nuw nsw i32 %.10.i415, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.13708.7 = phi double [ %26, %bb.gi ], [ %.sroa.13708.6, %bb.gh ] ; 2 uses
  %.sroa.22709.7 = phi double [ %27, %bb.gi ], [ %.sroa.22709.6, %bb.gh ] ; 2 uses
  %.11.i416 = phi i32 [ %i.atx, %bb.gi ], [ %.10.i415, %bb.gh ] ; 2 uses
  %i.aty = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.aty, label %bb.gk, label %.noexc290

bb.gk:                                            ; preds = %bb.gj
  %i.atz = uitofp nneg i32 %.11.i416 to double
  %i.aua = fdiv double 1.000000e+00, %i.atz       ; 3 uses
  %i.aub = fmul double %.sroa.0707.7, %i.aua
  %28 = fmul double %.sroa.13708.7, %i.aua
  %29 = fmul double %.sroa.22709.7, %i.aua
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gk, %bb.gj
  %.sroa.0707.8 = phi double [ %i.aub, %bb.gk ], [ %.sroa.0707.7, %bb.gj ]
  %.sroa.13708.8 = phi double [ %28, %bb.gk ], [ %.sroa.13708.7, %bb.gj ]
  %.sroa.22709.8 = phi double [ %29, %bb.gk ], [ %.sroa.22709.7, %bb.gj ]
  %i.auc = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 3 uses
  store double %.sroa.0707.8, ptr %i.auc, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  store double %.sroa.13708.8, ptr %.sroa.13708.0..sroa_idx, align 8
  %.sroa.22709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.auc, i64 16
  store double %.sroa.22709.8, ptr %.sroa.22709.0..sroa_idx, align 8
  %i.aud = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.aud, align 1, !tbaa !486
  br label %bb.gm

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fi, %bb.fj
  %.sroa.0704.0 = select i1 %i.ann, double %i.anl, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.ann to i32
  %i.aue = fadd double %.sroa.0704.0, 1.000000e+00
  %i.auf = select i1 %i.ann, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.anq, double %i.aue, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.anq, double %i.anm, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.anq, i32 %i.auf, i32 %.0.i392
  %i.aug = fadd double %i.and, %.sroa.0704.1
  %i.auh = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.ant, double %i.aug, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.ant, double %i.auh, double %.sroa.22706.0 ; 2 uses
  %i.aui = zext i1 %i.ant to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.aui
  %i.auj = fadd double %i.ane, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.anw, double %i.auj, double %.sroa.22706.1 ; 2 uses
  %i.auk = zext i1 %i.anw to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.auk
  %i.aul = fadd double %i.anf, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.anz, double %i.aul, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.anz, double 1.000000e+00, double 0.000000e+00
  %i.aum = zext i1 %i.anz to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.aum     ; 2 uses
  %i.aun = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.auo = insertelement <2 x double> %i.aun, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.aup = fadd <2 x double> %i.auo, splat (double 1.000000e+00)
  %i.auq = fadd double %i.ang, %.sroa.22706.2
  %i.aur = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.aoc, double %i.auq, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.aoc, i32 %i.aur, i32 %.4.i396 ; 2 uses
  %i.aus = select i1 %i.aoc, <2 x double> %i.aup, <2 x double> %i.auo ; 2 uses
  %i.aut = fadd <2 x double> %i.ani, %i.aus
  %i.auu = fadd double %.sroa.22706.3, 1.000000e+00
  %i.auv = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.aof, double %i.auu, double %.sroa.22706.3
  %.6.i398 = select i1 %i.aof, i32 %i.auv, i32 %.5.i397
  %i.auw = select i1 %i.aof, <2 x double> %i.aut, <2 x double> %i.aus ; 2 uses
  %i.aux = extractelement <2 x double> %i.auw, i64 1 ; 2 uses
  %i.auy = fadd double %i.aux, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.aoi, double %i.auy, double %i.aux ; 2 uses
  %i.auz = zext i1 %i.aoi to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.auz
  %i.ava = fadd double %i.anh, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.aol, double %i.ava, double %.sroa.13705.3
  %i.avb = zext i1 %i.aol to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.avb
  %i.avc = extractelement <2 x double> %i.auw, i64 0 ; 2 uses
  %i.avd = fadd double %i.avc, 1.000000e+00
  %i.ave = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.avf = insertelement <2 x double> %i.ave, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.avg = fadd <2 x double> %i.amw, %i.avf
  %.sroa.0704.6 = select i1 %i.aoo, double %i.avd, double %i.avc ; 2 uses
  %i.avh = insertelement <2 x i1> poison, i1 %i.aoo, i64 0
  %i.avi = insertelement <2 x i1> %i.avh, i1 %i.aoi, i64 1
  %i.avj = select <2 x i1> %i.avi, <2 x double> %i.avg, <2 x double> %i.avf ; 2 uses
  %i.avk = zext i1 %i.aoo to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.avk     ; 2 uses
  %i.avl = fadd double %.sroa.0704.6, 1.000000e+00
  %i.avm = fadd <2 x double> %i.anj, %i.avj
  %i.avn = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.aor, double %i.avl, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.aor, i32 %i.avn, i32 %.9.i401
  %i.avo = select i1 %i.aor, <2 x double> %i.avm, <2 x double> %i.avj ; 2 uses
  %i.avp = fadd <2 x double> %i.ank, %i.avo
  %i.avq = insertelement <2 x i1> poison, i1 %i.aou, i64 0
  %i.avr = shufflevector <2 x i1> %i.avq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.avs = select <2 x i1> %i.avr, <2 x double> %i.avp, <2 x double> %i.avo ; 2 uses
  %i.avt = zext i1 %i.aou to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.avt   ; 2 uses
  %i.avu = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.avu, label %bb.gl, label %.noexc291

bb.gl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.avv = uitofp nneg i32 %.11.i403 to double
  %i.avw = fdiv double 1.000000e+00, %i.avv       ; 2 uses
  %i.avx = fmul double %.sroa.0704.7, %i.avw
  %i.avy = insertelement <2 x double> poison, double %i.avw, i64 0
  %i.avz = shufflevector <2 x double> %i.avy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awa = fmul <2 x double> %i.avs, %i.avz
  br label %.noexc291

.noexc291:                                        ; preds = %bb.gl, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.avx, %bb.gl ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awb = phi <2 x double> [ %i.awa, %bb.gl ], [ %i.avs, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awc = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.awc, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  store <2 x double> %i.awb, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.awd = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.awd, align 1, !tbaa !486
  br label %bb.gm

bb.gm:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.awe = add i8 %.047.i, 1
  %i.awf = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.awf, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.em, !llvm.loop !321

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gm, %middle.block1205
  %.0140976 = phi i64 [ %umax.i, %middle.block1205 ], [ %umax.i286, %bb.gm ], [ %umax.i, %.noexc254 ]
  %i.awg = sitofp <2 x i32> %i.mv to <2 x double>
  %i.awh = sitofp i32 %i.mz to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.he
  %.0138809 = phi i64 [ %i.ayl, %bb.he ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145808 = phi i32 [ %i.ayk, %bb.he ], [ %.0144811, %.lr.ph.preheader ] ; 2 uses
  %i.awi = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138809 ; 7 uses
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !481 ; 2 uses
  %i.awk = call double @llvm.fabs.f64(double %i.awj)
  %i.awl = fcmp ueq double %i.awk, +inf
  br i1 %i.awl, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !481 ; 2 uses
  %i.awo = call double @llvm.fabs.f64(double %i.awn)
  %i.awp = fcmp ueq double %i.awo, +inf
  br i1 %i.awp, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awi, i64 16 ; 3 uses
  %i.awr = load double, ptr %i.awq, align 8, !tbaa !481 ; 2 uses
  %i.aws = call double @llvm.fabs.f64(double %i.awr)
  %i.awt = fcmp ueq double %i.aws, +inf
  br i1 %i.awt, label %bb.gp, label %bb.gz

bb.gp:                                            ; preds = %bb.go, %bb.gn, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.awu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.awu, ptr %18, align 8, !tbaa !473
  %i.awv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.awv, align 8, !tbaa !475
  store i8 0, ptr %i.awu, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.95, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gr unwind label %bb.gu

bb.gr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.awx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #22 ; 0 uses
  %i.awy = load ptr, ptr %20, align 8, !tbaa !476 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.axa = icmp eq ptr %i.awy, %i.awz
  br i1 %i.axa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gr
  %i.axb = load i64, ptr %i.awz, align 8, !tbaa !381
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gx

bb.gs:                                            ; preds = %bb.gp
  %i.axd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gq
  %i.axe = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gv

bb.gu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.axf = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn157 = phi { ptr, i32 } [ %i.axf, %bb.gu ], [ %i.axe, %bb.gt ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gv ], [ %i.axd, %bb.gs ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.axg = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal29MaskDisorientedTrianglePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.jk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !359 ; 2 uses
  %i.jm = icmp slt i32 %i.jl, %i.iw
  br i1 %i.jm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jn = icmp sgt i32 %i.jl, %i.iw
  br i1 %i.jn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.jo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !359
  %i.jq = icmp slt i32 %i.jp, %i.iy
  br i1 %i.jq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.ad, %bb.ab
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.ae, %bb.ac
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.ae ], [ 16, %bb.ac ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.ae ], [ %.014.i.i.i.i.i, %bb.ac ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.jr, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.ab, !llvm.loop !283

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.js = icmp eq ptr %.19.i.i.i.i.i, %i.jb
  br i1 %i.js, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !359 ; 2 uses
  %i.jv = icmp slt i32 %i.jf, %i.ju
  br i1 %i.jv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jw = icmp sgt i32 %i.jf, %i.ju
  br i1 %i.jw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !359 ; 2 uses
  %i.jz = icmp slt i32 %i.iw, %i.jy
  br i1 %i.jz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ka = icmp sgt i32 %i.iw, %i.jy
  br i1 %i.ka, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.ai
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !359
  %i.kd = icmp slt i32 %i.iy, %i.kc
  br i1 %i.kd, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ah, %bb.af, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  br label %.noexc

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ai, %bb.ag
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !2748 ; 2 uses
  %.not.i138 = icmp eq ptr %i.kg, null
  br i1 %.not.i138, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.kh = and i32 %i.ea, -4096
  %i.ki = and i32 %i.dz, -4096
  %.sroa.2.0.insert.ext.i.i139 = zext i32 %i.kh to i64
  %.sroa.2.0.insert.shift.i.i140 = shl nuw i64 %.sroa.2.0.insert.ext.i.i139, 32
  %.sroa.0.0.insert.ext.i.i141 = zext i32 %i.ho to i64
  %.sroa.0.0.insert.insert.i.i142 = or disjoint i64 %.sroa.2.0.insert.shift.i.i140, %.sroa.0.0.insert.ext.i.i141
  store i64 %.sroa.0.0.insert.insert.i.i142, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.ki, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !381
  store ptr %i.kg, ptr %i.ao, align 8, !tbaa !2789
  %i.kj = load ptr, ptr %i.kf, align 8, !tbaa !2756 ; 2 uses
  %i.kk = shl i32 %i.eb, 3
  %i.kl = and i32 %i.kk, 31744
  %i.km = lshr i32 %i.ea, 2
  %i.kn = and i32 %i.km, 992
  %i.ko = or disjoint i32 %i.kn, %i.kl            ; 2 uses
  %i.kp = lshr i32 %i.dz, 7
  %i.kq = and i32 %i.kp, 31
  %i.kr = or disjoint i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 262144
  %i.kt = lshr i32 %i.ko, 6
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !446
  %i.kx = and i32 %i.kr, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = and i64 %i.kw, %i.kz
  %.not.i.i143 = icmp eq i64 %i.la, 0
  %i.lb = zext nneg i32 %i.kr to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.lb ; 2 uses
  br i1 %.not.i.i143, label %.noexc, label %.invoke

.invoke:                                          ; preds = %bb.aj, %bb.aa
  %.in = phi ptr [ %i.iq, %bb.aa ], [ %i.lc, %bb.aj ] ; 2 uses
  %storemerge = load ptr, ptr %.in, align 8, !tbaa !381
  %i.ld = and i32 %i.ea, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.ld to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ev to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %storemerge241 = and i32 %i.dz, -128
  store i32 %storemerge241, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !381
  store ptr %storemerge, ptr %i.ap, align 8, !tbaa !2788
  %i.le = load ptr, ptr %.in, align 8, !tbaa !381
  %i.lf = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.le, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %.noexc unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc

.noexc:                                           ; preds = %.invoke, %bb.aa, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.ak, %bb.aj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.eu, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.fx, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ], [ %i.lf, %.invoke ], [ %i.iq, %bb.aa ], [ %.0.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_.exit.i ], [ %i.ke, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.lg, %bb.ak ], [ %i.lc, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.lh = add nsw i32 %i.du, -1
  %.sroa.0.0.insert.ext.i10.i.i = zext i32 %i.lh to i64
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i10.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8
  store i32 %i.dz, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.li = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %.noexc124 unwind label %bb.ao

.noexc124:                                        ; preds = %.noexc
  %i.lj = load float, ptr %.1.i.i, align 4, !tbaa !552
  %i.lk = load float, ptr %i.li, align 4, !tbaa !552
  %i.ll = fsub float %i.lj, %i.lk
  %i.lm = fmul float %i.ll, 5.000000e-01          ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ln = add nsw i32 %i.ea, 1
  %.sroa.2.0.insert.ext.i.i6.i = zext i32 %i.ln to i64
  %.sroa.2.0.insert.shift.i.i7.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i6.i, 32
  %.sroa.0.0.insert.insert.i.i9.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i7.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i9.i, ptr %4, align 8
  store i32 %i.dz, ptr %.sroa.24.0..sroa_idx.i10.i, align 8
  %i.lo = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %.noexc125 unwind label %bb.ao

.noexc125:                                        ; preds = %.noexc124
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.lp = add nsw i32 %i.ea, -1
  %.sroa.2.0.insert.ext.i8.i11.i = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i9.i12.i = shl nuw i64 %.sroa.2.0.insert.ext.i8.i11.i, 32
  %.sroa.0.0.insert.insert.i11.i14.i = or disjoint i64 %.sroa.2.0.insert.shift.i9.i12.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8
  store i32 %i.dz, ptr %.sroa.2.0..sroa_idx.i15.i, align 8
  %i.lq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %.noexc126 unwind label %bb.ao

.noexc126:                                        ; preds = %.noexc125
  %i.lr = load float, ptr %i.lo, align 4, !tbaa !552
  %i.ls = load float, ptr %i.lq, align 4, !tbaa !552
  %i.lt = fsub float %i.lr, %i.ls
  %i.lu = fmul float %i.lt, 5.000000e-01          ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.lv = add nsw i32 %i.dz, 1
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  store i32 %i.lv, ptr %.sroa.24.0..sroa_idx.i16.i, align 8
  %i.lw = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %.noexc127 unwind label %bb.ao

.noexc127:                                        ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.lx = add nsw i32 %i.dz, -1
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %3, align 8
  store i32 %i.lx, ptr %.sroa.2.0..sroa_idx.i17.i, align 8
  %i.ly = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %.noexc127
  %i.lz = load float, ptr %i.lw, align 4, !tbaa !552
  %i.ma = load float, ptr %i.ly, align 4, !tbaa !552
  %i.mb = fsub float %i.lz, %i.ma
  %i.mc = fmul float %i.mb, 5.000000e-01          ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.sroa.0.0.vec.insert.i120 = insertelement <2 x float> poison, float %i.lm, i64 0
  %.sroa.0.4.vec.insert.i121 = insertelement <2 x float> %.sroa.0.0.vec.insert.i120, float %i.lu, i64 1
  %i.md = fmul float %i.lu, %i.lu
  %i.me = call float @llvm.fmuladd.f32(float %i.lm, float %i.lm, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %i.mc, float %i.mc, float %i.me)
  %sqrt.i.i129 = call noundef float @llvm.sqrt.f32(float %i.mf) ; 2 uses
  %i.mg = call noundef float @llvm.fabs.f32(float %sqrt.i.i129)
  %i.mh = fcmp ogt float %i.mg, 1.000000e-07
  br i1 %i.mh, label %bb.am, label %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit130

bb.am:                                            ; preds = %bb.al
  %i.mi = fdiv float 1.000000e+00, %sqrt.i.i129   ; 3 uses
  %12 = fmul float %i.lm, %i.mi
  %13 = fmul float %i.lu, %i.mi
  %14 = fmul float %i.mc, %i.mi
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %12, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %13, i64 1
  br label %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit130

_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit130: ; preds = %bb.am, %bb.al
  %.sroa.13.1 = phi float [ %14, %bb.am ], [ %i.mc, %bb.al ] ; 2 uses
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.am ], [ %.sroa.0.4.vec.insert.i121, %bb.al ] ; 2 uses
  %i.mj = fneg <2 x float> %.sroa.0.1
  %i.mk = fneg float %.sroa.13.1
  %.sroa.13.0 = select i1 %i.aa, float %i.mk, float %.sroa.13.1
  %.sroa.0.0 = select i1 %i.aa, <2 x float> %i.mj, <2 x float> %.sroa.0.1 ; 2 uses
  %.sroa.0.0.vec.extract164 = extractelement <2 x float> %.sroa.0.0, i64 0
  %.sroa.0201.0.vec.extract204 = extractelement <2 x float> %.sroa.0201.0, i64 0
  %foldExtExtBinop244 = fmul <2 x float> %.sroa.0201.0, %.sroa.0.0
  %i.ml = extractelement <2 x float> %foldExtExtBinop244, i64 1
  %i.mm = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract164, float %.sroa.0201.0.vec.extract204, float %i.ml)
  %i.mn = call noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %.sroa.10.0, float %i.mm)
  %i.mo = fcmp olt float %i.mn, -5.000000e-01
  br i1 %i.mo, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %bb.n
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.ao:                                            ; preds = %.invoke, %bb.y, %bb.s, %.noexc127, %.noexc126, %.noexc125, %.noexc124, %.noexc
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit130
  %i.mr = load ptr, ptr %i.ar, align 8, !tbaa !747
  %i.ms = load i32, ptr %i.bf, align 4, !tbaa !359
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mt
  store i8 1, ptr %i.mu, align 1, !tbaa !381
  %i.mv = load ptr, ptr %i.ar, align 8, !tbaa !747
  %i.mw = load i32, ptr %i.bl, align 4, !tbaa !359
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mx
  store i8 1, ptr %i.my, align 1, !tbaa !381
  %i.mz = load ptr, ptr %i.ar, align 8, !tbaa !747
  %i.na = load i32, ptr %i.bp, align 4, !tbaa !359
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nb
  store i8 1, ptr %i.nc, align 1, !tbaa !381
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit130
  %i.nd = add nuw i64 %.073211, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.nd, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !7356

.body:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %bb.ao, %bb.an
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %i.gv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.mq, %bb.ao ], [ %i.mp, %bb.an ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !594
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !595
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !381
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !438
  %i.g = load i64, ptr %0, align 8, !tbaa !437
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !825
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 7 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !361
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !994
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.n = load i64, ptr %3, align 8, !tbaa !840
  store i64 %i.n, ptr %i.m, align 64, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !844
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !845
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.p, align 8, !tbaa !847
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.q, align 8, !tbaa !631
  store ptr %4, ptr %i.l, align 16, !tbaa !3054
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit: ; preds = %.noexc4, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.s = load atomic i8, ptr %i.r monotonic, align 1
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !850  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d121simple_partition_type7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS8_4math4Vec3IfEEEEKNS1_18simple_partitionerEEES6_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !3054 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load i64, ptr %i.k, align 64, !tbaa !840
  %i.m = load ptr, ptr %0, align 64, !tbaa !361
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #22, !inline_history !331
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c
  %.019.i.i = phi ptr [ %i.s, %bb.c ], [ %i.j, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread ] ; 5 uses
  %i.s = load ptr, ptr %.019.i.i, align 8, !tbaa !844 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !840
  %i.v = inttoptr i64 %i.u to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = atomicrmw sub ptr %i.w, i32 1 seq_cst, align 4
  %i.y = add i32 %i.x, -1
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9FillArrayINS6_4math4Vec3IfEEEEKNS1_18simple_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.not.10.i = icmp eq i8 %i.apq, 0
  br i1 %.not.10.i, label %bb.fi, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.apr = load i8, ptr %i.amu, align 1, !tbaa !381
  %i.aps = icmp eq i8 %i.apr, %.047.i             ; 3 uses
  br i1 %i.aps, label %bb.fj, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fj:                                            ; preds = %bb.fi
  %i.apt = load i8, ptr %i.amv, align 1, !tbaa !381 ; 2 uses
  %.not.11.i = icmp eq i8 %i.apt, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.en, %bb.ep, %bb.er, %bb.et, %bb.ev, %bb.ex, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.fh, %bb.fj
  %.lcssa.i = phi i8 [ %i.aom, %bb.en ], [ %i.aop, %bb.ep ], [ %i.aos, %bb.er ], [ %i.aov, %bb.et ], [ %i.aoy, %bb.ev ], [ %i.apb, %bb.ex ], [ %i.ape, %bb.ez ], [ %i.aph, %bb.fb ], [ %i.apk, %bb.fd ], [ %i.apn, %bb.ff ], [ %i.apq, %bb.fh ], [ %i.apt, %bb.fj ] ; 14 uses
  %i.apu = zext i8 %.lcssa.i to i64
  %i.apv = getelementptr [4 x i8], ptr %i.als, i64 %i.apu
  %i.apw = getelementptr i8, ptr %i.apv, i64 -4
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !359 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.apx, -1073741824
  br i1 %or.cond.i287, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.apy = and i32 %i.apx, 1023
  %i.apz = uitofp nneg i32 %i.apy to double
  %i.aqa = fmul nnan double %i.apz, f0x3F500400FE733127
  store double %i.aqa, ptr %i.ey, align 16, !tbaa !481, !alias.scope !7688
  %i.aqb = lshr i32 %i.apx, 10
  %i.aqc = lshr i32 %i.apx, 20
  %i.aqd = and i32 %i.aqb, 1023
  %i.aqe = uitofp nneg i32 %i.aqd to double
  %i.aqf = and i32 %i.aqc, 1023
  %i.aqg = uitofp nneg i32 %i.aqf to double
  %i.aqh = insertelement <2 x double> poison, double %i.aqg, i64 0
  %i.aqi = insertelement <2 x double> %i.aqh, double %i.aqe, i64 1
  %i.aqj = fmul nnan <2 x double> %i.aqi, splat (double f0x3F500400FE733127)
  store <2 x double> %i.aqj, ptr %4, align 16, !tbaa !481, !alias.scope !7688
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit756

.noexc289:                                        ; preds = %bb.fk
  %i.aqk = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aql = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.aql, align 1, !tbaa !486
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.gm

bb.fl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.aqm = load i8, ptr %i.aly, align 1, !tbaa !381, !noalias !7689
  %i.aqn = icmp eq i8 %i.aqm, %.lcssa.i
  br i1 %i.aqn, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aqo = load double, ptr %15, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.aqp = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7689
  %i.aqq = fsub double %i.ak, %i.aqo
  %i.aqr = fsub double %i.aqp, %i.aqo
  %i.aqs = fdiv double %i.aqq, %i.aqr
  %i.aqt = fadd double %i.aqs, 0.000000e+00
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.0707.0 = phi double [ %i.aqt, %bb.fm ], [ 0.000000e+00, %bb.fl ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.fm ], [ 0, %bb.fl ] ; 2 uses
  %i.aqu = load i8, ptr %i.ama, align 1, !tbaa !381, !noalias !7689
  %i.aqv = icmp eq i8 %i.aqu, %.lcssa.i
  br i1 %i.aqv, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aqw = fadd double %.sroa.0707.0, 1.000000e+00
  %i.aqx = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.aqy = load double, ptr %i.er, align 8, !tbaa !481, !noalias !7689
  %i.aqz = fsub double %i.ak, %i.aqx
  %i.ara = fsub double %i.aqy, %i.aqx
  %i.arb = fdiv double %i.aqz, %i.ara
  %i.arc = fadd double %i.arb, 0.000000e+00
  %i.ard = add nuw nsw i32 %.0.i405, 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sroa.0707.1 = phi double [ %i.aqw, %bb.fo ], [ %.sroa.0707.0, %bb.fn ] ; 2 uses
  %.sroa.22709.0 = phi double [ %i.arc, %bb.fo ], [ 0.000000e+00, %bb.fn ] ; 2 uses
  %.1.i406 = phi i32 [ %i.ard, %bb.fo ], [ %.0.i405, %bb.fn ] ; 2 uses
  %i.are = load i8, ptr %i.amc, align 1, !tbaa !381, !noalias !7689
  %i.arf = icmp eq i8 %i.are, %.lcssa.i
  br i1 %i.arf, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.arg = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.arh = load double, ptr %i.er, align 8, !tbaa !481, !noalias !7689
  %i.ari = fsub double %i.ak, %i.arg
  %i.arj = fsub double %i.arh, %i.arg
  %i.ark = fdiv double %i.ari, %i.arj
  %i.arl = fadd double %.sroa.0707.1, %i.ark
  %i.arm = fadd double %.sroa.22709.0, 1.000000e+00
  %i.arn = add nuw nsw i32 %.1.i406, 1
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.sroa.0707.2 = phi double [ %i.arl, %bb.fq ], [ %.sroa.0707.1, %bb.fp ] ; 2 uses
  %.sroa.22709.1 = phi double [ %i.arm, %bb.fq ], [ %.sroa.22709.0, %bb.fp ] ; 2 uses
  %.2.i407 = phi i32 [ %i.arn, %bb.fq ], [ %.1.i406, %bb.fp ] ; 2 uses
  %i.aro = load i8, ptr %i.ame, align 1, !tbaa !381, !noalias !7689
  %i.arp = icmp eq i8 %i.aro, %.lcssa.i
  br i1 %i.arp, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.arq = load double, ptr %15, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.arr = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7689
  %i.ars = fsub double %i.ak, %i.arq
  %i.art = fsub double %i.arr, %i.arq
  %i.aru = fdiv double %i.ars, %i.art
  %i.arv = fadd double %.sroa.22709.1, %i.aru
  %i.arw = add nuw nsw i32 %.2.i407, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.22709.2 = phi double [ %i.arv, %bb.fs ], [ %.sroa.22709.1, %bb.fr ] ; 2 uses
  %.3.i408 = phi i32 [ %i.arw, %bb.fs ], [ %.2.i407, %bb.fr ] ; 2 uses
  %i.arx = load i8, ptr %i.amg, align 1, !tbaa !381, !noalias !7689
  %i.ary = icmp eq i8 %i.arx, %.lcssa.i
  br i1 %i.ary, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.arz = load double, ptr %i.et, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.asa = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7689
  %i.asb = fsub double %i.ak, %i.arz
  %i.asc = fsub double %i.asa, %i.arz
  %i.asd = fdiv double %i.asb, %i.asc
  %i.ase = fadd double %.sroa.0707.2, %i.asd
  %i.asf = add nuw nsw i32 %.3.i408, 1
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.0707.3 = phi double [ %i.ase, %bb.fu ], [ %.sroa.0707.2, %bb.ft ] ; 2 uses
  %.sroa.13708.0 = phi double [ 1.000000e+00, %bb.fu ], [ 0.000000e+00, %bb.ft ] ; 2 uses
  %.4.i409 = phi i32 [ %i.asf, %bb.fu ], [ %.3.i408, %bb.ft ] ; 2 uses
  %i.asg = load i8, ptr %i.ami, align 1, !tbaa !381, !noalias !7689
  %i.ash = icmp eq i8 %i.asg, %.lcssa.i
  br i1 %i.ash, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.asi = fadd double %.sroa.0707.3, 1.000000e+00
  %i.asj = fadd double %.sroa.13708.0, 1.000000e+00
  %i.ask = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.asl = load double, ptr %i.ev, align 8, !tbaa !481, !noalias !7689
  %i.asm = fsub double %i.ak, %i.ask
  %i.asn = fsub double %i.asl, %i.ask
  %i.aso = fdiv double %i.asm, %i.asn
  %i.asp = fadd double %.sroa.22709.2, %i.aso
  %i.asq = add nuw nsw i32 %.4.i409, 1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.0707.4 = phi double [ %i.asi, %bb.fw ], [ %.sroa.0707.3, %bb.fv ] ; 2 uses
  %.sroa.13708.1 = phi double [ %i.asj, %bb.fw ], [ %.sroa.13708.0, %bb.fv ] ; 2 uses
  %.sroa.22709.3 = phi double [ %i.asp, %bb.fw ], [ %.sroa.22709.2, %bb.fv ] ; 2 uses
  %.5.i410 = phi i32 [ %i.asq, %bb.fw ], [ %.4.i409, %bb.fv ] ; 2 uses
  %i.asr = load i8, ptr %i.amk, align 1, !tbaa !381, !noalias !7689
  %i.ass = icmp eq i8 %i.asr, %.lcssa.i
  br i1 %i.ass, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.ast = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.asu = load double, ptr %i.ev, align 8, !tbaa !481, !noalias !7689
  %i.asv = fsub double %i.ak, %i.ast
  %i.asw = fsub double %i.asu, %i.ast
  %i.asx = fdiv double %i.asv, %i.asw
  %i.asy = fadd double %.sroa.0707.4, %i.asx
  %i.asz = fadd double %.sroa.13708.1, 1.000000e+00
  %i.ata = fadd double %.sroa.22709.3, 1.000000e+00
  %i.atb = add nuw nsw i32 %.5.i410, 1
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.0707.5 = phi double [ %i.asy, %bb.fy ], [ %.sroa.0707.4, %bb.fx ] ; 2 uses
  %.sroa.13708.2 = phi double [ %i.asz, %bb.fy ], [ %.sroa.13708.1, %bb.fx ] ; 2 uses
  %.sroa.22709.4 = phi double [ %i.ata, %bb.fy ], [ %.sroa.22709.3, %bb.fx ] ; 2 uses
  %.6.i411 = phi i32 [ %i.atb, %bb.fy ], [ %.5.i410, %bb.fx ] ; 2 uses
  %i.atc = load i8, ptr %i.amn, align 1, !tbaa !381, !noalias !7689
  %i.atd = icmp eq i8 %i.atc, %.lcssa.i
  br i1 %i.atd, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ate = fadd double %.sroa.13708.2, 1.000000e+00
  %i.atf = load double, ptr %i.et, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.atg = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7689
  %i.ath = fsub double %i.ak, %i.atf
  %i.ati = fsub double %i.atg, %i.atf
  %i.atj = fdiv double %i.ath, %i.ati
  %i.atk = fadd double %.sroa.22709.4, %i.atj
  %i.atl = add nuw nsw i32 %.6.i411, 1
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.sroa.13708.3 = phi double [ %i.ate, %bb.ga ], [ %.sroa.13708.2, %bb.fz ] ; 2 uses
  %.sroa.22709.5 = phi double [ %i.atk, %bb.ga ], [ %.sroa.22709.4, %bb.fz ] ; 2 uses
  %.7.i412 = phi i32 [ %i.atl, %bb.ga ], [ %.6.i411, %bb.fz ] ; 2 uses
  %i.atm = load i8, ptr %i.amp, align 1, !tbaa !381, !noalias !7689
  %i.atn = icmp eq i8 %i.atm, %.lcssa.i
  br i1 %i.atn, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ato = load double, ptr %15, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.atp = load double, ptr %i.et, align 8, !tbaa !481, !noalias !7689
  %i.atq = fsub double %i.ak, %i.ato
  %i.atr = fsub double %i.atp, %i.ato
  %i.ats = fdiv double %i.atq, %i.atr
  %i.att = fadd double %.sroa.13708.3, %i.ats
  %i.atu = add nuw nsw i32 %.7.i412, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.13708.4 = phi double [ %i.att, %bb.gc ], [ %.sroa.13708.3, %bb.gb ] ; 2 uses
  %.8.i413 = phi i32 [ %i.atu, %bb.gc ], [ %.7.i412, %bb.gb ] ; 2 uses
  %i.atv = load i8, ptr %i.amr, align 1, !tbaa !381, !noalias !7689
  %i.atw = icmp eq i8 %i.atv, %.lcssa.i
  br i1 %i.atw, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.atx = fadd double %.sroa.0707.5, 1.000000e+00
  %i.aty = load double, ptr %i.eq, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.atz = load double, ptr %i.eu, align 8, !tbaa !481, !noalias !7689
  %i.aua = fsub double %i.ak, %i.aty
  %i.aub = fsub double %i.atz, %i.aty
  %i.auc = fdiv double %i.aua, %i.aub
  %i.aud = fadd double %.sroa.13708.4, %i.auc
  %i.aue = add nuw nsw i32 %.8.i413, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.sroa.0707.6 = phi double [ %i.atx, %bb.ge ], [ %.sroa.0707.5, %bb.gd ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.aud, %bb.ge ], [ %.sroa.13708.4, %bb.gd ] ; 2 uses
  %.9.i414 = phi i32 [ %i.aue, %bb.ge ], [ %.8.i413, %bb.gd ] ; 2 uses
  %i.auf = load i8, ptr %i.amt, align 1, !tbaa !381, !noalias !7689
  %i.aug = icmp eq i8 %i.auf, %.lcssa.i
  br i1 %i.aug, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.auh = fadd double %.sroa.0707.6, 1.000000e+00
  %i.aui = load double, ptr %i.er, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.auj = load double, ptr %i.ev, align 8, !tbaa !481, !noalias !7689
  %i.auk = fsub double %i.ak, %i.aui
  %i.aul = fsub double %i.auj, %i.aui
  %i.aum = fdiv double %i.auk, %i.aul
  %24 = fadd double %.sroa.13708.5, %i.aum
  %25 = fadd double %.sroa.22709.5, 1.000000e+00
  %i.aun = add nuw nsw i32 %.9.i414, 1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.0707.7 = phi double [ %i.auh, %bb.gg ], [ %.sroa.0707.6, %bb.gf ] ; 2 uses
  %.sroa.13708.6 = phi double [ %24, %bb.gg ], [ %.sroa.13708.5, %bb.gf ] ; 2 uses
  %.sroa.22709.6 = phi double [ %25, %bb.gg ], [ %.sroa.22709.5, %bb.gf ] ; 2 uses
  %.10.i415 = phi i32 [ %i.aun, %bb.gg ], [ %.9.i414, %bb.gf ] ; 2 uses
  %i.auo = load i8, ptr %i.amv, align 1, !tbaa !381, !noalias !7689
  %i.aup = icmp eq i8 %i.auo, %.lcssa.i
  br i1 %i.aup, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.auq = load double, ptr %i.es, align 8, !tbaa !481, !noalias !7689 ; 2 uses
  %i.aur = load double, ptr %i.ew, align 8, !tbaa !481, !noalias !7689
  %i.aus = fsub double %i.ak, %i.auq
  %i.aut = fsub double %i.aur, %i.auq
  %i.auu = fdiv double %i.aus, %i.aut
  %26 = fadd double %.sroa.13708.6, %i.auu
  %27 = fadd double %.sroa.22709.6, 1.000000e+00
  %i.auv = add nuw nsw i32 %.10.i415, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.13708.7 = phi double [ %26, %bb.gi ], [ %.sroa.13708.6, %bb.gh ] ; 2 uses
  %.sroa.22709.7 = phi double [ %27, %bb.gi ], [ %.sroa.22709.6, %bb.gh ] ; 2 uses
  %.11.i416 = phi i32 [ %i.auv, %bb.gi ], [ %.10.i415, %bb.gh ] ; 2 uses
  %i.auw = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.auw, label %bb.gk, label %.noexc290

bb.gk:                                            ; preds = %bb.gj
  %i.aux = uitofp nneg i32 %.11.i416 to double
  %i.auy = fdiv double 1.000000e+00, %i.aux       ; 3 uses
  %i.auz = fmul double %.sroa.0707.7, %i.auy
  %28 = fmul double %.sroa.13708.7, %i.auy
  %29 = fmul double %.sroa.22709.7, %i.auy
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gk, %bb.gj
  %.sroa.0707.8 = phi double [ %i.auz, %bb.gk ], [ %.sroa.0707.7, %bb.gj ]
  %.sroa.13708.8 = phi double [ %28, %bb.gk ], [ %.sroa.13708.7, %bb.gj ]
  %.sroa.22709.8 = phi double [ %29, %bb.gk ], [ %.sroa.22709.7, %bb.gj ]
  %i.ava = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 3 uses
  store double %.sroa.0707.8, ptr %i.ava, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  store double %.sroa.13708.8, ptr %.sroa.13708.0..sroa_idx, align 8
  %.sroa.22709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  store double %.sroa.22709.8, ptr %.sroa.22709.0..sroa_idx, align 8
  %i.avb = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.avb, align 1, !tbaa !486
  br label %bb.gm

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fi, %bb.fj
  %.sroa.0704.0 = select i1 %i.aol, double %i.aok, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.aol to i32
  %i.avc = fadd double %.sroa.0704.0, 1.000000e+00
  %i.avd = select i1 %i.aol, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.aoo, double %i.avc, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.aoo, double %i.aoj, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.aoo, i32 %i.avd, i32 %.0.i392
  %i.ave = fadd double %i.aob, %.sroa.0704.1
  %i.avf = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.aor, double %i.ave, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.aor, double %i.avf, double %.sroa.22706.0 ; 2 uses
  %i.avg = zext i1 %i.aor to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.avg
  %i.avh = fadd double %i.aoc, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.aou, double %i.avh, double %.sroa.22706.1 ; 2 uses
  %i.avi = zext i1 %i.aou to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.avi
  %i.avj = fadd double %i.aoe, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.aox, double %i.avj, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.aox, double 1.000000e+00, double 0.000000e+00
  %i.avk = zext i1 %i.aox to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.avk     ; 2 uses
  %i.avl = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.avm = insertelement <2 x double> %i.avl, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.avn = fadd <2 x double> %i.avm, splat (double 1.000000e+00)
  %i.avo = fadd double %i.aod, %.sroa.22706.2
  %i.avp = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.apa, double %i.avo, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.apa, i32 %i.avp, i32 %.4.i396 ; 2 uses
  %i.avq = select i1 %i.apa, <2 x double> %i.avn, <2 x double> %i.avm ; 2 uses
  %i.avr = fadd <2 x double> %i.aog, %i.avq
  %i.avs = fadd double %.sroa.22706.3, 1.000000e+00
  %i.avt = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.apd, double %i.avs, double %.sroa.22706.3
  %.6.i398 = select i1 %i.apd, i32 %i.avt, i32 %.5.i397
  %i.avu = select i1 %i.apd, <2 x double> %i.avr, <2 x double> %i.avq ; 2 uses
  %i.avv = extractelement <2 x double> %i.avu, i64 1 ; 2 uses
  %i.avw = fadd double %i.avv, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.apg, double %i.avw, double %i.avv ; 2 uses
  %i.avx = zext i1 %i.apg to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.avx
  %i.avy = fadd double %i.aof, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.apj, double %i.avy, double %.sroa.13705.3
  %i.avz = zext i1 %i.apj to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.avz
  %i.awa = extractelement <2 x double> %i.avu, i64 0 ; 2 uses
  %i.awb = fadd double %i.awa, 1.000000e+00
  %i.awc = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.awd = insertelement <2 x double> %i.awc, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.awe = fadd <2 x double> %i.ant, %i.awd
  %.sroa.0704.6 = select i1 %i.apm, double %i.awb, double %i.awa ; 2 uses
  %i.awf = insertelement <2 x i1> poison, i1 %i.apm, i64 0
  %i.awg = insertelement <2 x i1> %i.awf, i1 %i.apg, i64 1
  %i.awh = select <2 x i1> %i.awg, <2 x double> %i.awe, <2 x double> %i.awd ; 2 uses
  %i.awi = zext i1 %i.apm to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.awi     ; 2 uses
  %i.awj = fadd double %.sroa.0704.6, 1.000000e+00
  %i.awk = fadd <2 x double> %i.aoi, %i.awh
  %i.awl = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.app, double %i.awj, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.app, i32 %i.awl, i32 %.9.i401
  %i.awm = select i1 %i.app, <2 x double> %i.awk, <2 x double> %i.awh ; 2 uses
  %i.awn = fadd <2 x double> %i.aoh, %i.awm
  %i.awo = insertelement <2 x i1> poison, i1 %i.aps, i64 0
  %i.awp = shufflevector <2 x i1> %i.awo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.awq = select <2 x i1> %i.awp, <2 x double> %i.awn, <2 x double> %i.awm ; 2 uses
  %i.awr = zext i1 %i.aps to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.awr   ; 2 uses
  %i.aws = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.aws, label %bb.gl, label %.noexc291

bb.gl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.awt = uitofp nneg i32 %.11.i403 to double
  %i.awu = fdiv double 1.000000e+00, %i.awt       ; 2 uses
  %i.awv = fmul double %.sroa.0704.7, %i.awu
  %i.aww = insertelement <2 x double> poison, double %i.awu, i64 0
  %i.awx = shufflevector <2 x double> %i.aww, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awy = fmul <2 x double> %i.awq, %i.awx
  br label %.noexc291

.noexc291:                                        ; preds = %bb.gl, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.awv, %bb.gl ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awz = phi <2 x double> [ %i.awy, %bb.gl ], [ %i.awq, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.axa = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.axa, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  store <2 x double> %i.awz, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.axb = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.axb, align 1, !tbaa !486
  br label %bb.gm

bb.gm:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.axc = add i8 %.047.i, 1
  %i.axd = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.axd, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.em, !llvm.loop !321

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gm, %middle.block1205
  %.0140976 = phi i64 [ %umax.i, %middle.block1205 ], [ %umax.i286, %bb.gm ], [ %umax.i, %.noexc254 ]
  %i.axe = sitofp <2 x i32> %i.mv to <2 x double>
  %i.axf = sitofp i32 %i.mz to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.he
  %.0138809 = phi i64 [ %i.azj, %bb.he ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145808 = phi i32 [ %i.azi, %bb.he ], [ %.0144811, %.lr.ph.preheader ] ; 2 uses
  %i.axg = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138809 ; 7 uses
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !481 ; 2 uses
  %i.axi = call double @llvm.fabs.f64(double %i.axh)
  %i.axj = fcmp ueq double %i.axi, +inf
  br i1 %i.axj, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axl = load double, ptr %i.axk, align 8, !tbaa !481 ; 2 uses
  %i.axm = call double @llvm.fabs.f64(double %i.axl)
  %i.axn = fcmp ueq double %i.axm, +inf
  br i1 %i.axn, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axg, i64 16 ; 3 uses
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !481 ; 2 uses
  %i.axq = call double @llvm.fabs.f64(double %i.axp)
  %i.axr = fcmp ueq double %i.axq, +inf
  br i1 %i.axr, label %bb.gp, label %bb.gz

bb.gp:                                            ; preds = %bb.go, %bb.gn, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.axs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.axs, ptr %18, align 8, !tbaa !473
  %i.axt = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.axt, align 8, !tbaa !475
  store i8 0, ptr %i.axs, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.axu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.95, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gr unwind label %bb.gu

bb.gr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.axv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #22 ; 0 uses
  %i.axw = load ptr, ptr %20, align 8, !tbaa !476 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.axy = icmp eq ptr %i.axw, %i.axx
  br i1 %i.axy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gr
  %i.axz = load i64, ptr %i.axx, align 8, !tbaa !381
  %i.aya = add i64 %i.axz, 1
  call void @_ZdlPvm(ptr noundef %i.axw, i64 noundef %i.aya) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gx

bb.gs:                                            ; preds = %bb.gp
  %i.ayb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gq
  %i.ayc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gv

bb.gu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ayd = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn157 = phi { ptr, i32 } [ %i.ayd, %bb.gu ], [ %i.ayc, %bb.gt ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #22
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gv ], [ %i.ayb, %bb.gs ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.aye = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal29MaskDisorientedTrianglePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
bb.ab:                                            ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !359 ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %i.jf
  br i1 %i.ji, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jj = icmp sgt i32 %i.jh, %i.jf
  br i1 %i.jj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 36
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !359 ; 2 uses
  %i.jm = icmp slt i32 %i.jl, %i.iw
  br i1 %i.jm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jn = icmp sgt i32 %i.jl, %i.iw
  br i1 %i.jn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.jo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !359
  %i.jq = icmp slt i32 %i.jp, %i.iy
  br i1 %i.jq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.ad, %bb.ab
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i, %bb.ae, %bb.ac
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.ae ], [ 16, %bb.ac ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0813.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.014.i.i.i.i.i, %bb.ae ], [ %.014.i.i.i.i.i, %bb.ac ], [ %.014.i.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i.i ] ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.jr, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.ab, !llvm.loop !344

_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i.i
  %i.js = icmp eq ptr %.19.i.i.i.i.i, %i.jb
  br i1 %i.js, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !359 ; 2 uses
  %i.jv = icmp slt i32 %i.jf, %i.ju
  br i1 %i.jv, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jw = icmp sgt i32 %i.jf, %i.ju
  br i1 %i.jw, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !359 ; 2 uses
  %i.jz = icmp slt i32 %i.iw, %i.jy
  br i1 %i.jz, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ka = icmp sgt i32 %i.iw, %i.jy
  br i1 %i.ka, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.ai
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !359
  %i.kd = icmp slt i32 %i.iy, %i.kc
  br i1 %i.kd, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ah, %bb.af, %_ZNKSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISF_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ir, i64 48
  br label %.noexc

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.ai, %bb.ag
  %i.kf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !3204 ; 2 uses
  %.not.i130 = icmp eq ptr %i.kg, null
  br i1 %.not.i130, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.kh = and i32 %i.ea, -4096
  %i.ki = and i32 %i.dz, -4096
  %.sroa.2.0.insert.ext.i.i131 = zext i32 %i.kh to i64
  %.sroa.2.0.insert.shift.i.i132 = shl nuw i64 %.sroa.2.0.insert.ext.i.i131, 32
  %.sroa.0.0.insert.ext.i.i133 = zext i32 %i.ho to i64
  %.sroa.0.0.insert.insert.i.i134 = or disjoint i64 %.sroa.2.0.insert.shift.i.i132, %.sroa.0.0.insert.ext.i.i133
  store i64 %.sroa.0.0.insert.insert.i.i134, ptr %.06.i.i.i.i.ptr.2.i.i.i, align 8
  store i32 %i.ki, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i, align 8, !tbaa !381
  store ptr %i.kg, ptr %i.ao, align 8, !tbaa !3228
  %i.kj = load ptr, ptr %i.kf, align 8, !tbaa !3211 ; 2 uses
  %i.kk = shl i32 %i.eb, 3
  %i.kl = and i32 %i.kk, 31744
  %i.km = lshr i32 %i.ea, 2
  %i.kn = and i32 %i.km, 992
  %i.ko = or disjoint i32 %i.kn, %i.kl            ; 2 uses
  %i.kp = lshr i32 %i.dz, 7
  %i.kq = and i32 %i.kp, 31
  %i.kr = or disjoint i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 262144
  %i.kt = lshr i32 %i.ko, 6
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !446
  %i.kx = and i32 %i.kr, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = and i64 %i.kw, %i.kz
  %.not.i.i135 = icmp eq i64 %i.la, 0
  %i.lb = zext nneg i32 %i.kr to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.lb ; 2 uses
  br i1 %.not.i.i135, label %.noexc, label %.invoke

.invoke:                                          ; preds = %bb.aj, %bb.aa
  %.in = phi ptr [ %i.iq, %bb.aa ], [ %i.lc, %bb.aj ] ; 2 uses
  %storemerge = load ptr, ptr %.in, align 8, !tbaa !381
  %i.ld = and i32 %i.ea, -128
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.ld to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ev to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %.06.i.i.i.i.ptr.1.i.i.i, align 4
  %storemerge239 = and i32 %i.dz, -128
  store i32 %storemerge239, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i, align 4, !tbaa !381
  store ptr %storemerge, ptr %i.ap, align 8, !tbaa !3227
  %i.le = load ptr, ptr %.in, align 8, !tbaa !381
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.le, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %.noexc unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc

.noexc:                                           ; preds = %.invoke, %bb.aa, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i, %bb.ak, %bb.aj, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.eu, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKdSK_.exit.i ], [ %i.fx, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKdSK_.exit.i ], [ %i.lf, %.invoke ], [ %i.iq, %bb.aa ], [ %.0.i.i.i.i.i.i, %_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKdRKNS0_4math5CoordERT_.exit.i ], [ %i.ke, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.lg, %bb.ak ], [ %i.lc, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !7709
  %i.lh = add nsw i32 %i.du, -1
  %.sroa.0.0.insert.ext.i10.i.i = zext i32 %i.lh to i64
  %.sroa.0.0.insert.insert.i11.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i10.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i.i, ptr %7, align 8, !noalias !7709
  store i32 %i.dz, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !7709
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %.noexc116 unwind label %bb.an

.noexc116:                                        ; preds = %.noexc
  %i.lj = load double, ptr %.1.i.i, align 8, !tbaa !481, !noalias !7709
  %i.lk = load double, ptr %i.li, align 8, !tbaa !481, !noalias !7709
  %i.ll = fsub double %i.lj, %i.lk
  %i.lm = fmul double %i.ll, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !7709
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !7709
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !7709
  %i.ln = add nsw i32 %i.ea, 1
  %.sroa.2.0.insert.ext.i.i6.i = zext i32 %i.ln to i64
  %.sroa.2.0.insert.shift.i.i7.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i6.i, 32
  %.sroa.0.0.insert.insert.i.i9.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i7.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i9.i, ptr %4, align 8, !noalias !7709
  store i32 %i.dz, ptr %.sroa.24.0..sroa_idx.i10.i, align 8, !noalias !7709
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %.noexc117 unwind label %bb.an

.noexc117:                                        ; preds = %.noexc116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !7709
  %i.lp = add nsw i32 %i.ea, -1
  %.sroa.2.0.insert.ext.i8.i11.i = zext i32 %i.lp to i64
  %.sroa.2.0.insert.shift.i9.i12.i = shl nuw i64 %.sroa.2.0.insert.ext.i8.i11.i, 32
  %.sroa.0.0.insert.insert.i11.i14.i = or disjoint i64 %.sroa.2.0.insert.shift.i9.i12.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i11.i14.i, ptr %5, align 8, !noalias !7709
  store i32 %i.dz, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !7709
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %.noexc118 unwind label %bb.an

.noexc118:                                        ; preds = %.noexc117
  %i.lr = load double, ptr %i.lo, align 8, !tbaa !481, !noalias !7709
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !481, !noalias !7709
  %i.lt = fsub double %i.lr, %i.ls
  %i.lu = fmul double %i.lt, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !7709
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !7709
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !7709
  %i.lv = add nsw i32 %i.dz, 1
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8, !noalias !7709
  store i32 %i.lv, ptr %.sroa.24.0..sroa_idx.i16.i, align 8, !noalias !7709
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %.noexc119 unwind label %bb.an

.noexc119:                                        ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !7709
  %i.lx = add nsw i32 %i.dz, -1
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %3, align 8, !noalias !7709
  store i32 %i.lx, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !noalias !7709
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.noexc119
  %i.lz = load double, ptr %i.lw, align 8, !tbaa !481, !noalias !7709
  %i.ma = load double, ptr %i.ly, align 8, !tbaa !481, !noalias !7709
  %i.mb = fsub double %i.lz, %i.ma
  %i.mc = fmul double %i.mb, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !7709
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !7709
  %12 = fptrunc double %i.lm to float             ; 4 uses
  %.sroa.0152.0.vec.insert = insertelement <2 x float> poison, float %12, i64 0
  %i.md = fptrunc double %i.lu to float           ; 4 uses
  %.sroa.0152.4.vec.insert = insertelement <2 x float> %.sroa.0152.0.vec.insert, float %i.md, i64 1
  %13 = fptrunc double %i.mc to float             ; 4 uses
  %14 = fmul float %i.md, %i.md
  %i.me = call float @llvm.fmuladd.f32(float %12, float %12, float %14)
  %i.mf = call float @llvm.fmuladd.f32(float %13, float %13, float %i.me)
  %sqrt.i.i121 = call noundef float @llvm.sqrt.f32(float %i.mf) ; 2 uses
  %i.mg = call noundef float @llvm.fabs.f32(float %sqrt.i.i121)
  %i.mh = fcmp ogt float %i.mg, 1.000000e-07
  br i1 %i.mh, label %15, label %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit122

15:                                               ; preds = %bb.al
  %16 = fdiv float 1.000000e+00, %sqrt.i.i121     ; 3 uses
  %17 = fmul float %16, %12
  %18 = fmul float %16, %i.md
  %19 = fmul float %16, %13
  %.sroa.0152.0.vec.insert155 = insertelement <2 x float> poison, float %17, i64 0
  %.sroa.0152.4.vec.insert162 = insertelement <2 x float> %.sroa.0152.0.vec.insert155, float %18, i64 1
  br label %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit122

_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit122: ; preds = %15, %bb.al
  %.sroa.14.1 = phi float [ %19, %15 ], [ %13, %bb.al ] ; 2 uses
  %.sroa.0152.1 = phi <2 x float> [ %.sroa.0152.4.vec.insert162, %15 ], [ %.sroa.0152.4.vec.insert, %bb.al ] ; 2 uses
  %20 = fneg <2 x float> %.sroa.0152.1
  %21 = fneg float %.sroa.14.1
  %.sroa.14.0 = select i1 %i.aa, float %21, float %.sroa.14.1
  %.sroa.0152.0 = select i1 %i.aa, <2 x float> %20, <2 x float> %.sroa.0152.1 ; 2 uses
  %.sroa.0152.0.vec.extract159 = extractelement <2 x float> %.sroa.0152.0, i64 0
  %.sroa.0199.0.vec.extract202 = extractelement <2 x float> %.sroa.0199.0, i64 0
  %foldExtExtBinop242 = fmul <2 x float> %.sroa.0199.0, %.sroa.0152.0
  %22 = extractelement <2 x float> %foldExtExtBinop242, i64 1
  %23 = call float @llvm.fmuladd.f32(float %.sroa.0152.0.vec.extract159, float %.sroa.0199.0.vec.extract202, float %22)
  %24 = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0, float %.sroa.10.0, float %23)
  %25 = fcmp olt float %24, -5.000000e-01
  br i1 %25, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %bb.n
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.an:                                            ; preds = %.invoke, %bb.y, %bb.s, %.noexc119, %.noexc118, %.noexc117, %.noexc116, %.noexc
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit122
  %i.mk = load ptr, ptr %i.ar, align 8, !tbaa !3125
  %i.ml = load i32, ptr %i.bf, align 4, !tbaa !359
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm
  store i8 1, ptr %i.mn, align 1, !tbaa !381
  %i.mo = load ptr, ptr %i.ar, align 8, !tbaa !3125
  %i.mp = load i32, ptr %i.bl, align 4, !tbaa !359
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mq
  store i8 1, ptr %i.mr, align 1, !tbaa !381
  %i.ms = load ptr, ptr %i.ar, align 8, !tbaa !3125
  %i.mt = load i32, ptr %i.bp, align 4, !tbaa !359
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mu
  store i8 1, ptr %i.mv, align 1, !tbaa !381
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN7openvdb5v13_04math4Vec3IfE9normalizeEf.exit122
  %i.mw = add nuw i64 %.069209, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.mw, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !7707

.body:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i, %bb.an, %bb.am
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %i.gv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i ], [ %i.mj, %bb.an ], [ %i.mi, %bb.am ]
  call void @_ZN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!351, !352}
!llvm.ident = !{!353}
!llvm.errno.tbaa = !{!358}

!0 = distinct !{!0, !428}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !428}
!3 = distinct !{null, null, null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIsLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9 = distinct !{ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEED2Ev, ptr @_ZN7openvdb5v13_04math9TransformD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !428}
!13 = distinct !{!13, !428}
!14 = distinct !{!14, !428}
!15 = distinct !{!15, !428}
!16 = distinct !{!16, !428}
!17 = distinct !{!17, !428}
!18 = distinct !{!18, !428}
!19 = distinct !{ptr @_ZN7openvdb5v13_04math9TransformD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internal29MaskDisorientedTrianglePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEED2Ev, ptr @_ZN7openvdb5v13_04math9TransformD2Ev, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!21 = distinct !{!21, !428}
!22 = distinct !{!22, !428}
!23 = distinct !{!23, !428}
!24 = distinct !{!24, !428}
!25 = distinct !{!25, !428}
!26 = distinct !{!26, !428}
!27 = distinct !{!27, !428}
!28 = distinct !{!28, !428}
!29 = distinct !{!29, !428}
!30 = distinct !{!30, !428}
!31 = distinct !{!31, !428}
!32 = distinct !{!32, !428}
!33 = distinct !{!33, !428}
!34 = distinct !{!34, !428}
!35 = distinct !{!35, !428}
!36 = distinct !{!36, !428}
!37 = distinct !{!37, !428}
!38 = distinct !{null}
!39 = distinct !{!39, !428}
!40 = distinct !{null}
!41 = distinct !{!41, !428}
!42 = distinct !{!42, !428}
!43 = distinct !{!43, !428}
!44 = distinct !{!44, !428}
!45 = distinct !{!45, !428}
!46 = distinct !{null}
!47 = distinct !{!47, !428}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{!51, !428}
!52 = distinct !{!52, !428}
!53 = distinct !{null}
!54 = distinct !{!54, !428}
!55 = distinct !{!55, !428}
!56 = distinct !{!56, !428}
!57 = distinct !{!57, !428}
!58 = distinct !{!58, !428}
!59 = distinct !{null}
!60 = distinct !{!60, !428}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{!63, !428}
!64 = distinct !{!64, !428}
!65 = distinct !{null}
!66 = distinct !{!66, !428}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{!70, !428}
!71 = distinct !{!71, !428}
!72 = distinct !{!72, !428}
!73 = distinct !{!73, !428}
!74 = distinct !{!74, !428}
!75 = distinct !{!75, !428}
!76 = distinct !{!76, !428}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = distinct !{null}
end_hunk_3

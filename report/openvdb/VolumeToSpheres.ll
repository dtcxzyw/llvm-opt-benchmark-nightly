Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 220
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 788
begin_hunk_0_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.not.10.i = icmp eq i8 %i.aos, 0
  br i1 %.not.10.i, label %bb.fi, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aot = load i8, ptr %i.alw, align 1, !tbaa !548
  %i.aou = icmp eq i8 %i.aot, %.047.i             ; 3 uses
  br i1 %i.aou, label %bb.fj, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fj:                                            ; preds = %bb.fi
  %i.aov = load i8, ptr %i.alx, align 1, !tbaa !548 ; 2 uses
  %.not.11.i = icmp eq i8 %i.aov, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.en, %bb.ep, %bb.er, %bb.et, %bb.ev, %bb.ex, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.fh, %bb.fj
  %.lcssa.i = phi i8 [ %i.ano, %bb.en ], [ %i.anr, %bb.ep ], [ %i.anu, %bb.er ], [ %i.anx, %bb.et ], [ %i.aoa, %bb.ev ], [ %i.aod, %bb.ex ], [ %i.aog, %bb.ez ], [ %i.aoj, %bb.fb ], [ %i.aom, %bb.fd ], [ %i.aop, %bb.ff ], [ %i.aos, %bb.fh ], [ %i.aov, %bb.fj ] ; 14 uses
  %i.aow = zext i8 %.lcssa.i to i64
  %i.aox = getelementptr [4 x i8], ptr %i.aku, i64 %i.aow
  %i.aoy = getelementptr i8, ptr %i.aox, i64 -4
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !521 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.aoz, -1073741824
  br i1 %or.cond.i287, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.apa = and i32 %i.aoz, 1023
  %i.apb = uitofp nneg i32 %i.apa to double
  %i.apc = fmul nnan double %i.apb, f0x3F500400FE733127
  store double %i.apc, ptr %i.ey, align 16, !tbaa !701, !alias.scope !9757
  %i.apd = lshr i32 %i.aoz, 10
  %i.ape = lshr i32 %i.aoz, 20
  %i.apf = and i32 %i.apd, 1023
  %i.apg = uitofp nneg i32 %i.apf to double
  %i.aph = and i32 %i.ape, 1023
  %i.api = uitofp nneg i32 %i.aph to double
  %i.apj = insertelement <2 x double> poison, double %i.api, i64 0
  %i.apk = insertelement <2 x double> %i.apj, double %i.apg, i64 1
  %i.apl = fmul nnan <2 x double> %i.apk, splat (double f0x3F500400FE733127)
  store <2 x double> %i.apl, ptr %4, align 16, !tbaa !701, !alias.scope !9757
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit756

.noexc289:                                        ; preds = %bb.fk
  %i.apm = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apm, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.apn = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.apn, align 1, !tbaa !670
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.gm

bb.fl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.apo = load i8, ptr %i.ala, align 1, !tbaa !548, !noalias !9758
  %i.app = icmp eq i8 %i.apo, %.lcssa.i
  br i1 %i.app, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.apq = load double, ptr %15, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.apr = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !9758
  %i.aps = fsub double %i.ak, %i.apq
  %i.apt = fsub double %i.apr, %i.apq
  %i.apu = fdiv double %i.aps, %i.apt
  %i.apv = fadd double %i.apu, 0.000000e+00
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.0707.0 = phi double [ %i.apv, %bb.fm ], [ 0.000000e+00, %bb.fl ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.fm ], [ 0, %bb.fl ] ; 2 uses
  %i.apw = load i8, ptr %i.alc, align 1, !tbaa !548, !noalias !9758
  %i.apx = icmp eq i8 %i.apw, %.lcssa.i
  br i1 %i.apx, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.apy = fadd double %.sroa.0707.0, 1.000000e+00
  %i.apz = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.aqa = load double, ptr %i.er, align 16, !tbaa !701, !noalias !9758
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
  %i.aqg = load i8, ptr %i.ale, align 1, !tbaa !548, !noalias !9758
  %i.aqh = icmp eq i8 %i.aqg, %.lcssa.i
  br i1 %i.aqh, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aqi = load double, ptr %i.es, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.aqj = load double, ptr %i.er, align 16, !tbaa !701, !noalias !9758
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
  %i.aqq = load i8, ptr %i.alg, align 1, !tbaa !548, !noalias !9758
  %i.aqr = icmp eq i8 %i.aqq, %.lcssa.i
  br i1 %i.aqr, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aqs = load double, ptr %15, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.aqt = load double, ptr %i.es, align 8, !tbaa !701, !noalias !9758
  %i.aqu = fsub double %i.ak, %i.aqs
  %i.aqv = fsub double %i.aqt, %i.aqs
  %i.aqw = fdiv double %i.aqu, %i.aqv
  %i.aqx = fadd double %.sroa.22709.1, %i.aqw
  %i.aqy = add nuw nsw i32 %.2.i407, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.22709.2 = phi double [ %i.aqx, %bb.fs ], [ %.sroa.22709.1, %bb.fr ] ; 2 uses
  %.3.i408 = phi i32 [ %i.aqy, %bb.fs ], [ %.2.i407, %bb.fr ] ; 2 uses
  %i.aqz = load i8, ptr %i.ali, align 1, !tbaa !548, !noalias !9758
  %i.ara = icmp eq i8 %i.aqz, %.lcssa.i
  br i1 %i.ara, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.arb = load double, ptr %i.et, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.arc = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !9758
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
  %i.ari = load i8, ptr %i.alk, align 1, !tbaa !548, !noalias !9758
  %i.arj = icmp eq i8 %i.ari, %.lcssa.i
  br i1 %i.arj, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ark = fadd double %.sroa.0707.3, 1.000000e+00
  %i.arl = fadd double %.sroa.13708.0, 1.000000e+00
  %i.arm = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.arn = load double, ptr %i.ev, align 16, !tbaa !701, !noalias !9758
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
  %i.art = load i8, ptr %i.alm, align 1, !tbaa !548, !noalias !9758
  %i.aru = icmp eq i8 %i.art, %.lcssa.i
  br i1 %i.aru, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.arv = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.arw = load double, ptr %i.ev, align 16, !tbaa !701, !noalias !9758
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
  %i.ase = load i8, ptr %i.alp, align 1, !tbaa !548, !noalias !9758
  %i.asf = icmp eq i8 %i.ase, %.lcssa.i
  br i1 %i.asf, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.asg = fadd double %.sroa.13708.2, 1.000000e+00
  %i.ash = load double, ptr %i.et, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.asi = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !9758
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
  %i.aso = load i8, ptr %i.alr, align 1, !tbaa !548, !noalias !9758
  %i.asp = icmp eq i8 %i.aso, %.lcssa.i
  br i1 %i.asp, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.asq = load double, ptr %15, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.asr = load double, ptr %i.et, align 16, !tbaa !701, !noalias !9758
  %i.ass = fsub double %i.ak, %i.asq
  %i.ast = fsub double %i.asr, %i.asq
  %i.asu = fdiv double %i.ass, %i.ast
  %i.asv = fadd double %.sroa.13708.3, %i.asu
  %i.asw = add nuw nsw i32 %.7.i412, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.13708.4 = phi double [ %i.asv, %bb.gc ], [ %.sroa.13708.3, %bb.gb ] ; 2 uses
  %.8.i413 = phi i32 [ %i.asw, %bb.gc ], [ %.7.i412, %bb.gb ] ; 2 uses
  %i.asx = load i8, ptr %i.alt, align 1, !tbaa !548, !noalias !9758
  %i.asy = icmp eq i8 %i.asx, %.lcssa.i
  br i1 %i.asy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.asz = fadd double %.sroa.0707.5, 1.000000e+00
  %i.ata = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.atb = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !9758
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
  %i.ath = load i8, ptr %i.alv, align 1, !tbaa !548, !noalias !9758
  %i.ati = icmp eq i8 %i.ath, %.lcssa.i
  br i1 %i.ati, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.atj = fadd double %.sroa.0707.6, 1.000000e+00
  %i.atk = load double, ptr %i.er, align 16, !tbaa !701, !noalias !9758 ; 2 uses
  %i.atl = load double, ptr %i.ev, align 16, !tbaa !701, !noalias !9758
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
  %i.atq = load i8, ptr %i.alx, align 1, !tbaa !548, !noalias !9758
  %i.atr = icmp eq i8 %i.atq, %.lcssa.i
  br i1 %i.atr, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ats = load double, ptr %i.es, align 8, !tbaa !701, !noalias !9758 ; 2 uses
  %i.att = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !9758
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
  store i8 0, ptr %i.aud, align 1, !tbaa !670
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
  store i8 0, ptr %i.awd, align 1, !tbaa !670
  br label %bb.gm

bb.gm:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.awe = add i8 %.047.i, 1
  %i.awf = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.awf, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.em, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gm, %middle.block1205
  %.0140976 = phi i64 [ %umax.i, %middle.block1205 ], [ %umax.i286, %bb.gm ], [ %umax.i, %.noexc254 ]
  %i.awg = sitofp <2 x i32> %i.mv to <2 x double>
  %i.awh = sitofp i32 %i.mz to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.he
  %.0138809 = phi i64 [ %i.ayl, %bb.he ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145808 = phi i32 [ %i.ayk, %bb.he ], [ %.0144811, %.lr.ph.preheader ] ; 2 uses
  %i.awi = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138809 ; 7 uses
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !701 ; 2 uses
  %i.awk = call double @llvm.fabs.f64(double %i.awj)
  %i.awl = fcmp ueq double %i.awk, +inf
  br i1 %i.awl, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !701 ; 2 uses
  %i.awo = call double @llvm.fabs.f64(double %i.awn)
  %i.awp = fcmp ueq double %i.awo, +inf
  br i1 %i.awp, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awi, i64 16 ; 3 uses
  %i.awr = load double, ptr %i.awq, align 8, !tbaa !701 ; 2 uses
  %i.aws = call double @llvm.fabs.f64(double %i.awr)
  %i.awt = fcmp ueq double %i.aws, +inf
  br i1 %i.awt, label %bb.gp, label %bb.gz

bb.gp:                                            ; preds = %bb.go, %bb.gn, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.awu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.awu, ptr %18, align 8, !tbaa !740
  %i.awv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.awv, align 8, !tbaa !742
  store i8 0, ptr %i.awu, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.aww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.107, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gr unwind label %bb.gu

bb.gr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.awx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #21 ; 0 uses
  %i.awy = load ptr, ptr %20, align 8, !tbaa !743 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.axa = icmp eq ptr %i.awy, %i.awz
  br i1 %i.axa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gr
  %i.axb = load i64, ptr %i.awz, align 8, !tbaa !548
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn157 = phi { ptr, i32 } [ %i.axf, %bb.gu ], [ %i.axe, %bb.gt ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gv ], [ %i.axd, %bb.gs ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.axg = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %.not.10.i = icmp eq i8 %i.apq, 0
  br i1 %.not.10.i, label %bb.fi, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.apr = load i8, ptr %i.amu, align 1, !tbaa !548
  %i.aps = icmp eq i8 %i.apr, %.047.i             ; 3 uses
  br i1 %i.aps, label %bb.fj, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fj:                                            ; preds = %bb.fi
  %i.apt = load i8, ptr %i.amv, align 1, !tbaa !548 ; 2 uses
  %.not.11.i = icmp eq i8 %i.apt, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.en, %bb.ep, %bb.er, %bb.et, %bb.ev, %bb.ex, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.fh, %bb.fj
  %.lcssa.i = phi i8 [ %i.aom, %bb.en ], [ %i.aop, %bb.ep ], [ %i.aos, %bb.er ], [ %i.aov, %bb.et ], [ %i.aoy, %bb.ev ], [ %i.apb, %bb.ex ], [ %i.ape, %bb.ez ], [ %i.aph, %bb.fb ], [ %i.apk, %bb.fd ], [ %i.apn, %bb.ff ], [ %i.apq, %bb.fh ], [ %i.apt, %bb.fj ] ; 14 uses
  %i.apu = zext i8 %.lcssa.i to i64
  %i.apv = getelementptr [4 x i8], ptr %i.als, i64 %i.apu
  %i.apw = getelementptr i8, ptr %i.apv, i64 -4
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !521 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.apx, -1073741824
  br i1 %or.cond.i287, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.apy = and i32 %i.apx, 1023
  %i.apz = uitofp nneg i32 %i.apy to double
  %i.aqa = fmul nnan double %i.apz, f0x3F500400FE733127
  store double %i.aqa, ptr %i.ey, align 16, !tbaa !701, !alias.scope !11401
  %i.aqb = lshr i32 %i.apx, 10
  %i.aqc = lshr i32 %i.apx, 20
  %i.aqd = and i32 %i.aqb, 1023
  %i.aqe = uitofp nneg i32 %i.aqd to double
  %i.aqf = and i32 %i.aqc, 1023
  %i.aqg = uitofp nneg i32 %i.aqf to double
  %i.aqh = insertelement <2 x double> poison, double %i.aqg, i64 0
  %i.aqi = insertelement <2 x double> %i.aqh, double %i.aqe, i64 1
  %i.aqj = fmul nnan <2 x double> %i.aqi, splat (double f0x3F500400FE733127)
  store <2 x double> %i.aqj, ptr %4, align 16, !tbaa !701, !alias.scope !11401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit756

.noexc289:                                        ; preds = %bb.fk
  %i.aqk = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aql = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.aql, align 1, !tbaa !670
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.gm

bb.fl:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.aqm = load i8, ptr %i.aly, align 1, !tbaa !548, !noalias !11402
  %i.aqn = icmp eq i8 %i.aqm, %.lcssa.i
  br i1 %i.aqn, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aqo = load double, ptr %15, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.aqp = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11402
  %i.aqq = fsub double %i.ak, %i.aqo
  %i.aqr = fsub double %i.aqp, %i.aqo
  %i.aqs = fdiv double %i.aqq, %i.aqr
  %i.aqt = fadd double %i.aqs, 0.000000e+00
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.sroa.0707.0 = phi double [ %i.aqt, %bb.fm ], [ 0.000000e+00, %bb.fl ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.fm ], [ 0, %bb.fl ] ; 2 uses
  %i.aqu = load i8, ptr %i.ama, align 1, !tbaa !548, !noalias !11402
  %i.aqv = icmp eq i8 %i.aqu, %.lcssa.i
  br i1 %i.aqv, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aqw = fadd double %.sroa.0707.0, 1.000000e+00
  %i.aqx = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.aqy = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11402
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
  %i.are = load i8, ptr %i.amc, align 1, !tbaa !548, !noalias !11402
  %i.arf = icmp eq i8 %i.are, %.lcssa.i
  br i1 %i.arf, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.arg = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.arh = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11402
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
  %i.aro = load i8, ptr %i.ame, align 1, !tbaa !548, !noalias !11402
  %i.arp = icmp eq i8 %i.aro, %.lcssa.i
  br i1 %i.arp, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.arq = load double, ptr %15, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.arr = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11402
  %i.ars = fsub double %i.ak, %i.arq
  %i.art = fsub double %i.arr, %i.arq
  %i.aru = fdiv double %i.ars, %i.art
  %i.arv = fadd double %.sroa.22709.1, %i.aru
  %i.arw = add nuw nsw i32 %.2.i407, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.22709.2 = phi double [ %i.arv, %bb.fs ], [ %.sroa.22709.1, %bb.fr ] ; 2 uses
  %.3.i408 = phi i32 [ %i.arw, %bb.fs ], [ %.2.i407, %bb.fr ] ; 2 uses
  %i.arx = load i8, ptr %i.amg, align 1, !tbaa !548, !noalias !11402
  %i.ary = icmp eq i8 %i.arx, %.lcssa.i
  br i1 %i.ary, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.arz = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.asa = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11402
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
  %i.asg = load i8, ptr %i.ami, align 1, !tbaa !548, !noalias !11402
  %i.ash = icmp eq i8 %i.asg, %.lcssa.i
  br i1 %i.ash, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.asi = fadd double %.sroa.0707.3, 1.000000e+00
  %i.asj = fadd double %.sroa.13708.0, 1.000000e+00
  %i.ask = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.asl = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11402
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
  %i.asr = load i8, ptr %i.amk, align 1, !tbaa !548, !noalias !11402
  %i.ass = icmp eq i8 %i.asr, %.lcssa.i
  br i1 %i.ass, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.ast = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.asu = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11402
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
  %i.atc = load i8, ptr %i.amn, align 1, !tbaa !548, !noalias !11402
  %i.atd = icmp eq i8 %i.atc, %.lcssa.i
  br i1 %i.atd, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ate = fadd double %.sroa.13708.2, 1.000000e+00
  %i.atf = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.atg = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !11402
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
  %i.atm = load i8, ptr %i.amp, align 1, !tbaa !548, !noalias !11402
  %i.atn = icmp eq i8 %i.atm, %.lcssa.i
  br i1 %i.atn, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ato = load double, ptr %15, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.atp = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11402
  %i.atq = fsub double %i.ak, %i.ato
  %i.atr = fsub double %i.atp, %i.ato
  %i.ats = fdiv double %i.atq, %i.atr
  %i.att = fadd double %.sroa.13708.3, %i.ats
  %i.atu = add nuw nsw i32 %.7.i412, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.13708.4 = phi double [ %i.att, %bb.gc ], [ %.sroa.13708.3, %bb.gb ] ; 2 uses
  %.8.i413 = phi i32 [ %i.atu, %bb.gc ], [ %.7.i412, %bb.gb ] ; 2 uses
  %i.atv = load i8, ptr %i.amr, align 1, !tbaa !548, !noalias !11402
  %i.atw = icmp eq i8 %i.atv, %.lcssa.i
  br i1 %i.atw, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.atx = fadd double %.sroa.0707.5, 1.000000e+00
  %i.aty = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.atz = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11402
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
  %i.auf = load i8, ptr %i.amt, align 1, !tbaa !548, !noalias !11402
  %i.aug = icmp eq i8 %i.auf, %.lcssa.i
  br i1 %i.aug, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.auh = fadd double %.sroa.0707.6, 1.000000e+00
  %i.aui = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.auj = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11402
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
  %i.auo = load i8, ptr %i.amv, align 1, !tbaa !548, !noalias !11402
  %i.aup = icmp eq i8 %i.auo, %.lcssa.i
  br i1 %i.aup, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.auq = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11402 ; 2 uses
  %i.aur = load double, ptr %i.ew, align 8, !tbaa !701, !noalias !11402
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
  store i8 0, ptr %i.avb, align 1, !tbaa !670
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
  store i8 0, ptr %i.axb, align 1, !tbaa !670
  br label %bb.gm

bb.gm:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.axc = add i8 %.047.i, 1
  %i.axd = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.axd, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.em, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gm, %middle.block1205
  %.0140976 = phi i64 [ %umax.i, %middle.block1205 ], [ %umax.i286, %bb.gm ], [ %umax.i, %.noexc254 ]
  %i.axe = sitofp <2 x i32> %i.mv to <2 x double>
  %i.axf = sitofp i32 %i.mz to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.he
  %.0138809 = phi i64 [ %i.azj, %bb.he ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145808 = phi i32 [ %i.azi, %bb.he ], [ %.0144811, %.lr.ph.preheader ] ; 2 uses
  %i.axg = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138809 ; 7 uses
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !701 ; 2 uses
  %i.axi = call double @llvm.fabs.f64(double %i.axh)
  %i.axj = fcmp ueq double %i.axi, +inf
  br i1 %i.axj, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axl = load double, ptr %i.axk, align 8, !tbaa !701 ; 2 uses
  %i.axm = call double @llvm.fabs.f64(double %i.axl)
  %i.axn = fcmp ueq double %i.axm, +inf
  br i1 %i.axn, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axg, i64 16 ; 3 uses
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !701 ; 2 uses
  %i.axq = call double @llvm.fabs.f64(double %i.axp)
  %i.axr = fcmp ueq double %i.axq, +inf
  br i1 %i.axr, label %bb.gp, label %bb.gz

bb.gp:                                            ; preds = %bb.go, %bb.gn, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.axs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.axs, ptr %18, align 8, !tbaa !740
  %i.axt = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.axt, align 8, !tbaa !742
  store i8 0, ptr %i.axs, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.axu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.107, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gr unwind label %bb.gu

bb.gr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.axv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #21 ; 0 uses
  %i.axw = load ptr, ptr %20, align 8, !tbaa !743 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.axy = icmp eq ptr %i.axw, %i.axx
  br i1 %i.axy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gr
  %i.axz = load i64, ptr %i.axx, align 8, !tbaa !548
  %i.aya = add i64 %i.axz, 1
  call void @_ZdlPvm(ptr noundef %i.axw, i64 noundef %i.aya) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
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
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.pn157 = phi { ptr, i32 } [ %i.ayd, %bb.gu ], [ %i.ayc, %bb.gt ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gv ], [ %i.ayb, %bb.gs ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.aye = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_1

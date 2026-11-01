Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 221
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a

bb.eo:                                            ; preds = %bb.en
  %i.ant = load i8, ptr %i.alb, align 1, !tbaa !548 ; 2 uses
  %.not.4.i = icmp eq i8 %i.ant, 0
  br i1 %.not.4.i, label %bb.ep, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.anu = load i8, ptr %i.alc, align 1, !tbaa !548
  %i.anv = icmp eq i8 %i.anu, %.047.i             ; 4 uses
  br i1 %i.anv, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.anw = load i8, ptr %i.ald, align 1, !tbaa !548 ; 2 uses
  %.not.5.i = icmp eq i8 %i.anw, 0
  br i1 %.not.5.i, label %bb.er, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.anx = load i8, ptr %i.ale, align 1, !tbaa !548
  %i.any = icmp eq i8 %i.anx, %.047.i             ; 4 uses
  br i1 %i.any, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.anz = load i8, ptr %i.alf, align 1, !tbaa !548
  br i1 %.not.6.i, label %bb.et, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.aoa = load i8, ptr %i.alh, align 1, !tbaa !548
  %i.aob = icmp eq i8 %i.aoa, %.047.i             ; 4 uses
  br i1 %i.aob, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.aoc = load i8, ptr %i.ali, align 1, !tbaa !548 ; 2 uses
  %.not.7.i = icmp eq i8 %i.aoc, 0
  br i1 %.not.7.i, label %bb.ev, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.aod = load i8, ptr %i.alj, align 1, !tbaa !548
  %i.aoe = icmp eq i8 %i.aod, %.047.i             ; 3 uses
  br i1 %i.aoe, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.aof = load i8, ptr %i.alk, align 1, !tbaa !548 ; 2 uses
  %.not.8.i = icmp eq i8 %i.aof, 0
  br i1 %.not.8.i, label %bb.ex, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.aog = load i8, ptr %i.all, align 1, !tbaa !548
  %i.aoh = icmp eq i8 %i.aog, %.047.i             ; 4 uses
  br i1 %i.aoh, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aoi = load i8, ptr %i.alm, align 1, !tbaa !548 ; 2 uses
  %.not.9.i = icmp eq i8 %i.aoi, 0
  br i1 %.not.9.i, label %bb.ez, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.aoj = load i8, ptr %i.aln, align 1, !tbaa !548
  %i.aok = icmp eq i8 %i.aoj, %.047.i             ; 4 uses
  br i1 %i.aok, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aol = load i8, ptr %i.alo, align 1, !tbaa !548 ; 2 uses
  %.not.10.i = icmp eq i8 %i.aol, 0
  br i1 %.not.10.i, label %bb.fb, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.aom = load i8, ptr %i.alp, align 1, !tbaa !548
  %i.aon = icmp eq i8 %i.aom, %.047.i             ; 3 uses
  br i1 %i.aon, label %bb.fc, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fc:                                            ; preds = %bb.fb
  %i.aoo = load i8, ptr %i.alq, align 1, !tbaa !548 ; 2 uses
  %.not.11.i = icmp eq i8 %i.aoo, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.eg, %bb.ei, %bb.ek, %bb.em, %bb.eo, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.ey, %bb.fa, %bb.fc
  %.lcssa.i = phi i8 [ %i.anh, %bb.eg ], [ %i.ank, %bb.ei ], [ %i.ann, %bb.ek ], [ %i.anq, %bb.em ], [ %i.ant, %bb.eo ], [ %i.anw, %bb.eq ], [ %i.anz, %bb.es ], [ %i.aoc, %bb.eu ], [ %i.aof, %bb.ew ], [ %i.aoi, %bb.ey ], [ %i.aol, %bb.fa ], [ %i.aoo, %bb.fc ] ; 14 uses
  %i.aop = zext i8 %.lcssa.i to i64
  %i.aoq = getelementptr [4 x i8], ptr %i.akn, i64 %i.aop
  %i.aor = getelementptr i8, ptr %i.aoq, i64 -4
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !521 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.aos, -1073741824
  br i1 %or.cond.i287, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aot = and i32 %i.aos, 1023
  %i.aou = uitofp nneg i32 %i.aot to double
  %i.aov = fmul nnan double %i.aou, f0x3F500400FE733127
  store double %i.aov, ptr %i.ex, align 16, !tbaa !701, !alias.scope !9771
  %i.aow = lshr i32 %i.aos, 10
  %i.aox = lshr i32 %i.aos, 20
  %i.aoy = and i32 %i.aow, 1023
  %i.aoz = uitofp nneg i32 %i.aoy to double
  %i.apa = and i32 %i.aox, 1023
  %i.apb = uitofp nneg i32 %i.apa to double
  %i.apc = insertelement <2 x double> poison, double %i.apb, i64 0
  %i.apd = insertelement <2 x double> %i.apc, double %i.aoz, i64 1
  %i.ape = fmul nnan <2 x double> %i.apd, splat (double f0x3F500400FE733127)
  store <2 x double> %i.ape, ptr %4, align 16, !tbaa !701, !alias.scope !9771
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.fd
  %i.apf = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apf, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.apg = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.apg, align 1, !tbaa !670
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.gf

bb.fe:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.aph = load i8, ptr %i.akt, align 1, !tbaa !548, !noalias !9772
  %i.api = icmp eq i8 %i.aph, %.lcssa.i
  br i1 %i.api, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.apj = load double, ptr %15, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.apk = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !9772
  %i.apl = fsub double %i.ak, %i.apj
  %i.apm = fsub double %i.apk, %i.apj
  %i.apn = fdiv double %i.apl, %i.apm
  %i.apo = fadd double %i.apn, 0.000000e+00
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.0707.0 = phi double [ %i.apo, %bb.ff ], [ 0.000000e+00, %bb.fe ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.ff ], [ 0, %bb.fe ] ; 2 uses
  %i.app = load i8, ptr %i.akv, align 1, !tbaa !548, !noalias !9772
  %i.apq = icmp eq i8 %i.app, %.lcssa.i
  br i1 %i.apq, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.apr = fadd double %.sroa.0707.0, 1.000000e+00
  %i.aps = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.apt = load double, ptr %i.eq, align 16, !tbaa !701, !noalias !9772
  %i.apu = fsub double %i.ak, %i.aps
  %i.apv = fsub double %i.apt, %i.aps
  %i.apw = fdiv double %i.apu, %i.apv
  %i.apx = fadd double %i.apw, 0.000000e+00
  %i.apy = add nuw nsw i32 %.0.i405, 1
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.0707.1 = phi double [ %i.apr, %bb.fh ], [ %.sroa.0707.0, %bb.fg ] ; 2 uses
  %.sroa.22709.0 = phi double [ %i.apx, %bb.fh ], [ 0.000000e+00, %bb.fg ] ; 2 uses
  %.1.i406 = phi i32 [ %i.apy, %bb.fh ], [ %.0.i405, %bb.fg ] ; 2 uses
  %i.apz = load i8, ptr %i.akx, align 1, !tbaa !548, !noalias !9772
  %i.aqa = icmp eq i8 %i.apz, %.lcssa.i
  br i1 %i.aqa, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aqb = load double, ptr %i.er, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.aqc = load double, ptr %i.eq, align 16, !tbaa !701, !noalias !9772
  %i.aqd = fsub double %i.ak, %i.aqb
  %i.aqe = fsub double %i.aqc, %i.aqb
  %i.aqf = fdiv double %i.aqd, %i.aqe
  %i.aqg = fadd double %.sroa.0707.1, %i.aqf
  %i.aqh = fadd double %.sroa.22709.0, 1.000000e+00
  %i.aqi = add nuw nsw i32 %.1.i406, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.0707.2 = phi double [ %i.aqg, %bb.fj ], [ %.sroa.0707.1, %bb.fi ] ; 2 uses
  %.sroa.22709.1 = phi double [ %i.aqh, %bb.fj ], [ %.sroa.22709.0, %bb.fi ] ; 2 uses
  %.2.i407 = phi i32 [ %i.aqi, %bb.fj ], [ %.1.i406, %bb.fi ] ; 2 uses
  %i.aqj = load i8, ptr %i.akz, align 1, !tbaa !548, !noalias !9772
  %i.aqk = icmp eq i8 %i.aqj, %.lcssa.i
  br i1 %i.aqk, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aql = load double, ptr %15, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.aqm = load double, ptr %i.er, align 8, !tbaa !701, !noalias !9772
  %i.aqn = fsub double %i.ak, %i.aql
  %i.aqo = fsub double %i.aqm, %i.aql
  %i.aqp = fdiv double %i.aqn, %i.aqo
  %i.aqq = fadd double %.sroa.22709.1, %i.aqp
  %i.aqr = add nuw nsw i32 %.2.i407, 1
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.22709.2 = phi double [ %i.aqq, %bb.fl ], [ %.sroa.22709.1, %bb.fk ] ; 2 uses
  %.3.i408 = phi i32 [ %i.aqr, %bb.fl ], [ %.2.i407, %bb.fk ] ; 2 uses
  %i.aqs = load i8, ptr %i.alb, align 1, !tbaa !548, !noalias !9772
  %i.aqt = icmp eq i8 %i.aqs, %.lcssa.i
  br i1 %i.aqt, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aqu = load double, ptr %i.es, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.aqv = load double, ptr %i.et, align 8, !tbaa !701, !noalias !9772
  %i.aqw = fsub double %i.ak, %i.aqu
  %i.aqx = fsub double %i.aqv, %i.aqu
  %i.aqy = fdiv double %i.aqw, %i.aqx
  %i.aqz = fadd double %.sroa.0707.2, %i.aqy
  %i.ara = add nuw nsw i32 %.3.i408, 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.0707.3 = phi double [ %i.aqz, %bb.fn ], [ %.sroa.0707.2, %bb.fm ]
  %.sroa.13708.0 = phi double [ 1.000000e+00, %bb.fn ], [ 0.000000e+00, %bb.fm ]
  %.4.i409 = phi i32 [ %i.ara, %bb.fn ], [ %.3.i408, %bb.fm ] ; 2 uses
  %i.arb = load i8, ptr %i.ald, align 1, !tbaa !548, !noalias !9772
  %i.arc = icmp eq i8 %i.arb, %.lcssa.i
  %24 = insertelement <2 x double> poison, double %.sroa.13708.0, i64 0
  %25 = insertelement <2 x double> %24, double %.sroa.0707.3, i64 1 ; 2 uses
  br i1 %i.arc, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %26 = fadd <2 x double> %25, splat (double 1.000000e+00)
  %i.ard = load double, ptr %i.et, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.are = load double, ptr %i.eu, align 16, !tbaa !701, !noalias !9772
  %i.arf = fsub double %i.ak, %i.ard
  %i.arg = fsub double %i.are, %i.ard
  %i.arh = fdiv double %i.arf, %i.arg
  %i.ari = fadd double %.sroa.22709.2, %i.arh
  %i.arj = add nuw nsw i32 %.4.i409, 1
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.22709.3 = phi double [ %i.ari, %bb.fp ], [ %.sroa.22709.2, %bb.fo ] ; 2 uses
  %.5.i410 = phi i32 [ %i.arj, %bb.fp ], [ %.4.i409, %bb.fo ] ; 2 uses
  %27 = phi <2 x double> [ %26, %bb.fp ], [ %25, %bb.fo ] ; 2 uses
  %i.ark = load i8, ptr %i.alf, align 1, !tbaa !548, !noalias !9772
  %i.arl = icmp eq i8 %i.ark, %.lcssa.i
  br i1 %i.arl, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.arm = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.arn = load double, ptr %i.eu, align 16, !tbaa !701, !noalias !9772
  %i.aro = fsub double %i.ak, %i.arm
  %i.arp = fsub double %i.arn, %i.arm
  %i.arq = fdiv double %i.aro, %i.arp
  %28 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.arq, i64 1
  %29 = fadd <2 x double> %27, %28
  %i.arr = fadd double %.sroa.22709.3, 1.000000e+00
  %i.ars = add nuw nsw i32 %.5.i410, 1
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.22709.4 = phi double [ %i.arr, %bb.fr ], [ %.sroa.22709.3, %bb.fq ] ; 2 uses
  %.6.i411 = phi i32 [ %i.ars, %bb.fr ], [ %.5.i410, %bb.fq ] ; 2 uses
  %30 = phi <2 x double> [ %29, %bb.fr ], [ %27, %bb.fq ] ; 2 uses
  %i.art = load i8, ptr %i.ali, align 1, !tbaa !548, !noalias !9772
  %i.aru = icmp eq i8 %i.art, %.lcssa.i
  %31 = extractelement <2 x double> %30, i64 0    ; 2 uses
  br i1 %i.aru, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.arv = fadd double %31, 1.000000e+00
  %i.arw = load double, ptr %i.es, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.arx = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !9772
  %i.ary = fsub double %i.ak, %i.arw
  %i.arz = fsub double %i.arx, %i.arw
  %i.asa = fdiv double %i.ary, %i.arz
  %i.asb = fadd double %.sroa.22709.4, %i.asa
  %i.asc = add nuw nsw i32 %.6.i411, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.13708.3 = phi double [ %i.arv, %bb.ft ], [ %31, %bb.fs ] ; 2 uses
  %.sroa.22709.5 = phi double [ %i.asb, %bb.ft ], [ %.sroa.22709.4, %bb.fs ]
  %.7.i412 = phi i32 [ %i.asc, %bb.ft ], [ %.6.i411, %bb.fs ] ; 2 uses
  %i.asd = load i8, ptr %i.alk, align 1, !tbaa !548, !noalias !9772
  %i.ase = icmp eq i8 %i.asd, %.lcssa.i
  br i1 %i.ase, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.asf = load double, ptr %15, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.asg = load double, ptr %i.es, align 16, !tbaa !701, !noalias !9772
  %i.ash = fsub double %i.ak, %i.asf
  %i.asi = fsub double %i.asg, %i.asf
  %i.asj = fdiv double %i.ash, %i.asi
  %i.ask = fadd double %.sroa.13708.3, %i.asj
  %i.asl = add nuw nsw i32 %.7.i412, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.13708.4 = phi double [ %i.ask, %bb.fv ], [ %.sroa.13708.3, %bb.fu ] ; 2 uses
  %.8.i413 = phi i32 [ %i.asl, %bb.fv ], [ %.7.i412, %bb.fu ] ; 2 uses
  %i.asm = load i8, ptr %i.alm, align 1, !tbaa !548, !noalias !9772
  %i.asn = icmp eq i8 %i.asm, %.lcssa.i
  %32 = extractelement <2 x double> %30, i64 1    ; 2 uses
  br i1 %i.asn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aso = fadd double %32, 1.000000e+00
  %i.asp = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.asq = load double, ptr %i.et, align 8, !tbaa !701, !noalias !9772
  %i.asr = fsub double %i.ak, %i.asp
  %i.ass = fsub double %i.asq, %i.asp
  %i.ast = fdiv double %i.asr, %i.ass
  %i.asu = fadd double %.sroa.13708.4, %i.ast
  %i.asv = add nuw nsw i32 %.8.i413, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.0707.6 = phi double [ %i.aso, %bb.fx ], [ %32, %bb.fw ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.asu, %bb.fx ], [ %.sroa.13708.4, %bb.fw ]
  %.9.i414 = phi i32 [ %i.asv, %bb.fx ], [ %.8.i413, %bb.fw ] ; 2 uses
  %i.asw = load i8, ptr %i.alo, align 1, !tbaa !548, !noalias !9772
  %i.asx = icmp eq i8 %i.asw, %.lcssa.i
  %i.asy = insertelement <2 x double> poison, double %.sroa.13708.5, i64 0
  %i.asz = insertelement <2 x double> %i.asy, double %.sroa.22709.5, i64 1 ; 2 uses
  br i1 %i.asx, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ata = fadd double %.sroa.0707.6, 1.000000e+00
  %i.atb = load double, ptr %i.eq, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.atc = load double, ptr %i.eu, align 16, !tbaa !701, !noalias !9772
  %i.atd = fsub double %i.ak, %i.atb
  %i.ate = fsub double %i.atc, %i.atb
  %i.atf = fdiv double %i.atd, %i.ate
  %i.atg = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.atf, i64 0
  %i.ath = fadd <2 x double> %i.asz, %i.atg
  %i.ati = add nuw nsw i32 %.9.i414, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.0707.7 = phi double [ %i.ata, %bb.fz ], [ %.sroa.0707.6, %bb.fy ] ; 2 uses
  %.10.i415 = phi i32 [ %i.ati, %bb.fz ], [ %.9.i414, %bb.fy ] ; 2 uses
  %i.atj = phi <2 x double> [ %i.ath, %bb.fz ], [ %i.asz, %bb.fy ] ; 2 uses
  %i.atk = load i8, ptr %i.alq, align 1, !tbaa !548, !noalias !9772
  %i.atl = icmp eq i8 %i.atk, %.lcssa.i
  br i1 %i.atl, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.atm = load double, ptr %i.er, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.atn = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !9772
  %i.ato = fsub double %i.ak, %i.atm
  %i.atp = fsub double %i.atn, %i.atm
  %i.atq = fdiv double %i.ato, %i.atp
  %i.atr = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.atq, i64 0
  %i.ats = fadd <2 x double> %i.atj, %i.atr
  %i.att = add nuw nsw i32 %.10.i415, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.11.i416 = phi i32 [ %i.att, %bb.gb ], [ %.10.i415, %bb.ga ] ; 2 uses
  %i.atu = phi <2 x double> [ %i.ats, %bb.gb ], [ %i.atj, %bb.ga ] ; 2 uses
  %i.atv = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.atv, label %bb.gd, label %.noexc290

bb.gd:                                            ; preds = %bb.gc
  %i.atw = uitofp nneg i32 %.11.i416 to double
  %i.atx = fdiv double 1.000000e+00, %i.atw       ; 2 uses
  %i.aty = fmul double %.sroa.0707.7, %i.atx
  %i.atz = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.aua = shufflevector <2 x double> %i.atz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aub = fmul <2 x double> %i.atu, %i.aua
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gd, %bb.gc
  %.sroa.0707.8 = phi double [ %i.aty, %bb.gd ], [ %.sroa.0707.7, %bb.gc ]
  %i.auc = phi <2 x double> [ %i.aub, %bb.gd ], [ %i.atu, %bb.gc ]
  %i.aud = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0707.8, ptr %i.aud, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  store <2 x double> %i.auc, ptr %.sroa.13708.0..sroa_idx, align 8
  %i.aue = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.aue, align 1, !tbaa !670
  br label %bb.gf

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fb, %bb.fc
  %.sroa.0704.0 = select i1 %i.ang, double %i.ane, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.ang to i32
  %i.auf = fadd double %.sroa.0704.0, 1.000000e+00
  %i.aug = select i1 %i.ang, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.anj, double %i.auf, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.anj, double %i.anf, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.anj, i32 %i.aug, i32 %.0.i392
  %i.auh = fadd double %i.amw, %.sroa.0704.1
  %i.aui = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.anm, double %i.auh, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.anm, double %i.aui, double %.sroa.22706.0 ; 2 uses
  %i.auj = zext i1 %i.anm to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.auj
  %i.auk = fadd double %i.amx, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.anp, double %i.auk, double %.sroa.22706.1 ; 2 uses
  %i.aul = zext i1 %i.anp to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.aul
  %i.aum = fadd double %i.amy, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.ans, double %i.aum, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.ans, double 1.000000e+00, double 0.000000e+00
  %i.aun = zext i1 %i.ans to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.aun     ; 2 uses
  %i.auo = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.aup = insertelement <2 x double> %i.auo, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.auq = fadd <2 x double> %i.aup, splat (double 1.000000e+00)
  %i.aur = fadd double %i.amz, %.sroa.22706.2
  %i.aus = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.anv, double %i.aur, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.anv, i32 %i.aus, i32 %.4.i396 ; 2 uses
  %i.aut = select i1 %i.anv, <2 x double> %i.auq, <2 x double> %i.aup ; 2 uses
  %i.auu = fadd <2 x double> %i.anb, %i.aut
  %i.auv = fadd double %.sroa.22706.3, 1.000000e+00
  %i.auw = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.any, double %i.auv, double %.sroa.22706.3
  %.6.i398 = select i1 %i.any, i32 %i.auw, i32 %.5.i397
  %i.aux = select i1 %i.any, <2 x double> %i.auu, <2 x double> %i.aut ; 2 uses
  %i.auy = extractelement <2 x double> %i.aux, i64 1 ; 2 uses
  %i.auz = fadd double %i.auy, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.aob, double %i.auz, double %i.auy ; 2 uses
  %i.ava = zext i1 %i.aob to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.ava
  %i.avb = fadd double %i.ana, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.aoe, double %i.avb, double %.sroa.13705.3
  %i.avc = zext i1 %i.aoe to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.avc
  %i.avd = extractelement <2 x double> %i.aux, i64 0 ; 2 uses
  %i.ave = fadd double %i.avd, 1.000000e+00
  %i.avf = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.avg = insertelement <2 x double> %i.avf, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.avh = fadd <2 x double> %i.amp, %i.avg
  %.sroa.0704.6 = select i1 %i.aoh, double %i.ave, double %i.avd ; 2 uses
  %i.avi = insertelement <2 x i1> poison, i1 %i.aoh, i64 0
  %i.avj = insertelement <2 x i1> %i.avi, i1 %i.aob, i64 1
  %i.avk = select <2 x i1> %i.avj, <2 x double> %i.avh, <2 x double> %i.avg ; 2 uses
  %i.avl = zext i1 %i.aoh to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.avl     ; 2 uses
  %i.avm = fadd double %.sroa.0704.6, 1.000000e+00
  %i.avn = fadd <2 x double> %i.anc, %i.avk
  %i.avo = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.aok, double %i.avm, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.aok, i32 %i.avo, i32 %.9.i401
  %i.avp = select i1 %i.aok, <2 x double> %i.avn, <2 x double> %i.avk ; 2 uses
  %i.avq = fadd <2 x double> %i.and, %i.avp
  %i.avr = insertelement <2 x i1> poison, i1 %i.aon, i64 0
  %i.avs = shufflevector <2 x i1> %i.avr, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.avt = select <2 x i1> %i.avs, <2 x double> %i.avq, <2 x double> %i.avp ; 2 uses
  %i.avu = zext i1 %i.aon to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.avu   ; 2 uses
  %i.avv = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.avv, label %bb.ge, label %.noexc291

bb.ge:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.avw = uitofp nneg i32 %.11.i403 to double
  %i.avx = fdiv double 1.000000e+00, %i.avw       ; 2 uses
  %i.avy = fmul double %.sroa.0704.7, %i.avx
  %i.avz = insertelement <2 x double> poison, double %i.avx, i64 0
  %i.awa = shufflevector <2 x double> %i.avz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awb = fmul <2 x double> %i.avt, %i.awa
  br label %.noexc291

.noexc291:                                        ; preds = %bb.ge, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.avy, %bb.ge ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awc = phi <2 x double> [ %i.awb, %bb.ge ], [ %i.avt, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awd = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.awd, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awd, i64 8
  store <2 x double> %i.awc, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.awe = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.awe, align 1, !tbaa !670
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.awf = add i8 %.047.i, 1
  %i.awg = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.awg, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.ef, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gf, %middle.block1201
  %.0140968 = phi i64 [ %umax.i, %middle.block1201 ], [ %umax.i286, %bb.gf ], [ %umax.i, %.noexc254 ]
  %i.awh = sitofp <2 x i32> %i.mp to <2 x double>
  %i.awi = sitofp i32 %i.mt to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.gx
  %.0138807 = phi i64 [ %i.aym, %bb.gx ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145806 = phi i32 [ %i.ayl, %bb.gx ], [ %.0144809, %.lr.ph.preheader ] ; 2 uses
  %i.awj = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138807 ; 7 uses
  %i.awk = load double, ptr %i.awj, align 8, !tbaa !701 ; 2 uses
  %i.awl = call double @llvm.fabs.f64(double %i.awk)
  %i.awm = fcmp ueq double %i.awl, +inf
  br i1 %i.awm, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  %i.awo = load double, ptr %i.awn, align 8, !tbaa !701 ; 2 uses
  %i.awp = call double @llvm.fabs.f64(double %i.awo)
  %i.awq = fcmp ueq double %i.awp, +inf
  br i1 %i.awq, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awj, i64 16 ; 3 uses
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !701 ; 2 uses
  %i.awt = call double @llvm.fabs.f64(double %i.aws)
  %i.awu = fcmp ueq double %i.awt, +inf
  br i1 %i.awu, label %bb.gi, label %bb.gs

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.awv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.awv, ptr %18, align 8, !tbaa !740
  %i.aww = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.aww, align 8, !tbaa !742
  store i8 0, ptr %i.awv, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a

bb.eo:                                            ; preds = %bb.en
  %i.aor = load i8, ptr %i.alz, align 1, !tbaa !548 ; 2 uses
  %.not.4.i = icmp eq i8 %i.aor, 0
  br i1 %.not.4.i, label %bb.ep, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.aos = load i8, ptr %i.ama, align 1, !tbaa !548
  %i.aot = icmp eq i8 %i.aos, %.047.i             ; 4 uses
  br i1 %i.aot, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aou = load i8, ptr %i.amb, align 1, !tbaa !548 ; 2 uses
  %.not.5.i = icmp eq i8 %i.aou, 0
  br i1 %.not.5.i, label %bb.er, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.aov = load i8, ptr %i.amc, align 1, !tbaa !548
  %i.aow = icmp eq i8 %i.aov, %.047.i             ; 4 uses
  br i1 %i.aow, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aox = load i8, ptr %i.amd, align 1, !tbaa !548
  br i1 %.not.6.i, label %bb.et, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.aoy = load i8, ptr %i.amf, align 1, !tbaa !548
  %i.aoz = icmp eq i8 %i.aoy, %.047.i             ; 4 uses
  br i1 %i.aoz, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.apa = load i8, ptr %i.amg, align 1, !tbaa !548 ; 2 uses
  %.not.7.i = icmp eq i8 %i.apa, 0
  br i1 %.not.7.i, label %bb.ev, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.apb = load i8, ptr %i.amh, align 1, !tbaa !548
  %i.apc = icmp eq i8 %i.apb, %.047.i             ; 3 uses
  br i1 %i.apc, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.apd = load i8, ptr %i.ami, align 1, !tbaa !548 ; 2 uses
  %.not.8.i = icmp eq i8 %i.apd, 0
  br i1 %.not.8.i, label %bb.ex, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ape = load i8, ptr %i.amj, align 1, !tbaa !548
  %i.apf = icmp eq i8 %i.ape, %.047.i             ; 4 uses
  br i1 %i.apf, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.apg = load i8, ptr %i.amk, align 1, !tbaa !548 ; 2 uses
  %.not.9.i = icmp eq i8 %i.apg, 0
  br i1 %.not.9.i, label %bb.ez, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.aph = load i8, ptr %i.aml, align 1, !tbaa !548
  %i.api = icmp eq i8 %i.aph, %.047.i             ; 4 uses
  br i1 %i.api, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.apj = load i8, ptr %i.amm, align 1, !tbaa !548 ; 2 uses
  %.not.10.i = icmp eq i8 %i.apj, 0
  br i1 %.not.10.i, label %bb.fb, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.apk = load i8, ptr %i.amn, align 1, !tbaa !548
  %i.apl = icmp eq i8 %i.apk, %.047.i             ; 3 uses
  br i1 %i.apl, label %bb.fc, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread

bb.fc:                                            ; preds = %bb.fb
  %i.apm = load i8, ptr %i.amo, align 1, !tbaa !548 ; 2 uses
  %.not.11.i = icmp eq i8 %i.apm, 0
  br i1 %.not.11.i, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit: ; preds = %bb.eg, %bb.ei, %bb.ek, %bb.em, %bb.eo, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.ey, %bb.fa, %bb.fc
  %.lcssa.i = phi i8 [ %i.aof, %bb.eg ], [ %i.aoi, %bb.ei ], [ %i.aol, %bb.ek ], [ %i.aoo, %bb.em ], [ %i.aor, %bb.eo ], [ %i.aou, %bb.eq ], [ %i.aox, %bb.es ], [ %i.apa, %bb.eu ], [ %i.apd, %bb.ew ], [ %i.apg, %bb.ey ], [ %i.apj, %bb.fa ], [ %i.apm, %bb.fc ] ; 14 uses
  %i.apn = zext i8 %.lcssa.i to i64
  %i.apo = getelementptr [4 x i8], ptr %i.all, i64 %i.apn
  %i.app = getelementptr i8, ptr %i.apo, i64 -4
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !521 ; 4 uses
  %or.cond.i287 = icmp slt i32 %i.apq, -1073741824
  br i1 %or.cond.i287, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.apr = and i32 %i.apq, 1023
  %i.aps = uitofp nneg i32 %i.apr to double
  %i.apt = fmul nnan double %i.aps, f0x3F500400FE733127
  store double %i.apt, ptr %i.ex, align 16, !tbaa !701, !alias.scope !11422
  %i.apu = lshr i32 %i.apq, 10
  %i.apv = lshr i32 %i.apq, 20
  %i.apw = and i32 %i.apu, 1023
  %i.apx = uitofp nneg i32 %i.apw to double
  %i.apy = and i32 %i.apv, 1023
  %i.apz = uitofp nneg i32 %i.apy to double
  %i.aqa = insertelement <2 x double> poison, double %i.apz, i64 0
  %i.aqb = insertelement <2 x double> %i.aqa, double %i.apx, i64 1
  %i.aqc = fmul nnan <2 x double> %i.aqb, splat (double f0x3F500400FE733127)
  store <2 x double> %i.aqc, ptr %4, align 16, !tbaa !701, !alias.scope !11422
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef zeroext %.0148, i8 noundef zeroext %.lcssa.i, double noundef %i.ak)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.fd
  %i.aqd = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqd, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aqe = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 1, ptr %i.aqe, align 1, !tbaa !670
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.gf

bb.fe:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit
  %i.aqf = load i8, ptr %i.alr, align 1, !tbaa !548, !noalias !11423
  %i.aqg = icmp eq i8 %i.aqf, %.lcssa.i
  br i1 %i.aqg, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aqh = load double, ptr %15, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.aqi = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !11423
  %i.aqj = fsub double %i.ak, %i.aqh
  %i.aqk = fsub double %i.aqi, %i.aqh
  %i.aql = fdiv double %i.aqj, %i.aqk
  %i.aqm = fadd double %i.aql, 0.000000e+00
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.0707.0 = phi double [ %i.aqm, %bb.ff ], [ 0.000000e+00, %bb.fe ] ; 2 uses
  %.0.i405 = phi i32 [ 1, %bb.ff ], [ 0, %bb.fe ] ; 2 uses
  %i.aqn = load i8, ptr %i.alt, align 1, !tbaa !548, !noalias !11423
  %i.aqo = icmp eq i8 %i.aqn, %.lcssa.i
  br i1 %i.aqo, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.aqp = fadd double %.sroa.0707.0, 1.000000e+00
  %i.aqq = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.aqr = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11423
  %i.aqs = fsub double %i.ak, %i.aqq
  %i.aqt = fsub double %i.aqr, %i.aqq
  %i.aqu = fdiv double %i.aqs, %i.aqt
  %i.aqv = fadd double %i.aqu, 0.000000e+00
  %i.aqw = add nuw nsw i32 %.0.i405, 1
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.0707.1 = phi double [ %i.aqp, %bb.fh ], [ %.sroa.0707.0, %bb.fg ] ; 2 uses
  %.sroa.22709.0 = phi double [ %i.aqv, %bb.fh ], [ 0.000000e+00, %bb.fg ] ; 2 uses
  %.1.i406 = phi i32 [ %i.aqw, %bb.fh ], [ %.0.i405, %bb.fg ] ; 2 uses
  %i.aqx = load i8, ptr %i.alv, align 1, !tbaa !548, !noalias !11423
  %i.aqy = icmp eq i8 %i.aqx, %.lcssa.i
  br i1 %i.aqy, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aqz = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.ara = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11423
  %i.arb = fsub double %i.ak, %i.aqz
  %i.arc = fsub double %i.ara, %i.aqz
  %i.ard = fdiv double %i.arb, %i.arc
  %i.are = fadd double %.sroa.0707.1, %i.ard
  %i.arf = fadd double %.sroa.22709.0, 1.000000e+00
  %i.arg = add nuw nsw i32 %.1.i406, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.0707.2 = phi double [ %i.are, %bb.fj ], [ %.sroa.0707.1, %bb.fi ] ; 2 uses
  %.sroa.22709.1 = phi double [ %i.arf, %bb.fj ], [ %.sroa.22709.0, %bb.fi ] ; 2 uses
  %.2.i407 = phi i32 [ %i.arg, %bb.fj ], [ %.1.i406, %bb.fi ] ; 2 uses
  %i.arh = load i8, ptr %i.alx, align 1, !tbaa !548, !noalias !11423
  %i.ari = icmp eq i8 %i.arh, %.lcssa.i
  br i1 %i.ari, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.arj = load double, ptr %15, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.ark = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11423
  %i.arl = fsub double %i.ak, %i.arj
  %i.arm = fsub double %i.ark, %i.arj
  %i.arn = fdiv double %i.arl, %i.arm
  %i.aro = fadd double %.sroa.22709.1, %i.arn
  %i.arp = add nuw nsw i32 %.2.i407, 1
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.22709.2 = phi double [ %i.aro, %bb.fl ], [ %.sroa.22709.1, %bb.fk ] ; 2 uses
  %.3.i408 = phi i32 [ %i.arp, %bb.fl ], [ %.2.i407, %bb.fk ] ; 2 uses
  %i.arq = load i8, ptr %i.alz, align 1, !tbaa !548, !noalias !11423
  %i.arr = icmp eq i8 %i.arq, %.lcssa.i
  br i1 %i.arr, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ars = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.art = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11423
  %i.aru = fsub double %i.ak, %i.ars
  %i.arv = fsub double %i.art, %i.ars
  %i.arw = fdiv double %i.aru, %i.arv
  %i.arx = fadd double %.sroa.0707.2, %i.arw
  %i.ary = add nuw nsw i32 %.3.i408, 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.0707.3 = phi double [ %i.arx, %bb.fn ], [ %.sroa.0707.2, %bb.fm ]
  %.sroa.13708.0 = phi double [ 1.000000e+00, %bb.fn ], [ 0.000000e+00, %bb.fm ]
  %.4.i409 = phi i32 [ %i.ary, %bb.fn ], [ %.3.i408, %bb.fm ] ; 2 uses
  %i.arz = load i8, ptr %i.amb, align 1, !tbaa !548, !noalias !11423
  %i.asa = icmp eq i8 %i.arz, %.lcssa.i
  %24 = insertelement <2 x double> poison, double %.sroa.13708.0, i64 0
  %25 = insertelement <2 x double> %24, double %.sroa.0707.3, i64 1 ; 2 uses
  br i1 %i.asa, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %26 = fadd <2 x double> %25, splat (double 1.000000e+00)
  %i.asb = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.asc = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11423
  %i.asd = fsub double %i.ak, %i.asb
  %i.ase = fsub double %i.asc, %i.asb
  %i.asf = fdiv double %i.asd, %i.ase
  %i.asg = fadd double %.sroa.22709.2, %i.asf
  %i.ash = add nuw nsw i32 %.4.i409, 1
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.22709.3 = phi double [ %i.asg, %bb.fp ], [ %.sroa.22709.2, %bb.fo ] ; 2 uses
  %.5.i410 = phi i32 [ %i.ash, %bb.fp ], [ %.4.i409, %bb.fo ] ; 2 uses
  %27 = phi <2 x double> [ %26, %bb.fp ], [ %25, %bb.fo ] ; 2 uses
  %i.asi = load i8, ptr %i.amd, align 1, !tbaa !548, !noalias !11423
  %i.asj = icmp eq i8 %i.asi, %.lcssa.i
  br i1 %i.asj, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.ask = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.asl = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11423
  %i.asm = fsub double %i.ak, %i.ask
  %i.asn = fsub double %i.asl, %i.ask
  %i.aso = fdiv double %i.asm, %i.asn
  %28 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.aso, i64 1
  %29 = fadd <2 x double> %27, %28
  %i.asp = fadd double %.sroa.22709.3, 1.000000e+00
  %i.asq = add nuw nsw i32 %.5.i410, 1
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.22709.4 = phi double [ %i.asp, %bb.fr ], [ %.sroa.22709.3, %bb.fq ] ; 2 uses
  %.6.i411 = phi i32 [ %i.asq, %bb.fr ], [ %.5.i410, %bb.fq ] ; 2 uses
  %30 = phi <2 x double> [ %29, %bb.fr ], [ %27, %bb.fq ] ; 2 uses
  %i.asr = load i8, ptr %i.amg, align 1, !tbaa !548, !noalias !11423
  %i.ass = icmp eq i8 %i.asr, %.lcssa.i
  %31 = extractelement <2 x double> %30, i64 0    ; 2 uses
  br i1 %i.ass, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ast = fadd double %31, 1.000000e+00
  %i.asu = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.asv = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11423
  %i.asw = fsub double %i.ak, %i.asu
  %i.asx = fsub double %i.asv, %i.asu
  %i.asy = fdiv double %i.asw, %i.asx
  %i.asz = fadd double %.sroa.22709.4, %i.asy
  %i.ata = add nuw nsw i32 %.6.i411, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.13708.3 = phi double [ %i.ast, %bb.ft ], [ %31, %bb.fs ] ; 2 uses
  %.sroa.22709.5 = phi double [ %i.asz, %bb.ft ], [ %.sroa.22709.4, %bb.fs ]
  %.7.i412 = phi i32 [ %i.ata, %bb.ft ], [ %.6.i411, %bb.fs ] ; 2 uses
  %i.atb = load i8, ptr %i.ami, align 1, !tbaa !548, !noalias !11423
  %i.atc = icmp eq i8 %i.atb, %.lcssa.i
  br i1 %i.atc, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.atd = load double, ptr %15, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.ate = load double, ptr %i.es, align 8, !tbaa !701, !noalias !11423
  %i.atf = fsub double %i.ak, %i.atd
  %i.atg = fsub double %i.ate, %i.atd
  %i.ath = fdiv double %i.atf, %i.atg
  %i.ati = fadd double %.sroa.13708.3, %i.ath
  %i.atj = add nuw nsw i32 %.7.i412, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.13708.4 = phi double [ %i.ati, %bb.fv ], [ %.sroa.13708.3, %bb.fu ] ; 2 uses
  %.8.i413 = phi i32 [ %i.atj, %bb.fv ], [ %.7.i412, %bb.fu ] ; 2 uses
  %i.atk = load i8, ptr %i.amk, align 1, !tbaa !548, !noalias !11423
  %i.atl = icmp eq i8 %i.atk, %.lcssa.i
  %32 = extractelement <2 x double> %30, i64 1    ; 2 uses
  br i1 %i.atl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.atm = fadd double %32, 1.000000e+00
  %i.atn = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.ato = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11423
  %i.atp = fsub double %i.ak, %i.atn
  %i.atq = fsub double %i.ato, %i.atn
  %i.atr = fdiv double %i.atp, %i.atq
  %i.ats = fadd double %.sroa.13708.4, %i.atr
  %i.att = add nuw nsw i32 %.8.i413, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.0707.6 = phi double [ %i.atm, %bb.fx ], [ %32, %bb.fw ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.ats, %bb.fx ], [ %.sroa.13708.4, %bb.fw ]
  %.9.i414 = phi i32 [ %i.att, %bb.fx ], [ %.8.i413, %bb.fw ] ; 2 uses
  %i.atu = load i8, ptr %i.amm, align 1, !tbaa !548, !noalias !11423
  %i.atv = icmp eq i8 %i.atu, %.lcssa.i
  %i.atw = insertelement <2 x double> poison, double %.sroa.13708.5, i64 0
  %i.atx = insertelement <2 x double> %i.atw, double %.sroa.22709.5, i64 1 ; 2 uses
  br i1 %i.atv, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aty = fadd double %.sroa.0707.6, 1.000000e+00
  %i.atz = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.aua = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11423
  %i.aub = fsub double %i.ak, %i.atz
  %i.auc = fsub double %i.aua, %i.atz
  %i.aud = fdiv double %i.aub, %i.auc
  %i.aue = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.aud, i64 0
  %i.auf = fadd <2 x double> %i.atx, %i.aue
  %i.aug = add nuw nsw i32 %.9.i414, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.0707.7 = phi double [ %i.aty, %bb.fz ], [ %.sroa.0707.6, %bb.fy ] ; 2 uses
  %.10.i415 = phi i32 [ %i.aug, %bb.fz ], [ %.9.i414, %bb.fy ] ; 2 uses
  %i.auh = phi <2 x double> [ %i.auf, %bb.fz ], [ %i.atx, %bb.fy ] ; 2 uses
  %i.aui = load i8, ptr %i.amo, align 1, !tbaa !548, !noalias !11423
  %i.auj = icmp eq i8 %i.aui, %.lcssa.i
  br i1 %i.auj, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.auk = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.aul = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11423
  %i.aum = fsub double %i.ak, %i.auk
  %i.aun = fsub double %i.aul, %i.auk
  %i.auo = fdiv double %i.aum, %i.aun
  %i.aup = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.auo, i64 0
  %i.auq = fadd <2 x double> %i.auh, %i.aup
  %i.aur = add nuw nsw i32 %.10.i415, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.11.i416 = phi i32 [ %i.aur, %bb.gb ], [ %.10.i415, %bb.ga ] ; 2 uses
  %i.aus = phi <2 x double> [ %i.auq, %bb.gb ], [ %i.auh, %bb.ga ] ; 2 uses
  %i.aut = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.aut, label %bb.gd, label %.noexc290

bb.gd:                                            ; preds = %bb.gc
  %i.auu = uitofp nneg i32 %.11.i416 to double
  %i.auv = fdiv double 1.000000e+00, %i.auu       ; 2 uses
  %i.auw = fmul double %.sroa.0707.7, %i.auv
  %i.aux = insertelement <2 x double> poison, double %i.auv, i64 0
  %i.auy = shufflevector <2 x double> %i.aux, <2 x double> poison, <2 x i32> zeroinitializer
  %i.auz = fmul <2 x double> %i.aus, %i.auy
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gd, %bb.gc
  %.sroa.0707.8 = phi double [ %i.auw, %bb.gd ], [ %.sroa.0707.7, %bb.gc ]
  %i.ava = phi <2 x double> [ %i.auz, %bb.gd ], [ %i.aus, %bb.gc ]
  %i.avb = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0707.8, ptr %i.avb, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  store <2 x double> %i.ava, ptr %.sroa.13708.0..sroa_idx, align 8
  %i.avc = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.avc, align 1, !tbaa !670
  br label %bb.gf

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fb, %bb.fc
  %.sroa.0704.0 = select i1 %i.aoe, double %i.aod, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.aoe to i32
  %i.avd = fadd double %.sroa.0704.0, 1.000000e+00
  %i.ave = select i1 %i.aoe, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.aoh, double %i.avd, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.aoh, double %i.aoc, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.aoh, i32 %i.ave, i32 %.0.i392
  %i.avf = fadd double %i.anu, %.sroa.0704.1
  %i.avg = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.aok, double %i.avf, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.aok, double %i.avg, double %.sroa.22706.0 ; 2 uses
  %i.avh = zext i1 %i.aok to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.avh
  %i.avi = fadd double %i.anv, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.aon, double %i.avi, double %.sroa.22706.1 ; 2 uses
  %i.avj = zext i1 %i.aon to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.avj
  %i.avk = fadd double %i.anx, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.aoq, double %i.avk, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.aoq, double 1.000000e+00, double 0.000000e+00
  %i.avl = zext i1 %i.aoq to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.avl     ; 2 uses
  %i.avm = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.avn = insertelement <2 x double> %i.avm, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.avo = fadd <2 x double> %i.avn, splat (double 1.000000e+00)
  %i.avp = fadd double %i.anw, %.sroa.22706.2
  %i.avq = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.aot, double %i.avp, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.aot, i32 %i.avq, i32 %.4.i396 ; 2 uses
  %i.avr = select i1 %i.aot, <2 x double> %i.avo, <2 x double> %i.avn ; 2 uses
  %i.avs = fadd <2 x double> %i.anz, %i.avr
  %i.avt = fadd double %.sroa.22706.3, 1.000000e+00
  %i.avu = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.aow, double %i.avt, double %.sroa.22706.3
  %.6.i398 = select i1 %i.aow, i32 %i.avu, i32 %.5.i397
  %i.avv = select i1 %i.aow, <2 x double> %i.avs, <2 x double> %i.avr ; 2 uses
  %i.avw = extractelement <2 x double> %i.avv, i64 1 ; 2 uses
  %i.avx = fadd double %i.avw, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.aoz, double %i.avx, double %i.avw ; 2 uses
  %i.avy = zext i1 %i.aoz to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.avy
  %i.avz = fadd double %i.any, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.apc, double %i.avz, double %.sroa.13705.3
  %i.awa = zext i1 %i.apc to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.awa
  %i.awb = extractelement <2 x double> %i.avv, i64 0 ; 2 uses
  %i.awc = fadd double %i.awb, 1.000000e+00
  %i.awd = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.awe = insertelement <2 x double> %i.awd, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.awf = fadd <2 x double> %i.anm, %i.awe
  %.sroa.0704.6 = select i1 %i.apf, double %i.awc, double %i.awb ; 2 uses
  %i.awg = insertelement <2 x i1> poison, i1 %i.apf, i64 0
  %i.awh = insertelement <2 x i1> %i.awg, i1 %i.aoz, i64 1
  %i.awi = select <2 x i1> %i.awh, <2 x double> %i.awf, <2 x double> %i.awe ; 2 uses
  %i.awj = zext i1 %i.apf to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.awj     ; 2 uses
  %i.awk = fadd double %.sroa.0704.6, 1.000000e+00
  %i.awl = fadd <2 x double> %i.aob, %i.awi
  %i.awm = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.api, double %i.awk, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.api, i32 %i.awm, i32 %.9.i401
  %i.awn = select i1 %i.api, <2 x double> %i.awl, <2 x double> %i.awi ; 2 uses
  %i.awo = fadd <2 x double> %i.aoa, %i.awn
  %i.awp = insertelement <2 x i1> poison, i1 %i.apl, i64 0
  %i.awq = shufflevector <2 x i1> %i.awp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.awr = select <2 x i1> %i.awq, <2 x double> %i.awo, <2 x double> %i.awn ; 2 uses
  %i.aws = zext i1 %i.apl to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.aws   ; 2 uses
  %i.awt = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.awt, label %bb.ge, label %.noexc291

bb.ge:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.awu = uitofp nneg i32 %.11.i403 to double
  %i.awv = fdiv double 1.000000e+00, %i.awu       ; 2 uses
  %i.aww = fmul double %.sroa.0704.7, %i.awv
  %i.awx = insertelement <2 x double> poison, double %i.awv, i64 0
  %i.awy = shufflevector <2 x double> %i.awx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awz = fmul <2 x double> %i.awr, %i.awy
  br label %.noexc291

.noexc291:                                        ; preds = %bb.ge, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.aww, %bb.ge ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.axa = phi <2 x double> [ %i.awz, %bb.ge ], [ %i.awr, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.axb = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.axb, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  store <2 x double> %i.axa, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.axc = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.axc, align 1, !tbaa !670
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.axd = add i8 %.047.i, 1
  %i.axe = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.axe, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.ef, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gf, %middle.block1201
  %.0140968 = phi i64 [ %umax.i, %middle.block1201 ], [ %umax.i286, %bb.gf ], [ %umax.i, %.noexc254 ]
  %i.axf = sitofp <2 x i32> %i.mp to <2 x double>
  %i.axg = sitofp i32 %i.mt to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.gx
  %.0138807 = phi i64 [ %i.azk, %bb.gx ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145806 = phi i32 [ %i.azj, %bb.gx ], [ %.0144809, %.lr.ph.preheader ] ; 2 uses
  %i.axh = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138807 ; 7 uses
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !701 ; 2 uses
  %i.axj = call double @llvm.fabs.f64(double %i.axi)
  %i.axk = fcmp ueq double %i.axj, +inf
  br i1 %i.axk, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axh, i64 8
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !701 ; 2 uses
  %i.axn = call double @llvm.fabs.f64(double %i.axm)
  %i.axo = fcmp ueq double %i.axn, +inf
  br i1 %i.axo, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axh, i64 16 ; 3 uses
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !701 ; 2 uses
  %i.axr = call double @llvm.fabs.f64(double %i.axq)
  %i.axs = fcmp ueq double %i.axr, +inf
  br i1 %i.axs, label %bb.gi, label %bb.gs

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.axt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.axt, ptr %18, align 8, !tbaa !740
  %i.axu = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.axu, align 8, !tbaa !742
  store i8 0, ptr %i.axt, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZN4llvm21AArch64TargetLoweringC2ERKNS_13TargetMachineERKNS_16AArch64SubtargetE:bb.a
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 44525
  store i8 4, ptr %i.alf, align 1, !tbaa !218
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 45599
  store i8 4, ptr %i.alg, align 1, !tbaa !218
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 56339
  store i8 4, ptr %i.alh, align 1, !tbaa !218
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 56876
  store i8 4, ptr %i.ali, align 4, !tbaa !218
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 56312
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 56849
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 39539
  store i8 4, ptr %i.all, align 1, !tbaa !218
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 45446
  store i8 4, ptr %i.alm, align 2, !tbaa !218
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 56723
  store i8 4, ptr %i.aln, align 1, !tbaa !218
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 37391
  store i8 4, ptr %i.alo, align 1, !tbaa !218
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 44372
  store i8 4, ptr %i.alp, align 4, !tbaa !218
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 56186
  store i8 4, ptr %i.alq, align 2, !tbaa !218
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 31508
  store i32 67372036, ptr %i.alj, align 8
  store i32 67372036, ptr %i.alk, align 1
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 37415
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 44396
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 56210
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 32045
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 39563
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 45470
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 56747
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 31604
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 37511
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 44492
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 32141
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 39659
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 45566
  store i32 0, ptr %i.alr, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.alz, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.alv, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.amc, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.als, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ama, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.alw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.amd, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.alt, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.amb, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.alx, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ame, i8 0, i64 6, i1 false)
  store i32 0, ptr %i.alu, align 2
  store i32 0, ptr %i.aly, align 1
  %i.amf = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 424
  %i.amh = load i8, ptr %i.amg, align 8, !tbaa !230, !range !58, !noundef !59
  %i.ami = trunc nuw i8 %i.amh to i1
  br i1 %i.ami, label %.critedge, label %bb.cs

.critedge:                                        ; preds = %bb.cr
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 64581
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 64579
  store i8 0, ptr %i.amk, align 1, !tbaa !218
  store i32 0, ptr %i.amj, align 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.critedge
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 78543
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 78541
  store i8 0, ptr %i.amm, align 1, !tbaa !218
  store i32 0, ptr %i.aml, align 1
  %i.amn = load ptr, ptr %i.c, align 8, !tbaa !94 ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 424
  %i.amp = load i8, ptr %i.amo, align 8, !tbaa !230, !range !58, !noundef !59
  %i.amq = trunc nuw i8 %i.amp to i1
  br i1 %i.amq, label %.critedge.2, label %bb.ct

.critedge.2:                                      ; preds = %bb.cs
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 66729
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 66727
  store i8 0, ptr %i.ams, align 1, !tbaa !218
  store i32 0, ptr %i.amr, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.critedge.2
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 79617
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 79615
  store i8 0, ptr %i.amu, align 1, !tbaa !218
  %.phi.trans.insert3751.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.amn, i64 424
  store i32 0, ptr %i.amt, align 1
  %.pre3752.pre = load i8, ptr %.phi.trans.insert3751.phi.trans.insert, align 8, !tbaa !230, !range !58
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 89283
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 89281
  store i8 0, ptr %i.amw, align 1, !tbaa !218
  %i.amx = trunc nuw i8 %.pre3752.pre to i1       ; 2 uses
  store i32 0, ptr %i.amv, align 1
  br i1 %i.amx, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 63505
  store i8 4, ptr %i.amy, align 1, !tbaa !218
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 31828
  store i8 4, ptr %i.amz, align 4, !tbaa !218
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 31830
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 37735
  store i8 4, ptr %i.anb, align 1, !tbaa !218
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 37737
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 44716
  store i8 4, ptr %i.and, align 4, !tbaa !218
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 44718
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 32365
  store i8 4, ptr %i.anf, align 1, !tbaa !218
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 32367
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 39883
  store i8 4, ptr %i.anh, align 1, !tbaa !218
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 39885
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 45790
  store i8 4, ptr %i.anj, align 2, !tbaa !218
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 45792
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 57067
  store i8 4, ptr %i.anl, align 1, !tbaa !218
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 57069
  store i8 4, ptr %i.anm, align 1, !tbaa !218
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 57070
  store i8 4, ptr %i.ann, align 2, !tbaa !218
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 57071
  store i8 4, ptr %i.ano, align 1, !tbaa !218
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 45614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.ana, i8 4, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ang, i8 4, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.anc, i8 4, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ani, i8 4, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.ane, i8 4, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ank, i8 4, i64 7, i1 false)
  store i8 0, ptr %i.anp, align 2, !tbaa !218
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 445536
  store i8 2, ptr %i.anq, align 8, !tbaa !218
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.critedge6
  %.sroa.02437.03257 = phi i64 [ 19, %bb.cv ], [ %i.aqr, %.critedge6 ] ; 5 uses
  %i.anr = trunc i64 %.sroa.02437.03257 to i16    ; 4 uses
  %i.ans = getelementptr inbounds nuw [537 x i8], ptr %i.mn, i64 %.sroa.02437.03257 ; 7 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 236
  store i8 2, ptr %i.ant, align 1, !tbaa !218
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 180
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 179
  %switch.tableidx = add i16 %i.anr, -48          ; 2 uses
  %i.anw = icmp ult i16 %switch.tableidx, 26
  br i1 %i.anw, label %switch.lookup3909, label %.critedge2

switch.lookup3909:                                ; preds = %bb.cw
  %i.anx = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm21AArch64TargetLoweringC2ERKNS_13TargetMachineERKNS_16AArch64SubtargetE, i64 %i.anx
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.critedge2

.critedge2:                                       ; preds = %bb.cw, %switch.lookup3909
  %.sink3867 = phi i8 [ %switch.load, %switch.lookup3909 ], [ 2, %bb.cw ] ; 2 uses
  store i8 %.sink3867, ptr %i.anu, align 1, !tbaa !218
  store i8 %.sink3867, ptr %i.anv, align 1, !tbaa !218
  %i.any = getelementptr inbounds nuw i8, ptr %i.ans, i64 66
  store i8 2, ptr %i.any, align 1, !tbaa !218
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ans, i64 67
  store i8 2, ptr %i.anz, align 1, !tbaa !218
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ans, i64 210 ; 3 uses
  switch i16 %i.anr, label %bb.cx [
    i16 58, label %.critedge6.sink.split
    i16 62, label %.critedge6.sink.split
    i16 71, label %.thread3168
    i16 73, label %.thread3168
    i16 94, label %.thread3168
  ]

bb.cx:                                            ; preds = %.critedge2
  store i8 2, ptr %i.aoa, align 1, !tbaa !218
  %.off = add i16 %i.anr, -47
  %switch = icmp ult i16 %.off, 2
  %spec.select3877 = select i1 %switch, i8 4, i8 2
  br label %.critedge6

.thread3168:                                      ; preds = %.critedge2, %.critedge2, %.critedge2
  store i8 0, ptr %i.aoa, align 1, !tbaa !218
  %i.aob = add i16 %i.anr, -71
  %switch.and = and i16 %i.aob, -3
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %i.aoc = select i1 %switch.selectcmp, i8 4, i8 2
  br label %.critedge6

.critedge6.sink.split:                            ; preds = %.critedge2, %.critedge2
  store i8 0, ptr %i.aoa, align 1, !tbaa !218
  br label %.critedge6

.critedge6:                                       ; preds = %bb.cx, %.critedge6.sink.split, %.thread3168
  %.sink3869 = phi i8 [ %spec.select3877, %bb.cx ], [ %i.aoc, %.thread3168 ], [ 4, %.critedge6.sink.split ]
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ans, i64 211
  store i8 %.sink3869, ptr %i.aod, align 1, !tbaa !218
  %i.aoe = getelementptr inbounds nuw [528 x i8], ptr %i.zo, i64 %.sroa.02437.03257 ; 18 uses
  %i.aof = getelementptr inbounds nuw [264 x i8], ptr %i.adh, i64 %.sroa.02437.03257 ; 18 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.aof, i64 19
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 27
  store <8 x i8> splat (i8 2), ptr %68, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.aog, align 1, !tbaa !218
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 38 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoe, i64 54 ; 2 uses
  %wide.load3893 = load <8 x i16>, ptr %i.aoh, align 2, !tbaa !228
  %wide.load3894 = load <8 x i16>, ptr %i.aoi, align 2, !tbaa !228
  %i.aoj = and <8 x i16> %wide.load3893, splat (i16 15)
  %i.aok = and <8 x i16> %wide.load3894, splat (i16 15)
  %i.aol = or disjoint <8 x i16> %i.aoj, splat (i16 8736)
  %i.aom = or disjoint <8 x i16> %i.aok, splat (i16 8736)
  store <8 x i16> %i.aol, ptr %i.aoh, align 2, !tbaa !228
  store <8 x i16> %i.aom, ptr %i.aoi, align 2, !tbaa !228
  %69 = getelementptr inbounds nuw i8, ptr %i.aof, i64 35
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aof, i64 43
  store <8 x i8> splat (i8 2), ptr %69, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.aon, align 1, !tbaa !218
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoe, i64 70 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoe, i64 86 ; 2 uses
  %wide.load3893.1 = load <8 x i16>, ptr %i.aoo, align 2, !tbaa !228
  %wide.load3894.1 = load <8 x i16>, ptr %i.aop, align 2, !tbaa !228
  %i.aoq = and <8 x i16> %wide.load3893.1, splat (i16 15)
  %i.aor = and <8 x i16> %wide.load3894.1, splat (i16 15)
  %i.aos = or disjoint <8 x i16> %i.aoq, splat (i16 8736)
  %i.aot = or disjoint <8 x i16> %i.aor, splat (i16 8736)
  store <8 x i16> %i.aos, ptr %i.aoo, align 2, !tbaa !228
  store <8 x i16> %i.aot, ptr %i.aop, align 2, !tbaa !228
  %70 = getelementptr inbounds nuw i8, ptr %i.aof, i64 51
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aof, i64 59
  store <8 x i8> splat (i8 2), ptr %70, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.aou, align 1, !tbaa !218
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoe, i64 102 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoe, i64 118 ; 2 uses
  %wide.load3893.2 = load <8 x i16>, ptr %i.aov, align 2, !tbaa !228
  %wide.load3894.2 = load <8 x i16>, ptr %i.aow, align 2, !tbaa !228
  %i.aox = and <8 x i16> %wide.load3893.2, splat (i16 15)
  %i.aoy = and <8 x i16> %wide.load3894.2, splat (i16 15)
  %i.aoz = or disjoint <8 x i16> %i.aox, splat (i16 8736)
  %i.apa = or disjoint <8 x i16> %i.aoy, splat (i16 8736)
  store <8 x i16> %i.aoz, ptr %i.aov, align 2, !tbaa !228
  store <8 x i16> %i.apa, ptr %i.aow, align 2, !tbaa !228
  %71 = getelementptr inbounds nuw i8, ptr %i.aof, i64 67
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aof, i64 75
  store <8 x i8> splat (i8 2), ptr %71, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.apb, align 1, !tbaa !218
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoe, i64 134 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoe, i64 150 ; 2 uses
  %wide.load3893.3 = load <8 x i16>, ptr %i.apc, align 2, !tbaa !228
  %wide.load3894.3 = load <8 x i16>, ptr %i.apd, align 2, !tbaa !228
  %i.ape = and <8 x i16> %wide.load3893.3, splat (i16 15)
  %i.apf = and <8 x i16> %wide.load3894.3, splat (i16 15)
  %i.apg = or disjoint <8 x i16> %i.ape, splat (i16 8736)
  %i.aph = or disjoint <8 x i16> %i.apf, splat (i16 8736)
  store <8 x i16> %i.apg, ptr %i.apc, align 2, !tbaa !228
  store <8 x i16> %i.aph, ptr %i.apd, align 2, !tbaa !228
  %72 = getelementptr inbounds nuw i8, ptr %i.aof, i64 83
  %i.api = getelementptr inbounds nuw i8, ptr %i.aof, i64 91
  store <8 x i8> splat (i8 2), ptr %72, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.api, align 1, !tbaa !218
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoe, i64 166 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aoe, i64 182 ; 2 uses
  %wide.load3893.4 = load <8 x i16>, ptr %i.apj, align 2, !tbaa !228
  %wide.load3894.4 = load <8 x i16>, ptr %i.apk, align 2, !tbaa !228
  %i.apl = and <8 x i16> %wide.load3893.4, splat (i16 15)
  %i.apm = and <8 x i16> %wide.load3894.4, splat (i16 15)
  %i.apn = or disjoint <8 x i16> %i.apl, splat (i16 8736)
  %i.apo = or disjoint <8 x i16> %i.apm, splat (i16 8736)
  store <8 x i16> %i.apn, ptr %i.apj, align 2, !tbaa !228
  store <8 x i16> %i.apo, ptr %i.apk, align 2, !tbaa !228
  %73 = getelementptr inbounds nuw i8, ptr %i.aof, i64 99
  %i.app = getelementptr inbounds nuw i8, ptr %i.aof, i64 107
  store <8 x i8> splat (i8 2), ptr %73, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.app, align 1, !tbaa !218
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aoe, i64 198 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aoe, i64 214 ; 2 uses
  %wide.load3893.5 = load <8 x i16>, ptr %i.apq, align 2, !tbaa !228
  %wide.load3894.5 = load <8 x i16>, ptr %i.apr, align 2, !tbaa !228
  %i.aps = and <8 x i16> %wide.load3893.5, splat (i16 15)
  %i.apt = and <8 x i16> %wide.load3894.5, splat (i16 15)
  %i.apu = or disjoint <8 x i16> %i.aps, splat (i16 8736)
  %i.apv = or disjoint <8 x i16> %i.apt, splat (i16 8736)
  store <8 x i16> %i.apu, ptr %i.apq, align 2, !tbaa !228
  store <8 x i16> %i.apv, ptr %i.apr, align 2, !tbaa !228
  %74 = getelementptr inbounds nuw i8, ptr %i.aof, i64 115
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aof, i64 123
  store <8 x i8> splat (i8 2), ptr %74, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.apw, align 1, !tbaa !218
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 230 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aoe, i64 246 ; 2 uses
  %wide.load3893.6 = load <8 x i16>, ptr %i.apx, align 2, !tbaa !228
  %wide.load3894.6 = load <8 x i16>, ptr %i.apy, align 2, !tbaa !228
  %i.apz = and <8 x i16> %wide.load3893.6, splat (i16 15)
  %i.aqa = and <8 x i16> %wide.load3894.6, splat (i16 15)
  %i.aqb = or disjoint <8 x i16> %i.apz, splat (i16 8736)
  %i.aqc = or disjoint <8 x i16> %i.aqa, splat (i16 8736)
  store <8 x i16> %i.aqb, ptr %i.apx, align 2, !tbaa !228
  store <8 x i16> %i.aqc, ptr %i.apy, align 2, !tbaa !228
  %75 = getelementptr inbounds nuw i8, ptr %i.aof, i64 131
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aof, i64 139
  store <8 x i8> splat (i8 2), ptr %75, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.aqd, align 1, !tbaa !218
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aoe, i64 262 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aoe, i64 278 ; 2 uses
  %wide.load3893.7 = load <8 x i16>, ptr %i.aqe, align 2, !tbaa !228
  %wide.load3894.7 = load <8 x i16>, ptr %i.aqf, align 2, !tbaa !228
  %i.aqg = and <8 x i16> %wide.load3893.7, splat (i16 15)
  %i.aqh = and <8 x i16> %wide.load3894.7, splat (i16 15)
  %i.aqi = or disjoint <8 x i16> %i.aqg, splat (i16 8736)
  %i.aqj = or disjoint <8 x i16> %i.aqh, splat (i16 8736)
  store <8 x i16> %i.aqi, ptr %i.aqe, align 2, !tbaa !228
  store <8 x i16> %i.aqj, ptr %i.aqf, align 2, !tbaa !228
  %76 = getelementptr inbounds nuw i8, ptr %i.aof, i64 147
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aof, i64 155
  store <8 x i8> splat (i8 2), ptr %76, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.aqk, align 1, !tbaa !218
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aoe, i64 294 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aoe, i64 310 ; 2 uses
  %wide.load3893.8 = load <8 x i16>, ptr %i.aql, align 2, !tbaa !228
  %wide.load3894.8 = load <8 x i16>, ptr %i.aqm, align 2, !tbaa !228
  %i.aqn = and <8 x i16> %wide.load3893.8, splat (i16 15)
  %i.aqo = and <8 x i16> %wide.load3894.8, splat (i16 15)
  %i.aqp = or disjoint <8 x i16> %i.aqn, splat (i16 8736)
  %i.aqq = or disjoint <8 x i16> %i.aqo, splat (i16 8736)
  store <8 x i16> %i.aqp, ptr %i.aql, align 2, !tbaa !228
  store <8 x i16> %i.aqq, ptr %i.aqm, align 2, !tbaa !228
  %i.aqr = add nuw nsw i64 %.sroa.02437.03257, 1  ; 2 uses
  %.not3205 = icmp eq i64 %i.aqr, 163
  br i1 %.not3205, label %.preheader3216, label %bb.cw

.preheader3216:                                   ; preds = %.critedge6, %.preheader3216.backedge
  %.0872.idx3264 = phi i64 [ %.0872.idx3264.be, %.preheader3216.backedge ], [ 0, %.critedge6 ] ; 3 uses
  %.0872.ptr = getelementptr inbounds nuw i8, ptr @constinit.46, i64 %.0872.idx3264
  %i.aqs = load i32, ptr %.0872.ptr, align 4, !tbaa !1238
  %i.aqt = zext i32 %i.aqs to i64
  %invariant.gep3258 = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.aqt ; 5 uses
  %gep3259 = getelementptr inbounds nuw i8, ptr %invariant.gep3258, i64 71958
  store i8 0, ptr %gep3259, align 1, !tbaa !218
  %gep3259.1 = getelementptr inbounds nuw i8, ptr %invariant.gep3258, i64 73032
  store i8 0, ptr %gep3259.1, align 1, !tbaa !218
  %gep3259.2 = getelementptr inbounds nuw i8, ptr %invariant.gep3258, i64 82698
  store i8 0, ptr %gep3259.2, align 1, !tbaa !218
  br i1 %i.amx, label %bb.cy, label %.thread3850

bb.cy:                                            ; preds = %.preheader3216
  %gep3262 = getelementptr inbounds nuw i8, ptr %invariant.gep3258, i64 57996
  store i8 0, ptr %gep3262, align 1, !tbaa !218
  %gep3262.1 = getelementptr inbounds nuw i8, ptr %invariant.gep3258, i64 60144
  store i8 0, ptr %gep3262.1, align 1, !tbaa !218
  %.0872.add = add nuw nsw i64 %.0872.idx3264, 4  ; 2 uses
  %.not907 = icmp eq i64 %.0872.add, 64
  br i1 %.not907, label %bb.cz, label %.preheader3216.backedge

.preheader3216.backedge:                          ; preds = %bb.cy, %.thread3850
  %.0872.idx3264.be = phi i64 [ %.0872.add3851, %.thread3850 ], [ %.0872.add, %bb.cy ]
  br label %.preheader3216

.thread3850:                                      ; preds = %.preheader3216
  %.0872.add3851 = add nuw nsw i64 %.0872.idx3264, 4 ; 2 uses
  %.not9073852 = icmp eq i64 %.0872.add3851, 64
  br i1 %.not9073852, label %.thread3858, label %.preheader3216.backedge

bb.cz:                                            ; preds = %bb.cy
  %gep3266 = getelementptr inbounds nuw i8, ptr %0, i64 78435
  store i8 4, ptr %gep3266, align 1, !tbaa !218
  %gep3266.1 = getelementptr inbounds nuw i8, ptr %0, i64 79509
  store i8 4, ptr %gep3266.1, align 1, !tbaa !218
  %gep3266.2 = getelementptr inbounds nuw i8, ptr %0, i64 89175
  store i8 4, ptr %gep3266.2, align 1, !tbaa !218
  %gep3269 = getelementptr inbounds nuw i8, ptr %0, i64 64473
  store i8 4, ptr %gep3269, align 1, !tbaa !218
  br label %.thread3858

.thread3858:                                      ; preds = %.thread3850, %bb.cz
  %.sink3876 = phi i64 [ 66621, %bb.cz ], [ 78435, %.thread3850 ]
  %.sink3875 = phi i64 [ 78436, %bb.cz ], [ 79509, %.thread3850 ]
  %.sink3874 = phi i64 [ 79510, %bb.cz ], [ 89175, %.thread3850 ]
  %.sink3873 = phi i64 [ 89176, %bb.cz ], [ 78436, %.thread3850 ]
  %.sink3872 = phi i64 [ 64474, %bb.cz ], [ 79510, %.thread3850 ]
  %.sink3871 = phi i64 [ 66622, %bb.cz ], [ 89176, %.thread3850 ]
  %gep32663854 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3876
  store i8 4, ptr %gep32663854, align 1, !tbaa !218
  %gep3266.13855 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3875
  store i8 4, ptr %gep3266.13855, align 1, !tbaa !218
  %gep3266.23856 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3874
  store i8 4, ptr %gep3266.23856, align 1, !tbaa !218
  %gep3266.133833859 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3873
  store i8 4, ptr %gep3266.133833859, align 4, !tbaa !218
  %gep3266.1.13860 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3872
  store i8 4, ptr %gep3266.1.13860, align 2, !tbaa !218
  %gep3266.2.13861 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3871
  store i8 4, ptr %gep3266.2.13861, align 2, !tbaa !218
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 442091
  store i8 4, ptr %i.aqu, align 1, !tbaa !218
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 8043
  store i8 4, ptr %i.aqv, align 1, !tbaa !218
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 8580
  store i8 4, ptr %i.aqw, align 4, !tbaa !218
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 9117
  store i8 4, ptr %i.aqx, align 1, !tbaa !218
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 9654
  store i8 4, ptr %i.aqy, align 2, !tbaa !218
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 28449
  store i8 4, ptr %i.aqz, align 1, !tbaa !218
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 36504
  store i8 4, ptr %i.ara, align 8, !tbaa !218
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 29523
  store i8 4, ptr %i.arb, align 1, !tbaa !218
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 185522 ; 2 uses
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !228
  %i.are = and i16 %i.ard, 15
  %i.arf = or disjoint i16 %i.are, 17472
  store i16 %i.arf, ptr %i.arc, align 2, !tbaa !228
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 197666 ; 2 uses
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !228
  %i.ari = and i16 %i.arh, 15
  %i.arj = or disjoint i16 %i.ari, 17472
  store i16 %i.arj, ptr %i.arg, align 2, !tbaa !228
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 178662 ; 2 uses
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !228
  %i.arm = and i16 %i.arl, 15
  %i.arn = or disjoint i16 %i.arm, 17472
  store i16 %i.arn, ptr %i.ark, align 2, !tbaa !228
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 186582 ; 2 uses
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !228
  %i.arq = and i16 %i.arp, 15
  %i.arr = or disjoint i16 %i.arq, 17472
  store i16 %i.arr, ptr %i.aro, align 2, !tbaa !228
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 185552 ; 2 uses
  %i.art = load i16, ptr %i.ars, align 8, !tbaa !228
  %i.aru = and i16 %i.art, 15
  %i.arv = or disjoint i16 %i.aru, 17472
  store i16 %i.arv, ptr %i.ars, align 8, !tbaa !228
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 197696 ; 2 uses
  %i.arx = load i16, ptr %i.arw, align 8, !tbaa !228
  %i.ary = and i16 %i.arx, 15
  %i.arz = or disjoint i16 %i.ary, 17472
  store i16 %i.arz, ptr %i.arw, align 8, !tbaa !228
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 32556
  store i8 4, ptr %i.asa, align 4, !tbaa !218
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 40074
  store i8 4, ptr %i.asb, align 2, !tbaa !218
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 47592
  store i8 4, ptr %i.asc, align 8, !tbaa !218
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 57795
  store i8 4, ptr %i.asd, align 1, !tbaa !218
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 66964
  store i8 4, ptr %i.ase, align 4, !tbaa !218
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 81463
  store i8 4, ptr %i.asf, align 1, !tbaa !218
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 90055
  store i8 4, ptr %i.asg, align 1, !tbaa !218
  %i.ash = getelementptr inbounds nuw i8, ptr %i.amn, i64 399
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !340, !range !58, !noundef !59
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %.lr.ph.i1225, label %bb.dc

.lr.ph.i1225:                                     ; preds = %.thread3858
  %i.ask = getelementptr inbounds nuw i8, ptr %57, i64 2 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %57, i64 4 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 502240 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #35
  store i16 48, ptr %57, align 4, !tbaa !342
  store i16 73, ptr %i.ask, align 2, !tbaa !344
  store i32 414, ptr %i.asl, align 4, !tbaa !346
  %i.asn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %57)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.asn, 0
  %i.aso = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i8 0, ptr %i.aso, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #35
  store i16 48, ptr %57, align 4, !tbaa !342
  store i16 73, ptr %i.ask, align 2, !tbaa !344
  store i32 415, ptr %i.asl, align 4, !tbaa !346
  %i.asp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %57)
  %.fca.0.extract.i.i.i.1 = extractvalue { ptr, i8 } %i.asp, 0
  %i.asq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.1, i64 8
  store i8 0, ptr %i.asq, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  %i.asr = getelementptr inbounds nuw i8, ptr %56, i64 2 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %56, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #35
  store i16 47, ptr %56, align 4, !tbaa !342
  store i16 71, ptr %i.asr, align 2, !tbaa !344
  store i32 414, ptr %i.ass, align 4, !tbaa !346
  %i.ast = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %56)
  %.fca.0.extract.i.i.i1232 = extractvalue { ptr, i8 } %i.ast, 0
  %i.asu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i1232, i64 8
  store i8 0, ptr %i.asu, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #35
  store i16 47, ptr %56, align 4, !tbaa !342
  store i16 71, ptr %i.asr, align 2, !tbaa !344
  store i32 415, ptr %i.ass, align 4, !tbaa !346
  %i.asv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %56)
  %.fca.0.extract.i.i.i1232.1 = extractvalue { ptr, i8 } %i.asv, 0
  %i.asw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i1232.1, i64 8
  store i8 0, ptr %i.asw, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  %i.asx = getelementptr inbounds nuw i8, ptr %55, i64 2 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %55, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #35
  store i16 48, ptr %55, align 4, !tbaa !342
  store i16 71, ptr %i.asx, align 2, !tbaa !344
  store i32 414, ptr %i.asy, align 4, !tbaa !346
  %i.asz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %55)
  %.fca.0.extract.i.i.i1239 = extractvalue { ptr, i8 } %i.asz, 0
  %i.ata = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i1239, i64 8
  store i8 4, ptr %i.ata, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #35
  store i16 48, ptr %55, align 4, !tbaa !342
  store i16 71, ptr %i.asx, align 2, !tbaa !344
  store i32 415, ptr %i.asy, align 4, !tbaa !346
  %i.atb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %55)
  %.fca.0.extract.i.i.i1239.1 = extractvalue { ptr, i8 } %i.atb, 0
end_hunk_0
begin_hunk_1_@_ZN4llvm21AArch64TargetLoweringC2ERKNS_13TargetMachineERKNS_16AArch64SubtargetE:bb.a
  store i8 4, ptr %i.atm, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #35
  store i16 48, ptr %52, align 4, !tbaa !342
  %i.atn = getelementptr inbounds nuw i8, ptr %52, i64 2
  store i16 71, ptr %i.atn, align 2, !tbaa !344
  %i.ato = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i32 416, ptr %i.ato, align 4, !tbaa !346
  %i.atp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %52)
  %.fca.0.extract.i.i1249 = extractvalue { ptr, i8 } %i.atp, 0
  %i.atq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1249, i64 8
  store i8 4, ptr %i.atq, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #35
  %i.atr = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 460
  %i.att = load i8, ptr %i.ats, align 4, !tbaa !347, !range !58, !noundef !59
  %i.atu = trunc nuw i8 %i.att to i1
  br i1 %i.atu, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph.i1225
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  store i16 48, ptr %51, align 4, !tbaa !342
  %i.atv = getelementptr inbounds nuw i8, ptr %51, i64 2
  store i16 73, ptr %i.atv, align 2, !tbaa !344
  %i.atw = getelementptr inbounds nuw i8, ptr %51, i64 4
  store i32 416, ptr %i.atw, align 4, !tbaa !346
  %i.atx = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %51)
  %.fca.0.extract.i.i1250 = extractvalue { ptr, i8 } %i.atx, 0
  %i.aty = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1250, i64 8
  store i8 0, ptr %i.aty, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  store i16 47, ptr %50, align 4, !tbaa !342
  %i.atz = getelementptr inbounds nuw i8, ptr %50, i64 2
  store i16 71, ptr %i.atz, align 2, !tbaa !344
  %i.aua = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i32 416, ptr %i.aua, align 4, !tbaa !346
  %i.aub = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %50)
  %.fca.0.extract.i.i1251 = extractvalue { ptr, i8 } %i.aub, 0
  %i.auc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1251, i64 8
  store i8 0, ptr %i.auc, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  br label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i1225
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  store i16 48, ptr %49, align 4, !tbaa !342
  %i.aud = getelementptr inbounds nuw i8, ptr %49, i64 2
  store i16 73, ptr %i.aud, align 2, !tbaa !344
  %i.aue = getelementptr inbounds nuw i8, ptr %49, i64 4
  store i32 416, ptr %i.aue, align 4, !tbaa !346
  %i.auf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %49)
  %.fca.0.extract.i.i1252 = extractvalue { ptr, i8 } %i.auf, 0
  %i.aug = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1252, i64 8
  store i8 4, ptr %i.aug, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  store i16 47, ptr %48, align 4, !tbaa !342
  %i.auh = getelementptr inbounds nuw i8, ptr %48, i64 2
  store i16 71, ptr %i.auh, align 2, !tbaa !344
  %i.aui = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 416, ptr %i.aui, align 4, !tbaa !346
  %i.auj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.asm, ptr noundef nonnull align 4 dereferenceable(8) %48)
  %.fca.0.extract.i.i1253 = extractvalue { ptr, i8 } %i.auj, 0
  %i.auk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1253, i64 8
  store i8 4, ptr %i.auk, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db, %.thread3858
  %i.aul = load ptr, ptr %i.c, align 8, !tbaa !94 ; 3 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 405
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !1254, !range !58, !noundef !59
  %i.auo = trunc nuw i8 %i.aun to i1
  br i1 %i.auo, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aul, i64 412
  %i.auq = load i8, ptr %i.aup, align 4, !tbaa !1255, !range !58, !noundef !59
  %i.aur = trunc nuw i8 %i.auq to i1
  br i1 %i.aur, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #35
  store i16 108, ptr %47, align 4, !tbaa !342
  %i.aus = getelementptr inbounds nuw i8, ptr %47, i64 2
  store i16 134, ptr %i.aus, align 2, !tbaa !344
  %i.aut = getelementptr inbounds nuw i8, ptr %47, i64 4
  store i32 417, ptr %i.aut, align 4, !tbaa !346
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 502240 ; 2 uses
  %i.auv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.auu, ptr noundef nonnull align 4 dereferenceable(8) %47)
  %.fca.0.extract.i.i1254 = extractvalue { ptr, i8 } %i.auv, 0
  %i.auw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1254, i64 8
  store i8 0, ptr %i.auw, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #35
  store i16 112, ptr %46, align 4, !tbaa !342
  %i.aux = getelementptr inbounds nuw i8, ptr %46, i64 2
  store i16 136, ptr %i.aux, align 2, !tbaa !344
  %i.auy = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i32 417, ptr %i.auy, align 4, !tbaa !346
  %i.auz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.auu, ptr noundef nonnull align 4 dereferenceable(8) %46)
  %.fca.0.extract.i.i1255 = extractvalue { ptr, i8 } %i.auz, 0
  %i.ava = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1255, i64 8
  store i8 0, ptr %i.ava, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #35
  %.pre3753 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.avb = phi ptr [ %.pre3753, %bb.de ], [ %i.aul, %bb.dd ] ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 377
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !348, !range !58, !noundef !59
  %i.ave = trunc nuw i8 %i.avd to i1
  br i1 %i.ave, label %bb.dg, label %.lr.ph.i.i1260

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #35
  store i16 124, ptr %45, align 4, !tbaa !342
  %i.avf = getelementptr inbounds nuw i8, ptr %45, i64 2
  store i16 136, ptr %i.avf, align 2, !tbaa !344
  %i.avg = getelementptr inbounds nuw i8, ptr %45, i64 4
  store i32 417, ptr %i.avg, align 4, !tbaa !346
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 502240
  %i.avi = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.avh, ptr noundef nonnull align 4 dereferenceable(8) %45)
  %.fca.0.extract.i.i1256 = extractvalue { ptr, i8 } %i.avi, 0
  %i.avj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i1256, i64 8
  store i8 0, ptr %i.avj, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #35
  %.pre3754 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %.lr.ph.i.i1260

.lr.ph.i.i1260:                                   ; preds = %bb.dg, %bb.df
  %i.avk = phi ptr [ %.pre3754, %bb.dg ], [ %i.avb, %bb.df ] ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %0, i64 9074
  store i8 4, ptr %i.avl, align 2, !tbaa !218
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 31628
  store i8 0, ptr %i.avm, align 4, !tbaa !218
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 32165
  store i8 0, ptr %i.avn, align 1, !tbaa !218
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 367
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !1256, !range !58, !noundef !59
  %i.avq = trunc nuw i8 %i.avp to i1
  br i1 %i.avq, label %.lr.ph.i.i1271, label %.loopexit

.lr.ph.i.i1271:                                   ; preds = %.lr.ph.i.i1260
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 9611
  store i8 4, ptr %i.avr, align 1, !tbaa !218
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 10148
  store i8 4, ptr %i.avs, align 4, !tbaa !218
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 10685
  store i8 4, ptr %i.avt, align 1, !tbaa !218
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 45590
  store i8 4, ptr %i.avu, align 2, !tbaa !218
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 56330
  store i8 0, ptr %i.avv, align 2, !tbaa !218
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 56867
  store i8 0, ptr %i.avw, align 1, !tbaa !218
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 56332
  store i8 0, ptr %i.avx, align 4, !tbaa !218
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 56869
  store i8 0, ptr %i.avy, align 1, !tbaa !218
  br label %.loopexit

_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread: ; preds = %bb.co, %bb.cm, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 864
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread, %vector.body3886
  %.sroa.02252.03243 = phi i64 [ 19, %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread ], [ %i.ayy, %vector.body3886 ] ; 6 uses
  %i.awa = getelementptr inbounds nuw [537 x i8], ptr %i.mn, i64 %.sroa.02252.03243 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(537) %i.awa, i8 2, i64 537, i1 false), !tbaa !218
  %i.awb = trunc i64 %.sroa.02252.03243 to i16
  %i.awc = add i16 %i.awb, -19
  %spec.select.i.i = icmp ult i16 %i.awc, 144
  br i1 %spec.select.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %vector.body3886

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.dh
  %i.awd = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.sroa.02252.03243
  %i.awe = getelementptr i8, ptr %i.awd, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.awe, align 16
  switch i64 %.sroa.0.0.copyload.i.i.i, label %vector.body3886 [
    i64 128, label %bb.di
    i64 64, label %bb.di
  ]

bb.di:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit, %_ZNK4llvm3MVT14is128BitVectorEv.exit
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awa, i64 316
  store i8 0, ptr %i.awf, align 1, !tbaa !218
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awa, i64 317
  store i8 0, ptr %i.awg, align 1, !tbaa !218
  %i.awh = load i8, ptr %i.avz, align 8, !tbaa !349, !range !58, !noundef !59
  %i.awi = shl nuw nsw i8 %i.awh, 1
  %i.awj = xor i8 %i.awi, 2
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awa, i64 248
  store i8 %i.awj, ptr %i.awk, align 1, !tbaa !218
  br label %vector.body3886

vector.body3886:                                  ; preds = %bb.di, %bb.dh, %_ZNK4llvm3MVT14is128BitVectorEv.exit
  %i.awl = getelementptr inbounds nuw [528 x i8], ptr %i.zo, i64 %.sroa.02252.03243 ; 18 uses
  %i.awm = getelementptr inbounds nuw [264 x i8], ptr %i.adh, i64 %.sroa.02252.03243 ; 18 uses
  %77 = getelementptr inbounds nuw i8, ptr %i.awm, i64 19
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 27
  store <8 x i8> splat (i8 2), ptr %77, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.awn, align 1, !tbaa !218
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 38 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awl, i64 54 ; 2 uses
  %wide.load3887 = load <8 x i16>, ptr %i.awo, align 2, !tbaa !228
  %wide.load3888 = load <8 x i16>, ptr %i.awp, align 2, !tbaa !228
  %i.awq = and <8 x i16> %wide.load3887, splat (i16 15)
  %i.awr = and <8 x i16> %wide.load3888, splat (i16 15)
  %i.aws = or disjoint <8 x i16> %i.awq, splat (i16 8736)
  %i.awt = or disjoint <8 x i16> %i.awr, splat (i16 8736)
  store <8 x i16> %i.aws, ptr %i.awo, align 2, !tbaa !228
  store <8 x i16> %i.awt, ptr %i.awp, align 2, !tbaa !228
  %78 = getelementptr inbounds nuw i8, ptr %i.awm, i64 35
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awm, i64 43
  store <8 x i8> splat (i8 2), ptr %78, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.awu, align 1, !tbaa !218
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awl, i64 70 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awl, i64 86 ; 2 uses
  %wide.load3887.1 = load <8 x i16>, ptr %i.awv, align 2, !tbaa !228
  %wide.load3888.1 = load <8 x i16>, ptr %i.aww, align 2, !tbaa !228
  %i.awx = and <8 x i16> %wide.load3887.1, splat (i16 15)
  %i.awy = and <8 x i16> %wide.load3888.1, splat (i16 15)
  %i.awz = or disjoint <8 x i16> %i.awx, splat (i16 8736)
  %i.axa = or disjoint <8 x i16> %i.awy, splat (i16 8736)
  store <8 x i16> %i.awz, ptr %i.awv, align 2, !tbaa !228
  store <8 x i16> %i.axa, ptr %i.aww, align 2, !tbaa !228
  %79 = getelementptr inbounds nuw i8, ptr %i.awm, i64 51
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awm, i64 59
  store <8 x i8> splat (i8 2), ptr %79, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.axb, align 1, !tbaa !218
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awl, i64 102 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awl, i64 118 ; 2 uses
  %wide.load3887.2 = load <8 x i16>, ptr %i.axc, align 2, !tbaa !228
  %wide.load3888.2 = load <8 x i16>, ptr %i.axd, align 2, !tbaa !228
  %i.axe = and <8 x i16> %wide.load3887.2, splat (i16 15)
  %i.axf = and <8 x i16> %wide.load3888.2, splat (i16 15)
  %i.axg = or disjoint <8 x i16> %i.axe, splat (i16 8736)
  %i.axh = or disjoint <8 x i16> %i.axf, splat (i16 8736)
  store <8 x i16> %i.axg, ptr %i.axc, align 2, !tbaa !228
  store <8 x i16> %i.axh, ptr %i.axd, align 2, !tbaa !228
  %80 = getelementptr inbounds nuw i8, ptr %i.awm, i64 67
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awm, i64 75
  store <8 x i8> splat (i8 2), ptr %80, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.axi, align 1, !tbaa !218
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awl, i64 134 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.awl, i64 150 ; 2 uses
  %wide.load3887.3 = load <8 x i16>, ptr %i.axj, align 2, !tbaa !228
  %wide.load3888.3 = load <8 x i16>, ptr %i.axk, align 2, !tbaa !228
  %i.axl = and <8 x i16> %wide.load3887.3, splat (i16 15)
  %i.axm = and <8 x i16> %wide.load3888.3, splat (i16 15)
  %i.axn = or disjoint <8 x i16> %i.axl, splat (i16 8736)
  %i.axo = or disjoint <8 x i16> %i.axm, splat (i16 8736)
  store <8 x i16> %i.axn, ptr %i.axj, align 2, !tbaa !228
  store <8 x i16> %i.axo, ptr %i.axk, align 2, !tbaa !228
  %81 = getelementptr inbounds nuw i8, ptr %i.awm, i64 83
  %i.axp = getelementptr inbounds nuw i8, ptr %i.awm, i64 91
  store <8 x i8> splat (i8 2), ptr %81, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.axp, align 1, !tbaa !218
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awl, i64 166 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.awl, i64 182 ; 2 uses
  %wide.load3887.4 = load <8 x i16>, ptr %i.axq, align 2, !tbaa !228
  %wide.load3888.4 = load <8 x i16>, ptr %i.axr, align 2, !tbaa !228
  %i.axs = and <8 x i16> %wide.load3887.4, splat (i16 15)
  %i.axt = and <8 x i16> %wide.load3888.4, splat (i16 15)
  %i.axu = or disjoint <8 x i16> %i.axs, splat (i16 8736)
  %i.axv = or disjoint <8 x i16> %i.axt, splat (i16 8736)
  store <8 x i16> %i.axu, ptr %i.axq, align 2, !tbaa !228
  store <8 x i16> %i.axv, ptr %i.axr, align 2, !tbaa !228
  %82 = getelementptr inbounds nuw i8, ptr %i.awm, i64 99
  %i.axw = getelementptr inbounds nuw i8, ptr %i.awm, i64 107
  store <8 x i8> splat (i8 2), ptr %82, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.axw, align 1, !tbaa !218
  %i.axx = getelementptr inbounds nuw i8, ptr %i.awl, i64 198 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.awl, i64 214 ; 2 uses
  %wide.load3887.5 = load <8 x i16>, ptr %i.axx, align 2, !tbaa !228
  %wide.load3888.5 = load <8 x i16>, ptr %i.axy, align 2, !tbaa !228
  %i.axz = and <8 x i16> %wide.load3887.5, splat (i16 15)
  %i.aya = and <8 x i16> %wide.load3888.5, splat (i16 15)
  %i.ayb = or disjoint <8 x i16> %i.axz, splat (i16 8736)
  %i.ayc = or disjoint <8 x i16> %i.aya, splat (i16 8736)
  store <8 x i16> %i.ayb, ptr %i.axx, align 2, !tbaa !228
  store <8 x i16> %i.ayc, ptr %i.axy, align 2, !tbaa !228
  %83 = getelementptr inbounds nuw i8, ptr %i.awm, i64 115
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.awm, i64 123
  store <8 x i8> splat (i8 2), ptr %83, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.ayd, align 1, !tbaa !218
  %i.aye = getelementptr inbounds nuw i8, ptr %i.awl, i64 230 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.awl, i64 246 ; 2 uses
  %wide.load3887.6 = load <8 x i16>, ptr %i.aye, align 2, !tbaa !228
  %wide.load3888.6 = load <8 x i16>, ptr %i.ayf, align 2, !tbaa !228
  %i.ayg = and <8 x i16> %wide.load3887.6, splat (i16 15)
  %i.ayh = and <8 x i16> %wide.load3888.6, splat (i16 15)
  %i.ayi = or disjoint <8 x i16> %i.ayg, splat (i16 8736)
  %i.ayj = or disjoint <8 x i16> %i.ayh, splat (i16 8736)
  store <8 x i16> %i.ayi, ptr %i.aye, align 2, !tbaa !228
  store <8 x i16> %i.ayj, ptr %i.ayf, align 2, !tbaa !228
  %84 = getelementptr inbounds nuw i8, ptr %i.awm, i64 131
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.awm, i64 139
  store <8 x i8> splat (i8 2), ptr %84, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.ayk, align 1, !tbaa !218
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.awl, i64 262 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.awl, i64 278 ; 2 uses
  %wide.load3887.7 = load <8 x i16>, ptr %i.ayl, align 2, !tbaa !228
  %wide.load3888.7 = load <8 x i16>, ptr %i.aym, align 2, !tbaa !228
  %i.ayn = and <8 x i16> %wide.load3887.7, splat (i16 15)
  %i.ayo = and <8 x i16> %wide.load3888.7, splat (i16 15)
  %i.ayp = or disjoint <8 x i16> %i.ayn, splat (i16 8736)
  %i.ayq = or disjoint <8 x i16> %i.ayo, splat (i16 8736)
  store <8 x i16> %i.ayp, ptr %i.ayl, align 2, !tbaa !228
  store <8 x i16> %i.ayq, ptr %i.aym, align 2, !tbaa !228
  %85 = getelementptr inbounds nuw i8, ptr %i.awm, i64 147
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.awm, i64 155
  store <8 x i8> splat (i8 2), ptr %85, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.ayr, align 1, !tbaa !218
  %i.ays = getelementptr inbounds nuw i8, ptr %i.awl, i64 294 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.awl, i64 310 ; 2 uses
  %wide.load3887.8 = load <8 x i16>, ptr %i.ays, align 2, !tbaa !228
  %wide.load3888.8 = load <8 x i16>, ptr %i.ayt, align 2, !tbaa !228
  %i.ayu = and <8 x i16> %wide.load3887.8, splat (i16 15)
  %i.ayv = and <8 x i16> %wide.load3888.8, splat (i16 15)
  %i.ayw = or disjoint <8 x i16> %i.ayu, splat (i16 8736)
  %i.ayx = or disjoint <8 x i16> %i.ayv, splat (i16 8736)
  store <8 x i16> %i.ayw, ptr %i.ays, align 2, !tbaa !228
  store <8 x i16> %i.ayx, ptr %i.ayt, align 2, !tbaa !228
  %i.ayy = add nuw nsw i64 %.sroa.02252.03243, 1  ; 2 uses
  %.not3202 = icmp eq i64 %i.ayy, 163
  br i1 %.not3202, label %.loopexit, label %bb.dh

.loopexit:                                        ; preds = %vector.body3886, %.lr.ph.i.i1260, %.lr.ph.i.i1271
  %i.ayz = phi ptr [ %i.avk, %.lr.ph.i.i1271 ], [ %i.avk, %.lr.ph.i.i1260 ], [ %i.ahx, %vector.body3886 ] ; 6 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %0, i64 39709
  store i8 0, ptr %i.aza, align 1, !tbaa !218
  %i.azb = getelementptr inbounds nuw i8, ptr %0, i64 39710
  store i8 0, ptr %i.azb, align 2, !tbaa !218
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 39711
  store i8 0, ptr %i.azc, align 1, !tbaa !218
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 45616
  store i8 0, ptr %i.azd, align 8, !tbaa !218
  %i.aze = getelementptr inbounds nuw i8, ptr %0, i64 45617
  store i8 0, ptr %i.aze, align 1, !tbaa !218
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 45618
  store i8 0, ptr %i.azf, align 2, !tbaa !218
  %i.azg = getelementptr inbounds nuw i8, ptr %0, i64 56893
  store i8 0, ptr %i.azg, align 1, !tbaa !218
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 56894
  store i8 0, ptr %i.azh, align 2, !tbaa !218
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 56895
  store i8 0, ptr %i.azi, align 1, !tbaa !218
  %i.azj = getelementptr inbounds nuw i8, ptr %i.ayz, i64 488 ; 4 uses
  %i.azk = load i8, ptr %i.azj, align 8, !tbaa !339, !range !58, !noundef !59
  %i.azl = trunc nuw i8 %i.azk to i1
  br i1 %i.azl, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.loopexit
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 6770
  store i8 4, ptr %i.azm, align 2, !tbaa !218
  %.pre3755 = load i8, ptr %i.azj, align 8, !range !58
  %i.azn = trunc nuw i8 %.pre3755 to i1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit
  %i.azo = phi i1 [ %i.azn, %bb.dj ], [ false, %.loopexit ]
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ayz, i64 513
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !224, !range !58, !noundef !59
  %i.azr = trunc nuw i8 %i.azq to i1              ; 3 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ayz, i64 865 ; 3 uses
  %i.azt = load i8, ptr %i.azs, align 1, !range !58
  %i.azu = trunc nuw i8 %i.azt to i1
  %i.azv = select i1 %i.azo, i1 %i.azu, i1 false
  %i.azw = select i1 %i.azr, i1 true, i1 %i.azv
  br i1 %i.azw, label %.lr.ph.i1309, label %bb.dp

.lr.ph.i1309:                                     ; preds = %bb.dk
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 96038
  store i8 4, ptr %i.azx, align 2, !tbaa !218
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 96027
  store i8 4, ptr %i.azy, align 1, !tbaa !218
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 96031
  store i8 4, ptr %i.azz, align 1, !tbaa !218
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 96032
  store i8 4, ptr %i.baa, align 8, !tbaa !218
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 95501
  store i8 4, ptr %i.bab, align 1, !tbaa !218
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 95490
  store i8 4, ptr %i.bac, align 2, !tbaa !218
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 95494
  store i8 4, ptr %i.bad, align 2, !tbaa !218
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 95495
  store i8 4, ptr %i.bae, align 1, !tbaa !218
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 94964
  store i8 4, ptr %i.baf, align 4, !tbaa !218
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 94953
  store i8 4, ptr %i.bag, align 1, !tbaa !218
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 94957
  store i8 4, ptr %i.bah, align 1, !tbaa !218
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 94958
  store i8 4, ptr %i.bai, align 2, !tbaa !218
  %i.baj = getelementptr inbounds nuw i8, ptr %0, i64 94427
  store i8 4, ptr %i.baj, align 1, !tbaa !218
  %i.bak = getelementptr inbounds nuw i8, ptr %0, i64 94416
  store i8 4, ptr %i.bak, align 8, !tbaa !218
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 94420
  store i8 4, ptr %i.bal, align 4, !tbaa !218
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 94421
  store i8 4, ptr %i.bam, align 1, !tbaa !218
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 93890
  store i8 4, ptr %i.ban, align 2, !tbaa !218
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 93879
  store i8 4, ptr %i.bao, align 1, !tbaa !218
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 93883
  store i8 4, ptr %i.bap, align 1, !tbaa !218
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 93884
  store i8 4, ptr %i.baq, align 4, !tbaa !218
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 96388
  store <4 x i8> <i8 4, i8 4, i8 0, i8 0>, ptr %i.bar, align 4, !tbaa !218
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 95851
  store <4 x i8> <i8 4, i8 4, i8 0, i8 0>, ptr %i.bas, align 1, !tbaa !218
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 95314
  store <4 x i8> <i8 4, i8 4, i8 0, i8 0>, ptr %i.bat, align 2, !tbaa !218
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 94777
  store <4 x i8> <i8 4, i8 4, i8 0, i8 0>, ptr %i.bau, align 1, !tbaa !218
  %i.bav = load i8, ptr %i.azj, align 8, !range !58
  %i.baw = trunc nuw i8 %i.bav to i1
  %i.bax = load i8, ptr %i.azs, align 1, !range !58
  %i.bay = trunc nuw i8 %i.bax to i1
  %i.baz = select i1 %i.baw, i1 %i.bay, i1 false
  %i.bba = select i1 %i.azr, i1 true, i1 %i.baz
  br i1 %i.bba, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.lr.ph.i1309
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 519
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !350, !range !58, !noundef !59
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br i1 %i.bbd, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.ayz, i64 489
  %i.bbf = load i8, ptr %i.bbe, align 1, !tbaa !351, !range !58, !noundef !59
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 96928
  store i8 4, ptr %i.bbh, align 8, !tbaa !218
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %.lr.ph.i1309
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 32488
  store i8 4, ptr %i.bbi, align 8, !tbaa !218
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 31951
  store i8 4, ptr %i.bbj, align 1, !tbaa !218
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 37858
  store i8 4, ptr %i.bbk, align 2, !tbaa !218
  %i.bbl = getelementptr inbounds nuw i8, ptr %0, i64 44839
  store i8 4, ptr %i.bbl, align 1, !tbaa !218
  %i.bbm = getelementptr inbounds nuw i8, ptr %0, i64 66483
  store i8 4, ptr %i.bbm, align 1, !tbaa !218
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 79371
  store i8 4, ptr %i.bbn, align 1, !tbaa !218
  %i.bbo = getelementptr inbounds nuw i8, ptr %0, i64 89037
  store i8 4, ptr %i.bbo, align 1, !tbaa !218
  %.pre3756 = load i8, ptr %i.azj, align 8, !range !58
  %.pre3757 = load i8, ptr %i.azs, align 1, !range !58
  %.pre3777 = trunc nuw i8 %.pre3756 to i1
  %.pre3778 = trunc nuw i8 %.pre3757 to i1
  %.pre3780 = select i1 %.pre3777, i1 %.pre3778, i1 false
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dk
  %.pre-phi3781 = phi i1 [ %.pre3780, %bb.do ], [ false, %bb.dk ]
  %i.bbp = select i1 %i.azr, i1 true, i1 %.pre-phi3781
  br i1 %i.bbp, label %bb.dq, label %bb.gi

bb.dq:                                            ; preds = %bb.dp
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 99832
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 99788
  store i8 4, ptr %i.bbr, align 4, !tbaa !218
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 99857
  store i8 4, ptr %i.bbs, align 1, !tbaa !218
  %i.bbt = getelementptr inbounds nuw i8, ptr %0, i64 99856
  store i8 4, ptr %i.bbt, align 8, !tbaa !218
  %i.bbu = getelementptr inbounds nuw i8, ptr %0, i64 99863
  store i8 4, ptr %i.bbu, align 1, !tbaa !218
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 100006
  store i8 4, ptr %i.bbv, align 2, !tbaa !218
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 100007
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bbq, i8 4, i64 5, i1 false)
  store i8 0, ptr %i.bbw, align 1, !tbaa !218
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 99683
  %i.bby = getelementptr inbounds nuw i8, ptr %0, i64 99802
  store i8 4, ptr %i.bby, align 2, !tbaa !218
  %i.bbz = getelementptr inbounds nuw i8, ptr %0, i64 99801
  store i8 4, ptr %i.bbz, align 1, !tbaa !218
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 99797
  store i8 0, ptr %i.bca, align 1, !tbaa !218
  %i.bcb = getelementptr inbounds nuw i8, ptr %0, i64 99794
  store i8 4, ptr %i.bcb, align 2, !tbaa !218
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 99795
  store i8 4, ptr %i.bcc, align 1, !tbaa !218
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 99841
  store i8 4, ptr %i.bcd, align 1, !tbaa !218
  %i.bce = getelementptr inbounds nuw i8, ptr %0, i64 99844
  store i8 4, ptr %i.bce, align 4, !tbaa !218
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 99820
  %i.bcg = getelementptr inbounds nuw i8, ptr %0, i64 99818
  store i8 4, ptr %i.bcg, align 2, !tbaa !218
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 99807
  %i.bci = getelementptr inbounds nuw i8, ptr %0, i64 100027
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 99790
  store i8 4, ptr %i.bcj, align 2, !tbaa !218
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 99791
  store i8 4, ptr %i.bck, align 1, !tbaa !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bch, i8 4, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bci, i8 4, i64 9, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4llvm21AArch64TargetLoweringC2ERKNS_13TargetMachineERKNS_16AArch64SubtargetE:bb.a
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 96028
  store i8 4, ptr %i.bjf, align 4, !tbaa !218
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 96082
  store i8 4, ptr %i.bjg, align 2, !tbaa !218
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 96085
  store i8 4, ptr %i.bjh, align 1, !tbaa !218
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 96093
  store i8 4, ptr %i.bji, align 1, !tbaa !218
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 96270
  store i8 4, ptr %i.bjj, align 2, !tbaa !218
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 96271
  store i8 4, ptr %i.bjk, align 1, !tbaa !218
  %i.bjl = getelementptr inbounds nuw i8, ptr %0, i64 96272
  store i8 4, ptr %i.bjl, align 8, !tbaa !218
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 96084
  store i8 2, ptr %i.bjm, align 4, !tbaa !218
  %i.bjn = getelementptr inbounds nuw i8, ptr %0, i64 96026
  store i8 4, ptr %i.bjn, align 2, !tbaa !218
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 96029
  store i8 4, ptr %i.bjo, align 1, !tbaa !218
  %i.bjp = getelementptr inbounds nuw i8, ptr %0, i64 95491
  store i8 4, ptr %i.bjp, align 1, !tbaa !218
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 95545
  store i8 4, ptr %i.bjq, align 1, !tbaa !218
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 95548
  store i8 4, ptr %i.bjr, align 4, !tbaa !218
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 95556
  store i8 4, ptr %i.bjs, align 4, !tbaa !218
  %i.bjt = getelementptr inbounds nuw i8, ptr %0, i64 95733
  store i8 4, ptr %i.bjt, align 1, !tbaa !218
  %i.bju = getelementptr inbounds nuw i8, ptr %0, i64 95734
  store i8 4, ptr %i.bju, align 2, !tbaa !218
  %i.bjv = getelementptr inbounds nuw i8, ptr %0, i64 95735
  store i8 4, ptr %i.bjv, align 1, !tbaa !218
  %i.bjw = getelementptr inbounds nuw i8, ptr %0, i64 95547
  store i8 2, ptr %i.bjw, align 1, !tbaa !218
  %i.bjx = getelementptr inbounds nuw i8, ptr %0, i64 95489
  store i8 4, ptr %i.bjx, align 1, !tbaa !218
  %i.bjy = getelementptr inbounds nuw i8, ptr %0, i64 95492
  store i8 4, ptr %i.bjy, align 4, !tbaa !218
  %i.bjz = getelementptr inbounds nuw i8, ptr %0, i64 95566
  store i8 4, ptr %i.bjz, align 2, !tbaa !218
  %i.bka = getelementptr inbounds nuw i8, ptr %0, i64 95567
  store i8 4, ptr %i.bka, align 1, !tbaa !218
  %i.bkb = getelementptr inbounds nuw i8, ptr %0, i64 95560
  store i8 4, ptr %i.bkb, align 8, !tbaa !218
  %i.bkc = getelementptr inbounds nuw i8, ptr %0, i64 95561
  store i8 4, ptr %i.bkc, align 1, !tbaa !218
  %i.bkd = getelementptr inbounds nuw i8, ptr %0, i64 94954
  store i8 4, ptr %i.bkd, align 2, !tbaa !218
  %i.bke = getelementptr inbounds nuw i8, ptr %0, i64 95008
  store i8 4, ptr %i.bke, align 8, !tbaa !218
  %i.bkf = getelementptr inbounds nuw i8, ptr %0, i64 95011
  store i8 4, ptr %i.bkf, align 1, !tbaa !218
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 95019
  store i8 4, ptr %i.bkg, align 1, !tbaa !218
  %i.bkh = getelementptr inbounds nuw i8, ptr %0, i64 95196
  store i8 4, ptr %i.bkh, align 4, !tbaa !218
  %i.bki = getelementptr inbounds nuw i8, ptr %0, i64 95197
  store i8 4, ptr %i.bki, align 1, !tbaa !218
  %i.bkj = getelementptr inbounds nuw i8, ptr %0, i64 95198
  store i8 4, ptr %i.bkj, align 2, !tbaa !218
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 95010
  store i8 2, ptr %i.bkk, align 2, !tbaa !218
  %i.bkl = getelementptr inbounds nuw i8, ptr %0, i64 94952
  store i8 4, ptr %i.bkl, align 8, !tbaa !218
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 94955
  store i8 4, ptr %i.bkm, align 1, !tbaa !218
  %i.bkn = getelementptr inbounds nuw i8, ptr %0, i64 95029
  store i8 4, ptr %i.bkn, align 1, !tbaa !218
  %i.bko = getelementptr inbounds nuw i8, ptr %0, i64 95030
  store i8 4, ptr %i.bko, align 2, !tbaa !218
  %i.bkp = getelementptr inbounds nuw i8, ptr %0, i64 95023
  store i8 4, ptr %i.bkp, align 1, !tbaa !218
  %i.bkq = getelementptr inbounds nuw i8, ptr %0, i64 95024
  store i8 4, ptr %i.bkq, align 8, !tbaa !218
  %i.bkr = getelementptr inbounds nuw i8, ptr %0, i64 94417
  store i8 4, ptr %i.bkr, align 1, !tbaa !218
  %i.bks = getelementptr inbounds nuw i8, ptr %0, i64 94471
  store i8 4, ptr %i.bks, align 1, !tbaa !218
  %i.bkt = getelementptr inbounds nuw i8, ptr %0, i64 94474
  store i8 4, ptr %i.bkt, align 2, !tbaa !218
  %i.bku = getelementptr inbounds nuw i8, ptr %0, i64 94482
  store i8 4, ptr %i.bku, align 2, !tbaa !218
  %i.bkv = getelementptr inbounds nuw i8, ptr %0, i64 94659
  store i8 4, ptr %i.bkv, align 1, !tbaa !218
  %i.bkw = getelementptr inbounds nuw i8, ptr %0, i64 94660
  store i8 4, ptr %i.bkw, align 4, !tbaa !218
  %i.bkx = getelementptr inbounds nuw i8, ptr %0, i64 94661
  store i8 4, ptr %i.bkx, align 1, !tbaa !218
  %i.bky = getelementptr inbounds nuw i8, ptr %0, i64 94473
  store i8 2, ptr %i.bky, align 1, !tbaa !218
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 94415
  store i8 4, ptr %i.bkz, align 1, !tbaa !218
  %i.bla = getelementptr inbounds nuw i8, ptr %0, i64 94418
  store i8 4, ptr %i.bla, align 2, !tbaa !218
  %i.blb = getelementptr inbounds nuw i8, ptr %0, i64 94492
  store i8 4, ptr %i.blb, align 4, !tbaa !218
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 94493
  store i8 4, ptr %i.blc, align 1, !tbaa !218
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 94486
  store i8 4, ptr %i.bld, align 2, !tbaa !218
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 94487
  store i8 4, ptr %i.ble, align 1, !tbaa !218
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 93880
  store i8 4, ptr %i.blf, align 8, !tbaa !218
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 93934
  store i8 4, ptr %i.blg, align 2, !tbaa !218
  %i.blh = getelementptr inbounds nuw i8, ptr %0, i64 93937
  store i8 4, ptr %i.blh, align 1, !tbaa !218
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 93945
  store i8 4, ptr %i.bli, align 1, !tbaa !218
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 94122
  store i8 4, ptr %i.blj, align 2, !tbaa !218
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 94123
  store i8 4, ptr %i.blk, align 1, !tbaa !218
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 94124
  store i8 4, ptr %i.bll, align 4, !tbaa !218
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 93936
  store i8 2, ptr %i.blm, align 8, !tbaa !218
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 93878
  store i8 4, ptr %i.bln, align 2, !tbaa !218
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 93881
  store i8 4, ptr %i.blo, align 1, !tbaa !218
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 93955
  store i8 4, ptr %i.blp, align 1, !tbaa !218
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 93956
  store i8 4, ptr %i.blq, align 4, !tbaa !218
  %i.blr = getelementptr inbounds nuw i8, ptr %0, i64 93949
  store i8 4, ptr %i.blr, align 1, !tbaa !218
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 93950
  store i8 4, ptr %i.bls, align 2, !tbaa !218
  %i.blt = getelementptr inbounds nuw i8, ptr %0, i64 64564
  store i8 4, ptr %i.blt, align 4, !tbaa !218
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 64565
  store i8 4, ptr %i.blu, align 1, !tbaa !218
  %i.blv = getelementptr inbounds nuw i8, ptr %0, i64 66712
  store i8 4, ptr %i.blv, align 8, !tbaa !218
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 66713
  store i8 4, ptr %i.blw, align 1, !tbaa !218
  %i.blx = getelementptr inbounds nuw i8, ptr %0, i64 72619
  store i8 4, ptr %i.blx, align 1, !tbaa !218
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 72620
  store i8 4, ptr %i.bly, align 4, !tbaa !218
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 73156
  store i8 4, ptr %i.blz, align 4, !tbaa !218
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 73157
  store i8 4, ptr %i.bma, align 1, !tbaa !218
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 78526
  store i8 4, ptr %i.bmb, align 2, !tbaa !218
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 78527
  store i8 4, ptr %i.bmc, align 1, !tbaa !218
  %i.bmd = getelementptr inbounds nuw i8, ptr %0, i64 79600
  store i8 4, ptr %i.bmd, align 8, !tbaa !218
  %i.bme = getelementptr inbounds nuw i8, ptr %0, i64 79601
  store i8 4, ptr %i.bme, align 1, !tbaa !218
  %i.bmf = getelementptr inbounds nuw i8, ptr %0, i64 88729
  store i8 4, ptr %i.bmf, align 1, !tbaa !218
  %i.bmg = getelementptr inbounds nuw i8, ptr %0, i64 88730
  store i8 4, ptr %i.bmg, align 2, !tbaa !218
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 89266
  store i8 4, ptr %i.bmh, align 2, !tbaa !218
  %i.bmi = getelementptr inbounds nuw i8, ptr %0, i64 89267
  store i8 4, ptr %i.bmi, align 1, !tbaa !218
  %i.bmj = getelementptr inbounds nuw i8, ptr %0, i64 31807
  store i8 4, ptr %i.bmj, align 1, !tbaa !218
  %i.bmk = getelementptr inbounds nuw i8, ptr %0, i64 31808
  store i8 4, ptr %i.bmk, align 8, !tbaa !218
  %i.bml = getelementptr inbounds nuw i8, ptr %0, i64 32344
  store i8 4, ptr %i.bml, align 8, !tbaa !218
  %i.bmm = getelementptr inbounds nuw i8, ptr %0, i64 32345
  store i8 4, ptr %i.bmm, align 1, !tbaa !218
  %i.bmn = getelementptr inbounds nuw i8, ptr %0, i64 37714
  store i8 4, ptr %i.bmn, align 2, !tbaa !218
  %i.bmo = getelementptr inbounds nuw i8, ptr %0, i64 37715
  store i8 4, ptr %i.bmo, align 1, !tbaa !218
  %i.bmp = getelementptr inbounds nuw i8, ptr %0, i64 39862
  store i8 4, ptr %i.bmp, align 2, !tbaa !218
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 39863
  store i8 4, ptr %i.bmq, align 1, !tbaa !218
  %i.bmr = getelementptr inbounds nuw i8, ptr %0, i64 44695
  store i8 4, ptr %i.bmr, align 1, !tbaa !218
  %i.bms = getelementptr inbounds nuw i8, ptr %0, i64 44696
  store i8 4, ptr %i.bms, align 8, !tbaa !218
  %i.bmt = getelementptr inbounds nuw i8, ptr %0, i64 45769
  store i8 4, ptr %i.bmt, align 1, !tbaa !218
  %i.bmu = getelementptr inbounds nuw i8, ptr %0, i64 45770
  store i8 4, ptr %i.bmu, align 2, !tbaa !218
  %i.bmv = getelementptr inbounds nuw i8, ptr %0, i64 56509
  store i8 4, ptr %i.bmv, align 1, !tbaa !218
  %i.bmw = getelementptr inbounds nuw i8, ptr %0, i64 56510
  store i8 4, ptr %i.bmw, align 2, !tbaa !218
  %i.bmx = getelementptr inbounds nuw i8, ptr %0, i64 57046
  store i8 4, ptr %i.bmx, align 2, !tbaa !218
  %i.bmy = getelementptr inbounds nuw i8, ptr %0, i64 57047
  store i8 4, ptr %i.bmy, align 1, !tbaa !218
  br label %iter.check

iter.check:                                       ; preds = %.preheader3215, %iter.check
  %.sroa.02081.03287 = phi i64 [ 163, %.preheader3215 ], [ %i.bof, %iter.check ] ; 3 uses
  %i.bmz = getelementptr inbounds nuw [264 x i8], ptr %i.adh, i64 %.sroa.02081.03287 ; 8 uses
  %i.bna = getelementptr inbounds nuw [528 x i8], ptr %i.zo, i64 %.sroa.02081.03287 ; 8 uses
  %86 = getelementptr inbounds nuw i8, ptr %i.bmz, i64 163
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmz, i64 171
  store <8 x i8> splat (i8 2), ptr %86, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.bnb, align 1, !tbaa !218
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bna, i64 326 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 342 ; 2 uses
  %wide.load3900 = load <8 x i16>, ptr %i.bnc, align 2, !tbaa !228
  %wide.load3901 = load <8 x i16>, ptr %i.bnd, align 2, !tbaa !228
  %i.bne = and <8 x i16> %wide.load3900, splat (i16 15)
  %i.bnf = and <8 x i16> %wide.load3901, splat (i16 15)
  %i.bng = or disjoint <8 x i16> %i.bne, splat (i16 8736)
  %i.bnh = or disjoint <8 x i16> %i.bnf, splat (i16 8736)
  store <8 x i16> %i.bng, ptr %i.bnc, align 2, !tbaa !228
  store <8 x i16> %i.bnh, ptr %i.bnd, align 2, !tbaa !228
  %87 = getelementptr inbounds nuw i8, ptr %i.bmz, i64 179
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bmz, i64 187
  store <8 x i8> splat (i8 2), ptr %87, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.bni, align 1, !tbaa !218
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bna, i64 358 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bna, i64 374 ; 2 uses
  %wide.load3900.1 = load <8 x i16>, ptr %i.bnj, align 2, !tbaa !228
  %wide.load3901.1 = load <8 x i16>, ptr %i.bnk, align 2, !tbaa !228
  %i.bnl = and <8 x i16> %wide.load3900.1, splat (i16 15)
  %i.bnm = and <8 x i16> %wide.load3901.1, splat (i16 15)
  %i.bnn = or disjoint <8 x i16> %i.bnl, splat (i16 8736)
  %i.bno = or disjoint <8 x i16> %i.bnm, splat (i16 8736)
  store <8 x i16> %i.bnn, ptr %i.bnj, align 2, !tbaa !228
  store <8 x i16> %i.bno, ptr %i.bnk, align 2, !tbaa !228
  %88 = getelementptr inbounds nuw i8, ptr %i.bmz, i64 195
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bmz, i64 203
  store <8 x i8> splat (i8 2), ptr %88, align 1, !tbaa !218
  store <8 x i8> splat (i8 2), ptr %i.bnp, align 1, !tbaa !218
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bna, i64 390 ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bna, i64 406 ; 2 uses
  %wide.load3900.2 = load <8 x i16>, ptr %i.bnq, align 2, !tbaa !228
  %wide.load3901.2 = load <8 x i16>, ptr %i.bnr, align 2, !tbaa !228
  %i.bns = and <8 x i16> %wide.load3900.2, splat (i16 15)
  %i.bnt = and <8 x i16> %wide.load3901.2, splat (i16 15)
  %i.bnu = or disjoint <8 x i16> %i.bns, splat (i16 8736)
  %i.bnv = or disjoint <8 x i16> %i.bnt, splat (i16 8736)
  store <8 x i16> %i.bnu, ptr %i.bnq, align 2, !tbaa !228
  store <8 x i16> %i.bnv, ptr %i.bnr, align 2, !tbaa !228
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bmz, i64 211
  store <4 x i8> splat (i8 2), ptr %i.bnw, align 1, !tbaa !218
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bna, i64 422 ; 2 uses
  %wide.load3905 = load <4 x i16>, ptr %i.bnx, align 2, !tbaa !228
  %i.bny = and <4 x i16> %wide.load3905, splat (i16 15)
  %i.bnz = or disjoint <4 x i16> %i.bny, splat (i16 8736)
  store <4 x i16> %i.bnz, ptr %i.bnx, align 2, !tbaa !228
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bmz, i64 215
  store i8 2, ptr %i.boa, align 1, !tbaa !218
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bna, i64 430 ; 2 uses
  %i.boc = load i16, ptr %i.bob, align 2, !tbaa !228
  %i.bod = and i16 %i.boc, 15
  %i.boe = or disjoint i16 %i.bod, 8736
  store i16 %i.boe, ptr %i.bob, align 2, !tbaa !228
  %i.bof = add nuw nsw i64 %.sroa.02081.03287, 1  ; 2 uses
  %.not3206 = icmp eq i64 %i.bof, 216
  br i1 %.not3206, label %bb.eo, label %iter.check

bb.eo:                                            ; preds = %iter.check
  %i.bog = getelementptr inbounds nuw i8, ptr %0, i64 477067
  store i8 0, ptr %i.bog, align 1, !tbaa !218
  %i.boh = getelementptr inbounds nuw i8, ptr %0, i64 477074
  store i8 0, ptr %i.boh, align 2, !tbaa !218
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 477080
  store i8 0, ptr %i.boi, align 8, !tbaa !218
  %i.boj = getelementptr inbounds nuw i8, ptr %0, i64 475748
  store i8 0, ptr %i.boj, align 4, !tbaa !218
  %i.bok = getelementptr inbounds nuw i8, ptr %0, i64 475755
  store i8 0, ptr %i.bok, align 1, !tbaa !218
  %i.bol = getelementptr inbounds nuw i8, ptr %0, i64 474429
  store i8 0, ptr %i.bol, align 1, !tbaa !218
  %i.bom = getelementptr inbounds nuw i8, ptr %0, i64 248614 ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %0, i64 248628 ; 2 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %0, i64 248640 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %0, i64 245976 ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %0, i64 245990 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %0, i64 243338 ; 2 uses
  %.promoted = load i16, ptr %i.bom, align 2, !tbaa !228
  %.promoted3288 = load i16, ptr %i.bon, align 4, !tbaa !228
  %.promoted3290 = load i16, ptr %i.boo, align 8, !tbaa !228
  %.promoted3292 = load i16, ptr %i.bop, align 8, !tbaa !228
  %.promoted3294 = load i16, ptr %i.boq, align 2, !tbaa !228
  %.promoted3296 = load i16, ptr %i.bor, align 2, !tbaa !228
  %i.bos = and i16 %.promoted, 15
  %i.bot = and i16 %.promoted3288, 15
  %i.bou = and i16 %.promoted3290, 15
  %i.bov = and i16 %.promoted3292, 15
  %i.bow = and i16 %.promoted3294, 15
  %i.box = and i16 %.promoted3296, 15
  store i16 %i.bos, ptr %i.bom, align 2, !tbaa !228
  store i16 %i.bot, ptr %i.bon, align 4, !tbaa !228
  store i16 %i.bou, ptr %i.boo, align 8, !tbaa !228
  store i16 %i.bov, ptr %i.bop, align 8, !tbaa !228
  store i16 %i.bow, ptr %i.boq, align 2, !tbaa !228
  store i16 %i.box, ptr %i.bor, align 2, !tbaa !228
  %i.boy = getelementptr inbounds nuw i8, ptr %0, i64 451593
  store i8 4, ptr %i.boy, align 1, !tbaa !218
  %i.boz = getelementptr inbounds nuw i8, ptr %0, i64 451608
  store i8 4, ptr %i.boz, align 8, !tbaa !218
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 445521
  store i8 4, ptr %i.bpa, align 1, !tbaa !218
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 445536
  store i8 4, ptr %i.bpb, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store <4 x i16> <i16 196, i16 197, i16 198, i16 208>, ptr %i.a, align 8, !tbaa !227
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 209, ptr %i.bpc, align 8, !tbaa !227
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 213, ptr %i.bpd, align 2, !tbaa !227
  %i.bpe = getelementptr inbounds nuw i8, ptr %0, i64 499072
  br label %.lr.ph.i1317

bb.ep:                                            ; preds = %.lr.ph.i1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 114906
  store i8 4, ptr %i.bpf, align 2, !tbaa !218
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 114823
  store i8 4, ptr %i.bpg, align 1, !tbaa !218
  %i.bph = getelementptr inbounds nuw i8, ptr %0, i64 114919
  store i8 4, ptr %i.bph, align 1, !tbaa !218
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 114816
  store i8 4, ptr %i.bpi, align 8, !tbaa !218
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 114918
  store i8 4, ptr %i.bpj, align 2, !tbaa !218
  %i.bpk = getelementptr inbounds nuw i8, ptr %0, i64 114905
  store i8 4, ptr %i.bpk, align 1, !tbaa !218
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 114902
  store i8 4, ptr %i.bpl, align 2, !tbaa !218
  %i.bpm = getelementptr inbounds nuw i8, ptr %0, i64 115042
  store i8 4, ptr %i.bpm, align 2, !tbaa !218
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 114824
  store i8 4, ptr %i.bpn, align 8, !tbaa !218
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 114877
  store i8 4, ptr %i.bpo, align 1, !tbaa !218
  %i.bpp = getelementptr inbounds nuw i8, ptr %0, i64 114879
  store i8 2, ptr %i.bpp, align 1, !tbaa !218
  %i.bpq = getelementptr inbounds nuw i8, ptr %0, i64 114833
  store i8 0, ptr %i.bpq, align 1, !tbaa !218
  %i.bpr = getelementptr inbounds nuw i8, ptr %0, i64 114826
  store i8 4, ptr %i.bpr, align 2, !tbaa !218
  %i.bps = getelementptr inbounds nuw i8, ptr %0, i64 114827
  store i8 4, ptr %i.bps, align 1, !tbaa !218
  %i.bpt = getelementptr inbounds nuw i8, ptr %0, i64 114830
  store i8 4, ptr %i.bpt, align 2, !tbaa !218
  %i.bpu = getelementptr inbounds nuw i8, ptr %0, i64 114831
  store i8 4, ptr %i.bpu, align 1, !tbaa !218
  %i.bpv = getelementptr inbounds nuw i8, ptr %0, i64 115443
  store i8 4, ptr %i.bpv, align 1, !tbaa !218
  %i.bpw = getelementptr inbounds nuw i8, ptr %0, i64 115360
  store i8 4, ptr %i.bpw, align 8, !tbaa !218
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 115456
  store i8 4, ptr %i.bpx, align 8, !tbaa !218
  %i.bpy = getelementptr inbounds nuw i8, ptr %0, i64 115353
  store i8 4, ptr %i.bpy, align 1, !tbaa !218
  %i.bpz = getelementptr inbounds nuw i8, ptr %0, i64 115455
  store i8 4, ptr %i.bpz, align 1, !tbaa !218
  %i.bqa = getelementptr inbounds nuw i8, ptr %0, i64 115442
  store i8 4, ptr %i.bqa, align 2, !tbaa !218
  %i.bqb = getelementptr inbounds nuw i8, ptr %0, i64 115439
  store i8 4, ptr %i.bqb, align 1, !tbaa !218
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 115579
  store i8 4, ptr %i.bqc, align 1, !tbaa !218
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 115361
  store i8 4, ptr %i.bqd, align 1, !tbaa !218
  %i.bqe = getelementptr inbounds nuw i8, ptr %0, i64 115414
  store i8 4, ptr %i.bqe, align 2, !tbaa !218
  %i.bqf = getelementptr inbounds nuw i8, ptr %0, i64 115416
  store i8 2, ptr %i.bqf, align 8, !tbaa !218
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 115370
  store i8 0, ptr %i.bqg, align 2, !tbaa !218
  %i.bqh = getelementptr inbounds nuw i8, ptr %0, i64 115363
  store i8 4, ptr %i.bqh, align 1, !tbaa !218
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 115364
  store i8 4, ptr %i.bqi, align 4, !tbaa !218
  %i.bqj = getelementptr inbounds nuw i8, ptr %0, i64 115367
  store i8 4, ptr %i.bqj, align 1, !tbaa !218
  %i.bqk = getelementptr inbounds nuw i8, ptr %0, i64 115368
  store i8 4, ptr %i.bqk, align 8, !tbaa !218
  %i.bql = getelementptr inbounds nuw i8, ptr %0, i64 115980
  store i8 4, ptr %i.bql, align 4, !tbaa !218
  %i.bqm = getelementptr inbounds nuw i8, ptr %0, i64 115897
  store i8 4, ptr %i.bqm, align 1, !tbaa !218
  %i.bqn = getelementptr inbounds nuw i8, ptr %0, i64 115993
  store i8 4, ptr %i.bqn, align 1, !tbaa !218
  %i.bqo = getelementptr inbounds nuw i8, ptr %0, i64 115890
  store i8 4, ptr %i.bqo, align 2, !tbaa !218
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 115992
  store i8 4, ptr %i.bqp, align 8, !tbaa !218
  %i.bqq = getelementptr inbounds nuw i8, ptr %0, i64 115979
  store i8 4, ptr %i.bqq, align 1, !tbaa !218
  %i.bqr = getelementptr inbounds nuw i8, ptr %0, i64 115976
  store i8 4, ptr %i.bqr, align 8, !tbaa !218
  %i.bqs = getelementptr inbounds nuw i8, ptr %0, i64 116116
  store i8 4, ptr %i.bqs, align 4, !tbaa !218
  %i.bqt = getelementptr inbounds nuw i8, ptr %0, i64 115898
  store i8 4, ptr %i.bqt, align 2, !tbaa !218
  %i.bqu = getelementptr inbounds nuw i8, ptr %0, i64 115951
  store i8 4, ptr %i.bqu, align 1, !tbaa !218
  %i.bqv = getelementptr inbounds nuw i8, ptr %0, i64 115953
  store i8 2, ptr %i.bqv, align 1, !tbaa !218
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 115907
  store i8 0, ptr %i.bqw, align 1, !tbaa !218
  %i.bqx = getelementptr inbounds nuw i8, ptr %0, i64 115900
  store i8 4, ptr %i.bqx, align 4, !tbaa !218
  %i.bqy = getelementptr inbounds nuw i8, ptr %0, i64 115901
  store i8 4, ptr %i.bqy, align 1, !tbaa !218
  %i.bqz = getelementptr inbounds nuw i8, ptr %0, i64 115904
  store i8 4, ptr %i.bqz, align 8, !tbaa !218
  %i.bra = getelementptr inbounds nuw i8, ptr %0, i64 115905
  store i8 4, ptr %i.bra, align 1, !tbaa !218
  %i.brb = load ptr, ptr %i.c, align 8, !tbaa !94 ; 8 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 523
  %i.brd = load i8, ptr %i.brc, align 1, !tbaa !353, !range !58, !noundef !59
  %i.bre = trunc nuw i8 %i.brd to i1
  br i1 %i.bre, label %bb.eq, label %_ZNK4llvm16AArch64Subtarget32isNonStreamingSVEorSME2AvailableEv.exit.thread3147

.lr.ph.i1317:                                     ; preds = %bb.eo, %.lr.ph.i1317
  %.0868.idx3299 = phi i64 [ 0, %bb.eo ], [ %.0868.add, %.lr.ph.i1317 ] ; 2 uses
  %.0868.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0868.idx3299
  %i.brf = load i16, ptr %.0868.ptr, align 2, !tbaa !227 ; 2 uses
  %i.brg = zext i16 %i.brf to i64
  %i.brh = getelementptr inbounds nuw [537 x i8], ptr %i.mn, i64 %i.brg ; 29 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 248
  store i8 4, ptr %i.bri, align 1, !tbaa !218
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brh, i64 165
  store i8 4, ptr %i.brj, align 1, !tbaa !218
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brh, i64 166
  store i8 4, ptr %i.brk, align 1, !tbaa !218
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brh, i64 384
  store i8 4, ptr %i.brl, align 1, !tbaa !218
end_hunk_2

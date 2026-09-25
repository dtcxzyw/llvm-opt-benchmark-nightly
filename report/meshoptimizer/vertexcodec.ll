Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@meshopt_encodeVertexBufferLevel:bb.a
  %i.afq = zext <2 x i1> %i.afp to <2 x i64>
  %i.afr = trunc <2 x i64> %strided.vec304 to <2 x i8> ; 3 uses
  %i.afs = icmp ne <2 x i8> %i.afr, zeroinitializer
  %i.aft = zext <2 x i1> %i.afs to <2 x i64>
  %i.afu = lshr <2 x i64> %strided.vec304, splat (i64 8)
  %i.afv = trunc <2 x i64> %i.afu to <2 x i8>     ; 3 uses
  %i.afw = icmp ne <2 x i8> %i.afv, zeroinitializer
  %i.afx = zext <2 x i1> %i.afw to <2 x i64>
  %i.afy = lshr <2 x i64> %strided.vec304, splat (i64 16)
  %i.afz = trunc <2 x i64> %i.afy to <2 x i8>     ; 3 uses
  %i.aga = icmp ne <2 x i8> %i.afz, zeroinitializer
  %i.agb = zext <2 x i1> %i.aga to <2 x i64>
  %i.agc = lshr <2 x i64> %strided.vec304, splat (i64 24)
  %i.agd = trunc <2 x i64> %i.agc to <2 x i8>     ; 3 uses
  %i.age = icmp ne <2 x i8> %i.agd, zeroinitializer
  %i.agf = zext <2 x i1> %i.age to <2 x i64>
  %i.agg = lshr <2 x i64> %strided.vec304, splat (i64 32)
  %i.agh = trunc <2 x i64> %i.agg to <2 x i8>     ; 3 uses
  %i.agi = icmp ne <2 x i8> %i.agh, zeroinitializer
  %i.agj = zext <2 x i1> %i.agi to <2 x i64>
  %i.agk = lshr <2 x i64> %strided.vec304, splat (i64 40)
  %i.agl = trunc <2 x i64> %i.agk to <2 x i8>     ; 3 uses
  %i.agm = icmp ne <2 x i8> %i.agl, zeroinitializer
  %i.agn = zext <2 x i1> %i.agm to <2 x i64>
  %i.ago = lshr <2 x i64> %strided.vec304, splat (i64 48)
  %i.agp = trunc <2 x i64> %i.ago to <2 x i8>     ; 3 uses
  %i.agq = icmp ne <2 x i8> %i.agp, zeroinitializer
  %i.agr = zext <2 x i1> %i.agq to <2 x i64>
  %i.ags = icmp ugt <2 x i64> %strided.vec304, splat (i64 72057594037927935)
  %i.agt = zext <2 x i1> %i.ags to <2 x i64>
  %i.agu = add nuw nsw <2 x i64> %i.aeq, %i.afq
  %i.agv = add nuw nsw <2 x i64> %i.agu, %i.agt
  %i.agw = add nuw nsw <2 x i64> %i.agv, %i.aeu
  %i.agx = add nuw nsw <2 x i64> %i.agw, %i.aey
  %i.agy = add nuw nsw <2 x i64> %i.agx, %i.afc
  %i.agz = add nuw nsw <2 x i64> %i.agy, %i.afg
  %i.aha = add nuw nsw <2 x i64> %i.agz, %i.afk
  %i.ahb = add nuw nsw <2 x i64> %i.aha, %i.afo
  %i.ahc = add nuw nsw <2 x i64> %i.ahb, %i.aft
  %i.ahd = add nuw nsw <2 x i64> %i.ahc, %i.afx
  %i.ahe = add nuw nsw <2 x i64> %i.ahd, %i.agb
  %i.ahf = add nuw nsw <2 x i64> %i.ahe, %i.agf
  %i.ahg = add nuw nsw <2 x i64> %i.ahf, %i.agj
  %i.ahh = add nuw nsw <2 x i64> %i.ahg, %i.agn
  %i.ahi = add nuw nsw <2 x i64> %i.ahh, %i.agr
  %i.ahj = icmp ugt <2 x i8> %i.aeo, splat (i8 2)
  %i.ahk = select <2 x i1> %i.ahj, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.ahl = icmp ugt <2 x i8> %i.aes, splat (i8 2)
  %i.ahm = zext <2 x i1> %i.ahl to <2 x i64>
  %i.ahn = icmp ugt <2 x i8> %i.aew, splat (i8 2)
  %i.aho = zext <2 x i1> %i.ahn to <2 x i64>
  %i.ahp = icmp ugt <2 x i8> %i.afa, splat (i8 2)
  %i.ahq = zext <2 x i1> %i.ahp to <2 x i64>
  %i.ahr = icmp ugt <2 x i8> %i.afe, splat (i8 2)
  %i.ahs = zext <2 x i1> %i.ahr to <2 x i64>
  %i.aht = icmp ugt <2 x i8> %i.afi, splat (i8 2)
  %i.ahu = zext <2 x i1> %i.aht to <2 x i64>
  %i.ahv = icmp ugt <2 x i8> %i.afm, splat (i8 2)
  %i.ahw = zext <2 x i1> %i.ahv to <2 x i64>
  %i.ahx = icmp ugt <2 x i64> %strided.vec, splat (i64 216172782113783807)
  %i.ahy = zext <2 x i1> %i.ahx to <2 x i64>
  %i.ahz = icmp ugt <2 x i8> %i.afr, splat (i8 2)
  %i.aia = zext <2 x i1> %i.ahz to <2 x i64>
  %i.aib = icmp ugt <2 x i8> %i.afv, splat (i8 2)
  %i.aic = zext <2 x i1> %i.aib to <2 x i64>
  %i.aid = icmp ugt <2 x i8> %i.afz, splat (i8 2)
  %i.aie = zext <2 x i1> %i.aid to <2 x i64>
  %i.aif = icmp ugt <2 x i8> %i.agd, splat (i8 2)
  %i.aig = zext <2 x i1> %i.aif to <2 x i64>
  %i.aih = icmp ugt <2 x i8> %i.agh, splat (i8 2)
  %i.aii = zext <2 x i1> %i.aih to <2 x i64>
  %i.aij = icmp ugt <2 x i8> %i.agl, splat (i8 2)
  %i.aik = zext <2 x i1> %i.aij to <2 x i64>
  %i.ail = icmp ugt <2 x i8> %i.agp, splat (i8 2)
  %i.aim = zext <2 x i1> %i.ail to <2 x i64>
  %i.ain = icmp ugt <2 x i64> %strided.vec304, splat (i64 216172782113783807)
  %i.aio = zext <2 x i1> %i.ain to <2 x i64>
  %i.aip = add nuw nsw <2 x i64> %i.ahk, %i.ahy
  %i.aiq = add nuw nsw <2 x i64> %i.aip, %i.aio
  %i.air = add nuw nsw <2 x i64> %i.aiq, %i.ahm
  %i.ais = add nuw nsw <2 x i64> %i.air, %i.aho
  %i.ait = add nuw nsw <2 x i64> %i.ais, %i.ahq
  %i.aiu = add nuw nsw <2 x i64> %i.ait, %i.ahs
  %i.aiv = add nuw nsw <2 x i64> %i.aiu, %i.ahu
  %i.aiw = add nuw nsw <2 x i64> %i.aiv, %i.ahw
  %i.aix = add nuw nsw <2 x i64> %i.aiw, %i.aia
  %i.aiy = add nuw nsw <2 x i64> %i.aix, %i.aic
  %i.aiz = add nuw nsw <2 x i64> %i.aiy, %i.aie
  %i.aja = add nuw nsw <2 x i64> %i.aiz, %i.aig
  %i.ajb = add nuw nsw <2 x i64> %i.aja, %i.aii
  %i.ajc = add nuw nsw <2 x i64> %i.ajb, %i.aik
  %i.ajd = add nuw nsw <2 x i64> %i.ajc, %i.aim
  %i.aje = icmp ugt <2 x i8> %i.aeo, splat (i8 14)
  %i.ajf = select <2 x i1> %i.aje, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.ajg = icmp ugt <2 x i8> %i.aes, splat (i8 14)
  %i.ajh = zext <2 x i1> %i.ajg to <2 x i64>
  %i.aji = icmp ugt <2 x i8> %i.aew, splat (i8 14)
  %i.ajj = zext <2 x i1> %i.aji to <2 x i64>
  %i.ajk = icmp ugt <2 x i8> %i.afa, splat (i8 14)
  %i.ajl = zext <2 x i1> %i.ajk to <2 x i64>
  %i.ajm = icmp ugt <2 x i8> %i.afe, splat (i8 14)
  %i.ajn = zext <2 x i1> %i.ajm to <2 x i64>
  %i.ajo = icmp ugt <2 x i8> %i.afi, splat (i8 14)
  %i.ajp = zext <2 x i1> %i.ajo to <2 x i64>
  %i.ajq = icmp ugt <2 x i8> %i.afm, splat (i8 14)
  %i.ajr = zext <2 x i1> %i.ajq to <2 x i64>
  %i.ajs = icmp ugt <2 x i64> %strided.vec, splat (i64 1080863910568919039)
  %i.ajt = zext <2 x i1> %i.ajs to <2 x i64>
  %i.aju = icmp ugt <2 x i8> %i.afr, splat (i8 14)
  %i.ajv = zext <2 x i1> %i.aju to <2 x i64>
  %i.ajw = icmp ugt <2 x i8> %i.afv, splat (i8 14)
  %i.ajx = zext <2 x i1> %i.ajw to <2 x i64>
  %i.ajy = icmp ugt <2 x i8> %i.afz, splat (i8 14)
  %i.ajz = zext <2 x i1> %i.ajy to <2 x i64>
  %i.aka = icmp ugt <2 x i8> %i.agd, splat (i8 14)
  %i.akb = zext <2 x i1> %i.aka to <2 x i64>
  %i.akc = icmp ugt <2 x i8> %i.agh, splat (i8 14)
  %i.akd = zext <2 x i1> %i.akc to <2 x i64>
  %i.ake = icmp ugt <2 x i8> %i.agl, splat (i8 14)
  %i.akf = zext <2 x i1> %i.ake to <2 x i64>
  %i.akg = icmp ugt <2 x i8> %i.agp, splat (i8 14)
  %i.akh = zext <2 x i1> %i.akg to <2 x i64>
  %i.aki = icmp ugt <2 x i64> %strided.vec304, splat (i64 1080863910568919039)
  %i.akj = zext <2 x i1> %i.aki to <2 x i64>
  %i.akk = add nuw nsw <2 x i64> %i.ajf, %i.ajt
  %i.akl = add nuw nsw <2 x i64> %i.akk, %i.akj
  %i.akm = add nuw nsw <2 x i64> %i.akl, %i.ajh
  %i.akn = add nuw nsw <2 x i64> %i.akm, %i.ajj
  %i.ako = add nuw nsw <2 x i64> %i.akn, %i.ajl
  %i.akp = add nuw nsw <2 x i64> %i.ako, %i.ajn
  %i.akq = add nuw nsw <2 x i64> %i.akp, %i.ajp
  %i.akr = add nuw nsw <2 x i64> %i.akq, %i.ajr
  %i.aks = add nuw nsw <2 x i64> %i.akr, %i.ajv
  %i.akt = add nuw nsw <2 x i64> %i.aks, %i.ajx
  %i.aku = add nuw nsw <2 x i64> %i.akt, %i.ajz
  %i.akv = add nuw nsw <2 x i64> %i.aku, %i.akb
  %i.akw = add nuw nsw <2 x i64> %i.akv, %i.akd
  %i.akx = add nuw nsw <2 x i64> %i.akw, %i.akf
  %i.aky = add nuw nsw <2 x i64> %i.akx, %i.akh
  %i.akz = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ahi, <2 x i64> %i.ajd)
  %i.ala = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.akz, <2 x i64> %i.aky) ; 2 uses
  %i.alb = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ala, <2 x i64> %i.aen)
  %i.alc = add <2 x i64> %i.alb, %vec.phi302      ; 2 uses
  %i.ald = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ala, <2 x i64> splat (i64 16))
  %i.ale = add <2 x i64> %i.ald, %vec.phi303      ; 2 uses
  %index.next305 = add nuw i64 %index301, 2       ; 2 uses
  %i.alf = icmp eq i64 %index.next305, %n.vec299
  br i1 %i.alf, label %middle.block306, label %vector.body300, !llvm.loop !27

middle.block306:                                  ; preds = %vector.body300
  %i.alg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.alc) ; 2 uses
  %i.alh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ale) ; 2 uses
  br i1 %cmp.n307, label %.loopexit311, label %.preheader.i110.preheader321

.preheader.i110.preheader321:                     ; preds = %.preheader.i110.preheader, %middle.block306
  %.04351.i.i.ph = phi i64 [ %i.aad, %.preheader.i110.preheader ], [ %i.alg, %middle.block306 ]
  %.04450.i.i.ph = phi i64 [ %i.aad, %.preheader.i110.preheader ], [ %i.alh, %middle.block306 ]
  %.04549.i.i.ph = phi i64 [ 0, %.preheader.i110.preheader ], [ %i.aam, %middle.block306 ]
  br label %.preheader.i110

.thread85.i:                                      ; preds = %_ZN7meshoptL19estimateControlZeroEPKhm.exit.i.i
  %.054.tr87.i = trunc i64 %.054120.i to i8
  %i.ali = shl i8 %.054.tr87.i, 1
  %i.alj = and i8 %i.ali, 6
  %i.alk = shl nuw nsw i8 1, %i.alj
  %i.all = lshr i64 %.054120.i, 2
  %i.alm = getelementptr inbounds nuw i8, ptr %.093, i64 %i.all ; 2 uses
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !9
  %i.alo = or i8 %i.aln, %i.alk
  store i8 %i.alo, ptr %i.alm, align 1, !tbaa !9
  br label %.thread79.i

.loopexit311:                                     ; preds = %.preheader.i110, %middle.block306
  %.lcssa272 = phi i64 [ %i.alg, %middle.block306 ], [ %i.anv, %.preheader.i110 ] ; 2 uses
  %.lcssa = phi i64 [ %i.alh, %middle.block306 ], [ %i.anx, %.preheader.i110 ] ; 2 uses
  %i.alp = icmp ult i64 %.lcssa272, %i.zr
  %i.alq = icmp ult i64 %.lcssa, %i.zr
  %or.cond.i.i = select i1 %i.alp, i1 true, i1 %i.alq
  br i1 %or.cond.i.i, label %bb.z, label %.thread88.i

.thread88.i:                                      ; preds = %.loopexit311
  %.054.tr90.i = trunc i64 %.054120.i to i8
  %i.alr = shl i8 %.054.tr90.i, 1
  %i.als = and i8 %i.alr, 6
  %i.alt = shl nuw i8 3, %i.als
  %i.alu = lshr i64 %.054120.i, 2
  %i.alv = getelementptr inbounds nuw i8, ptr %.093, i64 %i.alu ; 2 uses
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !9
  %i.alx = or i8 %i.alw, %i.alt
  store i8 %i.alx, ptr %i.alv, align 1, !tbaa !9
  %i.aly = ptrtoint ptr %.058119.i to i64
  %i.alz = sub i64 %i.m, %i.aly
  %i.ama = icmp ult i64 %i.alz, %i.zr
  br i1 %i.ama, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.aa

.preheader.i110:                                  ; preds = %.preheader.i110.preheader321, %.preheader.i110
  %.04351.i.i = phi i64 [ %i.anv, %.preheader.i110 ], [ %.04351.i.i.ph, %.preheader.i110.preheader321 ]
  %.04450.i.i = phi i64 [ %i.anx, %.preheader.i110 ], [ %.04450.i.i.ph, %.preheader.i110.preheader321 ]
  %.04549.i.i = phi i64 [ %i.any, %.preheader.i110 ], [ %.04549.i.i.ph, %.preheader.i110.preheader321 ] ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04549.i.i ; 2 uses
  %.val.i47.i.i = load i64, ptr %i.amb, align 16  ; 6 uses
  %i.amc = getelementptr i8, ptr %i.amb, i64 8
  %.val15.i.i.i = load i64, ptr %i.amc, align 8   ; 6 uses
  %i.amd = or i64 %.val15.i.i.i, %.val.i47.i.i
  %i.ame = icmp ne i64 %i.amd, 0
  %i.amf = sext i1 %i.ame to i64
  %i.amg = trunc i64 %.val.i47.i.i to i8          ; 3 uses
  %.not.i.i = icmp eq i8 %i.amg, 0
  %i.amh = select i1 %.not.i.i, i64 2, i64 3
  %7 = bitcast i64 %.val.i47.i.i to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <6 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %9 = icmp ne <6 x i8> %8, zeroinitializer
  %10 = zext <6 x i1> %9 to <6 x i64>
  %i.ami = icmp ugt i64 %.val.i47.i.i, 72057594037927935
  %i.amj = zext i1 %i.ami to i64
  %11 = bitcast i64 %.val15.i.i.i to <8 x i8>
  %12 = shufflevector <8 x i8> %11, <8 x i8> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5> ; 3 uses
  %13 = icmp ne <6 x i8> %12, zeroinitializer
  %14 = zext <6 x i1> %13 to <6 x i64>
  %i.amk = lshr i64 %.val15.i.i.i, 48
  %i.aml = trunc i64 %i.amk to i8                 ; 3 uses
  %i.amm = icmp ne i8 %i.aml, 0
  %i.amn = zext i1 %i.amm to i64
  %i.amo = icmp ugt i64 %.val15.i.i.i, 72057594037927935
  %i.amp = zext i1 %i.amo to i64
  %rdx.op323 = add nuw nsw <6 x i64> %10, %14
  %15 = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op323)
  %i.amq = add nuw nsw i64 %15, %i.amj
  %i.amr = add nuw nsw i64 %i.amp, %i.amn
  %i.ams = add nuw nsw i64 %i.amq, %i.amr
  %i.amt = add nuw nsw i64 %i.ams, %i.amh
  %i.amu = icmp ugt i8 %i.amg, 2
  %i.amv = select i1 %i.amu, i64 5, i64 4
  %16 = icmp ugt <6 x i8> %8, splat (i8 2)
  %17 = zext <6 x i1> %16 to <6 x i64>
  %i.amw = icmp ugt i64 %.val.i47.i.i, 216172782113783807
  %i.amx = zext i1 %i.amw to i64
  %18 = icmp ugt <6 x i8> %12, splat (i8 2)
  %19 = zext <6 x i1> %18 to <6 x i64>
  %i.amy = icmp ugt i8 %i.aml, 2
  %i.amz = zext i1 %i.amy to i64
  %i.ana = icmp ugt i64 %.val15.i.i.i, 216172782113783807
  %i.anb = zext i1 %i.ana to i64
  %rdx.op328 = add nuw nsw <6 x i64> %17, %19
  %20 = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op328)
  %i.anc = add nuw nsw i64 %20, %i.amx
  %i.and = add nuw nsw i64 %i.anb, %i.amz
  %i.ane = add nuw nsw i64 %i.anc, %i.and
  %i.anf = add nuw nsw i64 %i.ane, %i.amv
  %i.ang = icmp ugt i8 %i.amg, 14
  %i.anh = select i1 %i.ang, i64 9, i64 8
  %21 = icmp ugt <6 x i8> %8, splat (i8 14)
  %22 = zext <6 x i1> %21 to <6 x i64>
  %i.ani = icmp ugt i64 %.val.i47.i.i, 1080863910568919039
  %i.anj = zext i1 %i.ani to i64
  %23 = icmp ugt <6 x i8> %12, splat (i8 14)
  %24 = zext <6 x i1> %23 to <6 x i64>
  %i.ank = icmp ugt i8 %i.aml, 14
  %i.anl = zext i1 %i.ank to i64
  %i.anm = icmp ugt i64 %.val15.i.i.i, 1080863910568919039
  %i.ann = zext i1 %i.anm to i64
  %rdx.op = add nuw nsw <6 x i64> %22, %24
  %25 = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %rdx.op)
  %i.ano = add nuw nsw i64 %25, %i.anj
  %i.anp = add nuw nsw i64 %i.ann, %i.anl
  %i.anq = add nuw nsw i64 %i.ano, %i.anp
  %i.anr = add nuw nsw i64 %i.anq, %i.anh
  %i.ans = tail call i64 @llvm.umin.i64(i64 %i.amt, i64 %i.anf)
  %i.ant = tail call i64 @llvm.umin.i64(i64 %i.ans, i64 %i.anr) ; 2 uses
  %i.anu = tail call i64 @llvm.umin.i64(i64 %i.ant, i64 %i.amf)
  %i.anv = add i64 %i.anu, %.04351.i.i            ; 2 uses
  %i.anw = tail call i64 @llvm.umin.i64(i64 %i.ant, i64 16)
  %i.anx = add i64 %i.anw, %.04450.i.i            ; 2 uses
  %i.any = add nuw nsw i64 %.04549.i.i, 16        ; 2 uses
  %i.anz = icmp ult i64 %i.any, %i.zv
  br i1 %i.anz, label %.preheader.i110, label %.loopexit311, !llvm.loop !28

.thread82.i:                                      ; preds = %bb.y, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109, %bb.x, %bb.w
  %.054.tr84.i = trunc i64 %.054120.i to i8
  %i.aoa = shl i8 %.054.tr84.i, 1
  %i.aob = and i8 %i.aoa, 6
  %i.aoc = shl nuw i8 2, %i.aob
  %i.aod = lshr i64 %.054120.i, 2
  %i.aoe = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aod ; 2 uses
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !9
  %i.aog = or i8 %i.aof, %i.aoc
  store i8 %i.aog, ptr %i.aoe, align 1, !tbaa !9
  br label %.thread92.i

bb.z:                                             ; preds = %.loopexit311
  %i.aoh = icmp uge i64 %.lcssa272, %.lcssa       ; 2 uses
  %i.aoi = zext i1 %i.aoh to i8
  %.054.tr.i = trunc i64 %.054120.i to i8
  %i.aoj = shl i8 %.054.tr.i, 1
  %i.aok = and i8 %i.aoj, 6
  %i.aol = shl nuw nsw i8 %i.aoi, %i.aok
  %i.aom = lshr i64 %.054120.i, 2
  %i.aon = getelementptr inbounds nuw i8, ptr %.093, i64 %i.aom ; 2 uses
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !9
  %i.aop = or i8 %i.aoo, %i.aol
  store i8 %i.aop, ptr %i.aon, align 1, !tbaa !9
  %i.aoq = zext i1 %i.aoh to i64
  br label %.thread79.i

bb.aa:                                            ; preds = %.thread88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058119.i, ptr nonnull align 16 %i.a, i64 %i.zr, i1 false)
  %i.aor = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.zr
  br label %.thread92.i

.thread79.i:                                      ; preds = %bb.z, %.thread85.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134
  %.081.i = phi i64 [ 1, %.thread85.i ], [ %i.aoq, %bb.z ], [ 0, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134 ]
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr @_ZN7meshoptL7kBitsV1E, i64 %.081.i
  %i.aot = select i1 %i.zj, ptr @_ZN7meshoptL7kBitsV0E, ptr %i.aos ; 7 uses
  %i.aou = ptrtoint ptr %.058119.i to i64
  %i.aov = sub i64 %i.m, %i.aou
  %i.aow = icmp ult i64 %i.aov, %i.aad
  br i1 %i.aow, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread79.i
  %i.aox = getelementptr inbounds nuw i8, ptr %.058119.i, i64 %i.aad ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.058119.i, i8 0, i64 %i.aad, i1 false)
  %i.aoy = ptrtoint ptr %i.aox to i64
  %i.aoz = sub i64 %i.m, %i.aoy
  %i.apa = icmp ult i64 %i.aoz, 24
  %or.cond76.i.i = select i1 %i.aaa, i1 true, i1 %i.apa
  br i1 %or.cond76.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aot, i64 12
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.ape = load i32, ptr %i.apb, align 4, !tbaa !13 ; 4 uses
  %i.apf = load i32, ptr %i.aot, align 4, !tbaa !13 ; 4 uses
  %i.apg = load i32, ptr %i.apc, align 4, !tbaa !13 ; 4 uses
  %i.aph = load i32, ptr %i.apd, align 4, !tbaa !13 ; 4 uses
  %i.api = sext i32 %i.ape to i64
  %i.apj = shl nsw i64 %i.api, 1
  %i.apk = and i64 %i.apj, 2305843009213693950
  %notmask.i.i = shl nsw i32 -1, %i.ape
  %i.apl = and i32 %notmask.i.i, 255
  %i.apm = xor i32 %i.apl, 255                    ; 3 uses
  %i.apn = sext i32 %i.apf to i64
  %i.apo = shl nsw i64 %i.apn, 1
  %i.app = and i64 %i.apo, 2305843009213693950
  %notmask.i63.i.i = shl nsw i32 -1, %i.apf
  %i.apq = and i32 %notmask.i63.i.i, 255
  %i.apr = xor i32 %i.apq, 255                    ; 3 uses
  %.not.i73.i = icmp eq i32 %i.ape, 8
  %i.aps = sext i32 %i.apg to i64
  %i.apt = shl nsw i64 %i.aps, 1
  %i.apu = and i64 %i.apt, 2305843009213693950
  %notmask.i63.1.i.i = shl nsw i32 -1, %i.apg
  %i.apv = and i32 %notmask.i63.1.i.i, 255
  %i.apw = xor i32 %i.apv, 255                    ; 3 uses
  %i.apx = sext i32 %i.aph to i64
  %i.apy = shl nsw i64 %i.apx, 1
  %i.apz = and i64 %i.apy, 2305843009213693950
  %notmask.i63.2.i.i = shl nsw i32 -1, %i.aph
  %i.aqa = and i32 %notmask.i63.2.i.i, 255
  %i.aqb = xor i32 %i.aqa, 255                    ; 3 uses
  %i.aqc = insertelement <14 x i32> poison, i32 %i.aqb, i64 0
  %i.aqd = shufflevector <14 x i32> %i.aqc, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqe = insertelement <14 x i32> poison, i32 %i.apw, i64 0
  %i.aqf = shufflevector <14 x i32> %i.aqe, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqg = insertelement <14 x i32> poison, i32 %i.apr, i64 0
  %i.aqh = shufflevector <14 x i32> %i.aqg, <14 x i32> poison, <14 x i32> zeroinitializer
  %i.aqi = insertelement <14 x i32> poison, i32 %i.apm, i64 0
  %i.aqj = shufflevector <14 x i32> %i.aqi, <14 x i32> poison, <14 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i, %.lr.ph.i.i
  %.05079.i.i = phi ptr [ %i.aox, %.lr.ph.i.i ], [ %.0.i.i.i, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 7 uses
  %.05678.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.awv, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 4 uses
  %.05777.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %i.bab, %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i ] ; 3 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.05678.i.i ; 30 uses
  switch i32 %i.ape, label %.loopexit.loopexit.i.i [
    i32 0, label %bb.ad
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i = load i64, ptr %i.aqk, align 16
  %i.aql = getelementptr i8, ptr %i.aqk, i64 8
  %.val15.i.i = load i64, ptr %i.aql, align 8
  %i.aqm = or i64 %.val15.i.i, %.val.i.i
  %i.aqn = icmp ne i64 %i.aqm, 0
  %i.aqo = sext i1 %i.aqn to i64
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ac
  %i.aqp = load i8, ptr %i.aqk, align 16, !tbaa !9
  %i.aqq = zext i8 %i.aqp to i32
  %i.aqr = icmp samesign ule i32 %i.apm, %i.aqq
  %i.aqs = zext i1 %i.aqr to i64
  %i.aqt = or disjoint i64 %i.apk, %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  %i.aqv = load <14 x i8>, ptr %i.aqu, align 1, !tbaa !9
  %i.aqw = zext <14 x i8> %i.aqv to <14 x i32>
  %i.aqx = icmp samesign ule <14 x i32> %i.aqj, %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqk, i64 15
  %i.aqz = load i8, ptr %i.aqy, align 1, !tbaa !9
  %i.ara = zext i8 %i.aqz to i32
  %i.arb = icmp samesign ule i32 %i.apm, %i.ara
  %i.arc = zext i1 %i.arb to i64
  %i.ard = bitcast <14 x i1> %i.aqx to i14
  %i.are = tail call range(i14 0, 15) i14 @llvm.ctpop.i14(i14 %i.ard)
  %i.arf = zext nneg i14 %i.are to i64
  %op.rdx317 = add nuw nsw i64 %i.arf, %i.arc
  %op.rdx318 = add nuw nsw i64 %op.rdx317, %i.aqt
  br label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i

_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i: ; preds = %.loopexit.loopexit.i.i, %bb.ad, %bb.ac
  %.013.i.i = phi i64 [ %i.aqo, %bb.ad ], [ 16, %bb.ac ], [ %op.rdx318, %.loopexit.loopexit.i.i ] ; 3 uses
  %i.arg = getelementptr i8, ptr %i.aqk, i64 8    ; 4 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1 ; 4 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqk, i64 2
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqk, i64 3
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqk, i64 5
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 6
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 7
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqk, i64 9
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqk, i64 10
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqk, i64 11
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqk, i64 12
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aqk, i64 13
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqk, i64 14
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqk, i64 15 ; 4 uses
  switch i32 %i.apf, label %.loopexit.loopexit.i.i.i [
    i32 0, label %bb.ag
    i32 8, label %_ZN7meshoptL23encodeBytesGroupMeasureEPKhi.exit.i.i
  ]

bb.ae:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05079.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.aqk, i64 16, i1 false)
  %i.arv = getelementptr inbounds nuw i8, ptr %.05079.i.i, i64 16
  br label %_ZN7meshoptL16encodeBytesGroupEPhPKhi.exit.i.i

bb.af:                                            ; preds = %bb.at
  %i.arw = sdiv i32 8, %i.bab                     ; 6 uses
  %i.arx = sext i32 %i.arw to i64                 ; 4 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.bab
  %i.ary = trunc i32 %notmask.i.i.i to i8
  %i.arz = xor i8 %i.ary, -1                      ; 23 uses
  %.not.i.i75.i = icmp eq i32 %i.arw, 0
  %i.asa = icmp eq i32 %i.bab, 1                  ; 2 uses
  br i1 %.not.i.i75.i, label %.split.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.af
  br i1 %i.asa, label %.preheader48.us.us.i.i.i.preheader, label %.preheader48.us.i.i.i.preheader

.preheader48.us.i.i.i.preheader:                  ; preds = %.split.us.i.i.i
  %i.asb = icmp eq i32 %i.arw, 1
  %unroll_iter398 = and i64 %i.arx, -2
  %i.asc = and i32 %i.arw, 1
  %lcmp.mod395.not = icmp eq i32 %i.asc, 0
  %lcmp.mod397 = trunc i32 %i.arw to i1
  br label %.preheader48.us.i.i.i

.preheader48.us.us.i.i.i.preheader:               ; preds = %.split.us.i.i.i
  %i.asd = icmp ult i32 %i.arw, 4
  br label %.preheader48.us.us.i.i.i

.preheader48.us.us.i.i.i:                         ; preds = %.preheader48.us.us.i.i.i.preheader, %._crit_edge.us.us.i.i.i
  %.04352.us.us.i.i.i = phi i64 [ %i.ath, %._crit_edge.us.us.i.i.i ], [ 0, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %.04451.us.us.i.i.i = phi ptr [ %i.atg, %._crit_edge.us.us.i.i.i ], [ %.05079.i.i, %.preheader48.us.us.i.i.i.preheader ] ; 2 uses
  %i.ase = getelementptr i8, ptr %i.aqk, i64 %.04352.us.us.i.i.i ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i:bb.a
  %i.xv = getelementptr i8, ptr %i.wx, i64 %.04354.us.i
  store i32 %i.xu, ptr %i.xv, align 1
  %i.xw = add i64 %.04354.us.i, %4
  %i.xx = add nuw nsw i64 %.04056.us.i, 1         ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.xx, %3
  br i1 %exitcond.not.i108, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.preheader.us.i, !llvm.loop !52

default.unreachable161:                           ; preds = %bb.r
  unreachable

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.2.i.new
  br i1 %lcmp.mod206.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader204

.epil.preheader204:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %._crit_edge.2.i
  %.03950.3.i.epil.init = phi i64 [ 0, %._crit_edge.2.i ], [ %i.sx, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.149.3.i.epil.init = phi i8 [ %i.sd, %._crit_edge.2.i ], [ %i.su, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.04248.3.i.epil.init = phi i64 [ 3, %._crit_edge.2.i ], [ %i.sw, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i.epil.init
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !9   ; 2 uses
  %i.ya = and i8 %i.xz, 1
  %i.yb = sub nsw i8 0, %i.ya
  %i.yc = lshr i8 %i.xz, 1
  %i.yd = xor i8 %i.yc, %i.yb
  %i.ye = add i8 %i.yd, %.149.3.i.epil.init
  %i.yf = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i.epil.init
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !9
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa: ; preds = %._crit_edge.us.i.new
  br i1 %lcmp.mod182.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %._crit_edge.us.i
  %.03953.us.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ww, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.152.us.1.i.epil.init = phi i16 [ %i.vq, %._crit_edge.us.i ], [ %i.wt, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.04251.us.1.i.epil.init = phi i64 [ 2, %._crit_edge.us.i ], [ %i.wv, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i.epil.init ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !9
  %i.yi = zext i8 %i.yh to i16                    ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yg, i64 %3
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !9
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = or disjoint i16 %i.ym, %i.yi
  %i.yo = and i16 %i.yi, 1
  %i.yp = sub nsw i16 0, %i.yo
  %i.yq = lshr i16 %i.yn, 1
  %i.yr = xor i16 %i.yq, %i.yp
  %i.ys = add i16 %i.yr, %.152.us.1.i.epil.init
  %i.yt = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i.epil.init
  store i16 %i.ys, ptr %i.yt, align 1
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit: ; preds = %.preheader.us.i, %.epil.preheader180, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %.epil.preheader204, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %bb.t, %bb.s, %.thread134
  %i.yu = add i64 %.081148, 4                     ; 2 uses
  %.not100 = icmp ult i64 %i.yu, %4
  br i1 %.not100, label %bb.c, label %.critedge.thread, !llvm.loop !53

.critedge.thread:                                 ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, %bb.b
  %.088.lcssa = phi ptr [ %i.l, %bb.b ], [ %.391112, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ]
  %i.yv = mul i64 %4, %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.yv, i1 false)
  %i.yw = add i64 %3, -1
  %i.yx = mul i64 %4, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.yy, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.thread126, %bb.g, %bb.j, %bb.q, %.critedge.thread, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %.088.lcssa, %.critedge.thread ], [ null, %.thread126 ], [ null, %bb.q ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #9

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_vertexcodec.cpp() #10 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind1 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next2, %vector.body ] ; 9 uses
  %i.a = and <2 x i32> %vec.ind1, splat (i32 1)   ; 2 uses
  %i.b = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.c = lshr <2 x i32> %vec.ind1, splat (i32 1)
  %i.d = and <2 x i32> %i.c, splat (i32 1)        ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = add nuw nsw <2 x i32> %i.d, %i.a         ; 2 uses
  %i.g = lshr <2 x i32> %vec.ind1, splat (i32 2)
  %i.h = and <2 x i32> %i.g, splat (i32 1)        ; 2 uses
  %i.i = icmp eq <2 x i32> %i.h, zeroinitializer
  %i.j = add nuw nsw <2 x i32> %i.f, %i.h         ; 2 uses
  %i.k = lshr <2 x i32> %vec.ind1, splat (i32 3)
  %i.l = and <2 x i32> %i.k, splat (i32 1)        ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add nuw nsw <2 x i32> %i.j, %i.l         ; 2 uses
  %i.o = lshr <2 x i32> %vec.ind1, splat (i32 4)
  %i.p = and <2 x i32> %i.o, splat (i32 1)        ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer
  %i.r = add nuw nsw <2 x i32> %i.n, %i.p         ; 2 uses
  %i.s = lshr <2 x i32> %vec.ind1, splat (i32 5)
  %i.t = and <2 x i32> %i.s, splat (i32 1)        ; 2 uses
  %i.u = icmp eq <2 x i32> %i.t, zeroinitializer
  %i.v = add nuw nsw <2 x i32> %i.r, %i.t         ; 2 uses
  %i.w = lshr <2 x i32> %vec.ind1, splat (i32 6)
  %i.x = and <2 x i32> %i.w, splat (i32 1)        ; 2 uses
  %i.y = icmp eq <2 x i32> %i.x, zeroinitializer
  %i.z = add nuw nsw <2 x i32> %i.v, %i.x
  %i.aa = and <2 x i32> %vec.ind1, splat (i32 128)
  %i.ab = icmp eq <2 x i32> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %index
  %i.ad = select <2 x i1> %i.ab, <2 x i32> splat (i32 128), <2 x i32> %i.z
  %i.ae = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.af = shl nuw <2 x i64> %i.ae, splat (i64 56)
  %i.ag = select <2 x i1> %i.y, <2 x i32> splat (i32 128), <2 x i32> %i.v
  %i.ah = zext nneg <2 x i32> %i.ag to <2 x i64>
  %i.ai = shl nuw nsw <2 x i64> %i.ah, splat (i64 48)
  %i.aj = add nuw nsw <2 x i64> %i.af, %i.ai
  %i.ak = select <2 x i1> %i.u, <2 x i32> splat (i32 128), <2 x i32> %i.r
  %i.al = zext nneg <2 x i32> %i.ak to <2 x i64>
  %i.am = shl nuw nsw <2 x i64> %i.al, splat (i64 40)
  %i.an = select <2 x i1> %i.q, <2 x i32> splat (i32 128), <2 x i32> %i.n
  %i.ao = zext nneg <2 x i32> %i.an to <2 x i64>
  %i.ap = shl nuw nsw <2 x i64> %i.ao, splat (i64 32)
  %i.aq = shl nuw nsw <2 x i32> %i.j, splat (i32 24)
  %i.ar = select <2 x i1> %i.m, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.aq
  %i.as = zext <2 x i32> %i.ar to <2 x i64>
  %i.at = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.au = select <2 x i1> %i.i, <2 x i32> splat (i32 8388608), <2 x i32> %i.at
  %i.av = zext nneg <2 x i32> %i.au to <2 x i64>
  %i.aw = shl nuw nsw <2 x i64> %vec.ind, splat (i64 8)
  %i.ax = and <2 x i64> %i.aw, splat (i64 256)
  %i.ay = select <2 x i1> %i.e, <2 x i64> splat (i64 32768), <2 x i64> %i.ax
  %i.az = select <2 x i1> %i.b, <2 x i64> splat (i64 128), <2 x i64> zeroinitializer
  %i.ba = or disjoint <2 x i64> %i.ay, %i.az
  %i.bb = or disjoint <2 x i64> %i.ba, %i.av
  %i.bc = or disjoint <2 x i64> %i.bb, %i.as
  %i.bd = or disjoint <2 x i64> %i.bc, %i.ap
  %i.be = or <2 x i64> %i.bd, %i.am
  %i.bf = or <2 x i64> %i.be, %i.aj
  store <2 x i64> %i.bf, ptr %i.ac, align 16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next2 = add <2 x i32> %vec.ind1, splat (i32 2)
  %i.bg = icmp eq i64 %index.next, 256
  br i1 %i.bg, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !54

__cxx_global_var_init.exit:                       ; preds = %vector.body
  %i.bh = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #13, !srcloc !55
  %i.bi = extractvalue { i32, i32, i32, i32 } %i.bh, 2
  store i32 %i.bi, ptr @_ZN7meshoptL5cpuidE, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i14 @llvm.ctpop.i14(i14) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v16i64(<16 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !34}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !12, !11}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !12, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"long", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !10}
!38 = !{ptr @_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i, ptr @_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = !{!"long long", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10, !11, !12}
!55 = !{i64 2148922228, i64 2148922310, i64 2148922391}
end_hunk_1

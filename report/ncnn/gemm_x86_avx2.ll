inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
bb.dh:                                            ; preds = %.thread1359.i
  %i.aji = fmul fast <4 x float> %.41192.i, %i.bv
  %i.ajj = fmul fast <4 x float> %.41186.i, %i.bv
  %i.ajk = fmul fast <4 x float> %.41180.i, %i.bv
  %i.ajl = fmul fast <4 x float> %.41174.i, %i.bv
  %i.ajm = fmul fast <4 x float> %.41168.i, %i.bv
  %i.ajn = fmul fast <4 x float> %.41162.i, %i.bv
  %i.ajo = fmul fast <4 x float> %.41156.i, %i.bv
  %i.ajp = fmul fast <4 x float> %.41150.i, %i.bv
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.thread1359.i
  %.51193.i = phi nsz <4 x float> [ %i.aji, %bb.dh ], [ %.41192.i, %.thread1359.i ] ; 8 uses
  %.51187.i = phi nsz <4 x float> [ %i.ajj, %bb.dh ], [ %.41186.i, %.thread1359.i ] ; 8 uses
  %.51181.i = phi nsz <4 x float> [ %i.ajk, %bb.dh ], [ %.41180.i, %.thread1359.i ] ; 8 uses
  %.51175.i = phi nsz <4 x float> [ %i.ajl, %bb.dh ], [ %.41174.i, %.thread1359.i ] ; 8 uses
  %.51169.i = phi nsz <4 x float> [ %i.ajm, %bb.dh ], [ %.41168.i, %.thread1359.i ] ; 8 uses
  %.51163.i = phi nsz <4 x float> [ %i.ajn, %bb.dh ], [ %.41162.i, %.thread1359.i ] ; 8 uses
  %.51157.i = phi nsz <4 x float> [ %i.ajo, %bb.dh ], [ %.41156.i, %.thread1359.i ] ; 8 uses
  %.51151.i = phi nsz <4 x float> [ %i.ajp, %bb.dh ], [ %.41150.i, %.thread1359.i ] ; 8 uses
  br i1 %.not1960.i, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  switch i32 %i.b, label %bb.dn [
    i32 8, label %bb.dk
    i32 4, label %bb.dl
    i32 1, label %bb.dm
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.ajq = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ajr = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ajs = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ajt = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aju = shufflevector <4 x float> %i.ajq, <4 x float> %i.ajr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ajv = shufflevector <4 x float> %i.ajr, <4 x float> %i.ajq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ajw = shufflevector <4 x float> %i.ajs, <4 x float> %i.ajt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ajx = shufflevector <4 x float> %i.ajt, <4 x float> %i.ajs, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ajy = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ajz = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aka = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akb = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akc = shufflevector <4 x float> %i.ajy, <4 x float> %i.ajz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akd = shufflevector <4 x float> %i.ajz, <4 x float> %i.ajy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ake = shufflevector <4 x float> %i.aka, <4 x float> %i.akb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akf = shufflevector <4 x float> %i.akb, <4 x float> %i.aka, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.aju, ptr %.118761608.i, align 16, !tbaa !17
  %i.akg = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 16
  store <4 x float> %i.akc, ptr %i.akg, align 16, !tbaa !17
  %i.akh = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 32
  store <4 x float> %i.ajv, ptr %i.akh, align 16, !tbaa !17
  %i.aki = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 48
  store <4 x float> %i.akd, ptr %i.aki, align 16, !tbaa !17
  %i.akj = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 64
  store <4 x float> %i.ajw, ptr %i.akj, align 16, !tbaa !17
  %i.akk = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 80
  store <4 x float> %i.ake, ptr %i.akk, align 16, !tbaa !17
  %i.akl = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 96
  store <4 x float> %i.ajx, ptr %i.akl, align 16, !tbaa !17
  %i.akm = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 112
  store <4 x float> %i.akf, ptr %i.akm, align 16, !tbaa !17
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.akn = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ako = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.akp = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akq = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akr = shufflevector <4 x float> %i.akn, <4 x float> %i.ako, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aks = shufflevector <4 x float> %i.ako, <4 x float> %i.akn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.akt = shufflevector <4 x float> %i.akp, <4 x float> %i.akq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aku = shufflevector <4 x float> %i.akq, <4 x float> %i.akp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.akv = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.akw = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.akx = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aky = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.akz = shufflevector <4 x float> %i.akv, <4 x float> %i.akw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ala = shufflevector <4 x float> %i.akw, <4 x float> %i.akv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.alb = shufflevector <4 x float> %i.akx, <4 x float> %i.aky, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.alc = shufflevector <4 x float> %i.aky, <4 x float> %i.akx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.akr, ptr %.118761608.i, align 16, !tbaa !17
  %i.ald = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 16
  store <4 x float> %i.aks, ptr %i.ald, align 16, !tbaa !17
  %i.ale = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 32
  store <4 x float> %i.akt, ptr %i.ale, align 16, !tbaa !17
  %i.alf = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 48
  store <4 x float> %i.aku, ptr %i.alf, align 16, !tbaa !17
  %i.alg = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1987.i ; 4 uses
  store <4 x float> %i.akz, ptr %i.alg, align 16, !tbaa !17
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  store <4 x float> %i.ala, ptr %i.alh, align 16, !tbaa !17
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  store <4 x float> %i.alb, ptr %i.ali, align 16, !tbaa !17
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 48
  store <4 x float> %i.alc, ptr %i.alj, align 16, !tbaa !17
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  store <4 x float> %.51193.i, ptr %.118761608.i, align 1, !tbaa !17
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.118761608.i, i64 %i.k
  store <4 x float> %.51187.i, ptr %i.alk, align 1, !tbaa !17
  %i.all = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1985.i
  store <4 x float> %.51181.i, ptr %i.all, align 1, !tbaa !17
  %i.alm = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1986.i
  store <4 x float> %.51175.i, ptr %i.alm, align 1, !tbaa !17
  %i.aln = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1987.i
  store <4 x float> %.51169.i, ptr %i.aln, align 1, !tbaa !17
  %i.alo = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1988.i
  store <4 x float> %.51163.i, ptr %i.alo, align 1, !tbaa !17
  %i.alp = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1989.i
  store <4 x float> %.51157.i, ptr %i.alp, align 1, !tbaa !17
  %i.alq = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1990.i
  store <4 x float> %.51151.i, ptr %i.alq, align 1, !tbaa !17
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %i.alr = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1991.i
  br label %bb.dq

bb.do:                                            ; preds = %bb.di
  switch i32 %i.b, label %bb.dq [
    i32 4, label %.thread1370.i
    i32 1, label %bb.dp
  ]

.thread1370.i:                                    ; preds = %bb.do
  store <4 x float> %.51193.i, ptr %.118761608.i, align 16, !tbaa !17
  %i.als = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 16
  store <4 x float> %.51187.i, ptr %i.als, align 16, !tbaa !17
  %i.alt = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 32
  store <4 x float> %.51181.i, ptr %i.alt, align 16, !tbaa !17
  %i.alu = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 48
  store <4 x float> %.51175.i, ptr %i.alu, align 16, !tbaa !17
  %i.alv = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 64
  store <4 x float> %.51169.i, ptr %i.alv, align 16, !tbaa !17
  %i.alw = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 80
  store <4 x float> %.51163.i, ptr %i.alw, align 16, !tbaa !17
  %i.alx = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 96
  store <4 x float> %.51157.i, ptr %i.alx, align 16, !tbaa !17
  %i.aly = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 112
  store <4 x float> %.51151.i, ptr %i.aly, align 16, !tbaa !17
  %i.alz = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 128
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ama = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amb = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amc = shufflevector <4 x float> %.51193.i, <4 x float> %.51187.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.amd = shufflevector <4 x float> %.51181.i, <4 x float> %.51175.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ame = shufflevector <4 x float> %i.ama, <4 x float> %i.amb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amf = shufflevector <4 x float> %i.amb, <4 x float> %i.ama, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.amg = shufflevector <4 x float> %i.amc, <4 x float> %i.amd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amh = shufflevector <4 x float> %i.amd, <4 x float> %i.amc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ami = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amj = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.amk = shufflevector <4 x float> %.51169.i, <4 x float> %.51163.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aml = shufflevector <4 x float> %.51157.i, <4 x float> %.51151.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.amm = shufflevector <4 x float> %i.ami, <4 x float> %i.amj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amn = shufflevector <4 x float> %i.amj, <4 x float> %i.ami, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.amo = shufflevector <4 x float> %i.amk, <4 x float> %i.aml, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amp = shufflevector <4 x float> %i.aml, <4 x float> %i.amk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ame, ptr %.118761608.i, align 1, !tbaa !17
  %i.amq = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 16
  store <4 x float> %i.amm, ptr %i.amq, align 1, !tbaa !17
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %.118761608.i, i64 %i.k ; 2 uses
  store <4 x float> %i.amf, ptr %i.amr, align 1, !tbaa !17
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  store <4 x float> %i.amn, ptr %i.ams, align 1, !tbaa !17
  %i.amt = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1985.i ; 2 uses
  store <4 x float> %i.amg, ptr %i.amt, align 1, !tbaa !17
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  store <4 x float> %i.amo, ptr %i.amu, align 1, !tbaa !17
  %i.amv = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 %.idx1986.i ; 2 uses
  store <4 x float> %i.amh, ptr %i.amv, align 1, !tbaa !17
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 16
  store <4 x float> %i.amp, ptr %i.amw, align 1, !tbaa !17
  %i.amx = getelementptr inbounds nuw i8, ptr %.118761608.i, i64 32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.thread1370.i, %bb.do, %bb.dn
  %.31878.i = phi ptr [ %i.alr, %bb.dn ], [ %i.amx, %bb.dp ], [ %.118761608.i, %bb.do ], [ %i.alz, %.thread1370.i ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.617961609.i, i64 128 ; 2 uses
  %i.amz = add nuw nsw i32 %.018881607.i, 8       ; 2 uses
  %i.ana = or disjoint i32 %i.amz, 7
  %i.anb = icmp slt i32 %i.ana, %7
  br i1 %i.anb, label %.lr.ph1611.i, label %.preheader1554.i, !llvm.loop !255

.preheader1553.i:                                 ; preds = %bb.ek, %.preheader1554.i
  %.81202.lcssa.i = phi <4 x float> [ %.31197.lcssa.i, %.preheader1554.i ], [ %.111205.i, %bb.ek ] ; 2 uses
  %.11889.lcssa.i = phi i32 [ %.01888.lcssa.i, %.preheader1554.i ], [ %i.arj, %bb.ek ] ; 3 uses
  %.41879.lcssa.i = phi ptr [ %.11876.lcssa.i, %.preheader1554.i ], [ %.61881.i, %bb.ek ] ; 2 uses
  %.71797.lcssa.i = phi ptr [ %.61796.lcssa.i, %.preheader1554.i ], [ %i.ari, %bb.ek ] ; 2 uses
  %.28.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader1554.i ], [ %.31.i, %bb.ek ] ; 2 uses
  %i.anc = or disjoint i32 %.11889.lcssa.i, 1
  %i.and = icmp slt i32 %i.anc, %7
  br i1 %i.and, label %.lr.ph1633.i, label %.preheader1552.i

.lr.ph1622.i:                                     ; preds = %.preheader1554.i, %bb.ek
  %.281621.i = phi ptr [ %.31.i, %bb.ek ], [ %.24.lcssa.i, %.preheader1554.i ] ; 14 uses
  %.717971620.i = phi ptr [ %i.ari, %bb.ek ], [ %.61796.lcssa.i, %.preheader1554.i ] ; 5 uses
  %.418791619.i = phi ptr [ %.61881.i, %bb.ek ], [ %.11876.lcssa.i, %.preheader1554.i ] ; 18 uses
  %.118891618.i = phi i32 [ %i.arj, %bb.ek ], [ %.01888.lcssa.i, %.preheader1554.i ]
  %.812021617.i = phi <4 x float> [ %.111205.i, %bb.ek ], [ %.31197.lcssa.i, %.preheader1554.i ] ; 12 uses
  %i.ane = load <4 x i32>, ptr %.717971620.i, align 16, !tbaa !17
  %i.anf = sitofp fast <4 x i32> %i.ane to <4 x float> ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.717971620.i, i64 16
  %i.anh = load <4 x i32>, ptr %i.ang, align 16, !tbaa !17
  %i.ani = getelementptr inbounds nuw i8, ptr %.717971620.i, i64 32
  %i.anj = load <4 x i32>, ptr %i.ani, align 16, !tbaa !17
  %i.ank = sitofp fast <4 x i32> %i.anj to <4 x float> ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.717971620.i, i64 48
  %i.anm = load <4 x i32>, ptr %i.anl, align 16, !tbaa !17
  %i.ann = sitofp <4 x i32> %i.anh to <4 x float>
  %i.ano = shufflevector <4 x float> %i.ann, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.anp = sitofp <4 x i32> %i.anm to <4 x float>
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.anr = shufflevector <4 x float> %i.anf, <4 x float> %i.anq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ans = shufflevector <4 x float> %i.anf, <4 x float> %i.anq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ant = shufflevector <4 x float> %i.ank, <4 x float> %i.ano, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.anu = shufflevector <4 x float> %i.ank, <4 x float> %i.ano, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anv = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.anw = shufflevector <4 x float> %i.anr, <4 x float> %i.ant, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.anx = shufflevector <4 x float> %i.anu, <4 x float> %i.ans, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.any = shufflevector <4 x float> %i.anu, <4 x float> %i.ans, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.anz = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aoa = shufflevector <4 x float> %i.any, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aob = fmul fast <4 x float> %i.acq, %i.anv   ; 7 uses
  %i.aoc = fmul fast <4 x float> %i.anz, %i.acq   ; 7 uses
  %i.aod = fmul fast <4 x float> %i.acq, %i.anx   ; 7 uses
  %i.aoe = fmul fast <4 x float> %i.aoa, %i.acq   ; 7 uses
  %.not1969.i = icmp eq ptr %.281621.i, null
  br i1 %.not1969.i, label %.thread1385.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph1622.i
  br i1 %i.bk, label %.thread1372.i, label %bb.ds

.thread1372.i:                                    ; preds = %bb.dr
  %i.aof = fadd fast <4 x float> %i.aob, %.812021617.i
  %i.aog = fadd fast <4 x float> %i.aoc, %.812021617.i
  %i.aoh = fadd fast <4 x float> %i.aod, %.812021617.i
  %i.aoi = fadd fast <4 x float> %i.aoe, %.812021617.i
  br label %.thread1385.i

bb.ds:                                            ; preds = %bb.dr
  br i1 %or.cond11.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aoj = fadd fast <4 x float> %i.aob, %.812021617.i
  %i.aok = fadd fast <4 x float> %i.aoc, %.812021617.i
  %i.aol = fadd fast <4 x float> %i.aod, %.812021617.i
  %i.aom = fadd fast <4 x float> %i.aoe, %.812021617.i
  br label %.thread1385.i

bb.du:                                            ; preds = %bb.ds
  switch i32 %3, label %.thread1385.i [
    i32 3, label %bb.dv
    i32 4, label %bb.eb
  ]

bb.dv:                                            ; preds = %bb.du
  %i.aon = load <4 x float>, ptr %.281621.i, align 1, !tbaa !17 ; 3 uses
  br i1 %i.br, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.aoo = getelementptr inbounds nuw i8, ptr %.281621.i, i64 16
  %i.aop = load <4 x float>, ptr %i.aoo, align 1, !tbaa !17
  %i.aoq = getelementptr inbounds nuw i8, ptr %.281621.i, i64 32
  %i.aor = load <4 x float>, ptr %i.aoq, align 1, !tbaa !17
  %i.aos = getelementptr inbounds nuw i8, ptr %.281621.i, i64 48
  %i.aot = load <4 x float>, ptr %i.aos, align 1, !tbaa !17
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.281621.i, i64 %i.t
  %i.aov = load <4 x float>, ptr %i.aou, align 1, !tbaa !17 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.281621.i, i64 %.idx1978.i
  %i.aox = load <4 x float>, ptr %i.aow, align 1, !tbaa !17 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.281621.i, i64 %.idx1979.i
  %i.aoz = load <4 x float>, ptr %i.aoy, align 1, !tbaa !17 ; 2 uses
  %i.apa = shufflevector <4 x float> %i.aon, <4 x float> %i.aov, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apb = shufflevector <4 x float> %i.aox, <4 x float> %i.aoz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apc = shufflevector <4 x float> %i.aon, <4 x float> %i.aov, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.apd = shufflevector <4 x float> %i.aox, <4 x float> %i.aoz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ape = shufflevector <4 x float> %i.apa, <4 x float> %i.apb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apf = shufflevector <4 x float> %i.apb, <4 x float> %i.apa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.apg = shufflevector <4 x float> %i.apc, <4 x float> %i.apd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aph = shufflevector <4 x float> %i.apd, <4 x float> %i.apc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.sink1861.i = phi i64 [ 16, %bb.dx ], [ 64, %bb.dw ]
  %.91203.i = phi nsz <4 x float> [ %i.ape, %bb.dx ], [ %i.aon, %bb.dw ] ; 4 uses
  %.01104.i = phi nsz <4 x float> [ %i.apf, %bb.dx ], [ %i.aop, %bb.dw ] ; 2 uses
  %.01103.i = phi nsz <4 x float> [ %i.apg, %bb.dx ], [ %i.aor, %bb.dw ] ; 2 uses
  %.01102.i = phi nsz <4 x float> [ %i.aph, %bb.dx ], [ %i.aot, %bb.dw ] ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.281621.i, i64 %.sink1861.i ; 2 uses
  br i1 %i.bs, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.apj = fadd fast <4 x float> %.91203.i, %i.aob
  %i.apk = fadd fast <4 x float> %.01104.i, %i.aoc
  %i.apl = fadd fast <4 x float> %.01103.i, %i.aod
  %i.apm = fadd fast <4 x float> %.01102.i, %i.aoe
  br label %.thread1385.i

bb.ea:                                            ; preds = %bb.dy
  %i.apn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.91203.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aob)
  %i.apo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.01104.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aoc)
  %i.app = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.01103.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aod)
  %i.apq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.01102.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aoe)
  br label %.thread1385.i

bb.eb:                                            ; preds = %bb.du
  %i.apr = load <4 x float>, ptr %.281621.i, align 4, !tbaa !147
  %i.aps = fmul fast <4 x float> %i.apr, %i.ce    ; 4 uses
  %i.apt = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.apu = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.apv = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.apw = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.apx = fadd fast <4 x float> %i.apt, %i.aob
  %i.apy = fadd fast <4 x float> %i.apu, %i.aoc
  %i.apz = fadd fast <4 x float> %i.apv, %i.aod
  %i.aqa = fadd fast <4 x float> %i.apw, %i.aoe
  %i.aqb = getelementptr inbounds nuw i8, ptr %.281621.i, i64 16
  br label %.thread1385.i

.thread1385.i:                                    ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.du, %bb.dt, %.thread1372.i, %.lr.ph1622.i
  %.111205.i = phi nsz <4 x float> [ %.812021617.i, %.lr.ph1622.i ], [ %i.apt, %bb.eb ], [ %.812021617.i, %bb.du ], [ %.91203.i, %bb.dz ], [ %.91203.i, %bb.ea ], [ %.812021617.i, %.thread1372.i ], [ %.812021617.i, %bb.dt ] ; 2 uses
  %.41127.i = phi nsz <4 x float> [ %i.aob, %.lr.ph1622.i ], [ %i.apx, %bb.eb ], [ %i.aob, %bb.du ], [ %i.apj, %bb.dz ], [ %i.apn, %bb.ea ], [ %i.aof, %.thread1372.i ], [ %i.aoj, %bb.dt ] ; 2 uses
  %.41121.i = phi nsz <4 x float> [ %i.aoc, %.lr.ph1622.i ], [ %i.apy, %bb.eb ], [ %i.aoc, %bb.du ], [ %i.apk, %bb.dz ], [ %i.apo, %bb.ea ], [ %i.aog, %.thread1372.i ], [ %i.aok, %bb.dt ] ; 2 uses
  %.41115.i = phi nsz <4 x float> [ %i.aod, %.lr.ph1622.i ], [ %i.apz, %bb.eb ], [ %i.aod, %bb.du ], [ %i.apl, %bb.dz ], [ %i.app, %bb.ea ], [ %i.aoh, %.thread1372.i ], [ %i.aol, %bb.dt ] ; 2 uses
  %.41109.i = phi nsz <4 x float> [ %i.aoe, %.lr.ph1622.i ], [ %i.aqa, %bb.eb ], [ %i.aoe, %bb.du ], [ %i.apm, %bb.dz ], [ %i.apq, %bb.ea ], [ %i.aoi, %.thread1372.i ], [ %i.aom, %bb.dt ] ; 2 uses
  %.31.i = phi ptr [ null, %.lr.ph1622.i ], [ %i.aqb, %bb.eb ], [ %.281621.i, %bb.du ], [ %i.api, %bb.dz ], [ %i.api, %bb.ea ], [ %.281621.i, %.thread1372.i ], [ %.281621.i, %bb.dt ] ; 2 uses
  br i1 %i.bt, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.thread1385.i
  %i.aqc = fmul fast <4 x float> %.41127.i, %i.bv
  %i.aqd = fmul fast <4 x float> %.41121.i, %i.bv
  %i.aqe = fmul fast <4 x float> %.41115.i, %i.bv
  %i.aqf = fmul fast <4 x float> %.41109.i, %i.bv
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.thread1385.i
  %.51128.i = phi nsz <4 x float> [ %i.aqc, %bb.ec ], [ %.41127.i, %.thread1385.i ] ; 6 uses
  %.51122.i = phi nsz <4 x float> [ %i.aqd, %bb.ec ], [ %.41121.i, %.thread1385.i ] ; 6 uses
  %.51116.i = phi nsz <4 x float> [ %i.aqe, %bb.ec ], [ %.41115.i, %.thread1385.i ] ; 6 uses
  %.51110.i = phi nsz <4 x float> [ %i.aqf, %bb.ec ], [ %.41109.i, %.thread1385.i ] ; 6 uses
  br i1 %.not1960.i, label %bb.ei, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  switch i32 %i.b, label %bb.eh [
    i32 4, label %bb.ef
    i32 1, label %12
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.aqg = shufflevector <4 x float> %.51128.i, <4 x float> %.51122.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqh = shufflevector <4 x float> %.51116.i, <4 x float> %.51110.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqi = shufflevector <4 x float> %.51128.i, <4 x float> %.51122.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqj = shufflevector <4 x float> %.51116.i, <4 x float> %.51110.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqk = shufflevector <4 x float> %i.aqg, <4 x float> %i.aqh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aql = shufflevector <4 x float> %i.aqh, <4 x float> %i.aqg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aqm = shufflevector <4 x float> %i.aqi, <4 x float> %i.aqj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aqn = shufflevector <4 x float> %i.aqj, <4 x float> %i.aqi, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.aqk, ptr %.418791619.i, align 16, !tbaa !17
  %i.aqo = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 16
  store <4 x float> %i.aql, ptr %i.aqo, align 16, !tbaa !17
  br label %bb.eg

12:                                               ; preds = %bb.ee
  store <4 x float> %.51128.i, ptr %.418791619.i, align 1, !tbaa !17
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.418791619.i, i64 %i.k
  store <4 x float> %.51122.i, ptr %13, align 1, !tbaa !17
  br label %bb.eg

bb.eg:                                            ; preds = %12, %bb.ef
  %.sink1868.i = phi i64 [ 32, %bb.ef ], [ %.idx1985.i, %12 ]
  %.sink1866.i = phi <4 x float> [ %i.aqm, %bb.ef ], [ %.51116.i, %12 ]
  %.sink1865.i = phi i64 [ 48, %bb.ef ], [ %.idx1986.i, %12 ]
  %.sink1863.i = phi <4 x float> [ %i.aqn, %bb.ef ], [ %.51110.i, %12 ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 %.sink1868.i
  store <4 x float> %.sink1866.i, ptr %i.aqp, align 1, !tbaa !17
  %i.aqq = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 %.sink1865.i
  store <4 x float> %.sink1863.i, ptr %i.aqq, align 1, !tbaa !17
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ee
  %i.aqr = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 %.idx1987.i
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ed
  switch i32 %i.b, label %bb.ek [
    i32 4, label %.thread1392.i
    i32 1, label %bb.ej
  ]

.thread1392.i:                                    ; preds = %bb.ei
  store <4 x float> %.51128.i, ptr %.418791619.i, align 16, !tbaa !17
  %i.aqs = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 16
  store <4 x float> %.51122.i, ptr %i.aqs, align 16, !tbaa !17
  %i.aqt = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 32
  store <4 x float> %.51116.i, ptr %i.aqt, align 16, !tbaa !17
  %i.aqu = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 48
  store <4 x float> %.51110.i, ptr %i.aqu, align 16, !tbaa !17
  %i.aqv = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 64
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aqw = shufflevector <4 x float> %.51128.i, <4 x float> %.51122.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqx = shufflevector <4 x float> %.51116.i, <4 x float> %.51110.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqy = shufflevector <4 x float> %.51128.i, <4 x float> %.51122.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqz = shufflevector <4 x float> %.51116.i, <4 x float> %.51110.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ara = shufflevector <4 x float> %i.aqw, <4 x float> %i.aqx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.arb = shufflevector <4 x float> %i.aqx, <4 x float> %i.aqw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.arc = shufflevector <4 x float> %i.aqy, <4 x float> %i.aqz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ard = shufflevector <4 x float> %i.aqz, <4 x float> %i.aqy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ara, ptr %.418791619.i, align 1, !tbaa !17
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %.418791619.i, i64 %i.k
  store <4 x float> %i.arb, ptr %i.are, align 1, !tbaa !17
  %i.arf = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 %.idx1985.i
  store <4 x float> %i.arc, ptr %i.arf, align 1, !tbaa !17
  %i.arg = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 %.idx1986.i
  store <4 x float> %i.ard, ptr %i.arg, align 1, !tbaa !17
  %i.arh = getelementptr inbounds nuw i8, ptr %.418791619.i, i64 16
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread1392.i, %bb.ei, %bb.eh
  %.61881.i = phi ptr [ %i.aqr, %bb.eh ], [ %i.arh, %bb.ej ], [ %.418791619.i, %bb.ei ], [ %i.aqv, %.thread1392.i ] ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %.717971620.i, i64 64 ; 2 uses
  %i.arj = add nuw nsw i32 %.118891618.i, 4       ; 3 uses
  %i.ark = or disjoint i32 %i.arj, 3
  %i.arl = icmp slt i32 %i.ark, %7
  br i1 %i.arl, label %.lr.ph1622.i, label %.preheader1553.i, !llvm.loop !256

.preheader1552.i:                                 ; preds = %bb.ez, %.preheader1553.i
  %.121206.lcssa.i = phi <4 x float> [ %.81202.lcssa.i, %.preheader1553.i ], [ %.151209.i, %bb.ez ]
  %.21890.lcssa.i = phi i32 [ %.11889.lcssa.i, %.preheader1553.i ], [ %i.aub, %bb.ez ] ; 2 uses
  %.71882.lcssa.i = phi ptr [ %.41879.lcssa.i, %.preheader1553.i ], [ %.91884.i, %bb.ez ]
  %.81798.lcssa.i = phi ptr [ %.71797.lcssa.i, %.preheader1553.i ], [ %i.aua, %bb.ez ] ; 2 uses
  %.32.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader1553.i ], [ %.35.i, %bb.ez ] ; 2 uses
  %i.arm = icmp slt i32 %.21890.lcssa.i, %7
  br i1 %i.arm, label %.lr.ph1644.i, label %._crit_edge1645.i

.lr.ph1633.i:                                     ; preds = %.preheader1553.i, %bb.ez
  %.321632.i = phi ptr [ %.35.i, %bb.ez ], [ %.28.lcssa.i, %.preheader1553.i ] ; 14 uses
  %.817981631.i = phi ptr [ %i.aua, %bb.ez ], [ %.71797.lcssa.i, %.preheader1553.i ] ; 3 uses
  %.718821630.i = phi ptr [ %.91884.i, %bb.ez ], [ %.41879.lcssa.i, %.preheader1553.i ] ; 13 uses
  %.218901629.i = phi i32 [ %i.aub, %bb.ez ], [ %.11889.lcssa.i, %.preheader1553.i ]
  %.1212061628.i = phi <4 x float> [ %.151209.i, %bb.ez ], [ %.81202.lcssa.i, %.preheader1553.i ] ; 8 uses
  %i.arn = load <4 x i32>, ptr %.817981631.i, align 16, !tbaa !17
  %i.aro = getelementptr inbounds nuw i8, ptr %.817981631.i, i64 16
  %i.arp = load <4 x i32>, ptr %i.aro, align 16, !tbaa !17
  %i.arq = sitofp <4 x i32> %i.arn to <4 x float>
  %i.arr = shufflevector <4 x float> %i.arq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.ars = sitofp <4 x i32> %i.arp to <4 x float>
  %i.art = shufflevector <4 x float> %i.ars, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.aru = shufflevector <4 x float> %i.arr, <4 x float> %i.art, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.arv = shufflevector <4 x float> %i.art, <4 x float> %i.arr, <4 x i32> <i32 3, i32 6, i32 2, i32 7>
  %i.arw = fmul fast <4 x float> %i.aru, %i.acq   ; 7 uses
  %i.arx = fmul fast <4 x float> %i.arv, %i.acq   ; 7 uses
  %.not1967.i = icmp eq ptr %.321632.i, null
  br i1 %.not1967.i, label %.thread1403.i, label %bb.el

bb.el:                                            ; preds = %.lr.ph1633.i
  br i1 %i.bk, label %.thread1394.i, label %bb.em

.thread1394.i:                                    ; preds = %bb.el
  %i.ary = fadd fast <4 x float> %i.arw, %.1212061628.i
  %i.arz = fadd fast <4 x float> %i.arx, %.1212061628.i
  br label %.thread1403.i

bb.em:                                            ; preds = %bb.el
  br i1 %or.cond11.i, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.asa = fadd fast <4 x float> %i.arw, %.1212061628.i
  %i.asb = fadd fast <4 x float> %i.arx, %.1212061628.i
  br label %.thread1403.i

bb.eo:                                            ; preds = %bb.em
  switch i32 %3, label %.thread1403.i [
    i32 3, label %bb.ep
    i32 4, label %bb.ev
  ]

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.br, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.asc = load <4 x float>, ptr %.321632.i, align 1, !tbaa !17
  %i.asd = getelementptr inbounds nuw i8, ptr %.321632.i, i64 16
  %i.ase = load <4 x float>, ptr %i.asd, align 1, !tbaa !17
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.asf = load float, ptr %.321632.i, align 4, !tbaa !147
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %.321632.i, i64 %i.t ; 2 uses
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !147
  %i.asi = getelementptr inbounds nuw i8, ptr %.321632.i, i64 %.idx1978.i ; 2 uses
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !147
  %i.ask = getelementptr inbounds nuw i8, ptr %.321632.i, i64 %.idx1979.i ; 2 uses
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !147
  %i.asm = insertelement <4 x float> poison, float %i.asf, i64 0
  %i.asn = insertelement <4 x float> %i.asm, float %i.ash, i64 1
  %i.aso = insertelement <4 x float> %i.asn, float %i.asj, i64 2
  %i.asp = insertelement <4 x float> %i.aso, float %i.asl, i64 3
  %i.asq = getelementptr inbounds nuw i8, ptr %.321632.i, i64 4
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !147
  %i.ass = getelementptr i8, ptr %i.asg, i64 4
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !147
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asi, i64 4
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !147
  %i.asw = getelementptr i8, ptr %i.ask, i64 4
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !147
  %i.asy = insertelement <4 x float> poison, float %i.asr, i64 0
  %i.asz = insertelement <4 x float> %i.asy, float %i.ast, i64 1
  %i.ata = insertelement <4 x float> %i.asz, float %i.asv, i64 2
  %i.atb = insertelement <4 x float> %i.ata, float %i.asx, i64 3
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sink1862.i = phi i64 [ 8, %bb.er ], [ 32, %bb.eq ]
  %.131207.i = phi nsz <4 x float> [ %i.asp, %bb.er ], [ %i.asc, %bb.eq ] ; 4 uses
  %.01088.i = phi nsz <4 x float> [ %i.atb, %bb.er ], [ %i.ase, %bb.eq ] ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %.321632.i, i64 %.sink1862.i ; 2 uses
  br i1 %i.bs, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.atd = fadd fast <4 x float> %.131207.i, %i.arw
  %i.ate = fadd fast <4 x float> %.01088.i, %i.arx
  br label %.thread1403.i

bb.eu:                                            ; preds = %bb.es
  %i.atf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.131207.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.arw)
  %i.atg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.01088.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.arx)
  br label %.thread1403.i

bb.ev:                                            ; preds = %bb.eo
  %i.ath = load <2 x float>, ptr %.321632.i, align 4, !tbaa !147
  %i.ati = fmul fast <2 x float> %i.ath, %i.cg    ; 2 uses
  %i.atj = shufflevector <2 x float> %i.ati, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atk = shufflevector <2 x float> %i.ati, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.atl = fadd fast <4 x float> %i.atj, %i.arw
  %i.atm = fadd fast <4 x float> %i.atk, %i.arx
  %i.atn = getelementptr inbounds nuw i8, ptr %.321632.i, i64 8
  br label %.thread1403.i

.thread1403.i:                                    ; preds = %bb.ev, %bb.eu, %bb.et, %bb.eo, %bb.en, %.thread1394.i, %.lr.ph1633.i
  %.151209.i = phi nsz <4 x float> [ %.1212061628.i, %.lr.ph1633.i ], [ %i.atj, %bb.ev ], [ %.1212061628.i, %bb.eo ], [ %.131207.i, %bb.et ], [ %.131207.i, %bb.eu ], [ %.1212061628.i, %.thread1394.i ], [ %.1212061628.i, %bb.en ] ; 2 uses
  %.41099.i = phi nsz <4 x float> [ %i.arw, %.lr.ph1633.i ], [ %i.atl, %bb.ev ], [ %i.arw, %bb.eo ], [ %i.atd, %bb.et ], [ %i.atf, %bb.eu ], [ %i.ary, %.thread1394.i ], [ %i.asa, %bb.en ]
  %.41093.i = phi nsz <4 x float> [ %i.arx, %.lr.ph1633.i ], [ %i.atm, %bb.ev ], [ %i.arx, %bb.eo ], [ %i.ate, %bb.et ], [ %i.atg, %bb.eu ], [ %i.arz, %.thread1394.i ], [ %i.asb, %bb.en ]
  %.35.i = phi ptr [ null, %.lr.ph1633.i ], [ %i.atn, %bb.ev ], [ %.321632.i, %bb.eo ], [ %i.atc, %bb.et ], [ %i.atc, %bb.eu ], [ %.321632.i, %.thread1394.i ], [ %.321632.i, %bb.en ] ; 2 uses
  %.51100.i = fmul reassoc nsz arcp contract afn <4 x float> %.41099.i, %i.bw ; 6 uses
  %.51094.i = fmul reassoc nsz arcp contract afn <4 x float> %.41093.i, %i.bw ; 6 uses
  br i1 %.not1960.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.thread1403.i
  store <4 x float> %.51100.i, ptr %.718821630.i, align 1, !tbaa !17
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %.718821630.i, i64 %i.k
  store <4 x float> %.51094.i, ptr %i.ato, align 1, !tbaa !17
  %i.atp = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 %.idx1985.i
  br label %bb.ez

bb.ex:                                            ; preds = %.thread1403.i
  switch i32 %i.b, label %bb.ez [
    i32 4, label %.thread1408.i
    i32 1, label %bb.ey
  ]

.thread1408.i:                                    ; preds = %bb.ex
  store <4 x float> %.51100.i, ptr %.718821630.i, align 16, !tbaa !17
  %i.atq = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 16
  store <4 x float> %.51094.i, ptr %i.atq, align 16, !tbaa !17
  %i.atr = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 32
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %.sroa.0153.0.vec.extract.i = extractelement <4 x float> %.51100.i, i64 0
  store float %.sroa.0153.0.vec.extract.i, ptr %.718821630.i, align 4, !tbaa !147
  %.sroa.7154.16.vec.extract.i = extractelement <4 x float> %.51094.i, i64 0
  %i.ats = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 4
  store float %.sroa.7154.16.vec.extract.i, ptr %i.ats, align 4, !tbaa !147
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.718821630.i, i64 %i.k
  %i.atu = shufflevector <4 x float> %.51100.i, <4 x float> %.51094.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.atu, ptr %i.att, align 4, !tbaa !147
  %i.atv = getelementptr inbounds nuw i8, ptr %.718821630.i, i64 %.idx1985.i
  %i.atw = shufflevector <4 x float> %.51100.i, <4 x float> %.51094.i, <2 x i32> <i32 2, i32 6>
end_hunk_0

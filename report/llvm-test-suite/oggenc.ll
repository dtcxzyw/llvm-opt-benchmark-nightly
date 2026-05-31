inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@vorbis_analysis_headerout:bb.a
  %i.aht = load i32, ptr %i.k, align 8
  %i.ahu = sub nsw i32 8, %i.aht
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = lshr i64 %i.ahl, %i.ahv
  %i.ahx = trunc i64 %i.ahw to i8
  %i.ahy = load ptr, ptr %i.g, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 1
  store i8 %i.ahx, ptr %i.ahz, align 1
  %i.aia = icmp sgt i32 %i.ahi, -1
  br i1 %i.aia, label %bb.br, label %oggpack_write.exit212

bb.br:                                            ; preds = %bb.bq
  %i.aib = load i32, ptr %i.k, align 8
  %i.aic = sub nsw i32 16, %i.aib
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = lshr i64 %i.ahl, %i.aid
  %i.aif = trunc i64 %i.aie to i8
  %i.aig = load ptr, ptr %i.g, align 8
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 2
  store i8 %i.aif, ptr %i.aih, align 1
  %i.aii = icmp samesign ugt i32 %i.ahi, 7
  br i1 %i.aii, label %bb.bs, label %oggpack_write.exit212

bb.bs:                                            ; preds = %bb.br
  %i.aij = load i32, ptr %i.k, align 8
  %i.aik = sub nsw i32 24, %i.aij
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = lshr i64 %i.ahl, %i.ail
  %i.ain = trunc i64 %i.aim to i8
  %i.aio = load ptr, ptr %i.g, align 8
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 3
  store i8 %i.ain, ptr %i.aip, align 1
  %i.aiq = icmp samesign ugt i32 %i.ahi, 15
  br i1 %i.aiq, label %.sink.split.i206, label %oggpack_write.exit212

.sink.split.i206:                                 ; preds = %bb.bs
  %i.air = load i32, ptr %i.k, align 8            ; 2 uses
  %.not41.i207 = icmp eq i32 %i.air, 0
  %i.ais = sub nsw i32 32, %i.air
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = lshr i64 %i.ahl, %i.ait
  %i.aiv = trunc i64 %i.aiu to i8
  %.sink.i208 = select i1 %.not41.i207, i8 0, i8 %i.aiv
  %i.aiw = load ptr, ptr %i.g, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  store i8 %.sink.i208, ptr %i.aix, align 1
  br label %oggpack_write.exit212

oggpack_write.exit212:                            ; preds = %._crit_edge.i209, %bb.bq, %bb.br, %bb.bs, %.sink.split.i206
  %i.aiy = sdiv i32 %i.ahm, 8
  %i.aiz = sext i32 %i.aiy to i64                 ; 2 uses
  %i.aja = load i64, ptr %5, align 8
  %i.ajb = add nsw i64 %i.aja, %i.aiz             ; 2 uses
  store i64 %i.ajb, ptr %5, align 8
  %i.ajc = load ptr, ptr %i.g, align 8
  %i.ajd = getelementptr inbounds i8, ptr %i.ajc, i64 %i.aiz ; 2 uses
  store ptr %i.ajd, ptr %i.g, align 8
  %i.aje = and i32 %i.ahi, 7                      ; 2 uses
  store i32 %i.aje, ptr %i.k, align 8
  %i.ajf = load ptr, ptr %i.ace, align 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 12
  %i.ajh = load i32, ptr %i.ajg, align 4
  %i.aji = add nsw i64 %i.ajb, 4
  %i.ajj = load i64, ptr %i.h, align 8            ; 2 uses
  %.not.i197 = icmp slt i64 %i.aji, %i.ajj
  br i1 %.not.i197, label %._crit_edge.i201, label %bb.bt

bb.bt:                                            ; preds = %oggpack_write.exit212
  %i.ajk = load ptr, ptr %i.f, align 8
  %i.ajl = add nsw i64 %i.ajj, 256
  %i.ajm = call ptr @realloc(ptr noundef %i.ajk, i64 noundef %i.ajl) #66 ; 2 uses
  store ptr %i.ajm, ptr %i.f, align 8
  %i.ajn = load i64, ptr %i.h, align 8
  %i.ajo = add nsw i64 %i.ajn, 256
  store i64 %i.ajo, ptr %i.h, align 8
  %i.ajp = load i64, ptr %5, align 8
  %i.ajq = getelementptr inbounds i8, ptr %i.ajm, i64 %i.ajp ; 2 uses
  store ptr %i.ajq, ptr %i.g, align 8
  %.pre451 = load i32, ptr %i.k, align 8
  br label %._crit_edge.i201

._crit_edge.i201:                                 ; preds = %oggpack_write.exit212, %bb.bt
  %i.ajr = phi i32 [ %.pre451, %bb.bt ], [ %i.aje, %oggpack_write.exit212 ] ; 7 uses
  %i.ajs = phi ptr [ %i.ajq, %bb.bt ], [ %i.ajd, %oggpack_write.exit212 ] ; 2 uses
  %i.ajt = and i32 %i.ajh, 255
  %i.aju = zext nneg i32 %i.ajt to i64            ; 5 uses
  %i.ajv = add nsw i32 %i.ajr, 8
  %i.ajw = zext nneg i32 %i.ajr to i64
  %i.ajx = shl i64 %i.aju, %i.ajw
  %i.ajy = load i8, ptr %i.ajs, align 1
  %i.ajz = trunc i64 %i.ajx to i8
  %i.aka = or i8 %i.ajy, %i.ajz
  store i8 %i.aka, ptr %i.ajs, align 1
  %i.akb = icmp sgt i32 %i.ajr, -1
  br i1 %i.akb, label %bb.bu, label %oggpack_write.exit204

bb.bu:                                            ; preds = %._crit_edge.i201
  %i.akc = load i32, ptr %i.k, align 8
  %i.akd = sub nsw i32 8, %i.akc
  %i.ake = zext nneg i32 %i.akd to i64
  %i.akf = lshr i64 %i.aju, %i.ake
  %i.akg = trunc nuw i64 %i.akf to i8
  %i.akh = load ptr, ptr %i.g, align 8
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 1
  store i8 %i.akg, ptr %i.aki, align 1
  %i.akj = icmp samesign ugt i32 %i.ajr, 7
  br i1 %i.akj, label %bb.bv, label %oggpack_write.exit204

bb.bv:                                            ; preds = %bb.bu
  %i.akk = load i32, ptr %i.k, align 8
  %i.akl = sub nsw i32 16, %i.akk
  %i.akm = zext nneg i32 %i.akl to i64
  %i.akn = lshr i64 %i.aju, %i.akm
  %i.ako = trunc nuw i64 %i.akn to i8
  %i.akp = load ptr, ptr %i.g, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 2
  store i8 %i.ako, ptr %i.akq, align 1
  %i.akr = icmp samesign ugt i32 %i.ajr, 15
  br i1 %i.akr, label %bb.bw, label %oggpack_write.exit204

bb.bw:                                            ; preds = %bb.bv
  %i.aks = load i32, ptr %i.k, align 8
  %i.akt = sub nsw i32 24, %i.aks
  %i.aku = zext nneg i32 %i.akt to i64
  %i.akv = lshr i64 %i.aju, %i.aku
  %i.akw = trunc nuw i64 %i.akv to i8
  %i.akx = load ptr, ptr %i.g, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 3
  store i8 %i.akw, ptr %i.aky, align 1
  %i.akz = icmp samesign ugt i32 %i.ajr, 23
  br i1 %i.akz, label %.sink.split.i198, label %oggpack_write.exit204

.sink.split.i198:                                 ; preds = %bb.bw
  %i.ala = load i32, ptr %i.k, align 8            ; 2 uses
  %.not41.i199 = icmp eq i32 %i.ala, 0
  %i.alb = sub nsw i32 32, %i.ala
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = lshr i64 %i.aju, %i.alc
  %i.ale = trunc nuw i64 %i.ald to i8
  %.sink.i200 = select i1 %.not41.i199, i8 0, i8 %i.ale
  %i.alf = load ptr, ptr %i.g, align 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 4
  store i8 %.sink.i200, ptr %i.alg, align 1
  br label %oggpack_write.exit204

oggpack_write.exit204:                            ; preds = %._crit_edge.i201, %bb.bu, %bb.bv, %bb.bw, %.sink.split.i198
  %i.alh = sdiv i32 %i.ajv, 8
  %i.ali = sext i32 %i.alh to i64                 ; 2 uses
  %i.alj = load i64, ptr %5, align 8
  %i.alk = add nsw i64 %i.alj, %i.ali             ; 3 uses
  store i64 %i.alk, ptr %5, align 8
  %i.all = load ptr, ptr %i.g, align 8
  %i.alm = getelementptr inbounds i8, ptr %i.all, i64 %i.ali ; 3 uses
  store ptr %i.alm, ptr %i.g, align 8
  %i.aln = and i32 %i.ajr, 7                      ; 3 uses
  store i32 %i.aln, ptr %i.k, align 8
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %i.alo = load i32, ptr %i.zq, align 8
  %i.alp = sext i32 %i.alo to i64
  %i.alq = icmp slt i64 %indvars.iv.next109.i, %i.alp
  br i1 %i.alq, label %bb.bg, label %._crit_edge96.i, !llvm.loop !93

._crit_edge96.i:                                  ; preds = %oggpack_write.exit204, %oggpack_write.exit236
  %i.alr = phi i32 [ %i.aby, %oggpack_write.exit236 ], [ %i.aln, %oggpack_write.exit204 ]
  %.pre.i195 = phi ptr [ %i.abx, %oggpack_write.exit236 ], [ %i.alm, %oggpack_write.exit204 ]
  %i.als = phi i64 [ %i.abv, %oggpack_write.exit236 ], [ %i.alk, %oggpack_write.exit204 ]
  %i.alt = add nsw i64 %i.als, 4
  %i.alu = load i64, ptr %i.h, align 8            ; 2 uses
  %.not.i189 = icmp slt i64 %i.alt, %i.alu
  br i1 %.not.i189, label %._crit_edge.i193, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge96.i
  %i.alv = load ptr, ptr %i.f, align 8
  %i.alw = add nsw i64 %i.alu, 256
  %i.alx = call ptr @realloc(ptr noundef %i.alv, i64 noundef %i.alw) #66 ; 2 uses
  store ptr %i.alx, ptr %i.f, align 8
  %i.aly = load i64, ptr %i.h, align 8
  %i.alz = add nsw i64 %i.aly, 256
  store i64 %i.alz, ptr %i.h, align 8
  %i.ama = load i64, ptr %5, align 8
  %i.amb = getelementptr inbounds i8, ptr %i.alx, i64 %i.ama ; 2 uses
  store ptr %i.amb, ptr %i.g, align 8
  %.pre453 = load i32, ptr %i.k, align 8
  br label %._crit_edge.i193

._crit_edge.i193:                                 ; preds = %._crit_edge96.i, %bb.bx
  %i.amc = phi i32 [ %.pre453, %bb.bx ], [ %i.alr, %._crit_edge96.i ] ; 6 uses
  %i.amd = phi ptr [ %i.amb, %bb.bx ], [ %.pre.i195, %._crit_edge96.i ] ; 2 uses
  %i.ame = add nsw i32 %i.amc, 1                  ; 2 uses
  %i.amf = zext nneg i32 %i.amc to i64
  %i.amg = shl nuw i64 1, %i.amf
  %i.amh = load i8, ptr %i.amd, align 1
  %i.ami = trunc i64 %i.amg to i8
  %i.amj = or i8 %i.amh, %i.ami
  store i8 %i.amj, ptr %i.amd, align 1
  %i.amk = icmp sgt i32 %i.amc, 6
  br i1 %i.amk, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %._crit_edge.i193
  %i.aml = load i32, ptr %i.k, align 8
  %6 = icmp eq i32 %i.aml, 8
  %7 = zext i1 %6 to i8
  %i.amm = load ptr, ptr %i.g, align 8
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  store i8 %7, ptr %i.amn, align 1
  %i.amo = icmp samesign ugt i32 %i.amc, 14
  br i1 %i.amo, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.amp = load i32, ptr %i.k, align 8
  %8 = icmp eq i32 %i.amp, 16
  %9 = zext i1 %8 to i8
  %i.amq = load ptr, ptr %i.g, align 8
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 2
  store i8 %9, ptr %i.amr, align 1
  %i.ams = icmp samesign ugt i32 %i.amc, 22
  br i1 %i.ams, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.amt = load i32, ptr %i.k, align 8
  %10 = icmp eq i32 %i.amt, 24
  %11 = zext i1 %10 to i8
  %i.amu = load ptr, ptr %i.g, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 3
  store i8 %11, ptr %i.amv, align 1
  %i.amw = icmp samesign ugt i32 %i.amc, 30
  br i1 %i.amw, label %.sink.split.i190, label %bb.cb

.sink.split.i190:                                 ; preds = %bb.ca
  %i.amx = load i32, ptr %i.k, align 8
  %.not41.i191 = icmp eq i32 %i.amx, 32
  %12 = zext i1 %.not41.i191 to i8
  %i.amy = load ptr, ptr %i.g, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  store i8 %12, ptr %i.amz, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i193, %bb.by, %bb.bz, %bb.ca, %.sink.split.i190
  %i.ana = sdiv i32 %i.ame, 8
  %i.anb = sext i32 %i.ana to i64                 ; 2 uses
  %i.anc = load i64, ptr %5, align 8
  %i.and = add nsw i64 %i.anc, %i.anb             ; 2 uses
  store i64 %i.and, ptr %5, align 8
  %i.ane = load ptr, ptr %i.g, align 8
  %i.anf = getelementptr inbounds i8, ptr %i.ane, i64 %i.anb
  store ptr %i.anf, ptr %i.g, align 8
  %i.ang = and i32 %i.ame, 7                      ; 2 uses
  store i32 %i.ang, ptr %i.k, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8          ; 2 uses
  %.not61 = icmp eq ptr %i.ani, null
  br i1 %.not61, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef nonnull %i.ani) #62
  %.pre454 = load i64, ptr %5, align 8
  %.pre455 = load i32, ptr %i.k, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.anj = phi i32 [ %.pre455, %bb.cc ], [ %i.ang, %bb.cb ]
  %i.ank = phi i64 [ %.pre454, %bb.cc ], [ %i.and, %bb.cb ]
  %i.anl = add nsw i32 %i.anj, 7
  %i.anm = sdiv i32 %i.anl, 8
  %i.ann = sext i32 %i.anm to i64
  %i.ano = add nsw i64 %i.ank, %i.ann             ; 3 uses
  %i.anp = call noalias ptr @malloc(i64 noundef %i.ano) #69 ; 3 uses
  store ptr %i.anp, ptr %i.anh, align 8
  %i.anq = load ptr, ptr %i.f, align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anp, ptr align 1 %i.anq, i64 %i.ano, i1 false)
  store ptr %i.anp, ptr %4, align 8
  %i.anr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ano, ptr %i.anr, align 8
  %i.ans = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ans, i8 0, i64 24, i1 false)
  call void @free(ptr noundef %i.anq) #62
  br label %bb.ck

_vorbis_pack_info.exit:                           ; preds = %bb.q, %oggpack_write.exit276, %bb.g, %bb.b, %bb.a
  %.049 = phi i32 [ -129, %bb.a ], [ -130, %bb.b ], [ -130, %bb.g ], [ -130, %oggpack_write.exit276 ], [ -130, %bb.q ]
  %i.ant = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.anu = load ptr, ptr %i.ant, align 8
  call void @free(ptr noundef %i.anu) #62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.anv = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 8          ; 2 uses
  %.not62 = icmp eq ptr %i.anw, null
  br i1 %.not62, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_vorbis_pack_info.exit
  call void @free(ptr noundef nonnull %i.anw) #62
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_vorbis_pack_info.exit
  %i.anx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.any = load ptr, ptr %i.anx, align 8          ; 2 uses
  %.not63 = icmp eq ptr %i.any, null
  br i1 %.not63, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef nonnull %i.any) #62
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.anz = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.aoa = load ptr, ptr %i.anz, align 8          ; 2 uses
  %.not64 = icmp eq ptr %i.aoa, null
  br i1 %.not64, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @free(ptr noundef nonnull %i.aoa) #62
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anv, i8 0, i64 24, i1 false)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cd
  %.0 = phi i32 [ %.049, %bb.cj ], [ 0, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #62
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @ogg_stream_packetin(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = sdiv i64 %i.b, 255                       ; 7 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.f                   ; 2 uses
  store i64 %i.i, ptr %i.g, align 8
  %.not47 = icmp eq i64 %i.h, %i.f
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.k, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %i.e, align 8
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = phi i64 [ %.pre, %bb.d ], [ %i.b, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8
  %sext = shl i64 %i.l, 32                        ; 2 uses
  %i.q = ashr exact i64 %sext, 32
  %i.r = add nsw i64 %i.p, %i.q
  %.not.i = icmp sgt i64 %i.n, %i.r
  br i1 %.not.i, label %_os_body_expand.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext50 = add i64 %sext, 4398046511104
  %i.s = ashr exact i64 %sext50, 32
  %i.t = add nsw i64 %i.s, %i.n                   ; 2 uses
  store i64 %i.t, ptr %i.m, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = tail call ptr @realloc(ptr noundef %i.u, i64 noundef %i.t) #66
  store ptr %i.v, ptr %0, align 8
  br label %_os_body_expand.exit

_os_body_expand.exit:                             ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = shl i64 %i.c, 32                        ; 2 uses
  %sext51 = add i64 %i.aa, 4294967296
  %i.ab = ashr exact i64 %sext51, 32              ; 2 uses
  %i.ac = add nsw i64 %i.z, %i.ab
  %.not.i49 = icmp sgt i64 %i.x, %i.ac
  br i1 %.not.i49, label %_os_lacing_expand.exit, label %bb.g

bb.g:                                             ; preds = %_os_body_expand.exit
  %sext52 = add i64 %i.aa, 141733920768
  %i.ad = ashr exact i64 %sext52, 32
  %i.ae = add nsw i64 %i.x, %i.ad                 ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = shl i64 %i.ae, 2
  %i.ai = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %i.ah) #66
  store ptr %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %i.w, align 8
  %i.am = shl i64 %i.al, 3
  %i.an = tail call ptr @realloc(ptr noundef %i.ak, i64 noundef %i.am) #66
  store ptr %i.an, ptr %i.aj, align 8
  br label %_os_lacing_expand.exit

_os_lacing_expand.exit:                           ; preds = %_os_body_expand.exit, %bb.g
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = load i64, ptr %i.o, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %1, align 8
  %i.as = load i64, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ar, i64 %i.as, i1 false)
  %i.at = load i64, ptr %i.a, align 8
  %i.au = load i64, ptr %i.o, align 8
  %i.av = add nsw i64 %i.au, %i.at
  store i64 %i.av, ptr %i.o, align 8
  %i.aw = icmp sgt i32 %i.d, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_os_lacing_expand.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %wide.trip.count = and i64 %i.c, 2147483647
  %xtraiter = and i64 %i.c, 1
  %i.ba = icmp eq i64 %wide.trip.count, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, 2147483646
  br label %bb.h
end_hunk_0
